class PostModel{
  int? userid;
  int? id;
  String? title;
  String? content;

  PostModel({this.userid, this.id, this.title, this.content});

  factory PostModel.fromJson(Map<String,dynamic> json)=> PostModel(
    userid: json['userId'],
    id: json['id'],
    title: json['title'],
    content: json['body']
  );
}