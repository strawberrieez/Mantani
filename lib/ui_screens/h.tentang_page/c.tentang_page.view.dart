part of '_index.dart';

class TentangPageView extends StatelessWidget {
  const TentangPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TentangPageAppbar(),
      ),
      floatingActionButton: TentangPageFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TentangPageCharlie(),
            TentangPageDelta(),
            TentangPageEcho(),
          ],
        ),
      ),
    );
  }
}
