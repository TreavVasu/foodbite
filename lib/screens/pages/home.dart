import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:foodybite/screens/widgets/category.dart';
import 'package:foodybite/screens/widgets/friends.dart';
import 'package:foodybite/screens/widgets/search_bar.dart';
import 'package:foodybite/screens/widgets/trending_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              //Search
              Expanded(
                flex: 0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SearchBar(),
                ),
              ),
              //Trending
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                          ),
                          child: Text(
                            'Trending Restaurants',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Text(
                            'See all (8)',
                            style: TextStyle(color: Colors.grey.shade400),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SizedBox(
                        height: 220,
                        width: double.infinity,
                        child: Trending(
                          axiss: Axis.horizontal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Category
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                          ),
                          child: Text(
                            'Category',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Text(
                            'See all (8)',
                            style: TextStyle(color: Colors.grey.shade400),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SizedBox(
                        height: 100,
                        width: double.infinity,
                        child: CategoryList(),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                          ),
                          child: Text(
                            'Friends',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Text(
                            'See all (58)',
                            style: TextStyle(color: Colors.grey.shade400),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: FriendsList(),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 17,
        onPressed: () => print('pressed'),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: Colors.purple[900],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        shape: CircularNotchedRectangle(),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                onPressed: () => print('Home'),
                child: Image.asset(
                  'assets/images/home.png',
                  height: 20,
                  width: 20,
                  color: Colors.purple[900],
                ),
              ),
              MaterialButton(
                onPressed: () => print('Bookmark'),
                child: Image.asset(
                  'assets/images/bookmark.png',
                  height: 20,
                  width: 20,
                  color: Colors.purple[900],
                ),
              ),
              Spacer(),
              MaterialButton(
                onPressed: () => print('Bell'),
                child: Image.asset(
                  'assets/images/bell.png',
                  height: 20,
                  width: 20,
                  color: Colors.purple[900],
                ),
              ),
              MaterialButton(
                onPressed: () => print('Profile'),
                child: Image.asset(
                  'assets/images/user.png',
                  height: 20,
                  width: 20,
                  color: Colors.purple[900],
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
      ),
    );
  }
}
