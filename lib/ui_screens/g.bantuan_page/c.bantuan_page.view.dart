part of '_index.dart';

class BantuanPageView extends StatelessWidget {
  const BantuanPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: BantuanPageAppbar(),
      ),
      floatingActionButton: BantuanPageFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BantuanPageCharlie(),
            BantuanPageDelta(),
            BantuanPageEcho(),
          ],
        ),
      ),
    );
  }
}
