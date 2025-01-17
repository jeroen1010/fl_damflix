
import 'package:fl_damflix/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              //Text('Prueba numero 1'),
              _InfoPelicula(),
              _Overview(),
              CastCarrousel()
            ]
            )
          )
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

class _InfoPelicula extends StatelessWidget {
  const _InfoPelicula({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'), 
              image: NetworkImage('https://es.web.img3.acsta.net/pictures/14/10/02/11/07/341344.jpg'),
              height: 250,

            )
          ),

          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('movie.title', style: Theme.of(context).textTheme.titleLarge, overflow: TextOverflow.ellipsis, maxLines: 2,),
              Text('pelicula.year',  style: Theme.of(context).textTheme.titleSmall),
              Text('pelicula.director',  style: Theme.of(context).textTheme.titleSmall),

              Row(children: [
                Icon(Icons.star, size: 20, color: Colors.yellow),
                Text('pelicula.valoracion', style: Theme.of(context).textTheme.titleSmall)
              ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text('Consequat commodo labore do culpa. Sit amet fugiat est est non aute eiusmod. Velit mollit aliqua sunt laboris occaecat Lorem nostrud irure culpa. Magna esse nisi amet consequat culpa minim laboris et sint. Occaecat consectetur nostrud elit veniam consequat reprehenderit consequat consequat qui qui. Veniam magna nostrud Lorem magna esse anim veniam deserunt.', textAlign: TextAlign.justify, style: Theme.of(context).textTheme.titleLarge),
    );
  }
}