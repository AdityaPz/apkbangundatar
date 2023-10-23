import 'package:apkhitungaritmatika/components/AppBarr.dart';
import 'package:apkhitungaritmatika/pages/JajarGenjang.dart';
import 'package:apkhitungaritmatika/pages/Segitiga.dart';
import 'package:apkhitungaritmatika/pages/lingkaran.dart';
import 'package:apkhitungaritmatika/pages/volumeTabung.dart';
import 'package:flutter/material.dart';
import '../../Components/Setting.dart';
import 'package:apkhitungaritmatika/pages/PesegiPanjang.dart';

class tampilan extends StatefulWidget {
  const tampilan({super.key});

  @override
  State<tampilan> createState() => _tampilanState();
}

class _tampilanState extends State<tampilan> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      setting(
                        size,
                        'assets/icons/rectangle.png',
                        'Persegi Panjang',
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return persegiPanjang();
                              },
                            ),
                          );
                        },
                      ),
                      setting(size, 'assets/icons/triangle.png', 'Segitiga',
                          () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builde) {
                              return Segitiga();
                            },
                          ),
                        );
                      }),
                      setting(size, 'assets/icons/parallelogram.png',
                          'Jajar Genjang', () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builde) {
                              return jajarGenjang();
                            },
                          ),
                        );
                      }),
                      setting(size, 'assets/icons/circle.png', 'Lingkaran', () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builde) {
                              return lingkaran();
                            },
                          ),
                        );
                      }),
                      setting(size, 'assets/icons/tube.png', 'Volume Tabung',
                          () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builde) {
                              return volumeTabung();
                            },
                          ),
                        );
                      }),
                      Container(
                        width: 363,
                        height: 75,
                        decoration: ShapeDecoration(
                          color: Color.fromARGB(255, 51, 66, 164),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 17,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(padding: EdgeInsets.only(left: 20)),
                              Text(
                                'ADITYA PUTRANTO ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '1462100172',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
