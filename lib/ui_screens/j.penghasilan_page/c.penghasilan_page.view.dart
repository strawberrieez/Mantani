part of '_index.dart';

class PenghasilanPageView extends StatefulWidget {
  const PenghasilanPageView({super.key});

  @override
  PenghasilanPageViewState createState() => PenghasilanPageViewState();
}

class PenghasilanPageViewState extends State<PenghasilanPageView> {
  double totalPanen = 0; // Input dari history panen
  double totalGajiKaryawan = 0; // Input dari gaji karyawan

  @override
  Widget build(BuildContext context) {
    double totalPenghasilanKotor = totalPanen;
    double totalPenghasilanBersih = totalPanen - totalGajiKaryawan;

    return Scaffold(
      body: Container(
        color: const Color(0xFFE7F0DC), // Warna latar belakang baru
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: const Color(0xFF597445),
                child: Container(
                  width: double.infinity, // Agar card penuh ke kanan
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
                  nav.to(Routes.gajiKaryawanList);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF597445),
                  foregroundColor: Colors.white, // Teks tombol warna putih
                  minimumSize: const Size(double.infinity, 50), // Lebar penuh dan tinggi 50
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Border sedikit melengkung
                  ),
                ),
                child: const Text('Gaji Karyawan'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  nav.to(Routes.historyPanenPage);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF597445),
                  foregroundColor: Colors.white, // Teks tombol warna putih
                  minimumSize: const Size(double.infinity, 50), // Lebar penuh dan tinggi 50
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Border sedikit melengkung
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
