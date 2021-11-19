import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:vintage_games_level3/utils/extension.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: CustomScrollView(slivers: [
          const SliverAppBar(
            title: Text("Vinatge_games"),
            floating: true,
            expandedHeight: 50,
          ),
          SliverGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              children: List.generate(
                15,
                (index) {
                  return Card(
                    color: const Color(0xff0A2942),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 1, right: 1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 101,
                                color: const Color(0xff0A2942),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(
                                      // -----change the images area----------
                                      image: AssetImage('ss'.asAssetjpeg()),
                                      fit: BoxFit.fill,

                                      //----- we can fetch datas from api----
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Positioned(
                          top: 45,
                          right: 5,
                          child: Icon(
                            Icons.favorite,
                            size: 20,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
              // delegate: SliverChildBuilderDelegate(
              //   (context, index) => titleAndImages(),
              //   childCount: 1000,
              // ), gridDelegate: null,
              // ),
              )
        ]));
  }
}
