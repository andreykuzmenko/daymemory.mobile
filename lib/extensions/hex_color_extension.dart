import 'package:flutter/material.dart';

extension HexColor on Color {
  /// Returns a hex string representation of the color (RGB format without alpha).
  String hexString() {
    final r = ((this.r * 255.0).round() & 0xff).toRadixString(16).padLeft(2, '0');
    final g = ((this.g * 255.0).round() & 0xff).toRadixString(16).padLeft(2, '0');
    final b = ((this.b * 255.0).round() & 0xff).toRadixString(16).padLeft(2, '0');
    return '#$r$g$b';
  }

  /// Creates a Color from a hex string.
  /// Supports formats: '#RRGGBB', 'RRGGBB', '#AARRGGBB', 'AARRGGBB'
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Returns a hex string representation of the color (ARGB format with alpha).
  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) {
    final a = ((this.a * 255.0).round() & 0xff).toRadixString(16).padLeft(2, '0');
    final r = ((this.r * 255.0).round() & 0xff).toRadixString(16).padLeft(2, '0');
    final g = ((this.g * 255.0).round() & 0xff).toRadixString(16).padLeft(2, '0');
    final b = ((this.b * 255.0).round() & 0xff).toRadixString(16).padLeft(2, '0');
    return '${leadingHashSign ? '#' : ''}$a$r$g$b';
  }
}
