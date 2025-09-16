class CategoryModel {
  final String id;
  final String title;
  final String thumbnail;
  final double rating;
  final int ratingCount;
  final String description;
  final String category;

  // For History tab
  final int? episodesRead;
  final int? totalEpisodes;
  final String? lastRead;

  CategoryModel({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.rating,
    required this.ratingCount,
    required this.description,
    required this.category,
    this.episodesRead,
    this.totalEpisodes,
    this.lastRead,
  });
}
