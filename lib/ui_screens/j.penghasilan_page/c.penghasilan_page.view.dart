part of '_index.dart';

class PenghasilanPageView extends StatefulWidget {
  const PenghasilanPageView({super.key});

  @override
  PenghasilanPageViewState createState() => PenghasilanPageViewState();
}

class PenghasilanPageViewState extends State<PenghasilanPageView> {
  final CrudRepo crudRepo = CrudRepo();
  bool isLoading = true;
  num totalPenghasilanKotor = 0;
  num totalPenghasilanBersih = 0;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      final kotor = await crudRepo.calculateTotalPenghasilanKotor();
      final bersih = await crudRepo.calculateTotalPenghasilanBersih();

      setState(() {
        totalPenghasilanKotor = kotor;
        totalPenghasilanBersih = bersih;
      });
    } catch (error) {
      debugPrint('Error loading data: $error');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error loading data: $error')),
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              color: const Color(0xFFE7F0DC),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      color: const Color(0xFF597445),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Total Penghasilan Kotor',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Rp. ${totalPenghasilanKotor.toStringAsFixed(0)}',
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Total Penghasilan Bersih',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Rp. ${totalPenghasilanBersih.toStringAsFixed(0)}',
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Ganti dengan rute Anda
                        debugPrint('Navigasi ke Gaji Karyawan');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF597445),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text('Gaji Karyawan'),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Ganti dengan rute Anda
                        debugPrint('Navigasi ke Histori Panen');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF597445),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text('Histori Panen'),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}