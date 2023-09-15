import 'package:flutter/material.dart';
import 'package:whatsapp/constants/app_constants.dart';
import 'package:whatsapp/pages/aramalar.dart';
import 'package:whatsapp/pages/durum.dart';
import 'package:whatsapp/pages/sohbetler.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  late final List<Widget> tumSayfalar;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tumSayfalar = const [Sohbetler(), Durum(), Aramalar()];
  }
  
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: appBarIcons,
          title: const Text(
            "WhatsApp",
            style: Sabitler.baslikStyle,
          ),
          bottom: tabBar),
      body: TabBarView(
        controller: tabController,
        children: tumSayfalar,
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              16.0), // İstediğiniz yuvarlak köşe yarıçapını ayarlayabilirsiniz
        ),
        onPressed: () {},
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }

  TabBar get tabBar {
    return TabBar(controller: tabController, tabs: const [
      Tab(
          child: Text(
        "Sohbetler",
        style: Sabitler.tabStyle,
      )),
      Tab(
          child: Text(
        "Durum",
        style: Sabitler.tabStyle,
      )),
      Tab(
          child: Text(
        "Aramalar",
        style: Sabitler.tabStyle,
      )),
    ]);
  }

  List<Widget> get appBarIcons {
    return [
      IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
    ];
  }
}
