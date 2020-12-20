import 'package:flutter/material.dart';

class Trending extends StatefulWidget {
  final Axis axiss;

  const Trending({Key key, this.axiss}) : super(key: key);

  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 7,
        shrinkWrap: true,
        scrollDirection: widget.axiss,
        itemBuilder: (BuildContext context, int item) {
          return SizedBox(
            height: 170,
            width: 300,
            child: Card(
              elevation: 4.0,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/${item}' + '.jpeg',
                    height: 140,
                    width: 300,
                    fit: BoxFit.fitWidth,
                  ),
                  ListTile(
                    title: Text('Happy Bones'),
                    subtitle: Text('221B baker street,England'),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
