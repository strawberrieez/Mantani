part of '../_index.dart';

class EditProfilePageAppbar extends StatelessWidget {
  const EditProfilePageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
