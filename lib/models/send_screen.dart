import 'package:flutter/material.dart';

import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';

class SendPage extends StatefulWidget {
  // SendPage({Key? key}) : super(key: key);

  @override
  _SendPageState createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  int _selectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem(0, Icons.incomplete_circle_rounded, "Overview"),
          buildNavBarItem(1, Icons.restore_page_rounded, "Pages"),
          buildNavBarItem(2, Icons.density_medium_outlined, "Components"),
          buildNavBarItem(3, Icons.credit_card, "My Cards"),
          buildNavBarItem(4, Icons.settings, "Settings")
        ],
      ),
      backgroundColor: Color.fromARGB(255, 224, 221, 221).withOpacity(1),
      body: Stack(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 60,
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 88, 0, 241),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      Container(
                        child: Row(children: [
                          Container(
                              width: 20,
                              child:
                                  Image.asset("assets/images/finApp_logo.jpg")),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Finapp",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          )
                        ]),
                      ),
                      Container(
                        child: Row(children: [
                          Container(
                            child: AdvancedAvatar(
                              child: Icon(
                                Icons.notifications_active_outlined,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                      width: 20,
                                      height: 20,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Text(
                                        "2",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          // fontWeight: FontWeight.bold
                                        ),
                                      )),
                                )
                              ],
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: AdvancedAvatar(
                              image: AssetImage('assets/images/contact1.jpg'),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                      width: 20,
                                      height: 20,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Text(
                                        "7",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          // fontWeight: FontWeight.bold
                                        ),
                                      )),
                                )
                              ],
                              size: 30,
                            ),
                          )
                        ]),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 100,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                          left: 20,
                          top: 20,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                          color:
                              Color.fromARGB(255, 224, 221, 221).withOpacity(1),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Send Money",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  "View All",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 97, 53, 255)),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    buildRecentCotacts(
                                      "Serah",
                                      "assets/images/contact1.jpg",
                                    ),
                                    buildRecentCotacts(
                                      "John",
                                      "assets/images/contact2.jpg",
                                    ),
                                    buildRecentCotacts(
                                      "Femi",
                                      "assets/images/contact3.jpg",
                                    ),
                                    buildRecentCotacts(
                                      "Ruth",
                                      "assets/images/contact4.jpg",
                                    ),
                                    buildRecentCotacts(
                                      "Noah",
                                      "assets/images/contact5.jpg",
                                    ),
                                    buildRecentCotacts(
                                      "Esther",
                                      "assets/images/contact4.jpg",
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(
                            left: 20,
                            top: 20,
                            right: 20,
                          ),
                          height: 240,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Monthly Bills",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "View All",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 97, 53, 255)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      buildFrequentBills(
                                          "assets/images/kuda.png",
                                          14,
                                          "Kuda Montly\nSubscription"),
                                      buildFrequentBills(
                                          "assets/images/mtn.png",
                                          200,
                                          "Mtn Montly\nSubscription"),
                                      buildFrequentBills(
                                          "assets/images/kuda.png",
                                          14,
                                          "KudaMontly\nSubscription"),
                                    ]),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 20,
                          top: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Saving Goal",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "View All",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 97, 53, 255)),
                            )
                          ],
                        ),
                      ),
                      // Container(
                      //     padding: EdgeInsets.only(
                      //       left: 20,
                      //       top: 20,
                      //       right: 20,
                      //     ),
                      //     height: 240,
                      //     width: MediaQuery.of(context).size.width,
                      //     child: Column(
                      //       children: [
                      //         Row(
                      //           mainAxisAlignment:
                      //               MainAxisAlignment.spaceBetween,
                      //           children: [
                      //             Text(
                      //               "Monthly Bills",
                      //               style: TextStyle(
                      //                   fontWeight: FontWeight.bold,
                      //                   fontSize: 20),
                      //             ),
                      //             Text(
                      //               "View All",
                      //               style: TextStyle(
                      //                   color:
                      //                       Color.fromARGB(255, 97, 53, 255)),
                      //             )
                      //           ],
                      //         ),
                      //         SizedBox(
                      //           height: 10,
                      //         ),

                      //       ],
                      //     )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector buildNavBarItem(
    int index,
    IconData icon,
    String title,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        height: 60,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                border: Border(
                top: BorderSide(
                    width: 1, color: Color.fromARGB(255, 88, 0, 241)),
              ))
            : BoxDecoration(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Icon(
              icon,
              color: index == _selectedItemIndex
                  ? Color.fromARGB(255, 88, 0, 241)
                  : Colors.black,
            ),
            Text(title,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: index == _selectedItemIndex
                      ? Color.fromARGB(255, 88, 0, 241)
                      : Colors.grey,
                ))
          ],
        ),
      ),
    );
  }

  Container buildFrequentBills(String url, int amount, String type) {
    return Container(
      width: 170,
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(
        right: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox.fromSize(
              size: Size.fromRadius(20),
              child: Image.asset(
                url,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "\$" + amount.toString(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            type,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 30,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 88, 0, 241),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SendPage()),
                );
              },
              child: Center(
                child: Text(
                  "Pay Now",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Container buildRecentCotacts(String name, String url) {
    return Container(
        margin: EdgeInsets.only(right: 5),
        padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          Container(
              width: 60,
              height: 60,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(10),
                  child: Image.asset(
                    url,
                    fit: BoxFit.fill,
                  ),
                ),
              )),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w500),
          )
        ]));
  }
}
