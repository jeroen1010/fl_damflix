
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar()
        ],
      )
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      floating: true,
      pinned: true,
      snap: false,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          color: Colors.black54,
          alignment: Alignment.bottomCenter,
          child: Text('pelicula.titulo', style: TextStyle(color: Colors.white),)
          ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'), 
          image: NetworkImage('https://2.bp.blogspot.com/-Ezjj3Ih9eog/VWdJXjEXGPI/AAAAAAAACnA/Vk-fayxGzto/s1600/interstellar-wallpaper.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}