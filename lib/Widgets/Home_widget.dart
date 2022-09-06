import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Card(
              shadowColor: Colors.black,
              elevation: 10,
              color: Colors.grey[500],
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.network('https://picsum.photos/250?image=9',
                      errorBuilder: (c, o, t) {
                        return const Icon(Icons.image_not_supported);
                      }, width: 500, height: 250, fit: BoxFit.fill),
                  const Text(
                    'This is a text',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            Card(
              shadowColor: Colors.black,
              elevation: 10,
              color: Colors.grey[400],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.home,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      const Text('Full Name \n Sub Title',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                      Image.network(
                        'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80',
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  const Text('Description:',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                  const Text(
                    'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                    style: TextStyle(fontSize: 13),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
