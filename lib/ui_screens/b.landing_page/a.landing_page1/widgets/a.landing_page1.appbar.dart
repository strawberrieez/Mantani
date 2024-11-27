part of '../_index.dart';

class LandingPage1Appbar extends StatelessWidget {
  const LandingPage1Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
