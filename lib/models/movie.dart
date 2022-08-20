class Movie {
  int id;
  String backdropPath;
  String title;
  List<Genre>? genres;
  String posterPath;
  double rating;
  String overview;
  String releaseDate;

  Movie({
    required this.id,
    required this.backdropPath,
    required this.title,
    this.genres,
    required this.posterPath,
    required this.rating,
    required this.overview,
    required this.releaseDate
  });

  static const baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  String posterUrl() {
    return baseImageUrl+posterPath;
  }

  String backdropUrl() {
    return baseImageUrl+backdropPath;
  }
}

class Genre {
  int id;
  String name;

  Genre({
    required this.id,
    required this.name
});
}

var movies = [
  Movie(
    backdropPath: '/p1F51Lvj3sMopG948F5HsBbl43C.jpg',
    title: 'Thor: Love and Thunder',
    posterPath: '/pIkRyD18kl4FhoCNQuWxWu5cBLM.jpg',
    rating: 6.8,
    id: 616037,
    overview: 'After his retirement is interrupted by Gorr the God Butcher, a galactic killer who seeks the extinction of the gods, Thor enlists the help of King Valkyrie, Korg, and ex-girlfriend Jane Foster, who now inexplicably wields Mjolnir as the Mighty Thor. Together they embark upon a harrowing cosmic adventure to uncover the mystery of the God Butcher’s vengeance and stop him before it’s too late.',
    releaseDate: '2022-07-06',
    genres: [
      Genre(id: 28, name: 'Action'),
      Genre(id: 12, name: 'Adventure'),
      Genre(id: 14, name: 'Fantasy')
    ]
  ),
  Movie(
    title: 'Minions: The Rise of Gru',
    posterPath: '/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg',
    rating: 7.8,
    id: 438148,
    overview: 'A fanboy of a supervillain supergroup known as the Vicious 6, Gru hatches a plan to become evil enough to join them, with the backup of his followers, the Minions.',
    releaseDate: '2022-06-29',
    backdropPath: '/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg',
      genres: [
        Genre(id: 10751, name: 'Family'),
        Genre(id: 16, name: 'Animation'),
        Genre(id: 12, name: 'Adventure'),
        Genre(id: 35, name: 'Comedy'),
        Genre(id: 14, name: 'Fantasy')
      ]
  ),
  Movie(
    title: 'Jurassic World Dominion',
    posterPath: '/kAVRgw7GgK1CfYEJq8ME6EvRIgU.jpg',
    rating: 7.1,
    id: 507086,
    overview: 'Four years after Isla Nublar was destroyed, dinosaurs now live—and hunt—alongside humans all over the world. This fragile balance will reshape the future and determine, once and for all, whether human beings are to remain the apex predators on a planet they now share with history’s most fearsome creatures.',
    releaseDate: '2022-06-01',
    backdropPath: '/7bhvI1tM7JBmqP8HSevIsebSBbh.jpg',
    genres: [
      Genre(
        id:12,
        name: 'Adventure'
      ),
      Genre(
        id: 28,
        name: 'Action'
      ),
      Genre(
        id:878,
        name: 'Science Fiction'
      )
    ]
  ),
  Movie(
      title: 'Top Gun: Maveric',
      posterPath: '/62HCnUTziyWcpDaBO2i1DX17ljH.jpg',
      rating: 8.3,
      id: 361743,
      overview: 'A beautiful, strong-willed young royal refuses to wed the cruel sociopath to whom she is betrothed and is kidnapped and locked in a remote tower of her father’s castle. With her scorned, vindictive suitor intent on taking her father’s throne, the princess must protect her family and save the kingdom.',
      releaseDate: '2022-06-16',
    genres: [
      Genre(
        id: 28,
        name: 'Action'
      ),
      Genre(
        id: 18,
        name: 'Drama'
      )
    ],
    backdropPath: '/odJ4hx6g6vBt4lBWKFD1tI8WS4x.jpg'
  ),
  Movie(
    title: 'Lightyear',
    posterPath: '/ox4goZd956BxqJH6iLwhWPL9ct4.jpg',
    rating: 7.4,
    id: 718789,
    overview: 'Legendary Space Ranger Buzz Lightyear embarks on an intergalactic adventure alongside a group of ambitious recruits and his robot companion Sox.',
    releaseDate: '2022-06-15',
    backdropPath: '/nW5fUbldp1DYf2uQ3zJTUdachOu.jpg',
    genres: [
      Genre(
        id: 16,
        name: 'Animation'
      ),
      Genre(
        id: 878,
        name: 'Science Fiction'
      ),
      Genre(
        id: 12,
        name: 'Adventure'
      ),
      Genre(
        id: 28,
        name: 'Action'
      ),
      Genre(
        id: 10751,
        name: 'Family'
      )
    ]
  ),
  Movie(
    title: 'The Black Phone',
    posterPath: '/p9ZUzCyy9wRTDuuQexkQ78R2BgF.jpg',
    rating: 8,
    id: 756999,
    overview: 'Finney Shaw, a shy but clever 13-year-old boy, is abducted by a sadistic killer and trapped in a soundproof basement where screaming is of little use. When a disconnected phone on the wall begins to ring, Finney discovers that he can hear the voices of the killer’s previous victims. And they are dead set on making sure that what happened to them doesn’t happen to Finney.',
    releaseDate: '2022-06-22',
    backdropPath: '/AfvIjhDu9p64jKcmohS4hsPG95Q.jpg',
    genres: [
      Genre(
        id: 27, name: 'Horror'
      ),
      Genre(
        id: 53,
        name: 'Thriller'
      )
    ]
  ),
  Movie(
    title: 'The Gray Man',
    posterPath: '/8cXbitsS6dWQ5gfMTZdorpAAzEH.jpg',
    rating: 7,
    id: 725201,
    overview: 'When a shadowy CIA agent uncovers damning agency secrets, he\'s hunted across the globe by a sociopathic rogue operative who\'s put a bounty on his head.',
    releaseDate: '2022-06-01',
    backdropPath: '/27Mj3rFYP3xqFy7lnz17vEd8Ms.jpg',
    genres: [
      Genre(id: 28, name: 'Action'),
      Genre(id: 53, name: 'Thriller')
    ]
  ),
  Movie(
    title: 'Doctor Strange in the Multiverse of Madness',
    posterPath: '/9Gtg2DzBhmYamXBS1hKAhiwbBKS.jpg',
    rating: 7.5,
    id: 453395,
    overview: 'Doctor Strange, with the help of mystical allies both old and new, traverses the mind-bending and dangerous alternate realities of the Multiverse to confront a mysterious new adversary.',
    releaseDate: '2022-05-04',
    backdropPath: '/wcKFYIiVDvRURrzglV9kGu7fpfY.jpg',
    genres: [
      Genre(id: 14, name: 'Fantasy'),
      Genre(id: 28, name: 'Action'),
      Genre(id: 12, name: 'Adventure')
    ]
  ),
  Movie(
    title: 'Dragon Knight',
    posterPath: '/uSMJbYhaEpQtF9vkMhpgljc0CA4.jpg',
    rating: 5.9,
    id: 919355,
    overview: 'Many years after the war has been lost, and all the dragons slain, a lone knight travels the lands of Agonos seeking to raise an army against the demon lord Abaddon. When a healer\'s vision reveals that one dragon still lives, and together with an eager young squire, the knight sets off in search of the fabled creature. As the armies of Abaddon descend on the human kingdoms, the dragon is their last hope of fending off the horde, before it lays waste to the lands of men. But does the creature even exist? And if it does, will it fight for them once more?',
    releaseDate: '2022-03-21',
    backdropPath: '/l99dylTOAMkwKSr54X5ytiEtnLA.jpg',
    genres: [
      Genre(id: 14, name: 'Fantasy'),
      Genre(id: 12, name: 'Adventure'),
      Genre(id: 28, name: 'Action')
    ]
  ),
  Movie(
    title: 'The Princess',
    posterPath: '/9pCoqX24a6rE981fY1O3PmhiwrB.jpg',
    rating: 7.1,
    id: 759175,
    overview: 'A beautiful, strong-willed young royal refuses to wed the cruel sociopath to whom she is betrothed and is kidnapped and locked in a remote tower of her father’s castle. With her scorned, vindictive suitor intent on taking her father’s throne, the princess must protect her family and save the kingdom.',
    releaseDate: '2022-06-16',
    backdropPath: '/5PnypKiSj2efSPqThNjTXz8jwOg.jpg',
    genres: [
      Genre(id: 14, name: 'Fantasy'),
      Genre(id: 28, name: 'Action')
    ]
  ),
  Movie(
    title: 'Bullet Train',
    posterPath: '/tVxDe01Zy3kZqaZRNiXFGDICdZk.jpg',
    rating: 7.4,
    id: 718930,
    overview: 'Unlucky assassin Ladybug is determined to do his job peacefully after one too many gigs gone off the rails. Fate, however, may have other plans, as Ladybug\'s latest mission puts him on a collision course with lethal adversaries from around the globe—all with connected, yet conflicting, objectives—on the world\'s fastest train.',
    releaseDate: '2022-07-03',
    backdropPath: '/C8FpZfTPEZDjngPlatiFsaDB4A.jpg',
    genres: [
      Genre(id: 28, name: 'Action'),
      Genre(id: 35, name: 'Comedy'),
      Genre(id: 80, name: 'Crime')
    ]
  ),
  Movie(
    title: 'DC League of Super-Pets',
    posterPath: '/r7XifzvtezNt31ypvsmb6Oqxw49.jpg',
    rating: 7.3,
    id: 539681,
    overview: 'When Superman and the rest of the Justice League are kidnapped, Krypto the Super-Dog must convince a rag-tag shelter pack - Ace the hound, PB the potbellied pig, Merton the turtle and Chip the squirrel - to master their own newfound powers and help him rescue the superheroes.',
    releaseDate: '2022-07-27',
    backdropPath: '/7ef3yg5eCE6ZGKMsqUrfH8KdSMA.jpg',
    genres: [
      Genre(id: 16, name: 'Animation'),
      Genre(id: 28, name: 'Action'),
      Genre(id: 10751, name: 'Family'),
      Genre(id: 878, name: 'Science Fiction'),
      Genre(id: 35, name: 'Comedy')
    ]
  ),
  Movie(
    title: 'Nope',
    posterPath: '/AcKVlWaNVVVFQwro3nLXqPljcYA.jpg',
    rating: 7.0,
    id: 762504,
    overview: 'Residents in a lonely gulch of inland California bear witness to an uncanny, chilling discovery.',
    releaseDate: '2022-07-20',
    backdropPath: '/x1VhwiNjr1dD0s5PT2iYvvOh2Op.jpg',
    genres: [
      Genre(id: 27, name: 'Horror'),
      Genre(id: 9648, name: 'Mystery'),
      Genre(id: 878, name: 'Science Fiction'),
      Genre(id: 53, name: 'Thriller')
    ]
  ),
  Movie(
    title: 'Paws of Fury: The Legend of Hank',
    posterPath: 'https://image.tmdb.org/t/p/w500/vccE9bBa9mgghFpkWzU1fQqmOKB.jpg',
    rating: 6.6,
    id: 366672,
    overview: 'A hard-on-his-luck hound finds himself in a town full of cats in need of a hero to defend them from a ruthless villain\'s wicked plot to wipe their village off the map. With help from a reluctant mentor, our underdog must assume the role of town samurai and team up with the villagers to save the day.',
    releaseDate: '2022-07-14',
    backdropPath: '/92PJmMopfy64VYjd0HvIQaHGZX0.jpg',
    genres: [
      Genre(id: 10751, name: 'Family'),
      Genre(id: 35, name: 'Comedy'),
      Genre(id: 16, name: 'Animation'),
      Genre(id: 28, name: 'Action')
    ]
  ),
  Movie(
    title: 'Junkyard Dogs',
    posterPath: '/5osig60Em9VqnfFPOVTXMScmO6y.jpg',
    rating: 0.0,
    id: 876487,
    overview: 'Follows a dog who is a master escape artist, who must team up with his puppy pals to prevent their block from being robbed',
    releaseDate: '2022-08-05',
    backdropPath: '/4LvAvuLo9AbwgZ3m7SS5STgpwKy.jpg',
    genres: [
      Genre(id: 35, name: 'Comedy'),
      Genre(id: 10751, name: 'Family')
    ]
  ),
  Movie(
    title: 'Sniper: The White Raven',
    posterPath: '/iZ1FZN2en9TbQhF9v4Y4KJWabsB.jpg',
    rating: 5.3,
    id: 966220,
    overview: 'Mykola is an eccentric pacifist who wants to be useful to humanity. When the war begins at Donbass, Mykola’s naive world is collapsing as the militants kill his pregnant wife and burn his home to the ground. Recovered, he makes a cardinal decision and gets enlisted in a sniper company. Having met his wife’s killers, he emotionally breaks down and arranges “sniper terror” for the enemy. He’s saved from a senseless death by his instructor who himself gets mortally wounded. The death of a friend leaves a “scar” and Mykola is ready to sacrifice his life.',
    releaseDate: '2022-05-03',
    backdropPath: '/4B6bYj7gr5wQBvQQhDwr6tzJyGR.jpg',
    genres: [
      Genre(id: 18, name: 'Drama'),
      Genre(id: 28, name: 'Action'),
      Genre(id: 10752, name: 'War')
    ]
  ),
  Movie(
    title: 'Easter Sunday',
    posterPath: '/peyxSGjFpLdoxfvojrYEiTqfEAu.jpg',
    rating: 7.3,
    id: 824281,
    overview: 'A man returns home for an Easter celebration with his riotous, bickering, eating, drinking, laughing, loving family, in this love letter to the Filipino-American community.',
    releaseDate: '2022-08-05',
    backdropPath: '/mqpskiWbua8rm5Mrwu3KTmLE7Y4.jpg',
    genres: [
      Genre(id: 35, name: 'Comedy')
    ]
  ),
  Movie(
    title: 'Where the Crawdads Sing',
    posterPath: '/n1el846gLDXfhOvrRCsyvaAOQWv.jpg',
    rating: 6.6,
    id: 682507,
    overview: 'Abandoned by her family, Kya raises herself all alone in the marshes outside of her small town. When her former boyfriend is found dead, Kya is instantly branded by the local townspeople and law enforcement as the prime suspect for his murder.',
    releaseDate: '2022-07-15',
    backdropPath: '/cMy13qHs6S7R2pjXpMTsr8PlUpK.jpg',
    genres: [
      Genre(id: 18, name: 'Drama'),
      Genre(id: 9648, name: 'Mystery')
    ]
  ),
  Movie(
    title: 'Dragon Ball Super: Super Hero',
    posterPath: '/rugyJdeoJm7cSJL1q4jBpTNbxyU.jpg',
    rating: 7.6,
    id: 610150,
    overview: 'The Red Ribbon Army, an evil organization that was once destroyed by Goku in the past, has been reformed by a group of people who have created new and mightier Androids, Gamma 1 and Gamma 2, and seek vengeance against Goku and his family.',
    releaseDate: '2022-06-11',
    backdropPath: '/uR0FopHrAjDlG5q6PZB07a1JOva.jpg',
    genres: [
      Genre(id: 16, name: 'Animation'),
      Genre(id: 878, name: 'Science Fiction'),
      Genre(id: 28, name: 'Action')
    ]
  ),
  Movie(
    title: 'Beast',
    posterPath: '/xIGr7UHsKf0URWmyyd5qFMAq4d8.jpg',
    rating: 0.0,
    id: 760741,
    overview: 'A recently widowed man and his two teenage daughters travel to a game reserve in South Africa. However, their journey of healing soon turns into a fight for survival when a bloodthirsty lion starts to stalk them.',
    releaseDate: '2022-08-11',
    backdropPath: '/8TUb2U9GN3PonbXAQ1FBcJ4XeXu.jpg',
    genres: [
      Genre(id: 53, name: 'Thriller'),
      Genre(id: 27, name: 'Horror')
    ]
  ),
  Movie(
    title: 'Fall',
    posterPath: '/v28T5F1IygM8vXWZIycfNEm3xcL.jpg',
    rating: 0.0,
    id: 985939,
    overview: 'For best friends Becky and Hunter, life is all about conquering fears and pushing limits. But after they climb 2,000 feet to the top of a remote, abandoned radio tower, they find themselves stranded with no way down. Now Becky and Hunter’s expert climbing skills will be put to the ultimate test as they desperately fight to survive the elements, a lack of supplies, and vertigo-inducing heights.',
    releaseDate: '2022-08-11',
    backdropPath: '/n4Iy2cE52WsTKeNtuSD7vgu2qwf.jpg',
    genres: [
      Genre(id: 53, name: 'Thriller')
    ]
  )
];

var upcomingMovies = [
  movies[18],
  movies[19],
  movies[20],
  movies[14],
  movies[15],
  movies[6],
  movies[8],
  movies[1],
  movies[4],
  movies[9],
];

var latestSeenMovies = [
  movies[0],
  movies[1],
  movies[2],
];

var popularMovies = [
  movies[0],
  movies[1],
  movies[2],
  movies[3],
  movies[4],
  movies[5],
  movies[6],
  movies[7],
  movies[8],
  movies[9]
];

var latestMovies = [
  movies[0],
  movies[1],
  movies[10],
  movies[11],
  movies[12],
  movies[13],
  movies[14],
  movies[15],
  movies[16],
  movies[17]
];

var forYouMovies = [
  movies[0],
  movies[1],
  movies[10],
  movies[11],
  movies[12],
  movies[13],
  movies[14],
  movies[15],
  movies[16],
  movies[17]
];

/// Used to store favorite movie
var favoriteMovies = [
  616037,
  361743,
  507086,
  718930
];