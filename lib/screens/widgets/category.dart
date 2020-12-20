import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 7,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int item) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 1.0,
            color: Colors.purple.withOpacity(0.5),
            child: SizedBox(
              height: 100,
              width: 100,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/${item}.jpeg',
                            ))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Center(
                    child: Text(
                      'Category',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
    ;
  }
}
