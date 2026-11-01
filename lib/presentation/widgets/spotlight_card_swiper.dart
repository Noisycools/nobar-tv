import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:nobar_tv/core/theme/app_colors.dart';
import 'package:nobar_tv/core/widgets/poster_image.dart';
import 'package:nobar_tv/models/spotlight_card_item.dart';

class SpotlightCardSwiper extends StatelessWidget {
  final List<SpotlightCardItem> cards;
  final CardSwiperController controller;

  const SpotlightCardSwiper({
    super.key,
    required this.cards,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.workspace_premium_rounded,
                    color: AppColors.brandGold,
                    size: 18,
                  ),
                  SizedBox(width: 6),
                  Text(
                    "IMDb EDITOR'S SPOTLIGHT",
                    style: TextStyle(
                      color: AppColors.brandGold,
                      fontSize: 11,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0.8,
                    ),
                  ),
                ],
              ),
              const Text(
                'Swipe to Match',
                style: TextStyle(
                  color: AppColors.textMuted,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 180,
            child: CardSwiper(
              controller: controller,
              cardsCount: cards.length,
              numberOfCardsDisplayed: 3,
              backCardOffset: const Offset(0, 14),
              padding: const EdgeInsets.symmetric(vertical: 6),
              isLoop: true,
              cardBuilder: (context, index, percentX, percentY) {
                final item = cards[index];
                return Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.card,
                        AppColors.surface,
                        AppColors.cardGradientEnd,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: AppColors.brandGold.withValues(alpha: 0.25),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.4),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 80,
                          height: 120,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white.withValues(alpha: 0.1),
                            ),
                          ),
                          child: PosterImage(
                            assetPath: item.assetImage,
                            networkUrl: item.networkImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color:
                                    AppColors.brandGold.withValues(alpha: 0.15),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                item.curatorTag,
                                style: const TextStyle(
                                  color: AppColors.brandGold,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              item.quote,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Color(0xFFE4E4E7),
                                fontSize: 11,
                                fontStyle: FontStyle.italic,
                                height: 1.3,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              item.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    item.ratingMeta,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: AppColors.textMuted,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'Explore',
                                      style: TextStyle(
                                        color: AppColors.brandGold,
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: AppColors.brandGold,
                                      size: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  controller.swipe(CardSwiperDirection.left);
                },
                child: Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    color: AppColors.card,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.1),
                    ),
                  ),
                  child: const Icon(
                    Icons.close_rounded,
                    color: AppColors.brandRed,
                    size: 18,
                  ),
                ),
              ),
              const SizedBox(width: 18),
              GestureDetector(
                onTap: () {
                  controller.undo();
                },
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: AppColors.card,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.1),
                    ),
                  ),
                  child: const Icon(
                    Icons.replay_rounded,
                    color: AppColors.textMuted,
                    size: 16,
                  ),
                ),
              ),
              const SizedBox(width: 18),
              GestureDetector(
                onTap: () {
                  controller.swipe(CardSwiperDirection.right);
                },
                child: Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    color: AppColors.card,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.brandGold.withValues(alpha: 0.5),
                    ),
                  ),
                  child: const Icon(
                    Icons.bookmark_add_rounded,
                    color: AppColors.brandGold,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
