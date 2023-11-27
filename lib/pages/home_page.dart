import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP Inventario'),
        backgroundColor: Color.fromARGB(255, 20, 79, 167)
      ),
      drawer: MainDrawer(),
      body: Center(
        child: ListView(
        children: <Widget>[
          DrawerItem(icon: Icons.public, text: 'Dashboard', onTap: () => Navigator.pushNamed(context, '/dashboard')),
          DrawerItem(icon: Icons.monetization_on, text: 'Lista', onTap: () => Navigator.pushNamed(context, '/lista')),
          DrawerItem(icon: Icons.monetization_on, text: 'Prducto', onTap: () => Navigator.pushNamed(context, '/producto')),
        ],
      ),
   ),
    );
  }
}

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
         UserAccountsDrawerHeader(
              accountName: Text('MENU Inventario'),
              accountEmail: Text('zarivera@unitec.edu'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://png.pngtree.com/png-vector/20190726/ourmid/pngtree-delivery-checklist-icon-for-your-project-png-image_1599187.jpg'), 
              ),
            decoration: BoxDecoration( color: Color.fromARGB(255, 10, 75, 136),
            ),
            ),
          DrawerItem(icon: Icons.home, text: 'Dashboard', onTap: () => Navigator.pushNamed(context, '/dashboard')),
          DrawerItem(icon: Icons.format_list_bulleted, text: 'Lista', onTap: () => Navigator.pushNamed(context, '/lista')),
        ],
      ),
    );
  }
}

class DrawerItem extends ListTile {
  DrawerItem({required IconData icon, required String text, required VoidCallback onTap}) : super(
    leading: Icon(icon),
    title: Text(text),
    onTap: onTap,
  );
}
