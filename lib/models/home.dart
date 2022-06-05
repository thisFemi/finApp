import 'package:finapp/models/send_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemIndex = 0;
  double bal = 2500.92;

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
          Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 88, 0, 241),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 60, bottom: 0),
                  child: Column(children: [
                    Row(
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
                                child: Image.asset(
                                    "assets/images/finApp_logo.jpg")),
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
                    )
                  ]),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    padding: EdgeInsets.only(top: 100),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildCategoryCard("Income", 552.95,
                              Color.fromARGB(255, 9, 157, 14)),
                          buildCategoryCard("Expenses", 86.45,
                              Color.fromARGB(255, 205, 11, 72)),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildCategoryCard("Total Bills", 53.25, Colors.black),
                          buildCategoryCard("Savings", 120.99, Colors.black),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Transactions",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "View All",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 42, 104, 238)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Column(
                            children: [
                              transactionListCard(
                                Color.fromARGB(255, 243, 233, 138),
                                "assets/images/amazon.png",
                                "Amazon",
                                "Shopping",
                                "-",
                                150,
                              ),
                              transactionListCard(
                                Color.fromARGB(255, 243, 233, 138),
                                "assets/images/kuda.png",
                                "Kuda",
                                "Deposit",
                                "+",
                                120,
                              ),
                              transactionListCard(
                                Color.fromARGB(255, 243, 233, 138),
                                "assets/images/mtn.png",
                                "Mtn",
                                "Recharge",
                                "-",
                                100,
                              ),
                              transactionListCard(
                                Color.fromARGB(255, 243, 233, 138),
                                "assets/images/amazon.png",
                                "Amazon",
                                "Shopping",
                                "+",
                                150,
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 100,
            right: 20,
            left: 20,
            //width: MediaQuery.of(context).size.width * 1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              width: MediaQuery.of(context).size.width * 0.85,
              height: 230,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.05),
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(0, 5))
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 80)),
                            Text(
                              "Total Balance",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                              width: 10,
                            ),
                            Text(
                              "\$" + bal.toString(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 70,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 228, 203, 242),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(Icons.add,
                              color: Color.fromARGB(255, 88, 0, 241)),
                        ),
                      ]),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 1,
                    width: double.maxFinite,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      optionsCategoryButton(Icons.arrow_downward_outlined,
                          "Withdraw", Color.fromARGB(255, 220, 16, 64)),
                      optionsCategoryButton(Icons.arrow_forward_outlined,
                          "Send", Color.fromARGB(255, 88, 0, 241)),
                      optionsCategoryButton(Icons.wallet_outlined, "Cards",
                          Color.fromARGB(255, 21, 227, 103)),
                      optionsCategoryButton(Icons.vertical_align_center_rounded,
                          "Exchange", Color.fromARGB(255, 255, 185, 55)),
                    ],
                  )
                ],
              ),
            ),
          )
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

  Card transactionListCard(
    Color imageColor,
    // String transImageName,
    // Image assetImage = "assets/image/"+"transImageName" ,
    String imgUrl,
    String Title,
    String subtitle,
    String sign,
    double amount,
  ) {
    Color amountColor;
    if (sign == "+") {
      amountColor = Color.fromARGB(255, 5, 151, 93);
    } else {
      amountColor = Colors.pink;
    }

    return Card(
        elevation: 2,
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          leading: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                color: imageColor, borderRadius: BorderRadius.circular(10)),
            child: Image.asset(imgUrl, fit: BoxFit.scaleDown),
          ),
          title: Text(
            Title,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
          ),
          subtitle: Text(subtitle,
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
          trailing: Text(
            sign + " \$" + amount.toString(),
            style: TextStyle(
                color: amountColor, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ));
  }

//Methods
  Container optionsCategoryButton(
      IconData icon, String title, Color backgroundColor) {
    return Container(
      // margin: EdgeInsets.all(2),
      height: 80,
      width: 80,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: backgroundColor, borderRadius: BorderRadius.circular(10)),
          child: GestureDetector(
            onTap: () {
              if (title == "Send")
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SendPage()));
            },
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ]),
    );
  }

  Container buildCategoryCard(String title, double amount, Color amountColor) {
    return Container(
      height: 100,
      width: 180,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(
              vertical: 10,
            )),
            Text(
              title,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "\$" + amount.toString(),
              style: TextStyle(
                  fontSize: 25,
                  color: amountColor,
                  fontWeight: FontWeight.bold),
            )
          ]),
    );
  }
}
