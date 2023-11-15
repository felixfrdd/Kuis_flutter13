import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(238, 255, 255, 255),
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text(
            'KomputerKu',
          ),
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(top: 15.0)),
            Align(
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/computershop_icon.png',
                      height: 50,
                      width: 100,
                    ),
                    const SizedBox(width: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 5.0),
                          child: Text(
                            'KomputerKu',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.grey,
                                size: 20,
                              ),
                              Text(
                                '11.252 pengikut',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                side: MaterialStateProperty.all<BorderSide>(
                                  const BorderSide(
                                      color: Colors.blue, width: 2.0),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              child: const Text(
                                'Mengikuti',
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.share,
                              color: Colors.grey,
                              size: 20,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Center(
              child: CarouselSlider(
                items: [
                  Image.asset('assets/images/carousel_1.jpg',
                      fit: BoxFit.cover),
                  Image.asset('assets/images/carousel_2.jpg',
                      fit: BoxFit.cover),
                  Image.asset('assets/images/carousel_3.jpg',
                      fit: BoxFit.cover),
                ],
                options: CarouselOptions(
                  height: 200.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 15.0)),
                  Text(
                    'Belanja berdasarkan kategori',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/category_1.jpg',
                        height: 100,
                        width: 100,
                      ),
                      Image.asset(
                        'assets/images/category_2.jpg',
                        height: 100,
                        width: 100,
                      ),
                      Image.asset(
                        'assets/images/category_3.jpg',
                        height: 100,
                        width: 100,
                      ),
                      Image.asset(
                        'assets/images/category_4.jpg',
                        height: 100,
                        width: 100,
                      )
                    ],
                  ),
                )
              ],
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 15.0)),
                  Text(
                    'Semua Produk',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w900,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/product_1.jpg',
                        height: 200,
                        width: 200,
                      ),
                      Text('TUF GAMING')
                    ],
                  ),
                ),
                const SizedBox(width: 5.0),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/product_2.jpg',
                        height: 200,
                        width: 200,
                      ),
                      Text('MSI')
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
