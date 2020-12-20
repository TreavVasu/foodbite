import 'package:flutter/material.dart';

class FriendsList extends StatefulWidget {
  @override
  _FriendsListState createState() => _FriendsListState();
}

class _FriendsListState extends State<FriendsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 7,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int item) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/${item}.jpeg'),
            ),
          );
        });
  }
}
