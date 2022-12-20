class PostUser {
  final String userId;
  final String Id;
  final String title;
  final String body;

  PostUser({
    required this.userId,
    required this.Id,
    required this.title,
    required this.body,
  });

  factory PostUser.fromJson(Map<String,dynamic> data) => PostUser(
      userId: data['userId'],
      Id: data['Id'],
      title: data['title'],
      body: data['body']);

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "Id": Id,
        "title": title,
        "body": body,
      };
}