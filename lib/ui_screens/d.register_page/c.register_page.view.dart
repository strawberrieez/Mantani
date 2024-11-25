part of '_index.dart';

class RegisterPageView extends StatelessWidget {
  const RegisterPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: RegisterPageAppbar(),
      ),
      floatingActionButton: RegisterPageFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RegisterPageCharlie(),
            RegisterPageDelta(),
            RegisterPageEcho(),
          ],
        ),
      ),
    );
  }
}
