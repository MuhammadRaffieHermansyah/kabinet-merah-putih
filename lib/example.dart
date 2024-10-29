import 'package:flutter/material.dart';
import 'package:kabinet_merah_putih/menteri_page.dart';
import 'package:kabinet_merah_putih/wakil_menteri_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Kabinet Merah Putih',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.of(context).size;
    // final screenWidth = screenSize.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text(
            'Kabinet Merah Putih',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          const Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Presiden & Wakil Presiden',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Indonesia',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Periode 2024 - Sekarang',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 3 / 6,
            ),
            padding: const EdgeInsets.all(6),
            itemCount: listPemimpin.length,
            itemBuilder: (context, index) {
              final data = listPemimpin[index];
              return Container(
                color: Colors.grey,
                padding: const EdgeInsets.all(6),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/${data["foto"]}.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data["nama"]!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        data['bidang']!,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          const Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Menteri Indonesia',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Periode 2024 - Sekarang',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 3 / 7.4,
            ),
            padding: const EdgeInsets.all(6),
            itemCount: listMenteri.length,
            itemBuilder: (context, index) {
              final data = listMenteri[index];
              return Container(
                color: Colors.grey,
                padding: const EdgeInsets.all(6),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/menteri/${data["foto"]}.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data["nama"]!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        data['bidang']!,
                        style: const TextStyle(fontSize: 13),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          const Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Wakil Menteri Indonesia',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Periode 2024 - Sekarang',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 3 / 7.4,
            ),
            padding: const EdgeInsets.all(6),
            itemCount: listWakilMenteri.length,
            itemBuilder: (context, index) {
              final data = listWakilMenteri[index];
              return Container(
                color: Colors.grey,
                padding: const EdgeInsets.all(6),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/wakil_menteri/${data["foto"]}.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data["nama"]!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        data['jabatan']!,
                        style: const TextStyle(fontSize: 13),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
      // persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: [
      //     ElevatedButton(
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => const MenteriPage(),
      //           ),
      //         );
      //       },
      //       style: ElevatedButton.styleFrom(
      //         fixedSize: Size(screenWidth / 2.4, 40),
      //         backgroundColor: Colors.red,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(10),
      //         ),
      //       ),
      //       child: const Text(
      //         'Menteri',
      //         style: TextStyle(
      //           color: Colors.white,
      //           fontSize: 15,
      //           letterSpacing: 0.3,
      //         ),
      //       ),
      //     ),
      //     ElevatedButton(
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => const WakilMenteriPage(),
      //           ),
      //         );
      //       },
      //       style: ElevatedButton.styleFrom(
      //         fixedSize: Size(screenWidth / 2.4, 40),
      //         backgroundColor: Colors.red,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(10),
      //         ),
      //       ),
      //       child: const Text(
      //         'Wakil Menteri',
      //         style: TextStyle(
      //           color: Colors.white,
      //           fontSize: 15,
      //           letterSpacing: 0.3,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}

List<Map<String, String>> listPemimpin = [
  {
    "nama": "Prabowo Subianto",
    "bidang": "Presiden Indonesia Ke-8 (2024 - Sekarang)",
    "foto": "prabowo_subianto"
  },
  {
    "nama": "Gibran Rakabuming Raka",
    "bidang": "Wakil Presiden Indonesia Ke-8 (2024 - Sekarang)",
    "foto": "gibran_rakabuming_raka"
  },
];
