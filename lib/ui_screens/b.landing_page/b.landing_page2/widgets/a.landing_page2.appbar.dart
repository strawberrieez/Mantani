part of '../_index.dart';

class LandingPage2Appbar extends StatelessWidget {
  const LandingPage2Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
