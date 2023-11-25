import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil de Twitter'),
        actions: [
          IconButton(
            icon:const  Icon(Icons.settings),
            onPressed: () {
              // Acciones al presionar el ícono de configuración
              print('Configuración');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(),
            TweetList(),
          ],
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8BMfk7zAcAyweY3K7st8JvZ-_ji9Sk8mpMQ&usqp=CAU'),
              fit: BoxFit.cover,
            ),
          ),
          child: const Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  
                ),
              ),
              Positioned(
                left: 16, // Ajusta la posición a la izquierda
                bottom: 10, // Ajusta la posición hacia la parte inferior
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person, size: 50, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Nombre de Usuario',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                '@nombredeusuario',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              const Text(
                'Piloto de F1, actualmente trabaja con la escuderia de Red Bull Racing',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStatColumn('Tweets', '100'),
                  _buildStatColumn('Seguidores', '500'),
                  _buildStatColumn('Seguidos', '200'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStatColumn(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}

class TweetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildTweet('RagnarSuku',
            'Este es un tweet de ejemplo. ¡Hola, Twitter! 🐦'),
        _buildTweet('Nombre de Usuario', 'Otro tweet interesante. #Flutter'),
        // Agrega más tweets simulados aquí si lo deseas
      ],
    );
  }

  Widget _buildTweet(String username, String tweetText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person, size: 24, color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style:const  TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text('@nombredeusuario'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(tweetText),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.comment),
                  Icon(Icons.repeat),
                  Icon(Icons.favorite_border),
                  Icon(Icons.share),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
