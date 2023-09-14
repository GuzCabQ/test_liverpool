import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Formatters {
  static String formatDate(DateTime dateTime, String formatoFecha) {
    final String fecha = DateFormat(formatoFecha, 'es_MX').format(dateTime);
    return fecha;
  }

  static String cifraConComas(double x) {
    List<String> parts = x.toString().split('.');
    RegExp re = RegExp(r'\B(?=(\d{3})+(?!\d))');

    parts[0] = parts[0].replaceAll(re, ',');
    if (parts.length == 1) {
      parts.add('00');
    } else {
      parts[1] = parts[1].padRight(2, '0').substring(0, 2);
    }
    return '\$${parts.join('.')}';
  }

  static Color hexToColor(String code) {
    final colorHex = code.replaceAll('#', '');
    Color color = Color(int.parse("0xff$colorHex"));
    return color;
  }
}
