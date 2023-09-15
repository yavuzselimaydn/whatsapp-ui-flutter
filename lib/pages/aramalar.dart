import 'package:flutter/material.dart';
import 'package:whatsapp/constants/app_constants.dart';
import 'package:whatsapp/helper/data_helper.dart';
import 'package:whatsapp/models/user.dart';
import 'package:whatsapp/widgets/arama_wid.dart';

class Aramalar extends StatefulWidget {
  const Aramalar({super.key});

  @override
  State<Aramalar> createState() => _AramalarState();
}

class _AramalarState extends State<Aramalar> {
  late final List<User> aramalar;
  @override
  void initState() {
    super.initState();
    aramalar = DataHelper.verileriGetir();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: aramalar.length,
        itemBuilder: (context, index) {
          var arama = aramalar[index];
          return index == 0 ? aramaBaglantisi() : AramaWidget(arama: arama);
        });
  }

  Column aramaBaglantisi() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: ListTile(
            leading: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF128C7E),
              ),
              
              child: const Icon(
                Icons.share,
                size: 30,
                color: Colors.white,
                
              ),
            ),
            title: const Text(
              "Arama Baglantisi olustur",
              style: Sabitler.tabStyle,
            ),
            subtitle: const Text(
              "WhatsApp aramaniz icin baglanti paylasin",
              style: Sabitler.mesajStyle,
            ),
          ),
        ),
        const Padding(
        padding: EdgeInsets.only(left: 15,bottom: 10,top: 10),
        child: Text(
          "En son",
          style: Sabitler.tabStyle,
        ),
      ),
      ],
    );
  }
}
