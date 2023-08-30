class Question {
  final String id;
  final String title;
  final Map<String, bool> Option;

  Question({
    required this.id,
    required this.title,
    required this.Option,
  });

  @override
  String toString() {
    return 'Question(id:$id, title:$title,option:$Option)';
  }
}
