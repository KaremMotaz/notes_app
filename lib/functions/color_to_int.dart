import 'dart:ui';

class AppColorUtils {
  // Convert Color to int
  static int colorToInt(Color color) {
    final a = (color.a * 255).round();
    final r = (color.r * 255).round();
    final g = (color.g * 255).round();
    final b = (color.b * 255).round();

    // Combine the components into a single int using bit shifting
    return (a << 24) | (r << 16) | (g << 8) | b;
  }
}