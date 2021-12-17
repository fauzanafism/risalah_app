import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.settings),
          )
        ],
        backgroundColor: Color(0xff161718),
        title: Text(
          "Risalah",
          style: TextStyle(
              fontSize: 32,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w700),
        ),
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Color(0xff161718),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color(0xff2c2c2e),
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(icon: Icon(Icons.api_sharp), label: 'Home',  ),
      //     BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      //   ],
      // ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: ListView(
              children: [
                // Countdown waktu sholat
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff2c2c2e)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          '5 menit menjelang waktu maghrib, siap2 kuy!',
                          style: TextStyle(color: Colors.white,),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Hadits of the day
                    Container(
                      height: 150,
                      width: (MediaQuery.of(context).size.width / 2) - 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff7900ff)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 10, left: 10),
                              child: Text(
                                'Jadwal',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 150,
                      width: (MediaQuery.of(context).size.width / 2) - 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff0082ff)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 10, left: 10),
                              child: Text(
                                'Kultum',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffff0566)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          '3 hari lagi liqo nih!!',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Waktu sholat
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff0082ff)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10, left: 10),
                          child: Text(
                            'Tilawah',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10, left: 10),
                          child: Text(
                            'Hafalan',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
