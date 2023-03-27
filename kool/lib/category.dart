class Category {
  final int id;
  final String topic;

  Category({
    required this.id,
    required this.topic,
  });

  factory Category.fromMap(Map caTegory) {
    return Category(
      id: caTegory['id'],
      topic: caTegory['topic'],
    );
  }
}
