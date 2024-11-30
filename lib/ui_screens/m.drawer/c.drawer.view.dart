part of '_index.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFFF7FBEF), // Warna latar belakang Drawer
        child: Column(
          children: [
            // Bagian atas Drawer (hijau penuh)
            Container(
              width: double.infinity,
              color: const Color(0xFF597445), // Warna latar belakang hijau
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.grey[300],
                    backgroundImage: const AssetImage('assets/profile_picture.png'), // Gambar profil
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Maju Bakti Farm',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center, // Pusatkan teks
                  ),
                ],
              ),
            ),  
            // Menu Drawer sebagai tombol
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    nav.to(Routes.editProfilePage);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                  ),
                  child: const Text(
                    'Edit Profil',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    nav.to(Routes.bantuanPage);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                  ),
                  child: const Text(
                    'Bantuan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    nav.to(Routes.tentangPage);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                  ),
                  child: const Text(
                    'Tentang',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
const Spacer(), // Membuat tombol keluar berada di bagian bawah
// Tombol keluar
Padding(
  padding: const EdgeInsets.only(bottom: 16.0),
  child: TextButton(
    onPressed: () {
      // Logika untuk keluar dari aplikasi
    },
    style: TextButton.styleFrom(
      padding: EdgeInsets.zero, // Hapus padding default pada button
    ),
    child: const Text(
      'Keluar',
      style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      textAlign: TextAlign.center, // Pusatkan teks tombol
    ),
  ),
),

          ],
        ),
      ),
    );
  }
}
