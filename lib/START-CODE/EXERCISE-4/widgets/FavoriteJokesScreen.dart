import 'package:flutter/material.dart';
import '../main.dart';
import '../models/joke.dart';
import '../data/joke_data.dart';
import 'FavoriteCard.dart';

class FavoriteJokesScreen extends StatefulWidget {
  const FavoriteJokesScreen({super.key});

  @override
  State<FavoriteJokesScreen> createState() =>
      _FavoriteJokesScreenState();
}

class _FavoriteJokesScreenState 
  extends State<FavoriteJokesScreen> {

  Joke? _isFavorite;

  void onFavoriteClick(Joke joke) {
    setState(() {
      if (_isFavorite == joke) {
        _isFavorite = null;
      } else {
        _isFavorite = joke;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: appColor,
        title: const Text("Favorite Jokes"),
      ),
      body: ListView(
        children: [
          for (Joke joke in jokes)
            FavoriteCard(
              joke: joke,
              isFavorite: _isFavorite == joke,
              onFavClicked: () => onFavoriteClick(joke),
            ),
        ],
      ),
    );
  }
}