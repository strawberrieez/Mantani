part of '../_index.dart';

class KelolaPageDetailAppbar extends StatelessWidget {
  const KelolaPageDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
