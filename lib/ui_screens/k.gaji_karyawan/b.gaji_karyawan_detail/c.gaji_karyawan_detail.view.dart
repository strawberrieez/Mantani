part of '_index.dart';

class GajiKaryawanDetailView extends StatelessWidget {
  const GajiKaryawanDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: GajiKaryawanDetailAppbar(),
      ),
      floatingActionButton: GajiKaryawanDetailFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GajiKaryawanDetailCharlie(),
            GajiKaryawanDetailDelta(),
            GajiKaryawanDetailEcho(),
          ],
        ),
      ),
    );
  }
}
