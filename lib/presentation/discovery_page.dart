import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:nobar_tv/core/theme/app_colors.dart';
import 'package:nobar_tv/data/mock_movie_data.dart';
import 'package:nobar_tv/presentation/widgets/carousel_indicator.dart';
import 'package:nobar_tv/presentation/widgets/category_rail.dart';
import 'package:nobar_tv/presentation/widgets/hero_carousel.dart';
import 'package:nobar_tv/presentation/widgets/spotlight_card_swiper.dart';
import 'package:nobar_tv/presentation/widgets/top_bar.dart';
import 'package:nobar_tv/presentation/widgets/top_rated_section.dart';
import 'package:nobar_tv/presentation/widgets/trending_section.dart';
import 'package:nobar_tv/presentation/widgets/upcoming_section.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({super.key});

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  final CardSwiperController _cardSwiperController = CardSwiperController();
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  int _selectedCategoryIndex = 0;
  int _currentHeroIndex = 0;
  bool _isMuted = false;

  @override
  void dispose() {
    _cardSwiperController.dispose();
    super.dispose();
  }

  void _onCategorySelected(int index) {
    setState(() {
      _selectedCategoryIndex = index;
    });
  }

  void _onToggleMute() {
    setState(() {
      _isMuted = !_isMuted;
    });
  }

  void _onHeroPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {
      _currentHeroIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        top: false,
        bottom: true,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              CategoryRail(
                categories: MockMovieData.categories,
                selectedIndex: _selectedCategoryIndex,
                onSelect: _onCategorySelected,
              ),
              HeroCarousel(
                movies: MockMovieData.heroMovies,
                carouselController: _carouselController,
                isMuted: _isMuted,
                onToggleMute: _onToggleMute,
                onPageChanged: _onHeroPageChanged,
              ),
              CarouselIndicator(
                count: MockMovieData.heroMovies.length,
                currentIndex: _currentHeroIndex,
              ),
              SpotlightCardSwiper(
                cards: MockMovieData.spotlightCards,
                controller: _cardSwiperController,
              ),
              const TrendingSection(
                movies: MockMovieData.trendingMovies,
              ),
              const UpcomingSection(
                movie: MockMovieData.upcomingMovie,
              ),
              const TopRatedSection(
                movies: MockMovieData.topRatedMovies,
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
