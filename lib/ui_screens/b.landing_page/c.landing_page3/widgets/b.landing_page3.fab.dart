part of '../_index.dart';

class LandingPage3Fab extends StatelessWidget {
  const LandingPage3Fab({super.key});

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
