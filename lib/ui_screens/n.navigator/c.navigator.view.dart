part of '_index.dart';

class NavigatorView extends StatelessWidget {
  const NavigatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: NavigatorAppbar(),
      ),
      floatingActionButton: NavigatorFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavigatorCharlie(),
            NavigatorDelta(),
            NavigatorEcho(),
          ],
        ),
      ),
    );
  }
}
