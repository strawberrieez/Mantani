part of '../_index.dart';

class GajiKaryawanDetailFab extends StatelessWidget {
  const GajiKaryawanDetailFab({super.key});

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
