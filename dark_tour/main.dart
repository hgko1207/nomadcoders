class Team {
  String name;
  int members;
  String description;

  Team({required this.name, required this.members, required this.description});

  Team.createTeam({required String name, required int members})
      : this.name = name,
        this.members = members,
        this.description = "$name team is good.";
}

void main() {
  var team = Team.createTeam(
    name: "Tottenham",
    members: 25,
  );
}
