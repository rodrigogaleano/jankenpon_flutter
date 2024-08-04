enum MoveEnum {
  rock,
  paper,
  scissors;

  String get title {
    return switch (this) {
      MoveEnum.rock => 'Rock',
      MoveEnum.paper => 'Paper',
      MoveEnum.scissors => 'Scissors',
    };
  }
}
