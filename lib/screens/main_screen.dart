import 'package:flutter/material.dart';
import 'package:movie_hunter/models/movie.dart';
import 'package:movie_hunter/screens/detail_screen.dart';
import 'package:movie_hunter/screens/favorite_screen.dart';
import 'package:movie_hunter/themes/colors.dart';

import '../widgets/section_title.dart';

class MainScreen extends StatefulWidget {

  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _popularMoviesScrollController = ScrollController();
  final _upcomingMoviesScrollController = ScrollController();
  final _latestMoviesScrollController = ScrollController();
  final _latestSeenMoviesScrollController = ScrollController();
  final _forYouMoviesScrollController = ScrollController();


  @override
  void dispose() {
    _popularMoviesScrollController.dispose();
    _upcomingMoviesScrollController.dispose();
    _latestMoviesScrollController.dispose();
    _latestSeenMoviesScrollController.dispose();
    _forYouMoviesScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    var spacer = const SizedBox(
      height: 20.0,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: SizedBox(
              width: 1200,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // Title
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            'Nonton film\napa hari ini ?',
                            style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return const FavoriteScreen();
                                }));
                              },
                              tooltip: 'Film favoritmu',
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.pinkAccent,
                              )
                          )
                        ],
                      ),
                    ),
                    spacer,
                    // Searchbar
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0,
                            right: 20.0,
                            bottom: 12.0
                        ),
                        child: InkWell(
                          onTap: () {

                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0,
                                horizontal: 16.0
                            ),
                            decoration: BoxDecoration(
                              color: Secondary.secondary90,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Row(
                              children: const <Widget>[
                                SizedBox(
                                  width: 4.0,
                                ),
                                Icon(
                                  Icons.search,
                                  color: Secondary.secondary10,
                                ),
                                SizedBox(
                                  width: 12.0,
                                ),
                                Text(
                                  'Cari film, seperti Thor, Avenger, Marvel, dll',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: Secondary.secondary10
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                    ),
                    spacer,
                    // Film Populer
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0
                      ),
                      child: const SectionTitle(text: 'Populer Minggu Ini'),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    SizedBox(
                        height: 204,
                        child: Scrollbar(
                            controller: _popularMoviesScrollController,
                            child: ListView.builder(
                                controller: _popularMoviesScrollController,
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14.0,
                                ),
                                itemCount: popularMovies.length,
                                itemBuilder: (context, index) {
                                  var movie = popularMovies[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4.0,
                                        horizontal: 6.0
                                    ),
                                    child: MovieItem(
                                      movie: movie,
                                    ),
                                  );
                                }
                            )
                        )
                    ),
                    spacer,
                    // Film Terbaru
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0
                      ),
                      child: const SectionTitle(
                          text: 'Terbaru'
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    SizedBox(
                        height: 204,
                        child: Scrollbar(
                            controller: _latestMoviesScrollController,
                            child: ListView.builder(
                                controller: _latestMoviesScrollController,
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14.0,
                                ),
                                itemCount: latestMovies.length,
                                itemBuilder: (context, index) {
                                  var movie = latestMovies[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4.0,
                                        horizontal: 6.0
                                    ),
                                    child: MovieItem(
                                      movie: movie,
                                    ),
                                  );
                                }
                            )
                        )
                    ),
                    spacer,
                    // Akan tayang
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0
                      ),
                      child: const SectionTitle(text: 'Akan Tayang'),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    SizedBox(
                        height: 204,
                        child: Scrollbar(
                            controller: _upcomingMoviesScrollController,
                            child: ListView.builder(
                                controller: _upcomingMoviesScrollController,
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14.0,
                                ),
                                itemCount: upcomingMovies.length,
                                itemBuilder: (context, index) {
                                  var movie = upcomingMovies[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4.0,
                                        horizontal: 6.0
                                    ),
                                    child: MovieItem(
                                      movie: movie,
                                    ),
                                  );
                                }
                            )
                        )
                    ),
                    spacer,
                    // Terakhir dilihat
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0
                      ),
                      child: const SectionTitle(
                          text: 'Terakhir Dilihat'
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    SizedBox(
                        height: 204,
                        child: Scrollbar(
                            controller: _latestSeenMoviesScrollController,
                            child: ListView.builder(
                                controller: _latestSeenMoviesScrollController,
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14.0,
                                ),
                                itemCount: latestSeenMovies.length,
                                itemBuilder: (context, index) {
                                  var movie = latestSeenMovies[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4.0,
                                        horizontal: 6.0
                                    ),
                                    child: MovieItem(
                                      movie: movie,
                                    ),
                                  );
                                }
                            )
                        )
                    ),
                    spacer,
                    // Menarik
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0
                      ),
                      child: const SectionTitle(
                          text: 'Untuk Kamu'
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    SizedBox(
                        height: 204,
                        child: Scrollbar(
                            controller: _forYouMoviesScrollController,
                            child: ListView.builder(
                                controller: _forYouMoviesScrollController,
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14.0,
                                ),
                                itemCount: forYouMovies.length,
                                itemBuilder: (context, index) {
                                  var movie = forYouMovies[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4.0,
                                        horizontal: 6.0
                                    ),
                                    child: MovieItem(
                                      movie: movie,
                                    ),
                                  );
                                }
                            )
                        )
                    )
                  ],
                ),
              ),
            ),
          )
        ),
      ),
    );
  }
}

class MovieItem extends StatelessWidget {
  final Movie movie;

  const MovieItem({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 108.0,
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(id: movie.id);
            }));
          },
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.network(
                        movie.posterUrl(),
                        width: 108,
                        height: 144,
                        fit: BoxFit.cover,
                      )
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 32,
                    height: 32,
                    margin: const EdgeInsets.only(top: 4.0, right: 4.0),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Text(
                      "${movie.rating}",
                      style: const TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 8.0
                ),
                child: Text(
                  movie.title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
              )
            ],
          ),
        )
    );
  }

}