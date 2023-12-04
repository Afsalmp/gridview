
import 'package:flutter/material.dart';
import 'package:gridview/next.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Slivers Example'),
        ),
        body: CustomScrollViewExample(),
      ),
    );
  }
}

class CustomScrollViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: const Color.fromARGB(255, 221, 207, 207),
          expandedHeight: 150.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Sliver AppBar'),
            background: Image.network(
              'https://images6.alphacoders.com/133/1331137.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuViN7efAwB5dbdgcONdw73Omzm1fDYqFK9g&usqp=CAU'),
                ),
                title: Text('Afsal $index'),
                subtitle: Text('Message $index'),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Tapped on item $index')),
                  );
                },
              );
            },
            childCount: 20,
          ),
        ),

        SliverToBoxAdapter(
        
          
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Nextpage()));
            },
            child: Text("Next"),
          ),
        ),
      ],
    );
  }
}
