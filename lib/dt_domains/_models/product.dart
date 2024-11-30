part of '_index.dart';

class Product {
  final String id;
  final String createdAt;
  final String imageUrl;
  final String namaPerusahaan;
  final String namaPemilik;
  final String noTlp;
  final String email;
  final String alamat;
  final String namaLahan;
  final String lokasiLahan;
  final String namaBenih;
  final String waktuPanen;
  final String tanggalTanam;
  final String hargaBeliBenih;
  final String merkBenih;
  final String hargaBeliPupuk;
  final String namaPupuk;
  final String minimalHargaJual;
  final String hargaJual;
  final String hargaPanen;
  final String namaKaryawan;
  final String tugasKaryawan;
  final String tanggalBekerja;
  final String lamaBekerja;
  final int gaji;
  final String tanggalPanen;
  Product({
    this.id = '',
    this.createdAt = '',
    this.imageUrl = '',
    this.namaPerusahaan = '',
    this.namaPemilik = '',
    this.noTlp = '',
    this.email = '',
    this.alamat = '',
    this.namaLahan = '',
    this.lokasiLahan = '',
    this.namaBenih = '',
    this.waktuPanen = '',
    this.tanggalTanam = '',
    this.hargaBeliBenih = '',
    this.merkBenih = '',
    this.hargaBeliPupuk = '',
    this.namaPupuk = '',
    this.minimalHargaJual = '',
    this.hargaJual = '',
    this.hargaPanen = '',
    this.namaKaryawan = '',
    this.tugasKaryawan = '',
    this.tanggalBekerja = '',
    this.lamaBekerja = '',
    this.gaji = 0,
    this.tanggalPanen = '',
  });

  Product copyWith({
    String? id,
    String? createdAt,
    String? imageUrl,
    String? namaPerusahaan,
    String? namaPemilik,
    String? noTlp,
    String? email,
    String? alamat,
    String? namaLahan,
    String? lokasiLahan,
    String? namaBenih,
    String? waktuPanen,
    String? tanggalTanam,
    String? hargaBeliBenih,
    String? merkBenih,
    String? hargaBeliPupuk,
    String? namaPupuk,
    String? minimalHargaJual,
    String? hargaJual,
    String? hargaPanen,
    String? namaKaryawan,
    String? tugasKaryawan,
    String? tanggalBekerja,
    String? lamaBekerja,
    int? gaji,
    String? tanggalPanen,
  }) {
    return Product(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      imageUrl: imageUrl ?? this.imageUrl,
      namaPerusahaan: namaPerusahaan ?? this.namaPerusahaan,
      namaPemilik: namaPemilik ?? this.namaPemilik,
      noTlp: noTlp ?? this.noTlp,
      email: email ?? this.email,
      alamat: alamat ?? this.alamat,
      namaLahan: namaLahan ?? this.namaLahan,
      lokasiLahan: lokasiLahan ?? this.lokasiLahan,
      namaBenih: namaBenih ?? this.namaBenih,
      waktuPanen: waktuPanen ?? this.waktuPanen,
      tanggalTanam: tanggalTanam ?? this.tanggalTanam,
      hargaBeliBenih: hargaBeliBenih ?? this.hargaBeliBenih,
      merkBenih: merkBenih ?? this.merkBenih,
      hargaBeliPupuk: hargaBeliPupuk ?? this.hargaBeliPupuk,
      namaPupuk: namaPupuk ?? this.namaPupuk,
      minimalHargaJual: minimalHargaJual ?? this.minimalHargaJual,
      hargaJual: hargaJual ?? this.hargaJual,
      hargaPanen: hargaPanen ?? this.hargaPanen,
      namaKaryawan: namaKaryawan ?? this.namaKaryawan,
      tugasKaryawan: tugasKaryawan ?? this.tugasKaryawan,
      tanggalBekerja: tanggalBekerja ?? this.tanggalBekerja,
      lamaBekerja: lamaBekerja ?? this.lamaBekerja,
      gaji: gaji ?? this.gaji,
      tanggalPanen: tanggalPanen ?? this.tanggalPanen,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'created_at': createdAt});
    result.addAll({'image_url': imageUrl});
    result.addAll({'nama_perusahaan': namaPerusahaan});
    result.addAll({'nama_pemilik': namaPemilik});
    result.addAll({'no_tlp': noTlp});
    result.addAll({'email': email});
    result.addAll({'alamat': alamat});
    result.addAll({'nama_lahan': namaLahan});
    result.addAll({'lokasi_lahan': lokasiLahan});
    result.addAll({'nama_benih': namaBenih});
    result.addAll({'waktu_panen': waktuPanen});
    result.addAll({'tanggal_tanam': tanggalTanam});
    result.addAll({'harga_beli_benih': hargaBeliBenih});
    result.addAll({'merk_benih': merkBenih});
    result.addAll({'harga_beli_pupuk': hargaBeliPupuk});
    result.addAll({'nama_pupuk': namaPupuk});
    result.addAll({'minimal_harga_jual': minimalHargaJual});
    result.addAll({'harga_jual': hargaJual});
    result.addAll({'harga_panen': hargaPanen});
    result.addAll({'nama_karyawan': namaKaryawan});
    result.addAll({'tugas_karyawan': tugasKaryawan});
    result.addAll({'tanggal_bekerja': tanggalBekerja});
    result.addAll({'lama_bekerja': lamaBekerja});
    result.addAll({'gaji': gaji});
    result.addAll({'tanggal_panen': tanggalPanen});
  
    return result;
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? '',
      createdAt: map['created_at'] ?? '',
      imageUrl: map['image_url'] ?? '',
      namaPerusahaan: map['nama_perusahaan'] ?? '',
      namaPemilik: map['nama_pemilik'] ?? '',
      noTlp: map['no_tlp'] ?? '',
      email: map['email'] ?? '',
      alamat: map['alamat'] ?? '',
      namaLahan: map['nama_lahan'] ?? '',
      lokasiLahan: map['lokasi_lahan'] ?? '',
      namaBenih: map['nama_benih'] ?? '',
      waktuPanen: map['waktu_panen'] ?? '',
      tanggalTanam: map['tanggal_tanam'] ?? '',
      hargaBeliBenih: map['harga_beli_benih'] ?? '',
      merkBenih: map['merk_benih'] ?? '',
      hargaBeliPupuk: map['harga_beli_pupuk'] ?? '',
      namaPupuk: map['nama_pupuk'] ?? '',
      minimalHargaJual: map['minimal_harga_jual'] ?? '',
      hargaJual: map['harga_jual'] ?? '',
      hargaPanen: map['harga_panen'] ?? '',
      namaKaryawan: map['nama_karyawan'] ?? '',
      tugasKaryawan: map['tugas_karyawan'] ?? '',
      tanggalBekerja: map['tanggal_bekerja'] ?? '',
      lamaBekerja: map['lama_bekerja'] ?? '',
      gaji: map['gaji']?.toInt() ?? 0,
      tanggalPanen: map['tanggal_panen'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(id: $id, createdAt: $createdAt, imageUrl: $imageUrl, namaPerusahaan: $namaPerusahaan, namaPemilik: $namaPemilik, noTlp: $noTlp, email: $email, alamat: $alamat, namaLahan: $namaLahan, lokasiLahan: $lokasiLahan, namaBenih: $namaBenih, waktuPanen: $waktuPanen, tanggalTanam: $tanggalTanam, hargaBeliBenih: $hargaBeliBenih, merkBenih: $merkBenih, hargaBeliPupuk: $hargaBeliPupuk, namaPupuk: $namaPupuk, minimalHargaJual: $minimalHargaJual, hargaJual: $hargaJual, hargaPanen: $hargaPanen, namaKaryawan: $namaKaryawan, tugasKaryawan: $tugasKaryawan, tanggalBekerja: $tanggalBekerja, lamaBekerja: $lamaBekerja, gaji: $gaji, tanggalPanen: $tanggalPanen)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Product &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.imageUrl == imageUrl &&
      other.namaPerusahaan == namaPerusahaan &&
      other.namaPemilik == namaPemilik &&
      other.noTlp == noTlp &&
      other.email == email &&
      other.alamat == alamat &&
      other.namaLahan == namaLahan &&
      other.lokasiLahan == lokasiLahan &&
      other.namaBenih == namaBenih &&
      other.waktuPanen == waktuPanen &&
      other.tanggalTanam == tanggalTanam &&
      other.hargaBeliBenih == hargaBeliBenih &&
      other.merkBenih == merkBenih &&
      other.hargaBeliPupuk == hargaBeliPupuk &&
      other.namaPupuk == namaPupuk &&
      other.minimalHargaJual == minimalHargaJual &&
      other.hargaJual == hargaJual &&
      other.hargaPanen == hargaPanen &&
      other.namaKaryawan == namaKaryawan &&
      other.tugasKaryawan == tugasKaryawan &&
      other.tanggalBekerja == tanggalBekerja &&
      other.lamaBekerja == lamaBekerja &&
      other.gaji == gaji &&
      other.tanggalPanen == tanggalPanen;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      createdAt.hashCode ^
      imageUrl.hashCode ^
      namaPerusahaan.hashCode ^
      namaPemilik.hashCode ^
      noTlp.hashCode ^
      email.hashCode ^
      alamat.hashCode ^
      namaLahan.hashCode ^
      lokasiLahan.hashCode ^
      namaBenih.hashCode ^
      waktuPanen.hashCode ^
      tanggalTanam.hashCode ^
      hargaBeliBenih.hashCode ^
      merkBenih.hashCode ^
      hargaBeliPupuk.hashCode ^
      namaPupuk.hashCode ^
      minimalHargaJual.hashCode ^
      hargaJual.hashCode ^
      hargaPanen.hashCode ^
      namaKaryawan.hashCode ^
      tugasKaryawan.hashCode ^
      tanggalBekerja.hashCode ^
      lamaBekerja.hashCode ^
      gaji.hashCode ^
      tanggalPanen.hashCode;
  }
}
