part of '../_index.dart';

class CreateProfileAppbar extends StatelessWidget {
  const CreateProfileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
