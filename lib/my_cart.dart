import 'package:flutter/material.dart';
import 'package:get_organic_food/home.dart';

import 'food_demo.dart';

class mycart extends StatefulWidget {
  const mycart({Key? key}) : super(key: key);

  @override
  State<mycart> createState() => _mycartState();
}

List name = [
  'Peach',
  'Basil',
  'Pumpakin',
  'Tomato',
];

List color = [
  Color(0xffffc9b1),
  Color(0xffd4ffcf),
  Color(0xfffee299),
  Color(0xfffea9a4),
];

List name1 = [
  'Spain',
  'Italy',
  'Ukraine',
  'HoLLand',
];

List name3 = [
  '(Kg)',
  '(Pc)',
  '(Kg)',
  '(Kg)',
];
List price = [
  '\$3.15',
  '\$1.50',
  '\$3.50',
  '\$5.75',
];

List image = [
  'assets/images/peach.png',
  'assets/images/basil.png',
  'assets/images/pumpkin.png',
  'assets/images/tomato.png',
];

class _mycartState extends State<mycart> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => demo(),
                            ));
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black54,
                        size: 23,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'My Cart',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Color(0xffffc73c),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/m.png',
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: List.generate(
                      4,
                      (index) => Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 170,
                                    height: 150,
                                    margin: EdgeInsets.only(top: 10),
                                    decoration: BoxDecoration(
                                        color: color[index],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25))),
                                    child: Center(
                                      child: Image.asset(
                                        image[index],
                                        height: 150,
                                        width: 150,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      name[index],
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      name1[index],
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      price[index],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 38,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                spreadRadius: 1,
                                                offset: Offset(1, 2),
                                                blurRadius: 1,
                                              )
                                            ],
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    count++;
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.add,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                '$count',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    if (count > 0) {
                                                      count--;
                                                    }
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.remove,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: Text(
                                            name3[index],
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                ),
              ),
              SizedBox(
                height: 20.6,
              ),
              Container(
                height: 104,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffbab63b),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            'Total',
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '\$13.90',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => home(),
                                ),
                              );
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            color: Colors.white,
                            height: 45,
                            minWidth: 150,
                            child: Text('Buy Now',
                                style: TextStyle(
                                    color: Color(0xffbab63b),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
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
