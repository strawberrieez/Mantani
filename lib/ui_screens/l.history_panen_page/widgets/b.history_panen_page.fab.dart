part of '../_index.dart';

class HistoryPanenPageFab extends StatelessWidget {
  const HistoryPanenPageFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        _ct.increaseCounter();
        _ct.updateRandom();
      },
    );
  }
}
