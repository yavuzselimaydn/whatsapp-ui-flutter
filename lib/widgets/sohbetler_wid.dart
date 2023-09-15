import 'dart:math';
import 'package:flutter/material.dart';
import 'package:whatsapp/constants/app_constants.dart';
import 'package:whatsapp/models/user.dart';
import 'package:whatsapp/widgets/sohbet.dart';

class SohbetWidget extends StatelessWidget {
  final User sohbet;
  const SohbetWidget({
    required this.sohbet,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2, top: 2),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Sohbet(
                sohbet: sohbet,
              ),
            ),
          );
        },
        leading: InkWell(
          onTap: () { _profilGoster(context);},
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: sohbet.imagePath == ""
                    ? const AssetImage("assets/images/pp.jpg")
                    : AssetImage("assets/images/${sohbet.imagePath}"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Text(
          sohbet.ad,
          style: Sabitler.tabStyle,
        ),
        subtitle: hangiTik(),
        trailing: Text(sohbet.tarih, style: const TextStyle(fontSize: 13)),
      ),
    );
  }

  Future<dynamic> _profilGoster(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            alignment: const Alignment(0, -0.6),
            child: SizedBox(
              width: 150,
              height: 300,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: sohbet.imagePath == ""
                              ? const AssetImage("assets/images/pp.jpg")
                              : AssetImage("assets/images/${sohbet.imagePath}"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.message),
                        color: Theme.of(context).primaryColor,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.phone),
                          color: Theme.of(context).primaryColor),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.videocam_rounded),
                          color: Theme.of(context).primaryColor),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.info_outline),
                          color: Theme.of(context).primaryColor),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  Row hangiTik() {
    int index = Random().nextInt(4);
    List<Row> tikler = [ulasti(), okundu(), gonderildi(), geldi()];
    return tikler[index];
  }

  Row ulasti() {
    return Row(
      children: [
        const SizedBox(
          width: 2,
          child: Icon(
            Icons.check_outlined,
            size: 18,
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        const SizedBox(
          width: 2,
          child: Icon(
            Icons.check_outlined,
            size: 18,
          ),
        ),
        const SizedBox(
          width: 17,
        ),
        Text(
          sohbet.sonMesaj,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Row okundu() {
    return Row(
      children: [
        SizedBox(
          width: 2,
          child: Icon(
            Icons.check_outlined,
            size: 18,
            color: Colors.blue.shade400,
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        SizedBox(
          width: 2,
          child: Icon(
            Icons.check_outlined,
            size: 18,
            color: Colors.blue.shade400,
          ),
        ),
        const SizedBox(
          width: 17,
        ),
        Text(
          sohbet.sonMesaj,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Row gonderildi() {
    return Row(
      children: [
        const Icon(
          Icons.check_outlined,
          size: 18,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          sohbet.sonMesaj,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Row geldi() {
    return Row(
      children: [
        const SizedBox(
          width: 3,
        ),
        Text(
          sohbet.sonMesaj,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
