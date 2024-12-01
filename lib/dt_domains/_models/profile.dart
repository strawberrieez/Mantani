part of '_index.dart';

class Profile {
  final String id;
  final String createdAt;
  final String namaPerusahaan;
  final String namaPemilik;
  final String noTlp;
  final String alamat;
  Profile({
    this.id = '',
    this.createdAt = '',
    this.namaPerusahaan = '',
    this.namaPemilik = '',
    this.noTlp = '',
    this.alamat = '',
  });

  Profile copyWith({
    String? id,
    String? createdAt,
    String? namaPerusahaan,
    String? namaPemilik,
    String? noTlp,
    String? alamat,
  }) {
    return Profile(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      namaPerusahaan: namaPerusahaan ?? this.namaPerusahaan,
      namaPemilik: namaPemilik ?? this.namaPemilik,
      noTlp: noTlp ?? this.noTlp,
      alamat: alamat ?? this.alamat,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'created_at': createdAt});
    result.addAll({'nama_perusahaan': namaPerusahaan});
    result.addAll({'nama_pemilik': namaPemilik});
    result.addAll({'no_tlp': noTlp});
    result.addAll({'alamat': alamat});
  
    return result;
  }

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      id: map['id'] ?? '',
      createdAt: map['created_at'] ?? '',
      namaPerusahaan: map['nama_perusahaan'] ?? '',
      namaPemilik: map['nama_pemilik'] ?? '',
      noTlp: map['no_tlp'] ?? '',
      alamat: map['alamat'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Profile.fromJson(String source) => Profile.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Profile(id: $id, createdAt: $createdAt, namaPerusahaan: $namaPerusahaan, namaPemilik: $namaPemilik, noTlp: $noTlp, alamat: $alamat)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Profile &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.namaPerusahaan == namaPerusahaan &&
      other.namaPemilik == namaPemilik &&
      other.noTlp == noTlp &&
      other.alamat == alamat;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      createdAt.hashCode ^
      namaPerusahaan.hashCode ^
      namaPemilik.hashCode ^
      noTlp.hashCode ^
      alamat.hashCode;
  }
}
