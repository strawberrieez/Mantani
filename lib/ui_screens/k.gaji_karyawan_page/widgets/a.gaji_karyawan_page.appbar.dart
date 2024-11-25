part of '../_index.dart';

class GajiKaryawanPageAppbar extends StatelessWidget {
  const GajiKaryawanPageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
