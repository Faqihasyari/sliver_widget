import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // appBar: AppBar(
        //   title: const Text('HomeView'),
        //   centerTitle: true,
        // ),
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            height: 200,
            color: Colors.amber,
          ),
        ),
        SliverAppBar(
          // pinned: true,
          // floating: true,
          // snap: ,
          title: const Text('HomeView'),
          centerTitle: true,
          leading: Icon(Icons.add_a_photo),
          backgroundColor: Colors.blue,
          flexibleSpace: Center(
            child: FlutterLogo(
              size: 200,
            ),
          ),
          expandedHeight: 200,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add_alarm)),
          ],
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return Container(
            height: 200,
            color: Color.fromARGB(255, Random().nextInt(256),
                Random().nextInt(256), Random().nextInt(256)),
            child: Center(
                child: Text(
              'HALO ${index + 1}',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            )),
          );
        }, childCount: 10))
      ],
    ));
  }
}
