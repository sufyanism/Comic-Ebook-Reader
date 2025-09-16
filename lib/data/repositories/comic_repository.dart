
import 'package:comics/data/models/comic_model.dart';

class ComicRepository {
  List<ComicModel> getContinueReading() {
    return [
      ComicModel(
        title: "The Hidden Truth",
        thumb: "assets/images/hidden_truth.jpg",
        rating: 4.5,
        genre: "thriller",
      ),
      ComicModel(
        title: "Romantic Dusk",
        thumb: "assets/images/romantic_dusk.jpg",
        rating: 4.3,
        genre: "romance",
      ),
    ];
  }

  List<ComicModel> getPremiumComics() {
    return [
      ComicModel(
        title: "Rise of Shadows",
        thumb: "assets/images/rise_of_shadows.jpg",
        rating: 4.8,
        genre: "action",
      ),
      ComicModel(
        title: "Blood Moon",
        thumb: "assets/images/blood_moon.jpg",
        rating: 4.6,
        genre: "horror",
      ),
      ComicModel(
        title: "Love Beyond Time",
        thumb: "assets/images/love_beyond_time.jpg",
        rating: 4.7,
        genre: "romance",
      ),
      ComicModel(
        title: "Galaxy Wars",
        thumb: "assets/images/galaxy_wars.jpg",
        rating: 4.9,
        genre: "sci-fi",
      ),
    ];
  }

  List<ComicModel> getBestSellers() {
    return [
      ComicModel(
        title: "The Last Kingdom",
        thumb: "assets/images/the_last_kingdom.jpg",
        rating: 4.9,
        genre: "drama",
      ),
      ComicModel(
        title: "Cursed Souls",
        thumb: "assets/images/cursed_souls.jpg",
        rating: 4.7,
        genre: "horror",
      ),
      ComicModel(
        title: "Sweet Lies",
        thumb: "assets/images/sweet_lies.jpg",
        rating: 4.6,
        genre: "romance",
      ),
    ];
  }

  Map<int, List<ComicModel>> getDailyComics() {
    return {
      0: [
        ComicModel(
          title: "Monday Blast",
          thumb: "assets/images/monday_blast.jpg",
          rating: 4.2,
          genre: "comedy",
        ),
      ],
      3: [
        ComicModel(
          title: "Thursday Thriller",
          thumb: "assets/images/thursday_thriller.jpg",
          rating: 4.8,
          genre: "thriller",
        ),
        ComicModel(
          title: "Ghost of Thursday",
          thumb: "assets/images/ghost_of_thursday.jpg",
          rating: 4.5,
          genre: "horror",
        ),
      ],
      6: [
        ComicModel(
          title: "Sunday Soul",
          thumb: "assets/images/sunday_soul.jpg",
          rating: 4.9,
          genre: "fantasy",
        ),
      ],
    };
  }
}
