class ArticleModel {
  final String?
  author; // author null audai audaina vaneko hai ? garena vani chai tara hamle yesma ? gareko xa so null pani auna sakxa hai vaneko
  final String? title; //title null pani huna sakxa vaneko ? le
  final String? description;
  final String? urlToImage;
  final String? publishedAt;

  ArticleModel({
    this.author, //null value audaina vanne thavayo vane hamle required agadhi rakhna parxa, tara yesma null ni auna sakxa vanera this.gareko
    this.title,
    this.description,
    this.urlToImage,
    this.publishedAt,
  });
  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      author: json['author'],
      title: json['title'],
      description: json['description'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
    );
  }
}
