part of '../_index.dart';

class NavigatorAppbar extends StatelessWidget {
  const NavigatorAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
