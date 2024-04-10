import 'package:flutter/material.dart';
import 'package:cubex/src/core/routers/route_generator.dart';

class AppConstants {
  /*API ENDPOINT QUERY CATEGORIES*/
  static const categories = {
    'sports': 21,
    'movies': 11,
    'music': 12,
    'books': 10,
  };

  static const triviaCardCategories = [
    //ADD CATEGORY ID
    TriviaCardModel(
      icon: Icons.queue_music,
      title: 'Music',
      triviaId: 12,
    ),
    TriviaCardModel(
      icon: Icons.movie,
      title: 'Movies',
      triviaId: 11,
    ),
    TriviaCardModel(
      icon: Icons.book,
      title: 'Books',
      triviaId: 10,
    ),
    TriviaCardModel(
      icon: Icons.sports_rugby_rounded,
      title: 'Sports',
      triviaId: 21,
    ),
  ];
}

class TriviaCardModel {
  const TriviaCardModel({
    required this.icon,
    required this.title,
    required this.triviaId,
  });
  final IconData icon;
  final String title;
  final int triviaId;
}
