import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.android_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: <Widget>[
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 30.0,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text('Este es mi examen impartido por',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Text('Isaac Galindo Barbina',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal)),
                    ],
                  )
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300.0,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.android, color: Colors.black),
                          onPressed: () {},
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.messenger_outline,
                              color: Colors.black),
                          onPressed: () {},
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.favorite, color: Colors.black),
                          onPressed: () {},
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.share, color: Colors.black),
                          onPressed: () {},
                        ),
                        Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 20,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 30.0,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text('Flutter y su lenguaje con el que trabaja es',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Text('el poderosisimo dart',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal)),
                    ],
                  )
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300.0,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.android, color: Colors.black),
                          onPressed: () {},
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.messenger_outline,
                              color: Colors.black),
                          onPressed: () {},
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.favorite, color: Colors.black),
                          onPressed: () {},
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.share, color: Colors.black),
                          onPressed: () {},
                        ),
                        Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 20,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 30.0,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text('Toy cansao papito',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Text('me se la de chambear pero me cuesta todavia:(',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal)),
                    ],
                  )
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300.0,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.android, color: Colors.black),
                          onPressed: () {},
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.messenger_outline,color: Colors.black),
                          onPressed: () {},
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.favorite, color: Colors.black),
                          onPressed: () {},
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.share, color: Colors.black),
                          onPressed: () {},
                        ),
                        Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
              const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text('Esta es una descripción de la imagen ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
