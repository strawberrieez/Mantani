part of '../_index.dart';

class GajiKaryawanDetailAppbar extends StatelessWidget {
  const GajiKaryawanDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
