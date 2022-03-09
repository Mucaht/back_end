import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static String? id;
  static String? userName;
  static String? email;
  

  UserModel.fromDocument(DocumentSnapshot snapshot) {
    var data = snapshot.data() as dynamic;
    id = data['id'];
    userName = data['userName'];
    email = data['email'];
  }
}
