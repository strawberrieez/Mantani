part of '../_index.dart';

class LandingPageAppbar extends StatelessWidget {
  const LandingPageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
