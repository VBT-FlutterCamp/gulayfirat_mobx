import 'package:vexana/vexana.dart';

class UserModel extends INetworkModel {
  int? userId;
  int? id;
  String? title;
  String? body;
  UserModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });
  @override
  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };

  @override
  fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
      body: json["body"],
    );
  }
}
