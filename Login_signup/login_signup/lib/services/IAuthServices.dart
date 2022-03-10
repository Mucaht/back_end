import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_signup/services/usermodel.dart';

abstract class IAuthServices {
  //kullanıcı oluşturma fonksiyonu
  Future<UserModel> createUserWithEmailAndPassword(
      {required String email, required password});
  //kullanıcı giriş fonksiyonu
  Future<UserModel> signInEmailAndPassword(
      {required String email, required password});
  Future<void> signOut();
//uygulama içerisinde kullanıcının olup olmadığını gösteren method stream
  Stream<UserModel?> get onAuthStateChanged;
  
}
