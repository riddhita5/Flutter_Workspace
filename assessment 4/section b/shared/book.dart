class Book {
  final String id;
  final String title;
  final String author;
  final bool isAvailable;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.isAvailable,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id']?.toString() ?? '',
      title: json['title'] ?? 'Unknown Title',
      author: json['author'] ?? 'Unknown Author',
      isAvailable: json['isAvailable'] ?? true,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'isAvailable': isAvailable,
    };
  }
}
