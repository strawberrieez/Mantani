part of '_index.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: LoginPageAppbar(),
      ),
      floatingActionButton: LoginPageFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginPageCharlie(),
            LoginPageDelta(),
            LoginPageEcho(),
          ],
        ),
      ),
    );
  }
}
