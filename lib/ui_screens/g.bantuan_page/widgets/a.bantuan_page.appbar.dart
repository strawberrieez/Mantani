part of '../_index.dart';

class BantuanPageAppbar extends StatelessWidget {
  const BantuanPageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
