import 'package:flutter/material.dart';
import 'package:movie/model/film.dart';

class DetailScreen extends StatelessWidget {
  final FilmDetail film;

  const DetailScreen({Key? key, required this.film}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(film.posterLandscape)
                    ),
                  ),
                  Positioned(
                    left: 10.0,
                    bottom: 0.0,
                    child: Text(
                      film.title,
                      style: TextStyle(
                        fontFamily: 'static',
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 8.0),
                    child: Text(
                      film.year,
                      style: TextStyle(
                        fontFamily: 'opensans',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 32.0, right: 4.0),
                    child: Icon(Icons.access_time),
                  ),
                  Container(
                    child: Text(
                      film.duration,
                      style: TextStyle(
                        fontFamily: 'opensans',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        film.rating,
                        style: TextStyle(
                            fontFamily: 'opensans',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.star_border),
                      Text(
                        'Rate',
                        style: TextStyle(
                            fontFamily: 'opensans',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.moving),
                      Text(
                        film.Ranking,
                        style: TextStyle(
                            fontFamily: 'opensans',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0, top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: film.genre.map((list) {
                  return Container(
                    margin: EdgeInsets.only(right: 4.0),
                    padding: EdgeInsets.all(7.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                    child: Text(
                      list,
                      style: TextStyle(
                        fontFamily: 'opensans',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                film.story,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'opensans',
                    fontSize: 16.0,),
              ),
            ),
            Container(
              child: FavoriteButton(),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: film.photos.map((asset) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(asset),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        backgroundColor: isFavorite? Colors.black12 : Colors.yellow,
      ),
      icon: Icon(
        isFavorite ? Icons.check : Icons.add,
        color: isFavorite ? Colors.white : Colors.black,
        size: 24.0,
      ),
      label: Text('Tambahkan Watchlist',
        style: TextStyle(
          fontFamily: 'opensans',
          color: isFavorite ?  Colors.white : Colors.black,
        ),
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}