import 'package:flutter/material.dart';
import 'package:myapp/Ekranlar/Ayarlar/ayarlarsayfasi.dart';

class YanMenu extends StatelessWidget {
  const YanMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(decoration: BoxDecoration(color: Colors.blue),
        child: Text('Ara Sinav Projesi', style: TextStyle(color: Colors.white, fontSize: 24),)),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ayarlar'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const AyarlarSayfasi(),
                ),
              );
            },
          )
        ],
      )
    );
  }
}