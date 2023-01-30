class Book {
  final String title;
  final String detail;
  final String rating;
  final String genre;
  final String imageUrl;

  Book(
      {required this.imageUrl,
      required this.title,
      required this.detail,
      required this.genre,
      required this.rating});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
        imageUrl: json['imageUrl'],
        title: json['title'],
        detail: json['detail'],
        genre: json['genre'],
        rating: json['rating']);
  }
}

List<Book> books = [
  Book(
      imageUrl: 'assets/ugly_love.jpg',
      title: 'Ugly Love: A Novel',
      detail:'When Tate Collins meets airline pilot Miles Archer, she doesn\'t think it\'s love at first sight. They wouldn’t even go so far as to consider themselves friends. The only thing Tate and Miles have in common is an undeniable mutual attraction.',
      genre: 'Novel',
      rating: '⭐⭐⭐⭐⭐'),
  Book(
      imageUrl: 'assets/power.jpg',
      title: 'The 48 Laws of Power',
      detail:'In the book that People magazine proclaimed “beguiling” and “fascinating,” Robert Greene and Joost Elffers have distilled three thousand years of the history of power into 48 essential laws by drawing.',
      genre: 'Adventure',
      rating: '⭐⭐⭐⭐'),
  Book(
      imageUrl:'assets/creative.jpg',
      title: 'The Creative Act: A Way of Being Hardcover',
      detail:
          'A gorgeous and inspiring work of art on creation, creativity, the work of the artist. It will gladden the hearts of writers and artists everywhere, and get them working again with a new sense of meaning and direction. A stunning accomplishment.',
      genre: 'Arts & Photography',
      rating: '⭐⭐⭐⭐⭐'),
];
