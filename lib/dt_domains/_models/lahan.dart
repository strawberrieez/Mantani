part of '_index.dart';

class Lahan {
  final String id;
  final String createdAt;
  final String imageUrl;
  final String namaLahan;
  final String lokasiLahan;
  final String namaBenih;
  final String waktuPanen;
  final String tanggalTanam;
  final int hargaBeliBenih;
  final String merkBenih;
  final int hargaBeliPupuk;
  final String namaPupuk;
  final int minimalHargaJual;
  final int hargaJual;
  final String tanggalPanen;
  final int totalPanen;
  Lahan({
    this.id = '',
    this.createdAt = '',
    this.imageUrl = '',
    this.namaLahan = '',
    this.lokasiLahan = '',
    this.namaBenih = '',
    this.waktuPanen = '',
    this.tanggalTanam = '',
    this.hargaBeliBenih = 0,
    this.merkBenih = '',
    this.hargaBeliPupuk = 0,
    this.namaPupuk = '',
    this.minimalHargaJual = 0,
    this.hargaJual = 0,
    this.tanggalPanen = '',
    this.totalPanen = 0,
  });

  Lahan copyWith({
    String? id,
    String? createdAt,
    String? imageUrl,
    String? namaLahan,
    String? lokasiLahan,
    String? namaBenih,
    String? waktuPanen,
    String? tanggalTanam,
    int? hargaBeliBenih,
    String? merkBenih,
    int? hargaBeliPupuk,
    String? namaPupuk,
    int? minimalHargaJual,
    int? hargaJual,
    String? tanggalPanen,
    int? totalPanen,
  }) {
    return Lahan(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      imageUrl: imageUrl ?? this.imageUrl,
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
      tanggalPanen: tanggalPanen ?? this.tanggalPanen,
      totalPanen: totalPanen ?? this.totalPanen,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'created_at': createdAt});
    result.addAll({'image_url': imageUrl});
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
    result.addAll({'tanggal_panen': tanggalPanen});
    result.addAll({'total_panen': totalPanen});
  
    return result;
  }

  factory Lahan.fromMap(Map<String, dynamic> map) {
    return Lahan(
      id: map['id'] ?? '',
      createdAt: map['created_at'] ?? '',
      imageUrl: map['image_url'] ?? '',
      namaLahan: map['nama_lahan'] ?? '',
      lokasiLahan: map['lokasi_lahan'] ?? '',
      namaBenih: map['nama_benih'] ?? '',
      waktuPanen: map['waktu_panen'] ?? '',
      tanggalTanam: map['tanggal_tanam'] ?? '',
      hargaBeliBenih: map['harga_beli_benih']?.toInt() ?? 0,
      merkBenih: map['merk_benih'] ?? '',
      hargaBeliPupuk: map['harga_beli_pupuk']?.toInt() ?? 0,
      namaPupuk: map['nama_pupuk'] ?? '',
      minimalHargaJual: map['minimal_harga_jual']?.toInt() ?? 0,
      hargaJual: map['harga_jual']?.toInt() ?? 0,
      tanggalPanen: map['tanggal_panen'] ?? '',
      totalPanen: map['total_panen']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Lahan.fromJson(String source) => Lahan.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Lahan(id: $id, createdAt: $createdAt, imageUrl: $imageUrl, namaLahan: $namaLahan, lokasiLahan: $lokasiLahan, namaBenih: $namaBenih, waktuPanen: $waktuPanen, tanggalTanam: $tanggalTanam, hargaBeliBenih: $hargaBeliBenih, merkBenih: $merkBenih, hargaBeliPupuk: $hargaBeliPupuk, namaPupuk: $namaPupuk, minimalHargaJual: $minimalHargaJual, hargaJual: $hargaJual, tanggalPanen: $tanggalPanen, totalPanen: $totalPanen)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Lahan &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.imageUrl == imageUrl &&
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
      other.tanggalPanen == tanggalPanen &&
      other.totalPanen == totalPanen;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      createdAt.hashCode ^
      imageUrl.hashCode ^
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
      tanggalPanen.hashCode ^
      totalPanen.hashCode;
  }
}
