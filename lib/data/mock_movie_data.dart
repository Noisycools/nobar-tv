import 'package:nobar_tv/models/hero_movie_item.dart';
import 'package:nobar_tv/models/spotlight_card_item.dart';
import 'package:nobar_tv/models/top_rated_item.dart';
import 'package:nobar_tv/models/trending_movie_item.dart';
import 'package:nobar_tv/models/upcoming_movie_item.dart';

class MockMovieData {
  static const List<String> categories = [
    'All',
    'Action',
    'Sci-Fi',
    'Drama',
    'Animation',
    'Horror',
  ];

  static const List<HeroMovieItem> heroMovies = [
    HeroMovieItem(
      title: 'Deadpool & Wolverine',
      description:
          'Marvel Studios presents their most iconic team-up yet. Wade Wilson returns from retirement to save his timeline with a reluctant Logan.',
      rating: '8.4',
      votes: '(1.2M votes)',
      metascore: '79 Metascore',
      pgRating: 'PG-13',
      duration: '2h 8m',
      bannerTag: '#1 In Theaters',
      qualityTag: '4K UHD',
      assetImage: 'assets/images/hero_deadpool.jpg',
      networkImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuBFKcqvEY0-P_BZGUbbT98jXJc3sfXDvPiZ-B_PczIX00-M5jMGCTq0XmwcS1scKpV4UM2jgj3xGhPMnC6L6hRQCq1I6XA-MOzhwhntcbdLfsKhF8OeV8ciC9L2lsiMVyP7-CrbfJZ-Mu2FF6iABaJsPlZlN2cL_nXlufQm6FSEXXbMu4z0nS94NuwWjSVIt-1D1I1ZbecPoZPx9meyYvLYA46zw3DQzCizKAxahcI',
    ),
    HeroMovieItem(
      title: 'Dune: Part Two',
      description:
          'Paul Atreides unites with Chani and the Fremen while seeking revenge against the conspirators who destroyed his family.',
      rating: '8.6',
      votes: '(850K votes)',
      metascore: '79 Metascore',
      pgRating: 'PG-13',
      duration: '2h 46m',
      bannerTag: '#1 Sci-Fi',
      qualityTag: 'IMAX',
      assetImage: 'assets/images/spotlight_dune.jpg',
      networkImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuDDNsDzqlWFw2CJcOT9_fGc6yeb8Xq0r_Y9Ah4aYUgs1HDEVwonByow-KR3NkwFCEvLKVNGJmVJJoaPtYi8HxjViLE0mWwHMoNBnzCMiXT-B_lsa8CIjYfgIisryTsSxGVTQyY2zsdeGqopvVufHgeY38QqHksyp4FUCuv7YoApRIlM0HVmXn2d6cvFeYAfd89GmLoFObIrgCGdlTV06v6accKSpIPWEEzDPrfqMz8',
    ),
    HeroMovieItem(
      title: 'Furiosa: A Mad Max Saga',
      description:
          'The origin story of renegade warrior Furiosa before her encounter and teamup with Mad Max in Fury Road.',
      rating: '7.6',
      votes: '(210K votes)',
      metascore: '79 Metascore',
      pgRating: 'R',
      duration: '2h 28m',
      bannerTag: 'Most Anticipated',
      qualityTag: 'Dolby Atmos',
      assetImage: 'assets/images/upcoming_furiosa.jpg',
      networkImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuA5erJIVppsC2F6h5Wg9Y13AIqmqQ_wRSDITjmLerDZ2npHOlPe3USLby_i94k8gzhHetAzVFYAs5GKWHSXZzOxnH0HYEfthvOXvuREk_922hjodsEmK5IqjDv4Vp9tMLYcPfhjTo0PxnEQDkGyUc-SynqHwHAIjUZv_hC9gQbz3HA4kYJCIyaDiROkaxAtM8p5SeMreL5c-HvM9Y2q-RY3tvPC4BkvW1FuiE0h-mc',
    ),
  ];

  static const List<SpotlightCardItem> spotlightCards = [
    SpotlightCardItem(
      title: 'Dune: Part Two',
      quote:
          '"A monumental sci-fi triumph that cements Denis Villeneuve among modern cinematic legends."',
      badge: "IMDb Editor's Spotlight",
      curatorTag: "Curator's Pick",
      ratingMeta: '93% Certified Fresh • 8.6 IMDb',
      assetImage: 'assets/images/spotlight_dune.jpg',
      networkImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuDDNsDzqlWFw2CJcOT9_fGc6yeb8Xq0r_Y9Ah4aYUgs1HDEVwonByow-KR3NkwFCEvLKVNGJmVJJoaPtYi8HxjViLE0mWwHMoNBnzCMiXT-B_lsa8CIjYfgIisryTsSxGVTQyY2zsdeGqopvVufHgeY38QqHksyp4FUCuv7YoApRIlM0HVmXn2d6cvFeYAfd89GmLoFObIrgCGdlTV06v6accKSpIPWEEzDPrfqMz8',
    ),
    SpotlightCardItem(
      title: 'Oppenheimer',
      quote:
          '"A gripping, breathtaking historical epic exploring the profound moral weight of invention."',
      badge: "IMDb Editor's Spotlight",
      curatorTag: 'Academy Winner',
      ratingMeta: '93% Certified Fresh • 8.9 IMDb',
      assetImage: 'assets/images/top_oppenheimer.jpg',
      networkImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuDtPYbIo8rxAk5xO3bNiIJt9NXqKJKn07dHHp-jctKZcyhp3MNnmDAV5j4fr0NrkypXOlP-qH0XQV8xF-k3nJRllTO69XIQtDl8pc-YE6LcJ0Cx7ZOmCQvARSFjgB6lElmzZWziQpfLVimnwX3iZTeCu6kVCM4Vu2ADgW01O1v47luhAUN6qJkrPVZ9K53MzArc0BrYOndLpUM-cJ4wuVOnG_NF30oaHFSPdgTz2UE',
    ),
    SpotlightCardItem(
      title: 'Shōgun',
      quote:
          '"An extraordinary prestige television saga steeped in political intrigue, honor, and raw ambition."',
      badge: "IMDb Editor's Spotlight",
      curatorTag: 'Top Rated Series',
      ratingMeta: '99% Certified Fresh • 8.8 IMDb',
      assetImage: 'assets/images/top_shogun.jpg',
      networkImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuBC7iE-WHvKB7EC61Ut5yB4z60E9tiJD8e-kD5HlzXEFx13NSyBG_0TO1DzDPCKg1nuybV7s-BwNyIYyqKGzg6tmKlD3IjMEw3AaRdtYApODNFQJGqieD_5_Ztm8xaWWcLXCV74ocgCXNvRbutFT7W2l7SiygtrtS-y9CyiannHii9j19f8hqNaKBC63Np248nTvlMAzV4QP0A0nojDYeowIuNtzwGpOqVNzhtGWPA',
    ),
    SpotlightCardItem(
      title: 'Fallout',
      quote:
          '"A darkly hilarious and spectacularly faithful wasteland adaptation that bursts with energy."',
      badge: "IMDb Editor's Spotlight",
      curatorTag: 'Fan Favorite',
      ratingMeta: '94% Certified Fresh • 8.5 IMDb',
      assetImage: 'assets/images/top_fallout.jpg',
      networkImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuAyFhAJPZgcXFhmYn_f-_g1Rvs9KSbiW2rpS9fMqKmtYrZs3BYz7U6Q_sxyIdg77FUfoxCPOP1HoEaSeehpq4QVLUSPgG4mw3VF1sRovxHI0eOFwwl6UOXef48M6fFJEGG35fGdrdiQTI-gi0-h-Uczqj7ileGp3SmFQgBX3f2r4rW8C3ty0vfsjkDVJJ7wiaz7ynk4MRPFUGCFQ7tVFJzedJncrg4Nt53rVmpGavA',
    ),
  ];

  static const List<TrendingMovieItem> trendingMovies = [
    TrendingMovieItem(
      rank: 1,
      title: 'Bad Boys: Ride or Die',
      rating: '7.0',
      year: '2024',
      genres: 'Action • Comedy',
      assetImage: 'assets/images/trending_bad_boys.jpg',
      networkImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuDZRgl_vpkp1nrrSf1W2E3R00MgEZTSK40sYEtXL9ySt5Y8nhBhAAYMiEoPHPkHqHoYNeDn0ToYwJ8oTCx9D2yfGfiYG_nRXntaRPlagbI2rwsWAhJz8CBAS3TL4iuBNQr5BSQPaaA7Fw0azq7IW9y-8eluwPTCfoXtDh3n6UVOaPXORxfg9Rl_z8UFIgcnarcLgLbIQVAeiw-39f9pX6F3D6Ozj9bUy4yrH9Vy1nk',
    ),
    TrendingMovieItem(
      rank: 2,
      title: 'Despicable Me 4',
      rating: '6.8',
      year: '2024',
      genres: 'Animation • Family',
      assetImage: 'assets/images/trending_despicable_me.jpg',
      networkImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuD_JsrVqgKELMfr5r10Cf6iYl6Z4uUeuRcxgz5dHBoT3m66NVTorr18rvUNqSYatkQM-VKySzMQ0iaiEOfI4enWvZe9TNETostujbYxJGySg2HkawlnAinSC-pML9obazQSPocalqVCXRf94R2P4cHKNRrTj6VIPm-yNLMZ9WrqEH46TipQ-SuYIxWn8eoFCydCWVb5hZw3-HT-zPAfWvXaGYd8nXGwWRLXQf268Z8',
    ),
    TrendingMovieItem(
      rank: 3,
      title: 'A Quiet Place: Day One',
      rating: '7.2',
      year: '2024',
      genres: 'Horror • Sci-Fi',
      assetImage: 'assets/images/trending_quiet_place.jpg',
      networkImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuCTcMN9Nu-Tg8RXQ_A7Dgpmt0hGCRvAhKST5yHbX0OwT3hNXdhogJAH0pLLbpzNpyH24DJyBrxa5smcBo4rrVHxP8nLbNFiGIeR_yqASRORRtPGvRESmbgUzIGoZyBLo8k1d9BdLUCQm7P1RBJBEbHPuJyCS8brlidbENUmfXsyhtbXdbepGUPhqe-0oXJZcT74caOQOZo9U3hrtlFsrBl0ZMb-nw3v4N9AOEDN1PU',
    ),
    TrendingMovieItem(
      rank: 4,
      title: 'Planet of the Apes',
      rating: '7.4',
      year: '2024',
      genres: 'Action • Adventure',
      assetImage: 'assets/images/trending_apes.jpg',
      networkImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuAwOllKZMw1pAY6e5f6Jd6R99QiYUxJaCU-tEzRS_L7uzwGCfcvV3ECNe4SXmlUOJq3lO22a9Y8GuZ-XTs6_Q7B_nx8RQnrt5xl7VTN_k8R1LUR6R0HUZcVfvj5Jh7ob4eZZbq-RdnjQe5u2pVZpxx4nGpVhvLfh84Hlw_HLj74dLsAl4cRfKOoYQDbAXHAZwWHs-YnGZuCEkioQMXZNnjE0aUr8NLvfuTUjzuR_Ew',
    ),
  ];

  static const UpcomingMovieItem upcomingMovie = UpcomingMovieItem(
    title: 'Furiosa: A Mad Max Saga',
    subtitle: 'Anya Taylor-Joy, Chris Hemsworth',
    badge: 'Most Anticipated Fall',
    dateText: 'OCT 18',
    monthText: 'Oct 2024',
    headerTitle: 'In Theaters Soon',
    headerBadge: 'Tickets Available',
    assetImage: 'assets/images/upcoming_furiosa.jpg',
    networkImage:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuA5erJIVppsC2F6h5Wg9Y13AIqmqQ_wRSDITjmLerDZ2npHOlPe3USLby_i94k8gzhHetAzVFYAs5GKWHSXZzOxnH0HYEfthvOXvuREk_922hjodsEmK5IqjDv4Vp9tMLYcPfhjTo0PxnEQDkGyUc-SynqHwHAIjUZv_hC9gQbz3HA4kYJCIyaDiROkaxAtM8p5SeMreL5c-HvM9Y2q-RY3tvPC4BkvW1FuiE0h-mc',
  );

  static const List<TopRatedItem> topRatedMovies = [
    TopRatedItem(
      title: 'Oppenheimer',
      rating: '8.9',
      badge: '#42 IN TOP 250',
      genres: 'Biography • Drama',
      assetImage: 'assets/images/top_oppenheimer.jpg',
      networkImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuDtPYbIo8rxAk5xO3bNiIJt9NXqKJKn07dHHp-jctKZcyhp3MNnmDAV5j4fr0NrkypXOlP-qH0XQV8xF-k3nJRllTO69XIQtDl8pc-YE6LcJ0Cx7ZOmCQvARSFjgB6lElmzZWziQpfLVimnwX3iZTeCu6kVCM4Vu2ADgW01O1v47luhAUN6qJkrPVZ9K53MzArc0BrYOndLpUM-cJ4wuVOnG_NF30oaHFSPdgTz2UE',
    ),
    TopRatedItem(
      title: 'Shōgun',
      rating: '8.8',
      badge: 'TOP RATED TV',
      genres: 'Drama • Adventure',
      assetImage: 'assets/images/top_shogun.jpg',
      networkImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuBC7iE-WHvKB7EC61Ut5yB4z60E9tiJD8e-kD5HlzXEFx13NSyBG_0TO1DzDPCKg1nuybV7s-BwNyIYyqKGzg6tmKlD3IjMEw3AaRdtYApODNFQJGqieD_5_Ztm8xaWWcLXCV74ocgCXNvRbutFT7W2l7SiygtrtS-y9CyiannHii9j19f8hqNaKBC63Np248nTvlMAzV4QP0A0nojDYeowIuNtzwGpOqVNzhtGWPA',
    ),
    TopRatedItem(
      title: 'Fallout',
      rating: '8.5',
      badge: 'FAN FAVORITE',
      genres: 'Sci-Fi • Action',
      assetImage: 'assets/images/top_fallout.jpg',
      networkImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuAyFhAJPZgcXFhmYn_f-_g1Rvs9KSbiW2rpS9fMqKmtYrZs3BYz7U6Q_sxyIdg77FUfoxCPOP1HoEaSeehpq4QVLUSPgG4mw3VF1sRovxHI0eOFwwl6UOXef48M6fFJEGG35fGdrdiQTI-gi0-h-Uczqj7ileGp3SmFQgBX3f2r4rW8C3ty0vfsjkDVJJ7wiaz7ynk4MRPFUGCFQ7tVFJzedJncrg4Nt53rVmpGavA',
    ),
    TopRatedItem(
      title: 'Perfect Days',
      rating: '7.9',
      badge: 'OSCAR NOMINEE',
      genres: 'Drama • Tokyo',
      assetImage: 'assets/images/top_perfect_days.jpg',
      networkImage:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuAlWSx-ffhhKdAAGeriCWikDDI3Wq7bSw8-EHrL53RzX1Ikosfz7SL7mqF5Sb8xDWmXmMIeQhTgqbTS9SQpztw3tUEuqr3E-b-J8HpJFRI8HRCAGmdLYEbVmDTw9xATU7aOihgN9paLy1g-idvwmeJmatMhxAzbL6EEF6Qxx2zeJ00CDGKjvY8FxI5Oqf_Q_WtLfmSW5wAdiCCRgftcZWcohStdIQOcoHohr086Ph8',
    ),
  ];
}
