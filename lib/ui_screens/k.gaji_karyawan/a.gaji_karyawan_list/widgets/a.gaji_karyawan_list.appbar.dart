part of '../_index.dart';

class GajiKaryawanListAppbar extends StatelessWidget {
  const GajiKaryawanListAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
