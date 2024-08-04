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

  String get emoji {
    return switch (this) {
      MoveEnum.rock => '🪨',
      MoveEnum.paper => '📄',
      MoveEnum.scissors => '✂️',
    };
  }

  MoveEnum get win {
    return switch (this) {
      MoveEnum.rock => MoveEnum.scissors,
      MoveEnum.paper => MoveEnum.rock,
      MoveEnum.scissors => MoveEnum.paper,
    };
  }

  MoveEnum get lose {
    return switch (this) {
      MoveEnum.rock => MoveEnum.paper,
      MoveEnum.paper => MoveEnum.scissors,
      MoveEnum.scissors => MoveEnum.rock,
    };
  }
}
