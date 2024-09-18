import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double fontSize = 10;

class GopayWidget extends StatelessWidget {
  const GopayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/ppgopay.jpeg'),
        ),
        title: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(fontSize / 2),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 85, 78, 78).withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3)),
            ],
            border: Border.all(color: Colors.grey, width: fontSize / 10),
          ),
          padding: EdgeInsets.all(fontSize / 2),
          alignment: Alignment.center,
          child: Text(
            '100% | Perlindungan Kuat',
            style: GoogleFonts.actor(
                fontSize: fontSize, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Bagian Saldo Gopay
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [Colors.blue[800]!, Colors.blue[400]!,Colors.grey],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Rp10.000.000",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "GRATIS top up",
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(width: 4),
                          Icon(Icons.add, color: Colors.white),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      "Gopay Coins 10.000",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Aktivasi Pinjam",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "Rp500.000 udah terpakai di September",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Bagian Kirim & Terima (diubah menjadi GridView)
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kirim & terima",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),

                // GridView untuk profile icons
                GridView.builder(
                  shrinkWrap: true, // Agar bisa scroll dalam ListView
                  physics:
                      NeverScrollableScrollPhysics(), // Nonaktifkan scroll di dalam GridView
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // 4 item per baris
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1, // Proporsi grid item 
                  ),
                  itemCount:
                      4, // Total item yang ditampilkan (3 orang + 1 icon tambah)
                  itemBuilder: (context, index) {
                    if (index == 3) {
                      // Jika index 3, tampilkan ikon tambah
                      return _buildProfileIcon(null, "");
                    } else {
                      // Jika tidak, tampilkan profil
                      List<String> profileNames = [
                        "Person 1",
                        "Person 2",
                        "Person 3"
                      ];
                      List<String> profileImages = [
                        'assets/ppgopay.jpeg',
                        'assets/ppgopay.jpeg',
                        'assets/ppgopay.jpeg'
                      ];
                      return _buildProfileIcon(
                          profileImages[index], profileNames[index]);
                    }
                  },
                ),
                const SizedBox(height: 16),

                // GridView untuk action buttons
                GridView.builder(
                  shrinkWrap: true, // Agar bisa scroll dalam ListView
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // 4 item per baris
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemCount: 4, // Total tombol aksi
                  itemBuilder: (context, index) {
                    List<IconData> icons = [
                      Icons.send,
                      Icons.request_page,
                      Icons.call_split,
                      Icons.card_giftcard,
                    ];
                    List<String> labels = [
                      "Transfer gratis",
                      "Minta",
                      "Split bill",
                      "Hadiah"
                    ];
                    return _buildActionButton(icons[index], labels[index]);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Bagian Pembayaran
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],  
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pembayaran",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // 4 item per baris
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemCount: 7, // Total opsi pembayaran
                  itemBuilder: (context, index) {
                    List<IconData> paymentIcons = [
                      Icons.phone_android,
                      Icons.electrical_services,
                      Icons.data_usage,
                      Icons.account_balance_wallet,
                      Icons.videogame_asset,
                      Icons.receipt,
                      Icons.store
                    ];
                    List<String> paymentLabels = [
                      "Pulsa",
                      "PLN",
                      "Paket Data",
                      "Topup e-Money",
                      "Promo Game",
                      "Promo Bayar Tagihan",
                      "ShopTokopedia"
                    ];
                    return _buildPaymentIcon(
                        paymentIcons[index], paymentLabels[index]);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget untuk membuat ikon profil dalam Kirim & Terima
  Widget _buildProfileIcon(String? imagePath, String name) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: imagePath != null ? AssetImage(imagePath) : null,
          backgroundColor: Colors.grey[800],
          child:
              imagePath == null ? Icon(Icons.add, color: Colors.white) : null,
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  // Widget untuk membuat tombol aksi di bagian Kirim & Terima
  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  // Widget untuk membuat ikon pembayaran
  Widget _buildPaymentIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}




// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// double fontSize = 10;

// class GopayWidget extends StatelessWidget {
//   const GopayWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.person),
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder: (context) => ProfileDialog(),
//             );
//           },
//         ),
        // title: Container(
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(fontSize / 2),
        //     border: Border.all(color: Colors.grey, width: fontSize / 10),
        //   ),
        //   padding: EdgeInsets.all(fontSize / 2),
        //   alignment: Alignment.center,
        //   child: Text(
        //     '100% | Perlindungan Kuat',
        //     style: GoogleFonts.actor(
        //         fontSize: fontSize, fontWeight: FontWeight.bold),
        //     textAlign: TextAlign.center,
        //   ),
        // ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.report),
//             onPressed: () {
//               showDialog(
//                 context: context,
//                 builder: (context) => ReportDialog(),
//               );
//             },
//           ),
//         ],
//       ),
//       body: ListView(
//         children: [
//           Container(
//             child: Column(
//               children: [
//                 Container(
//                   child: SingleChildScrollView(
//                     child: Container(
//                       decoration: const BoxDecoration(
//                           color: Color.fromARGB(255, 0, 0, 0)),
//                       child: Column(
//                         children: [
//                           Container(
//                             width: MediaQuery.of(context).size.width,
//                             decoration: const BoxDecoration(
//                               color: Color.fromARGB(255, 0, 0, 0),
//                             ),
//                           ),
//                           Container(
//                             height: 150,
//                             decoration: BoxDecoration(
//                                 color: Color.fromARGB(255, 0, 0, 255),
//                                 borderRadius: BorderRadius.circular(10)),
//                             width: 450,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   "Saldo Rp. 1.000.000,-",
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 PopupMenuButton<String>(
//                                   icon: const Icon(
//                                     Icons.more_vert,
//                                     color: Colors.white,
//                                     size: 30.0,
//                                   ),
//                                   itemBuilder: (BuildContext context) {
//                                     return Constants.choices
//                                         .map((String choice) {
//                                       return PopupMenuItem<String>(
//                                         value: choice,
//                                         child: Text(choice),
//                                       );
//                                     }).toList();
//                                   },
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 1,
//                           ),
//                           Container(
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(10)),
//                             width: MediaQuery.of(context).size.width,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   padding:
//                                       const EdgeInsets.only(top: 10, left: 20),
//                                   decoration: const BoxDecoration(
//                                       border: Border(
//                                     bottom: BorderSide(color: Colors.grey),
//                                   )),
//                                   child: Text(
//                                     "Transaksi",
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 200,
//                                   child: GridView.count(
//                                     crossAxisCount: 5,
//                                     mainAxisSpacing: 10,
//                                     crossAxisSpacing: 0,
//                                     padding: const EdgeInsets.all(8),
//                                     children: [
//                                       Container(
//                                         child: const Column(
//                                           children: [
//                                             Image(
//                                               image: AssetImage(
//                                                   'assets/pulsa.jpeg'),
//                                               width: 50,
//                                             ),
//                                             Text(
//                                               "Pulsa",
//                                               style: TextStyle(fontSize: 10),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         child: const Column(
//                                           children: [
//                                             Image(
//                                               image:
//                                                   AssetImage('assets/tv.jpeg'),
//                                               width: 50,
//                                             ),
//                                             Text(
//                                               "Langganan Saluran TV",
//                                               style: TextStyle(fontSize: 10),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         child: const Column(
//                                           children: [
//                                             Image(
//                                               image: AssetImage(
//                                                   'assets/pulsa.jpeg'),
//                                               width: 50,
//                                             ),
//                                             Text(
//                                               "Pulsa",
//                                               style: TextStyle(fontSize: 10),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         child: const Column(
//                                           children: [
//                                             Image(
//                                               image: AssetImage(
//                                                   'assets/pulsa.jpeg'),
//                                               width: 50,
//                                             ),
//                                             Text(
//                                               "Pulsa",
//                                               style: TextStyle(fontSize: 10),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         child: const Column(
//                                           children: [
//                                             Image(
//                                               image: AssetImage(
//                                                   'assets/pulsa.jpeg'),
//                                               width: 50,
//                                             ),
//                                             Text(
//                                               "Pulsa",
//                                               style: TextStyle(fontSize: 10),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         child: const Column(
//                                           children: [
//                                             Image(
//                                               image: AssetImage(
//                                                   'assets/pulsa.jpeg'),
//                                               width: 50,
//                                             ),
//                                             Text(
//                                               "Pulsa",
//                                               style: TextStyle(fontSize: 10),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(10)),
//                             width: MediaQuery.of(context).size.width,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   padding:
//                                       const EdgeInsets.only(top: 10, left: 20),
//                                   decoration: const BoxDecoration(
//                                       border: Border(
//                                     bottom: BorderSide(color: Colors.grey),
//                                   )),
//                                   child: Text(
//                                     "Transaksi",
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 200,
//                                   child: GridView.count(
//                                     crossAxisCount: 5,
//                                     mainAxisSpacing: 10,
//                                     crossAxisSpacing: 0,
//                                     padding: const EdgeInsets.all(8),
//                                     children: [
//                                       Container(
//                                         child: const Column(
//                                           children: [
//                                             Image(
//                                               image: AssetImage(
//                                                   'assets/pulsa.jpeg'),
//                                               width: 50,
//                                             ),
//                                             Text(
//                                               "Pulsa",
//                                               style: TextStyle(fontSize: 10),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         child: const Column(
//                                           children: [
//                                             Image(
//                                               image:
//                                                   AssetImage('assets/pln.jpeg'),
//                                               width: 50,
//                                             ),
//                                             Text(
//                                               "PLN",
//                                               style: TextStyle(fontSize: 10),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         child: const Column(
//                                           children: [
//                                             Image(
//                                               image:
//                                                   AssetImage('assets/tv.jpeg'),
//                                               width: 50,
//                                             ),
//                                             Text(
//                                               "Langganan TV",
//                                               style: TextStyle(fontSize: 10),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         child: const Column(
//                                           children: [
//                                             Image(
//                                               image: AssetImage(
//                                                   'assets/pulsa.jpeg'),
//                                               width: 50,
//                                             ),
//                                             Text(
//                                               "Pulsa",
//                                               style: TextStyle(fontSize: 10),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         child: const Column(
//                                           children: [
//                                             Image(
//                                               image: AssetImage(
//                                                   'assets/pulsa.jpeg'),
//                                               width: 50,
//                                             ),
//                                             Text(
//                                               "Pulsa",
//                                               style: TextStyle(fontSize: 10),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         child: const Column(
//                                           children: [
//                                             Image(
//                                               image: AssetImage(
//                                                   'assets/pulsa.jpeg'),
//                                               width: 50,
//                                             ),
//                                             Text(
//                                               "Pulsa",
//                                               style: TextStyle(fontSize: 10),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         child: const Column(
//                                           children: [
//                                             Image(
//                                               image: AssetImage(
//                                                   'assets/pulsa.jpeg'),
//                                               width: 50,
//                                             ),
//                                             Text(
//                                               "Pulsa",
//                                               style: TextStyle(fontSize: 10),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Constants {
//   static const String FirstItem = 'First Item';
//   static const String SecondItem = 'Second Item';
//   static const String ThirdItem = 'Third Item';

//   static const List<String> choices = <String>[
//     FirstItem,
//     SecondItem,
//     ThirdItem,
//   ];
// }

// void choiceAction(String choice) {
//   if (choice == Constants.FirstItem) {
//     print('I First Item');
//   } else if (choice == Constants.SecondItem) {
//     print('I Second Item');
//   } else if (choice == Constants.ThirdItem) {
//     print('I Third Item');
//   }
// }

// class ProfileDialog extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Text('Profile Dialog'),
//       content: Text('This is the profile dialog'),
//       actions: [
//         ElevatedButton(
//           child: Text('OK'),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ],
//     );
//   }
// }

// class ReportDialog extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Text('Report Dialog'),
//       content: Text('This is the report dialog'),
//       actions: [
//         ElevatedButton(
//           child: Text('OK'),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ],
//     );
//   }
// }


        //       Column(
        //         children: [
                  // Image(
                  //   image: AssetImage("assets/money.png"),
                  //   width: 200
                  // ),
        //           Container(
        //             width: MediaQuery.of(context).size.width,
        //             padding: EdgeInsets.only(left: 10, right: 10,),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Text("Saldo : Rp 1.000.000,-"),
        //               Icon(Icons.verified_user_outlined),
        //             ],
        //           ),
        //           ),
        //         ],
        //       ),