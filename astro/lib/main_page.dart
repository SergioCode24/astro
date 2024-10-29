import 'package:astro/user.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Астрологическое приложение',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AstrologyHomePage(),
    );
  }
}

class AstrologyHomePage extends StatefulWidget {
  const AstrologyHomePage({super.key});

  @override
  _AstrologyHomePageState createState() => _AstrologyHomePageState();
}

class _AstrologyHomePageState extends State<AstrologyHomePage> {
  final List<ZodiacSign> _zodiacSigns = [
    ZodiacSign(
      sign: 'Овен',
      image: 'assets/aries.png',
      description:
          'Овен — это первый знак зодиака, который символизирует начало нового цикла. Люди, рожденные под этим знаком, энергичны и полны энтузиазма.',
      date: DateTime(2023, 10, 1),
    ),
    ZodiacSign(
      sign: 'Телец',
      image: 'assets/taurus.png',
      description:
          'Телец — это второй знак зодиака, который символизирует стабильность и надежность. Люди, рожденные под этим знаком, ценят комфорт и безопасность.',
      date: DateTime(2023, 10, 2),
    ),
    // Добавьте остальные знаки зодиака аналогичным образом
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2023, 10, 1),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Астрологическое приложение'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Добро пожаловать в астрологическое приложение!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () => _selectDate(context),
                  child: const Text('Выбрать дату'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Выберите свой знак зодиака:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: _zodiacSigns
                    .where((sign) =>
                        selectedDate == null ||
                        sign.date.isAtSameMomentAs(selectedDate!))
                    .map((sign) => ZodiacSignCard(
                          sign: sign.sign,
                          image: sign.image,
                          description: sign.description,
                          date: sign.date.toLocal().toString().split(' ')[0],
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ZodiacSignDetailsPage(sign: sign.sign),
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ZodiacSign {
  final String sign;
  final String image;
  final String description;
  final DateTime date;

  ZodiacSign({
    required this.sign,
    required this.image,
    required this.description,
    required this.date,
  });
}

class ZodiacSignCard extends StatelessWidget {
  final String sign;
  final String image;
  final String description;
  final String date;
  final VoidCallback onTap;

  const ZodiacSignCard({
    super.key,
    required this.sign,
    required this.image,
    required this.description,
    required this.date,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                sign,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Image.asset(image, width: 100, height: 100),
              const SizedBox(height: 10),
              Text(
                description,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              Text(
                date,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ZodiacSignDetailsPage extends StatelessWidget {
  final String sign;

  const ZodiacSignDetailsPage({super.key, required this.sign});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sign),
      ),
      body: Center(
        child: Text('Информация о знаке зодиака $sign'),
      ),
    );
  }
}

/*class mainPage extends StatelessWidget {
  const mainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AAAAAAAAAAAA"),
      automaticallyImplyLeading: false,
    ),
   body:
   Container(
    alignment: Alignment.center,
    color: Color.fromARGB(255, 0, 0, 0),
    child:
    Expanded(
    child: ListView.builder(
   padding: const EdgeInsets.all(8),

    itemBuilder:(BuildContext context, index) {

      return /*Container(
          alignment: Alignment.center,
          color: Color.fromARGB(255, 156, 32, 245),

          child:*//* Card(
            clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
             Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MainPageArticle(

              ),
            ),
          );
        },

          child:*/ Container(
            color: Colors.white,
             child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Text(ArtList[0].Author),
                  ),
                  Expanded(
                  flex: 1,
                  child: Text(ArtList[0].PostTime.toString()),
                  ),
                  Expanded(
                  flex: 4,
                  child: Text(ArtList[0].Pic),
                  ),
                  Expanded(
                  flex: 3,
                  child: Text(ArtList[0].TitleArt),
                  ),
                  Expanded(
                  flex: 2,
                  child: Text(ArtList[0].TextArt),
                  ),

              ],
           ));}
           ),
    )
          )

      );

  }
}*/
