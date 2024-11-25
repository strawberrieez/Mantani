part of '_index.dart';

class PenghasilanPageView extends StatelessWidget {
  const PenghasilanPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: PenghasilanPageAppbar(),
      ),
      floatingActionButton: PenghasilanPageFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PenghasilanPageCharlie(),
            PenghasilanPageDelta(),
            PenghasilanPageEcho(),
          ],
        ),
      ),
    );
  }
}
