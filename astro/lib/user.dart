class User {
  String usName;
  String dateBirth;
  String login;
  String password;

  User(this.usName, this.dateBirth, this.login, this.password);
}

List<User> listUser = [];

DateTime? selectedDate;
