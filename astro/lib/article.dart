class Article {
  int id;
  DateTime postTime;
  String author;
  String pic;
  String titleArt;
  String textArt;

  Article(this.id, this.postTime, this.author, this.pic, this.titleArt,
      this.textArt);
}

List<Article> artList = [
  Article(
      1,
      DateTime(2024, 10, 17),
      'Ясновидящая Аглая',
      'C:Users-OneDriveИзображения',
      'Астрологический прогноз на четверг',
      'Добрый день, сегодня мы рассмотрим бла бла бла бла бла бла')
];
