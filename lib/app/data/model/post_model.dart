class PostModel {
  String fotoProfile;
  String namaAkun;
  bool isSponsor;
  String postingGambar;
  bool isLike;
  bool isMark;
  int jumlahLike;
  String description;
  PostModel({
    required this.fotoProfile,
    required this.namaAkun,
    this.isSponsor = false,
    required this.postingGambar,
    this.isLike = false,
    this.isMark=false,
    required this.jumlahLike,
    required this.description,
  });
}
