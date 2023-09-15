import 'package:flutter/material.dart';
import 'package:whatsapp/constants/app_constants.dart';
import 'package:whatsapp/helper/data_helper.dart';
import 'package:whatsapp/models/user.dart';
import 'package:whatsapp/widgets/sohbetler_wid.dart';

class Sohbetler extends StatefulWidget {
  const Sohbetler({super.key});

  @override
  State<Sohbetler> createState() => _SohbetlerState();
}

class _SohbetlerState extends State<Sohbetler> {
  late final List<User> sohbetler;

  @override
  void initState() {
    super.initState();
    sohbetler = DataHelper.verileriGetir();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: sohbetler.length,
        itemBuilder: (context, index) {
          var sohbet = sohbetler[index];
          return index == 0
              ? arsiv()
              : SohbetWidget(sohbet : sohbet);
        });
  }

  Padding arsiv() {
    return Padding(
                padding: const EdgeInsets.only(top: 2),
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.archive_outlined,
                      size: 25,
                      color: Color(0xFF128C7E),
                    ),
                  ),
                  title: const Text(
                    "Arsivlenmis",
                    style: Sabitler.tabStyle,
                  ),
                ),
              );
  }
}
