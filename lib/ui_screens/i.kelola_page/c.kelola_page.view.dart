part of '_index.dart';

class KelolaPageView extends StatelessWidget {
  const KelolaPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: KelolaPageAppbar(),
      ),
      floatingActionButton: KelolaPageFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KelolaPageCharlie(),
            KelolaPageDelta(),
            KelolaPageEcho(),
          ],
        ),
      ),
    );
  }
}
