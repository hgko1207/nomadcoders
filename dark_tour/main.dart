abstract class Person {
  void walk();
}

class Player extends Person {
  String name;
  String team;

  Player({required this.name, required this.team});

  void walk() {
    print("Player is walking");
  }
}

void main() {
  var player = Player(name: 'eden', team: 'red');
  player.walk();
}
