import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_signup/services/IAuthServices.dart';
import 'package:login_signup/services/usermodel.dart';
import 'mixin_user.dart';

class AuthService with ConvertUser implements IAuthServices {
  //instance üzerinden firebase'e bağlanarak kullanıcıları oluşturuyoruz
  final FirebaseAuth _authInstance = FirebaseAuth.instance;

  UserModel _getUser(User? user) {
    return UserModel(userId: user!.uid, userMail: user.email!);
  }

  @override
  Future<UserModel> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    //ne zaman tamamlanacağı belli olmadığı için await verdik
    var _tempUser = await _authInstance.createUserWithEmailAndPassword(
        email: email, password: password);
    return convertUser(_tempUser);
  }

  @override
  /*authInstance sayesinde authStateChanges method ile firebase 
  back endinden gelecek olan nesneyi uygulama içerisinde kullanacağım nesneye dönüştürdüm*/
  Stream<UserModel?> get onAuthStateChanged =>
      _authInstance.authStateChanges().map(_getUser);

  @override
  Future<UserModel> signInEmailAndPassword(
      {required String email, required password}) async {
    var _tempUser = await _authInstance.createUserWithEmailAndPassword(
        email: email, password: password);
    return convertUser(_tempUser);
  }

  @override
  Future<void> signOut() async {
    await _authInstance.signOut();
  }
}
