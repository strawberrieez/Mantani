part of '_index.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int _currentIndex = 0;

  // Daftar halaman untuk navigasi
  final List<Widget> _pages = [
    const KelolaPageListView(),        // Halaman Kelola (default Home)
    const PenghasilanPageView(),   // Halaman Penghasilan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ManTani',
          
          style: TextStyle(
            color: Colors.white, // Warna teks putih
          ),
          
        ),
        centerTitle: false,
        backgroundColor: const Color(0xFF597445),
        foregroundColor: Colors.white, // Ikon juga berwarna putih
      ),
      endDrawer: DrawerView(),
      body: _pages[_currentIndex], // Menampilkan halaman sesuai indeks
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Indeks navigasi saat ini
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update indeks saat item di-tap
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Kelola',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Penghasilan',
          ),
        ],
        selectedItemColor: const Color(0xFF597445), // Warna ikon yang dipilih
        unselectedItemColor: Colors.grey, // Warna ikon yang tidak dipilih
        backgroundColor: Colors.white, // Warna latar belakang navbar
      ),
    );
  }
}
