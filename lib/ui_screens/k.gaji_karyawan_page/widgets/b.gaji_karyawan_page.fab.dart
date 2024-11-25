part of '../_index.dart';

class GajiKaryawanPageFab extends StatelessWidget {
  const GajiKaryawanPageFab({super.key});

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
