import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 140, 64, 255),
        title: const Text("Tugas Pertemuan 4 - Ade Candra"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            height: 90.0,
            width: 270.0,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 8, 41, 224),
              borderRadius:
                  BorderRadius.circular(10.0), // Mengatur sudut bulat ke 10.0
            ),
            child: const Center(
              child: Text(
                'Box 1',
                style: TextStyle(
                  decoration: TextDecoration.none, // Menghilangkan underline
                  decorationColor: Color.fromARGB(255, 90, 85,
                      8), // Warna underline (default adalah kuning)
                  decorationStyle: TextDecorationStyle
                      .solid, // Gaya underline (default adalah garis lurus)
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            )),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              height: 200.0,
              width: 90.0,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 18, 18),
                borderRadius:
                    BorderRadius.circular(10.0), // Mengatur sudut bulat ke 10.0
              ),
              child: const Center(
                child: Text(
                  'Box 2',
                  style: TextStyle(
                    decoration: TextDecoration.none, // Menghilangkan underline
                    decorationColor: Color.fromARGB(255, 226, 63,
                        14), // Warna underline (default adalah kuning)
                    decorationStyle: TextDecorationStyle
                        .solid, // Gaya underline (default adalah garis lurus)
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              )),
          Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              height: 200.0,
              width: 90.0,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 4, 159, 12),
                borderRadius:
                    BorderRadius.circular(10.0), // Mengatur sudut bulat ke 10.0
              ),
              child: const Center(
                child: Text(
                  'Box 3',
                  style: TextStyle(
                    decoration: TextDecoration.none, // Menghilangkan underline
                    decorationColor: Colors
                        .yellow, // Warna underline (default adalah kuning)
                    decorationStyle: TextDecorationStyle
                        .solid, // Gaya underline (default adalah garis lurus)
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              )),
        ])
      ]),
    );
  }
}
