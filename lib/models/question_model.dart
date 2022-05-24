class Question {
  final String id;
  final String title;

  final Map<String, bool> options;

  Question({required this.id, required this.options, required this.title});

  // we should override the to string method to print the question on console
  @override
  String toString() {
    return 'Question(id: $id, options: $options, title: $title)';
  }
}
