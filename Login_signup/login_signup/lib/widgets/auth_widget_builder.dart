import 'package:flutter/material.dart';
import 'package:login_signup/services/usermodel.dart';

class AuthWidgetBuilder extends StatelessWidget {
  const AuthWidgetBuilder({Key? key, required this.onPageBuilder})
      : super(key: key);
  // bu method firebase den gelecek olan kullanıcının dinlemesini yapacak
  //online ya da offline olmasına göre beni uygulama üzerinde gezdirebilmeyi sağlasın
  final Widget Function(
      BuildContext context, AsyncSnapshot<UserModel?> snapshot) onPageBuilder;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
