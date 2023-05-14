class NewsDataModel {
  String? title;
  String? link;
  // String? keywords;
  List<dynamic>? creator;
  // String creator;
  List<dynamic>? keywords;
  // List<String>? creator;
  String? description;
  String? content;
  String? pubDate;
  String? imageUrl;
  String? sourceId;
  // String category;
  List<dynamic>? category;

  NewsDataModel(
    this.title,
    this.link,
    this.keywords,
    this.creator,
    this.description,
    this.content,
    this.pubDate,
    this.imageUrl,
    this.sourceId,
    this.category,
  );

  NewsDataModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    link = json['link'];
    keywords = json["keywords"] == null
        ? null
        : List<dynamic>.from(json["keywords"].map((x) => x));
    creator = json["creator"] == null
        ? null
        : List<dynamic>.from(json["creator"].map((x) => x));
    description = json['description'];
    content = json['content'];
    pubDate = json['pubDate'];
    imageUrl = json['image_url'];
    sourceId = json['source_id'];
    category = List<dynamic>.from(json["category"].map((x) => x));
  }

  // factory NewsDataModel.fromJson(dynamic json) {
  //   return NewsDataModel(
  //     // json['title'] != null ? json['title'] as String : null,
  //     json['title'] as String?,


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['title'] = title;
    data['link'] = link;
    // data['keywords'] = keywords;
    data['description'] = description;
    data['content'] = content;
    data['pubDate'] = pubDate;
    data['image_url'] = imageUrl;
    data['source_id'] = sourceId;

    return data;
  }
}

