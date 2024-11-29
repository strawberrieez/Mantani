part of '../_index.dart';

class KelolaPageListAppbar extends StatelessWidget {
  const KelolaPageListAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
