part of '_index.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFE0F0E0),
        body: Column(
          children: [
            Center(
              child: Image.asset('assets/images/logo.png'),
            )
          ],
        ));
  }
}
