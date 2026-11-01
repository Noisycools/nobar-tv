import 'package:flutter/material.dart';
import 'package:nobar_tv/core/theme/app_colors.dart';

class PosterImage extends StatelessWidget {
  final String assetPath;
  final String networkUrl;
  final BoxFit fit;
  final double? width;
  final double? height;

  const PosterImage({
    super.key,
    required this.assetPath,
    required this.networkUrl,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetPath,
      width: width,
      height: height,
      fit: fit,
      errorBuilder: (context, error, stackTrace) {
        return Image.network(
          networkUrl,
          width: width,
          height: height,
          fit: fit,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              width: width,
              height: height,
              color: AppColors.card,
              child: const Center(
                child: Icon(Icons.movie_outlined, color: AppColors.textMuted),
              ),
            );
          },
        );
      },
    );
  }
}
