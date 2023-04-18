class Player {
  final String name = 'eden';
  final int age = 3;

  void sayName() {
    print("Hi my name is $name");
  }
}

void main() {
  // new 를 꼭 붙이지 않아도 됩니다.
  var player = Player();
  player.sayName();
}
