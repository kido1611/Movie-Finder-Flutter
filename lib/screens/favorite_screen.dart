import 'package:flutter/material.dart';
import 'package:movie_hunter/models/movie.dart';

import 'detail_screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {

  var _favMovies = [];

  @override
  void initState() {
    _favMovies = favoriteMovies;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int columnSize = 3;
    if(MediaQuery.of(context).size.width > 1024) {
      columnSize = 5;
    } else if(MediaQuery.of(context).size.width > 768) {
      columnSize = 4;
    }

    var size = MediaQuery.of(context).size;
    double itemWidth = (size.width-16-16-16-16) / columnSize;
    double itemHeight = (itemWidth * 4 /3)+8+44;
    double aspectRatio = itemWidth / itemHeight;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Film Favorit'
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back
          )
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 1182,
            child: GridView.count(
                padding: const EdgeInsets.all(16.0),
                childAspectRatio: aspectRatio,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                shrinkWrap: true,
                crossAxisCount: columnSize,
                children: _favMovies.map((favoriteMovieIndex) {
                  var movieIndex = movies.indexWhere((movie) => movie.id == favoriteMovieIndex);
                  var movie = movies[movieIndex];

                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return DetailScreen(id: movie.id);
                      }))
                          .then((_){
                        // Used to reload favorite movies after navigate
                        setState(() {});
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 3/4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              movie.posterUrl(),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                            height: 8.0
                        ),
                        Text(
                          movie.title,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                  );
                }).toList()
            ),
          ),
        ),
      ),
    );
  }
}