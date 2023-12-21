import 'package:flutter/material.dart';
import 'package:movie/detail/detail_screen.dart';
import 'package:movie/model/film.dart';
import 'package:movie/watchlist/listwatch.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MOovie',
          style: TextStyle(
            fontFamily: 'opensansBold',
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final FilmDetail film = filmDetailList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(film: film);
              }));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: SizedBox(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(film.posterPotrait),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  film.title,
                                  style: TextStyle(
                                      fontFamily: 'static',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 8.0),
                                  padding: EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          film.year,
                                          style: TextStyle(
                                            fontFamily: 'opensans',
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          film.rating,
                                          style: TextStyle(
                                            fontFamily: 'opensans',
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10.0, top: 8.0),
                                  child: Row(
                                    children: film.genre.map((list) {
                                      return Container(
                                        margin: EdgeInsets.only(right: 4.0),
                                        padding: EdgeInsets.all(7.0),
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        child: Text(
                                          list,
                                          style: TextStyle(
                                              fontFamily: 'opensans',
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: filmDetailList.length,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 0) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainScreen()));
          }else if(index == 1){
          Navigator.push(
          context, MaterialPageRoute(builder: (context) => WatchList()));
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Watchlist',
          ),
        ],
      ),
    );
  }
}
