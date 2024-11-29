part of '../_index.dart';

class DrawerAppbar extends StatelessWidget {
  const DrawerAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
