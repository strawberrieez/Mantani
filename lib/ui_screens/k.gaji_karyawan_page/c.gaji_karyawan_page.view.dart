part of '_index.dart';

class GajiKaryawanPageView extends StatelessWidget {
  const GajiKaryawanPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: GajiKaryawanPageAppbar(),
      ),
      floatingActionButton: GajiKaryawanPageFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GajiKaryawanPageCharlie(),
            GajiKaryawanPageDelta(),
            GajiKaryawanPageEcho(),
          ],
        ),
      ),
    );
  }
}
