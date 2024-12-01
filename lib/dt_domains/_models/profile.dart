part of '_index.dart';

class Profile {
  final String id;
  final String createdAt;
  final String imageUrl;
  final String namaPerusahaan;
  final String namaPemilik;
  final String noTlp;
  final String email;
  final String alamat;
  Profile({
    this.id = '',
    this.createdAt = '',
    this.imageUrl = '',
    this.namaPerusahaan = '',
    this.namaPemilik = '',
    this.noTlp = '',
    this.email = '',
    this.alamat = '',
  });

  Profile copyWith({
    String? id,
    String? createdAt,
    String? imageUrl,
    String? namaPerusahaan,
    String? namaPemilik,
    String? noTlp,
    String? email,
    String? alamat,
  }) {
    return Profile(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      imageUrl: imageUrl ?? this.imageUrl,
      namaPerusahaan: namaPerusahaan ?? this.namaPerusahaan,
      namaPemilik: namaPemilik ?? this.namaPemilik,
      noTlp: noTlp ?? this.noTlp,
      email: email ?? this.email,
      alamat: alamat ?? this.alamat,
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
  
    return result;
  }

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      id: map['id'] ?? '',
      createdAt: map['created_at'] ?? '',
      imageUrl: map['image_url'] ?? '',
      namaPerusahaan: map['nama_perusahaan'] ?? '',
      namaPemilik: map['nama_pemilik'] ?? '',
      noTlp: map['no_tlp'] ?? '',
      email: map['email'] ?? '',
      alamat: map['alamat'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Profile.fromJson(String source) => Profile.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Profile(id: $id, createdAt: $createdAt, imageUrl: $imageUrl, namaPerusahaan: $namaPerusahaan, namaPemilik: $namaPemilik, noTlp: $noTlp, email: $email, alamat: $alamat)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Profile &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.imageUrl == imageUrl &&
      other.namaPerusahaan == namaPerusahaan &&
      other.namaPemilik == namaPemilik &&
      other.noTlp == noTlp &&
      other.email == email &&
      other.alamat == alamat;
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
      alamat.hashCode;
  }
}
