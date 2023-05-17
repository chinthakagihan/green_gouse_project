
import 'package:flutter/material.dart';
import 'package:icon_forest/icon_forest.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/whh.dart';
import 'package:iconify_flutter/icons/la.dart';
import 'package:flutter_iconify/flutter_iconify.dart';
import 'package:justino_icons/justino_icons.dart';
import 'package:iconify_flutter/icons/file_icons.dart';

class Navibar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName: Text('Test.com'),
              accountEmail: Text('example@gmail.com'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child:
              Image.asset(
                'assets/images/girl_profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
              ),
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.greenAccent,
              image: DecorationImage(
                  image:
                  AssetImage('assets/images/profile_bg3.jpg'),
                fit: BoxFit.fill,
            ),
          ),
          ),
          ListTile(
            leading: Iconify(FileIcons.dashboard),
            title: Text('Dashboard'),
            onTap: () => null,
          ),
          ListTile(
            leading: Iconify(La.warehouse_solid),
            title: Text('Store'),
            onTap: () => null,
          ),
          ListTile(
            leading: Iconify(Whh.plantalt),
            title: Text('Add Plants'),
            onTap: () => null,
          ),
          ListTile(
              leading: Icon(JustinoIcons.getByName('planting')),
              title: Text('Plant Details'),
              onTap: () => null,
            ),
          Divider(),
          ListTile(
            leading: Icon(IconifyLighter.stocks),
            title: Text('Statics'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.logout_sharp),
            title: Text('Log Out'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(JustinoIcons.getByName('exitSignalsProhibitions')),
            onTap: () => null,
          ),],
      ),
    );
  }
}


class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navibar(
      ),
      appBar: AppBar(
        title: Text('Green house Management'),
         centerTitle: true,
        backgroundColor: Colors.green,
      ),

      body: Container (
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/homepageback.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3), BlendMode.darken)

          ),
        ),
      ),
    );

  }
}
