import 'package:flutter/material.dart';

class ProfilSayfasi extends StatelessWidget {
  const ProfilSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: CircleAvatar(
            radius: 50,
            child: Icon(Icons.person, size: 50)
          )),
        Row(
          children: [
            SizedBox(width: 10, height: 10),
            Text('Ad:'),
            SizedBox(width: 10, height: 10),
            Text('Ömer Faruk Işık'),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 10, height: 10),
            Text('Bölüm:'),
            SizedBox(width: 10, height: 10),
            Text('Yazılım Mühendisliği'),
          ],
        ),
      ],
    );
  }
}