import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  Post({
    required this.id,
    required this.title,
    required this.cover,
  });

  int id;
  String title;
  String cover;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        title: json["_job_title"],
        cover: json["_job_cover"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "cover": cover,
      };
}
