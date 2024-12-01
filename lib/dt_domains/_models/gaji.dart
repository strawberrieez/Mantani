part of '_index.dart';

class Gaji {
  final String id;
  final String createdAt;
  final String namaKaryawan;
  final String tugasKaryawan;
  final String tanggalBekerja;
  final String lamaBekerja;
  final int gaji;
  Gaji({
    this.id = '',
    this.createdAt = '',
    this.namaKaryawan = '',
    this.tugasKaryawan = '',
    this.tanggalBekerja = '',
    this.lamaBekerja = '',
    this.gaji = 0,
  });

  Gaji copyWith({
    String? id,
    String? createdAt,
    String? namaKaryawan,
    String? tugasKaryawan,
    String? tanggalBekerja,
    String? lamaBekerja,
    int? gaji,
  }) {
    return Gaji(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      namaKaryawan: namaKaryawan ?? this.namaKaryawan,
      tugasKaryawan: tugasKaryawan ?? this.tugasKaryawan,
      tanggalBekerja: tanggalBekerja ?? this.tanggalBekerja,
      lamaBekerja: lamaBekerja ?? this.lamaBekerja,
      gaji: gaji ?? this.gaji,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'created_at': createdAt});
    result.addAll({'nama_karyawan': namaKaryawan});
    result.addAll({'tugas_karyawan': tugasKaryawan});
    result.addAll({'tanggal_bekerja': tanggalBekerja});
    result.addAll({'lama_bekerja': lamaBekerja});
    result.addAll({'gaji': gaji});
  
    return result;
  }

  factory Gaji.fromMap(Map<String, dynamic> map) {
    return Gaji(
      id: map['id'] ?? '',
      createdAt: map['created_at'] ?? '',
      namaKaryawan: map['nama_karyawan'] ?? '',
      tugasKaryawan: map['tugas_karyawan'] ?? '',
      tanggalBekerja: map['tanggal_bekerja'] ?? '',
      lamaBekerja: map['lama_bekerja'] ?? '',
      gaji: map['gaji']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Gaji.fromJson(String source) => Gaji.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Gaji(id: $id, createdAt: $createdAt, namaKaryawan: $namaKaryawan, tugasKaryawan: $tugasKaryawan, tanggalBekerja: $tanggalBekerja, lamaBekerja: $lamaBekerja, gaji: $gaji)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Gaji &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.namaKaryawan == namaKaryawan &&
      other.tugasKaryawan == tugasKaryawan &&
      other.tanggalBekerja == tanggalBekerja &&
      other.lamaBekerja == lamaBekerja &&
      other.gaji == gaji;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      createdAt.hashCode ^
      namaKaryawan.hashCode ^
      tugasKaryawan.hashCode ^
      tanggalBekerja.hashCode ^
      lamaBekerja.hashCode ^
      gaji.hashCode;
  }
}
