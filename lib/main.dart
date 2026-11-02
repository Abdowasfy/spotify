import 'package:flutter/material.dart';
import 'package:spotify/core/configs/theme/app_theme.dart';
import 'package:spotify/core/routing/router_generation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SpotifyApp());
}

class SpotifyApp extends StatelessWidget {
  const SpotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: AppTheme.lightTheme,
      routerConfig: RouterGeneration.goRouter,
    );
  }
}