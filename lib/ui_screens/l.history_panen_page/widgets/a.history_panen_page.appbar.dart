part of '../_index.dart';

class HistoryPanenPageAppbar extends StatelessWidget {
  const HistoryPanenPageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
