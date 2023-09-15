import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp/helper/data_helper.dart';
import 'package:whatsapp/models/user.dart';
import 'package:whatsapp/widgets/text_form_wid.dart';

class Sohbet extends StatefulWidget {
  final User sohbet;
  const Sohbet({required this.sohbet, super.key});

  @override
  State<Sohbet> createState() => _SohbetState();
}

class _SohbetState extends State<Sohbet> {
  @override
  void initState() {
    DataHelper.sil();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 25,
        title: _ppResim(),
        actions: sohbetIcon,
        toolbarHeight: 60,
      ),
      body: Stack(children: [
        Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/sohbet.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 130,
                  ),
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: DataHelper.mesajlar.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.all(2),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                padding: const EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                    color:
                                        Colors.green.shade100,
                                    borderRadius: BorderRadius.circular(16)),
                                child: DataHelper.mesajlar.isEmpty
                                    ? const SizedBox()
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            DataHelper.mesajlar[index],
                                            textAlign: TextAlign.end,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            children: [
                                              const SizedBox(
                                                height: 6,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "${DateTime.now().hour}:${DateTime.now().minute}",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors
                                                            .grey.shade800),
                                                  ),
                                                  const SizedBox(
                                                    width: 3,
                                                  ),
                                                  Icon(Icons.check_outlined,
                                                      size: 16,
                                                      color:
                                                          Colors.grey.shade700),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                              ),
                            ),
                          );
                        }),
                  ),
                  MyTextForm(
                    elemanEklendi: () {
                      setState(() {});
                    },
                  ),
                ],
              ),
            )),
        Positioned(
          top: 5,
          right: MediaQuery.of(context).size.width / 2 - 30,
          child: Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            child: const Text(
              "Bugun",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Positioned(
          top: 40,
          right: MediaQuery.of(context).size.width / 2 - 150,
          child: Container(
            width: 300,
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.orangeAccent.shade100.withOpacity(0.25),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Mesajlar ve aramalar uctan uca sifrelidir.WhatsApp da dahil olmak uzere bu sohbetin dısında bulunan hic kimse mesaj ve aramalarinizi okuyamaz ve dinleyemez. Daha fazla bilgi edinmek icin dokunun. ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w400, color: Colors.grey.shade800),
            ),
          ),
        ),
      ]),
    );
  }

  List<Widget> get sohbetIcon {
    return [
      IconButton(
          onPressed: () {}, icon: const Icon(Icons.phone), color: Colors.white),
      IconButton(
          onPressed: () {},
          icon: const Icon(Icons.videocam_rounded),
          color: Colors.white),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.more_vert_outlined),
        color: Colors.white,
      ),
    ];
  }

  Row _ppResim() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: widget.sohbet.imagePath == ""
              ? const AssetImage("assets/images/pp.jpg")
              : AssetImage("assets/images/${widget.sohbet.imagePath}"),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.sohbet.ad),
            if (Random().nextBool())
              const Text(
                "Cevrimici",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
              )
          ],
        ),
      ],
    );
  }
}
