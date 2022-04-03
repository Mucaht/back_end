import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_signup/services/usermodel.dart';
/* sınıflarımıza extra özellikler ekleyebileceğimiz,içerisinde fonksiyonlar ve değerler
tutabilen, birden fazla mixin ile bir araya getirilebilecek yapılardır.*/
mixin ConvertUser{
  UserModel convertUser(UserCredential user){
  return UserModel(userId: user.user!.uid, userMail: user.user!.email!);
}
}