import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_hunter/models/movie.dart';
import 'package:movie_hunter/widgets/chip.dart';
import 'package:movie_hunter/widgets/section_title.dart';

class DetailScreen extends StatefulWidget {
  final int id;

  const DetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final _genreScrollController = ScrollController();

  @override
  void dispose() {
    _genreScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var movieIndex = movies.indexWhere((movie) => movie.id == widget.id);
    var movie = movies[movieIndex];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: ClipRRect(
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(
                          sigmaX: 3,
                          sigmaY: 3
                      ),
                      child: Image.network(
                        movie.backdropUrl(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.arrow_back),
                                color: Colors.white,
                              ),
                            ),

                            FavoriteButton(
                              movieId: movie.id,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 36
                        ),
                        Center(
                          child: SizedBox(
                            width: 120,
                            height: 160,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                movie.posterUrl(),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ),
              ],
            ),
            Center(
              child: SizedBox(
                width: 1024,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        movie.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: <Widget>[
                          DetailSummary(
                              icon: Icons.schedule,
                              title: 'Tanggal rilis',
                              value: movie.releaseDate
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          DetailSummary(
                              icon: Icons.star,
                              title: 'Rating',
                              value: '${movie.rating}/10'
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SectionTitle(text: 'Genre'),
                      const SizedBox(
                        height: 4,
                      ),
                      SizedBox(
                        height: 32,
                        child: Scrollbar(
                          controller: _genreScrollController,
                          child: ListView.separated(
                            controller: _genreScrollController,
                            scrollDirection: Axis.horizontal,
                            itemCount: movie.genres == null ? 0 : movie.genres?.length as int,
                            itemBuilder: (builder, index) {
                              var genre = movie.genres?[index];

                              return InkWell(
                                onTap: () {},
                                child: ChipSuggestion(
                                    text: '${genre?.name}'
                                ),
                              );
                            }, separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(
                              width: 10,
                            );
                          },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SectionTitle(text: 'Sinopsis'),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        movie.overview,
                        style: const TextStyle(
                            fontSize: 14.0
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

class DetailSummary extends StatelessWidget{
  final IconData icon;
  final String title;
  final String value;

  const DetailSummary({Key? key, required this.icon, required this.title, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        Icon(
          icon,
          size: 24,
        ),
        const SizedBox(
          width: 12.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                  fontSize: 12
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(
              value,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600
              ),
            )
          ],
        )
      ],
    );
  }
}

class FavoriteButton extends StatefulWidget {
  final int movieId;
  const FavoriteButton({Key? key, required this.movieId}) : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();

    if(favoriteMovies.contains(widget.movieId)) {
      setState(() {
        isFavorite = true;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: IconButton(
        onPressed: () {
          if(isFavorite) {
            favoriteMovies.remove(widget.movieId);
          } else {
            favoriteMovies.add(widget.movieId);
          }
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border
        ),
        color: isFavorite ? Colors.pinkAccent : Colors.white,
      ),
    );
  }
}