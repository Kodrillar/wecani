void main(List<String> args) {
  final user = User('Jason', '12345');
  print(user);
  final updatedUser = user.copyWith(null, null);
  print(updatedUser);
}

class User {
  User(this.username, this.password);
  final String username;
  final String password;

  copyWith(String? username, String? password) {
    return User(username ?? this.username, password ?? this.password);
  }

  @override
  String toString() => 'User(username: $username, password: $password)';
}

mixin Addon {
  void eat() => print('eating');

  int get age => 10;
}

class Animal with Addon {}

class Human with Addon {}

class Jason extends Animal with Addon implements Human {}

class Dog extends Animal {}

class TextFieldData {
  TextFieldData(this.hintText, this.labelText);
  final String hintText;
  final String labelText;
}

class MyTextField {
  MyTextField(TextFieldData textFieldData, String age)
      : textFieldData = textFieldData,
        _age = age;

  TextFieldData textFieldData;

  final _age;

  applyStyls() {
    textFieldData.hintText;
    textFieldData.labelText;
  }
}
