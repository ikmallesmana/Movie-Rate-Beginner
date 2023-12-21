class FilmDetail {
  String title;
  String year;
  String duration;
  String rating;
  String Ranking;
  String story;
  String posterPotrait;
  String posterLandscape;
  List<String> genre;
  List<String> photos;

  FilmDetail({
    required this.title,
    required this.year,
    required this.duration,
    required this.rating,
    required this.Ranking,
    required this.story,
    required this.posterPotrait,
    required this.posterLandscape,
    required this.genre,
    required this.photos,
  });
}

var filmDetailList = [
  FilmDetail(
    title: 'The Shawshank Redemption',
    year: '1994',
    duration: '3h',
    rating: '9.3/10',
    Ranking: '1',
    story:
        'Dua orang budak dipenjarakan selama beberapa tahun, menemukan pelipur lara & tindakan penebusan dengan kesusilaan umum. Mereka menunjukan pentingnya "Harapan" yang terkadang kita semua membutuhkan',
    posterPotrait: 'images/shawshank.jpg',
    posterLandscape: 'images/shawshank1.jpg',
    genre: ['Crime', 'Drama'],
    photos: [
      'images/shawshank2.jpg','images/shawshank3.jpg','images/shawshank4.jpeg'
    ],
  ),
  FilmDetail(
      title: 'The Godfather',
      year: '1972',
      duration: '2h 55m',
      rating: '9.2/10',
      Ranking: '2',
      story: 'Seorang pimpinan dinasti organisasi kejahatan yang sudah tua, mengalihkan kendali kerajaan bawah-tanah kepada putranya yang enggan menerimanya',
      posterPotrait: 'images/godfather.jpg',
      posterLandscape: 'images/godfather1.jpg',
      genre: [
        'Crime','Drama'
      ],
      photos: [
        'images/godfather2.jpeg','images/godfather3.jpeg','images/godfather4.jpeg'
      ],
  ),
  FilmDetail(
      title: 'The Dark Knight',
      year: '2008',
      duration: '2h 32m',
      rating: '9.0/10',
      Ranking: '3',
      story: 'Batman memiliki musuh baru, Joker, otak kriminal yang berambisi menghancurkan Gotham City. Bersama Gordon dan Harvey Dent, Batman harus berjuang untuk menghentikannya sebelum semuanya terlambat.',
      posterPotrait: 'images/knight.jpg',
      posterLandscape: 'images/knight1.jpeg',
      genre: [
        'Action','Crime','Drama'
      ],
      photos: [
        'images/knight2.jpeg','images/knight3.jpeg','images/knight4.jpeg'
      ],
  ),
  FilmDetail(
      title: 'The Godfather Part II',
      year: '1974',
      duration: '3h 22m',
      rating: '9.0/10',
      Ranking: '4',
      story: 'Michael, putra Vito Corleone, berupaya terus memperluas "kerajaan" keluarganya. Meski telah mencapai kesepakatan bisnis dengan Hyman Roth, ganster, dia tak menyadari bahaya yang tengah menantinya.',
      posterPotrait: 'images/godf.png',
      posterLandscape: 'images/godf1.png',
      genre: [
        'Crime','Drama'
      ],
      photos: [
        'images/godf2.png','images/godf3.png','images/godf4.png'
      ],
  ),
  FilmDetail(
      title: '12 Angry Man',
      year: '1957',
      duration: '1h 36m',
      rating: '9.0',
      Ranking: '5',
      story: 'Tentang 12 orang yang berperan sebagai juri di pengadilan AS untuk kasus pembunuhan tunggal. Sang terdakwa merupakan seorang anak kecil yang diadili karena dituduh telah membunuh ayahnya sendiri.',
      posterPotrait: 'images/angryman.png',
      posterLandscape: 'images/angryman1.png',
      genre: [
        'Crime','Drama'
      ],
      photos: [
        'images/angryman2.png','images/angryman3.png','images/angryman4.png'
      ],
  ),
];
