part of '_index.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: LandingPageAppbar(),
      ),
      floatingActionButton: LandingPageFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LandingPageCharlie(),
            LandingPageDelta(),
            LandingPageEcho(),
          ],
        ),
      ),
    );
  }
}
