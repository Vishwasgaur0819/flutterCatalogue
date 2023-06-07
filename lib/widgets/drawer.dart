import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        'https://w7.pngwing.com/pngs/695/655/png-transparent-head-the-dummy-avatar-man-tie-jacket-user.png';

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  accountName: Text('Vishwas Gaur'),
                  accountEmail: Text('vishwas@plus91labs.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  )),
            ),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.4,
              ),
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
