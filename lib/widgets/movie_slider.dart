import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Text('Favoritas', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
          ),

        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return _MoviePoster();
            }
          ),
        )

        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      color: Colors.blue,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          //Cartel
          FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'), 
            image: NetworkImage('https://m.media-amazon.com/images/M/MV5BYzdjMDAxZGItMjI2My00ODA1LTlkNzItOWFjMDU5ZDJlYWY3XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
            width: 130,
            height: 190,
            fit: BoxFit.cover,
          ),

          //Titulo
          Text('Interstellar',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          )
        ],
        ),
    );
  }
}