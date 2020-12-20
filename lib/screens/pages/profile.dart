import 'package:flutter/material.dart';
import 'package:foodybite/screens/widgets/trending_list.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Profile',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Pic Name Email
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/7.jpeg'),
                  ),
                ),
                Text(
                  'John Williams',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'john.williams@gmail.com',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          //Review Followers Following
          Expanded(
              flex: 0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '250',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Reviews',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  VerticalDivider(),
                  Column(
                    children: [
                      Text(
                        '100k',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  VerticalDivider(),
                  Column(
                    children: [
                      Text(
                        '30',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Following',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ],
              )),
          //ButtonBars
          Expanded(
              flex: 0,
              child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    onPressed: () => print('edit profile'),
                    child: Text('Edit Profile'),
                    color: Colors.blue[900],
                    height: 60,
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  ),
                  MaterialButton(
                    elevation: 0.5,
                    onPressed: () => print('Settings'),
                    child: Text('Settings'),
                    color: Colors.white,
                    height: 60,
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  ),
                ],
              )),
          //Trending
          Expanded(
            flex: 1,
            child: Trending(
              axiss: Axis.vertical,
            ),
          )
        ],
      ),
    );
  }
}
