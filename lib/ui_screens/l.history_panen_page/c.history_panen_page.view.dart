part of '_index.dart';

class HistoryPanenPageView extends StatelessWidget {
  const HistoryPanenPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: HistoryPanenPageAppbar(),
      ),
      floatingActionButton: HistoryPanenPageFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HistoryPanenPageCharlie(),
            HistoryPanenPageDelta(),
            HistoryPanenPageEcho(),
          ],
        ),
      ),
    );
  }
}
