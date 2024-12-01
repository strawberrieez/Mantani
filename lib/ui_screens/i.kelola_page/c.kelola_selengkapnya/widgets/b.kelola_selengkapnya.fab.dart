part of '../_index.dart';

class KelolaSelengkapnyaFab extends StatelessWidget {
  const KelolaSelengkapnyaFab({super.key});

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
