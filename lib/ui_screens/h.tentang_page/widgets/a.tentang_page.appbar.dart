part of '../_index.dart';

class TentangPageAppbar extends StatelessWidget {
  const TentangPageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
