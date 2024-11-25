part of '_index.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: HomePageAppbar(),
      ),
      floatingActionButton: HomePageFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomePageCharlie(),
            HomePageDelta(),
            HomePageEcho(),
          ],
        ),
      ),
    );
  }
}
