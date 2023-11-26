import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromRGBO(62, 36, 17, 1),
                    const Color.fromRGBO(48, 14, 32, 1),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          width: 100,
                          height: 80,
                        ),
                        Row(
                          children: [
                            Icon(Icons.podcasts, color: Colors.white),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.search, color: Colors.white),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              radius: 15,
                              backgroundImage: AssetImage(
                                "assets/images/abubakar.jpg",
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        katagori("Energize"),
                        katagori("Workout"),
                        katagori("Feel good"),
                        katagori("Relaxation"),
                        katagori("Chill out"),
                        katagori("Rock"),
                        katagori("Pops"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color.fromRGBO(7, 5, 8, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "START RADIO FROM A SONG",
                          style: TextStyle(
                            color: const Color.fromRGBO(255, 187, 186, 186),
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Quick Picks",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 3.0,
                                  bottom: 3,
                                  right: 3,
                                  left: 9,
                                ),
                                child: Text(
                                  "Play all",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 187, 186, 186),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MusicRow("assets/images/cover1.jpg", "Seni Yazdım",
                            "Müslüm Gürses"),
                        MusicRow("assets/images/cover2.jpg", "Gangsta Remix",
                            "Müslüm Gürses & 2PAC & SnoopDog"),
                        MusicRow("assets/images/cover3.jpg", "Sen Affetsen",
                            "Bergen"),
                        MusicRow("assets/images/cover4.jpg",
                            "İnsan Dertli Olunca", "Bergen"),
                        MusicRow("assets/images/cover5.jpg", "Küllenen Aşk",
                            "Cengiz Kurtoğlu"),
                        MusicRow("assets/images/cover6.jpg", "Gece Olunca",
                            "Cengiz Kurtoğlu"),
                        MusicRow("assets/images/cover7.jpg", "Bana Sor",
                            "Ferdi Tayfur"),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Forgotten favorites",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 3.0,
                                  bottom: 3,
                                  right: 3,
                                  left: 9,
                                ),
                                child: Text(
                                  "Play all",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 187, 186, 186),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              MusicRow2("assets/images/cover1.jpg",
                                  "Seni Yazdım", "Müslüm Gürses"),
                              MusicRow2(
                                  "assets/images/cover2.jpg",
                                  "Gangsta Remix",
                                  "Müslüm Gürses & 2PAC & SnoopDog"),
                              MusicRow2("assets/images/cover3.jpg",
                                  "Sen Affetsen", "Bergen"),
                              MusicRow2("assets/images/cover4.jpg",
                                  "İnsan Dertli Olunca", "Bergen"),
                              MusicRow2("assets/images/cover5.jpg",
                                  "Küllenen Aşk", "Cengiz Kurtoğlu"),
                              MusicRow2("assets/images/cover6.jpg",
                                  "Gece Olunca", "Cengiz Kurtoğlu"),
                              MusicRow2("assets/images/cover7.jpg", "Bana Sor",
                                  "Ferdi Tayfur"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
                width: double.infinity,
                height: 70,
                color: const Color.fromRGBO(33, 33, 33, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.home, color: Colors.white),
                          Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.play_arrow, color: Colors.white),
                          Text(
                            "Samples",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.explore, color: Colors.white),
                          Text(
                            "Explore",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.video_library, color: Colors.white),
                          Text(
                            "Library",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.slideshow, color: Colors.white),
                          Text(
                            "Upgrade",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Padding MusicRow2(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                photo,
                width: 170,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                artist,
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget MusicRow(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                photo,
                width: 85,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    artist,
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Container katagori(String text) {
    return Container(
      padding: const EdgeInsets.only(
        top: 6.0,
        bottom: 6.0,
        left: 12,
        right: 12,
      ),
      margin: const EdgeInsets.only(
        left: 3,
        right: 3,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(43, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color.fromARGB(48, 255, 255, 255)),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
