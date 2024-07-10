class AlbumModel {
  final int userId;
  final int id;
  final String title;

  const AlbumModel({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory AlbumModel.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'userId': int userId,
        'id': int id,
        'title': String title,
      } =>
        AlbumModel(userId: userId, id: id, title: title),
      _ => throw const FormatException('Failed to load album')
    };
  }
}
