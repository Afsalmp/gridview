import 'package:flutter/material.dart';

class Nextpage extends StatefulWidget {
  const Nextpage({super.key});

  @override
  State<Nextpage> createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid View'),
  leading: IconButton( 
    onPressed: () {
      Navigator.pop(context);
    },
    icon: Icon(Icons.arrow_back),
  
  ),
  backgroundColor: Colors.black,
),

     
        body: GridViewExample(),
      ),
    );
  }
}

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: 30,
      itemBuilder: (BuildContext context, int index) {
        return GridTile(
          child: Container(
            margin: EdgeInsets.all(5),
            
            alignment: Alignment.center,
            child: Image.network(
              'https://wallpapers.com/images/hd/himalayan-bike-and-rider-art-vdimirea7rcf0ql0.jpg',
              fit: BoxFit.cover, 
              width: 1000,
              height: 1000,
            ),
          ),
        );
      },
    );
  }
}