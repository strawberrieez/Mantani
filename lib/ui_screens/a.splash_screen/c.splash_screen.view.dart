part of '_index.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: const Color (0XFFE7F0DC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png",
            height: 200,
            ),
          ],
        )
      )
    );
  }
}