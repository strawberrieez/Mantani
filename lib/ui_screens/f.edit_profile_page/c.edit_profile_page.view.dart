part of '_index.dart';

class EditProfilePageView extends StatelessWidget {
  const EditProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller untuk setiap TextField
    final TextEditingController companyNameController = TextEditingController();
    final TextEditingController ownerNameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController addressController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFF7FBEF), // Warna latar belakang hijau muda
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7FBEF),
        title: const Text(
          'Ubah profil',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto profil dan tombol ganti foto
            Center(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    clipBehavior: Clip.none, // Membiarkan elemen melampaui area Stack
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.grey[300], // Latar belakang abu-abu muda
                        child: const Icon(
                          Icons.person, // Ikon default jika gambar tidak tersedia
                          size: 100, // Ukuran ikon disesuaikan agar pas di tengah
                          color: Colors.white, // Warna ikon
                        ),
                      ),
                      Positioned(
                        bottom: -5, // Menggeser tombol lebih ke bawah
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Tambahkan aksi ganti foto
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          icon: const Icon(Icons.add, color: Colors.black),
                          label: const Text(
                            'Ganti foto',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40), // Memberikan ruang tambahan di bawah Stack
                ],
              ),
            ),
            const SizedBox(height: 24),
            // TextField untuk input data menggunakan buildTextField
            buildTextField(
              'Nama Perusahaan',
              companyNameController,
            ),
            buildTextField(
              'Nama Pemilik',
              ownerNameController,
            ),
            buildTextField(
              'No. Telp',
              phoneController,
              keyboardType: TextInputType.phone,
            ),
            buildTextField(
              'Email',
              emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            buildTextField(
              'Alamat',
              addressController,
              maxLines: 2,
            ),
            const SizedBox(height: 24),
            // Tombol simpan
            SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF597445),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Simpan",
                          style: TextStyle(
                            color: Color(0xFFE7F0DC),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuat TextField dengan dekorasi
  Widget buildTextField(String label, TextEditingController controller,
      {String? hintText, TextInputType keyboardType = TextInputType.text, int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        style: const TextStyle(color: Colors.black), // Warna teks hitam
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.grey), // Warna label
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey), // Warna hint abu-abu
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey[300]!),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey[300]!),
          ),
        ),
      ),
    );
  }
}
