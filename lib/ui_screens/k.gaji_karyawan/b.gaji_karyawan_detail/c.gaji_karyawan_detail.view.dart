part of '_index.dart';

class GajiKaryawanDetailView extends StatelessWidget {
  final String? namaKaryawan;
  final int? gajiKaryawan;

  const GajiKaryawanDetailView({super.key, this.namaKaryawan, this.gajiKaryawan});

  @override
  Widget build(BuildContext context) {
    final TextEditingController namaController = TextEditingController(text: namaKaryawan ?? '');
    final TextEditingController gajiController =
        TextEditingController(text: gajiKaryawan != null ? gajiKaryawan.toString() : '');
    final TextEditingController tugasController = TextEditingController();
    final TextEditingController tanggalBekerjaController = TextEditingController();
    final TextEditingController lamaBekerjaController = TextEditingController();

    return Padding(
      padding: EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16, // Menghindari overlap dengan keyboard
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tampilkan data nama karyawan jika tersedia
            if (namaKaryawan != null)
              Text(
                'Nama: $namaKaryawan',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            const SizedBox(height: 8),
            if (gajiKaryawan != null)
              Text(
                'Gaji: Rp. $gajiKaryawan',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            const SizedBox(height: 24),

            const Text(
              'Tambah Gaji Karyawan',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),

            // Input Fields
            _buildTextField('Nama Karyawan', namaController),
            _buildTextField('Tugas', tugasController),
            _buildTextField('Tanggal Bekerja', tanggalBekerjaController, keyboardType: TextInputType.datetime),
            _buildTextField('Lama Bekerja', lamaBekerjaController),
            _buildTextField('Gaji Karyawan', gajiController, keyboardType: TextInputType.number),
            const SizedBox(height: 24),

            // Tombol Simpan
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  // Logika untuk menyimpan data
                  Navigator.pop(context); // Tutup modal
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Data berhasil disimpan!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF597445),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Simpan',
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

  Widget _buildTextField(String label, TextEditingController controller,
      {String? hintText, TextInputType keyboardType = TextInputType.text, int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          labelText: label,
          hintText: hintText,
          labelStyle: const TextStyle(color: Colors.grey),
          hintStyle: const TextStyle(color: Colors.grey),
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
