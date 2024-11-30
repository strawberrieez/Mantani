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
        backgroundColor: const Color(0xFFE7F0DC),
        appBar: AppBar(
          backgroundColor: const Color(0xFFE7F0DC),
          title: const Text(
            'Lahan 1',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxnamaLahan.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxnamaLahan.error,
                              labelText: 'Nama Lahan',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxlokasiLahan.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxlokasiLahan.error,
                              labelText: 'Lokasi Lahan',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxnamaBenih.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxnamaBenih.error,
                              labelText: 'Nama Benih',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxwaktuPanen.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxwaktuPanen.error,
                              labelText: 'Waktu Panen',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxtanggalTanam.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxtanggalTanam.error,
                              labelText: 'Tanggal Tanam',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxhargaBeliBenih.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxhargaBeliBenih.error,
                              labelText: 'Harga Beli Benih',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxmerkBenih.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxmerkBenih.error,
                              labelText: 'Merk Benih',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxhargaBeliPupuk.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxhargaBeliPupuk.error,
                              labelText: 'Harga Beli Pupuk',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxnamaPupuk.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxnamaPupuk.error,
                              labelText: 'Nama Pupuk',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxminimalHargaJual.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxminimalHargaJual.error,
                              labelText: 'Minimal Harga Jual/kg',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxhargaJual.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxhargaJual.error,
                              labelText: 'Harga Jual/kg',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxhargaJual.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxhargaJual.error,
                              labelText: 'Tanggal Panen',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

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
                                    ...imagesNotifier.value..[index] = 'assets/field_image${index + 1}.jpg'
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
              buildTextField('Waktu Panen', waktuPanenController),
              buildTextField('Tanggal Tanam', tanggalTanamController),
              buildTextField('Harga Beli Benih', hargaBenihController),
              buildTextField('Merk Benih', merkBenihController),
              buildTextField('Harga Beli Pupuk', hargaPupukController),
              buildTextField('Nama Pupuk', namaPupukController),
              buildTextField('Minimal Harga Jual/kg', minimalHargaController),
              buildTextField('Harga Jual/kg', hargaJualController),
              buildTextField('Tanggal Panen', tanggalPanenController),
              const SizedBox(height: 20),
              // Tombol simpan
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    nav.to(Routes.loginPage);
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
