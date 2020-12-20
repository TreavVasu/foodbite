import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.menu),
          hintText: 'Find Restaurants',
          border: OutlineInputBorder(),
          isDense: true,
        ),
      ),
    );
  }
}
