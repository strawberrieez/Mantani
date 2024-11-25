part of '../_index.dart';

class LoginPageAppbar extends StatelessWidget {
  const LoginPageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
