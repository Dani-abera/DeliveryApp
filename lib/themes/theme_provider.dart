import 'package:flutter/material.dart';
import 'light_mode.dart'; // Importing the light theme configuration
import 'dark_mode.dart'; // Importing the dark theme configuration

// ThemeProvider class to manage theme state, extending ChangeNotifier for state management
class ThemeProvider with ChangeNotifier {
  // Private variable to hold the current theme data, initialized to light mode
  ThemeData _themeData = lightMode;

  // Getter to retrieve the current theme data
  ThemeData get themeData => _themeData;

  // Getter to check if the current theme is dark mode
  bool get isDarkMode => _themeData == darkMode;

  // Setter to update the theme data and notify listeners about the change
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners(); // Notifies all the widgets listening to this provider to rebuild
  }

  // Method to toggle between light and dark themes
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode; // Switch to dark mode
    } else {
      themeData = lightMode; // Switch to light mode
    }
  }
}
/*

 Explanation

 Imports:
flutter/material.dart: Provides Flutter's material design widgets and theming capabilities.
light_mode.dart and dark_mode.dart: These files presumably define the ThemeData configurations for light and dark themes, respectively.
ThemeProvider Class:
This class manages the application's theme state and extends ChangeNotifier, allowing it to notify listeners when changes occur.
Private Theme Data Variable:
_themeData: A private variable that holds the current ThemeData. It's initialized to lightMode, indicating that the app starts in light theme.

 Getters:
themeData: Returns the current ThemeData. This allows other parts of the app to access the current theme.
isDarkMode: Returns a boolean indicating whether the current theme is dark mode. It compares _themeData to darkMode.

 Setter:
themeData: Updates the _themeData variable with the new theme and calls notifyListeners() to inform all dependent widgets of the change, prompting them to rebuild with the new theme.
toggleTheme Method:
This method switches between light and dark themes. It checks the current theme and sets it to the opposite theme. By calling the setter themeData, it ensures that listeners are notified of the change.

 ask ChatGpt about the Usage
*/
