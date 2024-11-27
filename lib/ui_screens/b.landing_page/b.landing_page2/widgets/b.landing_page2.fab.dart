part of '../_index.dart';

class LandingPage2Fab extends StatelessWidget {
  const LandingPage2Fab({super.key});

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
