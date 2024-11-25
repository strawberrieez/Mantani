part of '../_index.dart';

class PenghasilanPageAppbar extends StatelessWidget {
  const PenghasilanPageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
