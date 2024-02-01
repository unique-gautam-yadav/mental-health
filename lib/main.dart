import 'package:flutter/material.dart';
import 'package:mental_health/common/colors/app_colors.dart';
import 'package:mental_health/features/activity/screens/activity_screen.dart';
import 'package:mental_health/features/home/screens/home_screen.dart';
import 'package:mental_health/routes/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.surfaceColor,
          background: AppColors.bgColor,
        ),
        // fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.activity: (context) => const ActivityScreen(),
      },
    );
  }
}
