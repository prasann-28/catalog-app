import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  accountEmail: Text(
                    "P S",
                    style: TextStyle(color: Colors.white),
                  ),
                  accountName: Text(
                    "ps@test.com",
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.jpeg"),
                  ), //
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    // // boxShadow: <BoxShadow>[
                    // //   BoxShadow(color: Colors.green),
                    // //   BoxShadow(color: Colors.blue)
                    // // ],
                    // backgroundBlendMode: BlendMode.dst,
                    // gradient: Gradient(
                    //     colors: [Colors.blue, Colors.white], stops: [2, 3])),
                  ))),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.4,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "About",
              textScaleFactor: 1.4,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Email",
              textScaleFactor: 1.4,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
