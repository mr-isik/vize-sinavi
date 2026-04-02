import 'package:flutter/material.dart';
import 'package:myapp/KartlarveModeller/kurskarti.dart';
import 'package:myapp/KartlarveModeller/kursmodeli.dart';

class KurslarSayfasi extends StatelessWidget {
  const KurslarSayfasi({super.key});

  static const List<KursModeli> kursListesi = [
  KursModeli(
    KursAdi: "Mobil Uygulama Geliştirme",
    EgitmenAdi: "Dr. Hakan GENÇOĞLU",
    IlerlemeOrani: 0.65,
    KursIkonu: Icons.smart_toy_outlined,
  ),
  KursModeli(
    KursAdi: "Nesne Yönelimli Programlama",
    EgitmenAdi: "Dr. Volkan ÇETİN",
    IlerlemeOrani: 0.40, 
    KursIkonu: Icons.code, 
  ),
  KursModeli(
    KursAdi: "Veri Yapıları ve Algoritmalar",
    EgitmenAdi: "Dr. Cevat REŞİT",
    IlerlemeOrani: 0.85, 
    KursIkonu: Icons.account_tree_outlined,
  ),
  KursModeli(
    KursAdi: "Veritabanı Yönetim Sistemleri",
    EgitmenAdi: "Dr. Hakan GENÇOĞLU",
    IlerlemeOrani: 0.20,
    KursIkonu: Icons.storage_outlined,
  ),
  KursModeli(
    KursAdi: "Yapay Zekaya Giriş",
    EgitmenAdi: "Dr. Sahra Tilki",
    IlerlemeOrani: 0.10,
    KursIkonu: Icons.settings_overscan,
  ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: kursListesi.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,         
      crossAxisSpacing: 12,       
      mainAxisSpacing: 12,        
      childAspectRatio: 2.2,
    ),
    itemBuilder: (context, index) {
    
      final kurs = kursListesi[index];
    
      return KursKarti(Kursverisi: kurs);
    },
    );
  }
}