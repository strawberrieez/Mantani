part of '_index.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: DrawerAppbar(),
      ),
      floatingActionButton: DrawerFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerCharlie(),
            DrawerDelta(),
            DrawerEcho(),
          ],
        ),
      ),
    );
  }
}
