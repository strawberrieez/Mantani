part of '../_index.dart';

class KelolaPageAppbar extends StatelessWidget {
  const KelolaPageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
