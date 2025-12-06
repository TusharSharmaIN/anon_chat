import 'package:flutter/material.dart';

String stringCapitalize(String text) {
  if (text.isEmpty) return '';
  if (text.length == 1) return text;

  return '${text[0].toUpperCase()}${text.characters.getRange(1).toLowerCase()}';
}

bool isNotEmpty(String text) {
  final pattern = RegExp(
    r'^\s*$',
  ); // matches any string is not empty or white space

  return !pattern.hasMatch(text);
}

String naIfEmpty(String text) {
  return text.isEmpty ? 'NA' : text;
}

String dashIfEmpty(String text) {
  return text.isEmpty ? '-' : text;
}

String formatTimeAgo(DateTime date) {
  final now = DateTime.now();
  final diff = now.difference(date);

  if (diff.inDays >= 365) {
    final yrs = (diff.inDays / 365).floor();
    return yrs == 1 ? '1 year ago' : '$yrs years ago';
  }
  if (diff.inDays >= 30) {
    final mons = (diff.inDays / 30).floor();
    return mons == 1 ? '1 month ago' : '$mons months ago';
  }
  if (diff.inDays >= 1) {
    return diff.inDays == 1 ? '1 day ago' : '${diff.inDays} days ago';
  }
  if (diff.inHours >= 1) {
    return diff.inHours == 1 ? '1 hour ago' : '${diff.inHours} hours ago';
  }
  if (diff.inMinutes >= 1) {
    return diff.inMinutes == 1
        ? '1 minute ago'
        : '${diff.inMinutes} minutes ago';
  }
  if (diff.inSeconds >= 5) {
    return '${diff.inSeconds} seconds ago';
  }
  return 'just now';
}