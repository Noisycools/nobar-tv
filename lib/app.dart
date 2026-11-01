import 'package:flutter/material.dart';
import 'package:nobar_tv/core/theme/app_colors.dart';
import 'package:nobar_tv/presentation/discovery_page.dart';

class NobarApp extends StatelessWidget {
  const NobarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nobar TV - Movie Discovery',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.brandGold,
          surface: AppColors.surface,
        ),
      ),
      home: const DiscoveryPage(),
    );
  }
}
