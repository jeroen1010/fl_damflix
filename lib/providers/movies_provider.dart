import 'package:flutter/material.dart';

class MoviesProvider extends ChangeNotifier{
  MoviesProvider(){
    print('Movies provider esta inicializado');

    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    print('getOnDisplayMovies');
  }
}