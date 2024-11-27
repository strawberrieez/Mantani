part of '../_index.dart';

class LandingPage3Appbar extends StatelessWidget {
  const LandingPage3Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
