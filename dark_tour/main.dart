mixin Strong {
  final double strengthLevel = 100.5;
}

mixin Tall {
  final double height = 180;
}

mixin QuickRunner {
  void run() {
    print("run!!");
  }
}

class Player with Strong, Tall, QuickRunner {
  final String name;

  Player({required this.name});
}

void main() {
  var player = Player(
    name: "eden",
  );
  player.run(); // run!! 출력
}
