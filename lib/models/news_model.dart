class NewsModel {
  String? author;
  String? title;
  String? description;
  String? urlToImage;

  NewsModel({this.author, this.title, this.description, this.urlToImage});

  NewsModel.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    title = json['title'];
    description = json['description'];
    urlToImage = json['urlToImage'];
  }
}
