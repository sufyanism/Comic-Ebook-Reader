class ComicModel {
  final String title;
  final String thumb;
  final double rating;
  final String genre;

  // ✅ New fields for locking and offline reading
  final bool isLocked; // true => user must unlock (premium)
  final String? pdfPath; // local path to comic file (optional)

  ComicModel({
    required this.title,
    required this.thumb,
    required this.rating,
    required this.genre,
    this.isLocked = false, // default: unlocked
    this.pdfPath, // null means not downloaded yet
  });

  ComicModel copyWith({
    String? title,
    String? thumb,
    double? rating,
    String? genre,
    bool? isLocked,
    String? pdfPath,
  }) {
    return ComicModel(
      title: title ?? this.title,
      thumb: thumb ?? this.thumb,
      rating: rating ?? this.rating,
      genre: genre ?? this.genre,
      isLocked: isLocked ?? this.isLocked,
      pdfPath: pdfPath ?? this.pdfPath,
    );
  }
}
