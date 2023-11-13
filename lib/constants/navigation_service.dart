import 'package:flutter/material.dart';
import 'package:quizapp/Views/User/Analytics/stats.dart';
import 'package:quizapp/Views/auth/loginscreen.dart';
import 'package:quizapp/Views/auth/registerscreen.dart';
import 'package:quizapp/Views/User/home/homescreen.dart';

/// A service class that handles navigation between different screens.
class NavigationService {
  /// The index of the currently selected item in the bottom navigation bar.
  static int selectedIndex = 0;

  /// Navigate to the home screen.
  static void navigateToHomeScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }

  /// Navigate to the stats screen.
  static void navigateToStatsScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StatsScreen(),
      ),
    );
  }

  /// Navigate to the login screen.
  static void navigateToLoginScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }

  /// Navigate to the register screen.
  static void navigateToRegisterScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegisterScreen(),
      ),
    );
  }
}

/// A class that handles item tap events for the bottom navigation bar.
class BottomNavigationBarHandler {
  /// Handle item tap events by updating the selected index and navigating to the corresponding screen.
  static void onItemTapped(BuildContext context, int index) {
    NavigationService.selectedIndex = index;

    switch (index) {
      case 0:
        NavigationService.navigateToHomeScreen(context);
        break;
      case 1:
        NavigationService.navigateToStatsScreen(context);
        break;
      case 2:
        NavigationService.navigateToLoginScreen(context);
        break;
      case 3:
        NavigationService.navigateToRegisterScreen(context);
        break;
    }
  }
}
