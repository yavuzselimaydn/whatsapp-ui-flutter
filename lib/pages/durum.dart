import 'package:flutter/material.dart';
import 'package:whatsapp/constants/app_constants.dart';

class Durum extends StatefulWidget {
  const Durum({super.key});

  @override
  State<Durum> createState() => _DurumState();
}

class _DurumState extends State<Durum> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 15, top: 15),
        child: ListTile(
          leading: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/ben.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: const Text(
            "Durumum",
            style: Sabitler.tabStyle,
          ),
          subtitle: const Text(
            "Durum guncellemesi eklemek icin dokunun",
            style: Sabitler.mesajStyle,
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          "Son guncellemeler",
          style: TextStyle(
              fontFamily: "Lato", fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 15, top: 15),
        child: ListTile(
          leading: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/murat.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: const Text(
            "Murat Kankam",
            style: Sabitler.tabStyle,
          ),
          subtitle: const Text(
            "Dün 21:03",
            style: Sabitler.mesajStyle,
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          "Görülen güncellemeler",
          style: TextStyle(
              fontFamily: "Lato", fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 15, top: 15),
        child: ListTile(
          leading: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/sulo.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: const Text(
            "Babam",
            style: Sabitler.tabStyle,
          ),
          subtitle: const Text(
            "Dün 21:03",
            style: Sabitler.mesajStyle,
          ),
        ),
      ),
      const Divider(),
      const Center(
        child: Text(
          "Durum güncellemeleriniz uçtan uca sifrelidir",
          style: TextStyle(
              fontFamily: "Lato", fontSize: 13,),
        ),
      )
    ]);
  }
}
