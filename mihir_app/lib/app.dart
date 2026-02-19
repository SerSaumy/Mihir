import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'features/library/library_screen.dart';
import 'features/browse/browse_screen.dart';
import 'features/reader/reader_screen.dart';
import 'features/downloads/downloads_screen.dart';
import 'features/history/history_screen.dart';
import 'features/settings/settings_screen.dart';
import 'features/updates/updates_screen.dart';
import 'features/onboarding/onboarding_screen.dart';
import 'widgets/app_logo.dart';

class MihirApp extends StatelessWidget {
  const MihirApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Mihir',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      redirect: (context, state) async {
        final prefs = await SharedPreferences.getInstance();
        final hasSeenOnboarding = prefs.getBool('onboarding_complete') ?? false;
        if (!hasSeenOnboarding) {
          return '/onboarding';
        }
        return '/library';
      },
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/library',
      builder: (context, state) => const LibraryScreen(),
    ),
    GoRoute(
      path: '/browse',
      builder: (context, state) => const BrowseScreen(),
    ),
    GoRoute(
      path: '/reader/:mangaId/:chapterId',
      builder: (context, state) {
        final mangaId = int.parse(state.pathParameters['mangaId']!);
        final chapterId = int.parse(state.pathParameters['chapterId']!);
        return ReaderScreen(mangaId: mangaId, chapterId: chapterId);
      },
    ),
    GoRoute(
      path: '/downloads',
      builder: (context, state) => const DownloadsScreen(),
    ),
    GoRoute(
      path: '/history',
      builder: (context, state) => const HistoryScreen(),
    ),
    GoRoute(
      path: '/updates',
      builder: (context, state) => const UpdatesScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);
