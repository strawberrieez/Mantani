part of '_index.dart';

class KelolaPageDetailView extends StatelessWidget {
  const KelolaPageDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LahanDetailPage(),
    );
  }
}

class LahanDetailPage extends StatefulWidget {
  @override
  _LahanDetailPageState createState() => _LahanDetailPageState();
}

class _LahanDetailPageState extends State<LahanDetailPage> {
  // Controllers untuk input
  final TextEditingController namaLahanController = TextEditingController();
  final TextEditingController lokasiLahanController = TextEditingController();
  final TextEditingController namaBenihController = TextEditingController();
  final TextEditingController waktuPanenController = TextEditingController();
  final TextEditingController tanggalTanamController = TextEditingController();
  final TextEditingController hargaBenihController = TextEditingController();
  final TextEditingController merkBenihController = TextEditingController();
  final TextEditingController hargaPupukController = TextEditingController();
  final TextEditingController namaPupukController = TextEditingController();
  final TextEditingController minimalHargaController = TextEditingController();
  final TextEditingController hargaJualController = TextEditingController();
  final TextEditingController tanggalPanenController = TextEditingController();

  // List gambar untuk banner
  List<String?> images = [null, null]; // Awalnya 2 gambar kosong (null)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade200,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text('Lahan 1', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Area banner dengan scroll dan tombol tambah
            Container(
              height: 200,
              margin: const EdgeInsets.only(bottom: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length + 1, // Tambahkan 1 untuk tombol tambah
                itemBuilder: (context, index) {
                  if (index == images.length) {
                    // Tombol tambah gambar
                    return GestureDetector(
                      onTap: () async {
                        // Logika menambahkan gambar baru
                        setState(() {
                          images.add(null); // Tambahkan kotak kosong baru
                        });
                      },
                      child: Container(
                        width: 200,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black54, width: 1),
                        ),
                        child: Center(
                          child: Icon(Icons.add, size: 50, color: Colors.black54),
                        ),
                      ),
                    );
                  } else {
                    // Menampilkan gambar kosong atau gambar yang sudah diupload
                    return GestureDetector(
                      onTap: () async {
                        // Simulasi user upload gambar
                        setState(() {
                          images[index] =
                              'assets/field_image${index + 1}.jpg'; // Ganti dengan gambar user
                        });
                      },
                      child: Container(
                        width: 200,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black54, width: 1),
                          image: images[index] != null
                              ? DecorationImage(
                                  image: AssetImage(images[index]!),
                                  fit: BoxFit.cover,
                                )
                              : null,
                        ),
                        child: images[index] == null
                            ? Center(
                                child: Icon(Icons.image_not_supported,
                                    size: 50, color: Colors.black54),
                              )
                            : null,
                      ),
                    );
                  }
                },
              ),
            ),
            // Form input data
            buildTextField('Nama Lahan', namaLahanController),
            buildTextField('Lokasi Lahan', lokasiLahanController),
            buildTextField('Nama Benih', namaBenihController),
            buildTextField('Waktu Panen', waktuPanenController, hintText: 'contoh: 2 bulan'),
            buildTextField('Tanggal Tanam', tanggalTanamController, hintText: 'contoh: 12 Oktober 2024'),
            buildTextField('Harga Beli Benih', hargaBenihController, hintText: 'contoh: Rp. 60000'),
            buildTextField('Merk Benih', merkBenihController),
            buildTextField('Harga Beli Pupuk', hargaPupukController, hintText: 'contoh: Rp. 265000'),
            buildTextField('Nama Pupuk', namaPupukController),
            buildTextField('Minimal Harga Jual/kg', minimalHargaController, hintText: 'contoh: Rp. 6000/kg'),
            buildTextField('Harga Jual/kg', hargaJualController),
            buildTextField('Tanggal Panen', tanggalPanenController),
            const SizedBox(height: 20),
            // Tombol simpan dengan desain lebar penuh
            Center(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF597445),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {
                    // Logika simpan data
                    print('Data tersimpan: ${namaLahanController.text}');
                  },
                  child: const Text(
                    'Simpan',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk membuat TextField
  Widget buildTextField(String label, TextEditingController controller, {String? hintText}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
