import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(89, 116, 69, 1),
        title: const Text(
          'ManTani', // Menampilkan nama aplikasi di kiri
          style: TextStyle(
            color: Color.fromRGBO(231, 240, 220, 1),
            fontFamily: 'Nunito',
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: [
          // Hanya ada ikon menu di kanan untuk membuka drawer
          IconButton(
            icon: const Icon(Icons.menu, color: Color.fromRGBO(231, 240, 220, 1)),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Membuka drawer menu
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromRGBO(231, 240, 220, 1),
        child: Column(
          children: [
            // Header Drawer
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(89, 116, 69, 1),
              ),
              child: SizedBox(
                width: double.infinity, // Membuat lebar penuh
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Menempatkan elemen di kiri dan kanan
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20), // Memberi jarak atas
                        const Text(
                          'Nama Farm',
                          style: TextStyle(
                            color: Color.fromRGBO(231, 240, 220, 1),
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10), // Adjusts the position of the logo on the right
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/bgcut.jpg'), // Gambar farm
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Menu Items
            ListTile(
              title: const Text(
                'Edit profile',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Bantuan',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Tentang',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Spacer(),
            // Footer Drawer
            Container(
              padding: const EdgeInsets.all(10),
              color: const Color.fromRGBO(231, 240, 220, 1),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  // Aksi untuk tombol keluar
                  Navigator.pop(context);
                },
                child: const Text(
                  'Keluar',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Nunito',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(231, 240, 220, 1),
        ),
        child: Stack(
          children: <Widget>[
            // Header Content
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: screenSize.width,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(89, 116, 69, 1),
                ),
                child: const SizedBox.shrink(), // Tidak ada konten header lainnya
              ),
            ),
            // Main Content
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.only(top: 120),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        _buildCard(
                          title: 'Akan segera panen nih!',
                          subtitle: 'Lahan 1/Padi',
                          detail: 'Estimasi panen: 20 November 2024',
                        ),
                        const SizedBox(height: 10),
                        _buildCard(
                          title: 'Akan segera panen nih!',
                          subtitle: 'Lahan 2/Jagung',
                          detail: 'Estimasi panen: 28 November 2024',
                        ),
                        const SizedBox(height: 10),
                        _buildCard(
                          title: 'Jangan sampai lupa, ya!',
                          subtitle: 'Gaji Karyawan',
                          detail: 'Ibu Hasanah/20 November 2024',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Utama',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts),
            label: 'Kelola',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Penghasilan',
          ),
        ],
        backgroundColor: const Color.fromRGBO(89, 116, 69, 1), // Menetapkan warna background
        onTap: (index) {
          // Handle tap, misalnya dengan navigasi atau perubahan tampilan sesuai kebutuhan
          // Saat ini, hanya menerima tap tanpa mengubah state
          if (index == 0) {
            // Misalnya, navigasi ke halaman utama
          } else if (index == 1) {
            // Navigasi ke halaman kelola
          } else if (index == 2) {
            // Navigasi ke halaman penghasilan
          }
        },
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required String subtitle,
    required String detail,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(205, 205, 205, 1),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(89, 116, 69, 1),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Nunito',
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Nunito',
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            detail,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Nunito',
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
