import 'package:flutter/material.dart';
import 'package:whatsapp/constants/app_constants.dart';
import 'package:whatsapp/models/user.dart';

class AramaWidget extends StatelessWidget {
  final User arama;
  const AramaWidget({required this.arama, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 5),
      child: ListTile(
        leading: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: arama.imagePath == ""
                  ? const AssetImage("assets/images/pp.jpg")
                  : AssetImage("assets/images/${arama.imagePath}"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          arama.ad,
          style: Sabitler.tabStyle,
        ),
        subtitle: Text(
          arama.tarih,
          style: Sabitler.mesajStyle,
        ),
        trailing: const Icon(
          Icons.phone,
          size: 25,
          color: Color(0xFF128C7E),
        ),
      ),
    );
  }
}
