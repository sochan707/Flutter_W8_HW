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

  Joke? favJoke;

  void onFavoriteClick(Joke joke) {
    setState(() {
      if (favJoke == joke) {
        favJoke = null;
      } else {
        favJoke = joke;
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
              isFavorite: favJoke == joke,
              onFavClicked: () => onFavoriteClick(joke),
            ),
        ],
      ),
    );
  }
}