part of '_index.dart';

class KelolaPageDetailView extends StatelessWidget {
  KelolaPageDetailView({super.key});

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

  // ValueNotifier untuk menyimpan daftar gambar
  final ValueNotifier<List<String?>> imagesNotifier = ValueNotifier([null]);

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
              // Area banner dengan PageView
              ValueListenableBuilder<List<String?>>(
                valueListenable: imagesNotifier,
                builder: (context, images, _) {
                  return Container(
                    height: 200,
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      children: [
                        Expanded(
                          child: PageView.builder(
                            controller: _pageController,
                            itemCount: images.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () async {
                                  imagesNotifier.value = [
                                    ...imagesNotifier.value
                                      ..[index] = 'assets/field_image${index + 1}.jpg'
                                  ];
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 8),
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
                                      ? const Center(
                                          child: Icon(
                                            Icons.image_not_supported,
                                            size: 50,
                                            color: Colors.black54,
                                          ),
                                        )
                                      : null,
                                ),
                              );
                            },
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            imagesNotifier.value = [...imagesNotifier.value, null];
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreen.shade300,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text('Tambah Gambar', style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                  );
                },
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
              // Tombol simpan
              Center(
                child: FractionallySizedBox(
                  widthFactor: 0.8, // 80% dari lebar layar
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF597445),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
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
