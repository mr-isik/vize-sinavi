import 'package:flutter/material.dart';
import 'package:myapp/Ekranlar/Kurslar/kurslarsayfasi.dart';
import 'package:myapp/Ekranlar/Profil/profilsayfasi.dart';
import 'package:myapp/KartlarveModeller/indexedstack.dart';
import 'package:myapp/MenuveBarlar/altmenu.dart';
import 'package:myapp/MenuveBarlar/yanmenu.dart';

void main() {
  runApp(const MaterialApp(
    home: App()
  ));
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _seciliIndis = 0;

  final List<Widget> _sayfalar = [
    const Center(child: KurslarSayfasi()),
    const Center(child: Text("Akademik Takvim")),
    const Center(child: ProfilSayfasi()),
  ];

  final List<String> _basliklar = [
    'Kurslarım',
    'Takvim',
    'Profilim',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        _basliklar[_seciliIndis]
      )),
      body: Yigin(Seciliindis: _seciliIndis, Sayfalar: _sayfalar),
      bottomNavigationBar: AltMenu(
        aktifIndis: _seciliIndis,
        Tiklamafonksiyonu: (gelenIndis) {
          setState(() {
            _seciliIndis = gelenIndis;
          });
        },
      ),
      drawer: YanMenu(),
    );
  }
}