part of '_index.dart';

class EditProfilePageView extends StatelessWidget {
  const EditProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: EditProfilePageAppbar(),
      ),
      floatingActionButton: EditProfilePageFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EditProfilePageCharlie(),
            EditProfilePageDelta(),
            EditProfilePageEcho(),
          ],
        ),
      ),
    );
  }
}
