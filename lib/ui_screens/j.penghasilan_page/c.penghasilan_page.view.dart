part of '_index.dart';

class PenghasilanPageView extends StatelessWidget {
  const PenghasilanPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IncomePage(),
    );
  }
}

class IncomePage extends StatefulWidget {
  @override
  _IncomePageState createState() => _IncomePageState();
}

class _IncomePageState extends State<IncomePage> {
  double totalPanen = 0; // Input dari history panen
  double totalGajiKaryawan = 0; // Input dari gaji karyawan
  int _currentIndex = 0; // Indeks untuk navigasi bawah

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Navigasi sesuai index
    switch (index) {
      case 0:
        // Navigasi ke halaman utama
        break;
      case 1:
        // Navigasi ke halaman kelola
        break;
      case 2:
        // Navigasi ke halaman penghasilan (halaman saat ini)
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    double totalPenghasilanKotor = totalPanen;
    double totalPenghasilanBersih = totalPanen - totalGajiKaryawan;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ManTani',
          style: TextStyle(
            color: Colors.white, // Warna teks putih
          ),
        ),
        backgroundColor: Color(0xFF597445),
        foregroundColor: Colors.white, // Ikon juga berwarna putih
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Color.fromRGBO(231, 240, 220, 1),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Color(0xFF597445),
                child: Container(
                  width: double.infinity, // Agar card penuh ke kanan
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Penghasilan Kotor',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Rp. ${totalPenghasilanKotor.toStringAsFixed(0)}',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red.shade400,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Total Penghasilan Bersih',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Rp. ${totalPenghasilanBersih.toStringAsFixed(0)}',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.greenAccent.shade100,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke input gaji karyawan
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF597445),
                  foregroundColor: Colors.white, // Teks tombol warna putih
                  minimumSize: Size(double.infinity, 50), // Lebar penuh dan tinggi 50
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Border sedikit melengkung
                  ),
                ),
                child: Text('Gaji Karyawan'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke history panen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF597445),
                  foregroundColor: Colors.white, // Teks tombol warna putih
                  minimumSize: Size(double.infinity, 50), // Lebar penuh dan tinggi 50
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Border sedikit melengkung
                  ),
                ),
                child: Text('Histori Panen'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Kelola',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Penghasilan',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _onTabTapped,
      ),
    );
  }
}
