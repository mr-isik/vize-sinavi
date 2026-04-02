import 'package:flutter/material.dart';

class AltMenu extends StatelessWidget {
  final int aktifIndis;
  final Function(int) Tiklamafonksiyonu;

  const AltMenu({super.key, 
    required this.aktifIndis, 
    required this.Tiklamafonksiyonu});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(destinations: const <Widget>[
      NavigationDestination(icon: Icon(Icons.copy), label: 'Kurslar'),
      NavigationDestination(icon: Icon(Icons.calendar_month), label: 'Takvim'),
      NavigationDestination(icon: Icon(Icons.person), label: 'Profil')
    ],
    onDestinationSelected: Tiklamafonksiyonu,
    selectedIndex: aktifIndis,
    );
  }
}