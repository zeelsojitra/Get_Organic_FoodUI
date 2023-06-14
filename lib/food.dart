import 'package:flutter/material.dart';
import 'package:get_organic_food/my_cart.dart';

class food extends StatefulWidget {
  const food({Key? key}) : super(key: key);

  @override
  State<food> createState() => _foodState();
}

List image = [
  'assets/images/vegetable.png',
  'assets/images/fruits.png',
  'assets/images/greens_outline.png',
  'assets/images/mushrooms_outline.png',
  //'assets/images/m.png',
];
List text1 = [
  'Banana',
  'Champignon',
];
List text2 = [
  'Strawberry',
  'Kiwi',
];

List name = [
  'Ecuador',
  'Ukraine',
];

List name2 = [
  'Holland',
  'New Zealand',
];
List image1 = [
  'assets/images/banana.png',
  'assets/images/champignon.png',
];
List image2 = [
  'assets/images/strawberry.png',
  'assets/images/kiwi.png',
];

List price = [
  '\$1.50',
  '\$3.55',
];

List price2 = [
  '\$23.10',
  '\$2.30',
];

List text = [
  'Vegetable',
  'Frutis',
  'Greens',
  'Mushrooms',
  //'ext',
];

class _foodState extends State<food> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffbab63b),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                        )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 25, horizontal: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/menu.png',
                                width: 50,
                                height: 50,
                                color: Colors.white,
                              ),
                              Spacer(),
                              Container(
                                height: 45,
                                width: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.shopping_bag_outlined,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Color(0xffbab63b),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '4',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
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
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: Icon(
                                    Icons.search_rounded,
                                    size: 32,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                hintText: "Search foodstuffs"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 200,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: List.generate(
                            4,
                            (index) => Container(
                              height: 90,
                              width: 90,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade400,
                                    blurRadius: 2,
                                    offset: Offset(1, 3),
                                    spreadRadius: 1,
                                  )
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2),
                                child: Column(
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        image[index],
                                        width: 70,
                                        height: 70,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 1,
                                    ),
                                    Text(
                                      text[index],
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Popular Foodstuffs',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 13,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: List.generate(
                            2,
                            (index) => Container(
                              width: 196,
                              height: 228,
                              margin: EdgeInsets.only(bottom: 0, top: 10),
                              decoration: BoxDecoration(
                                color: index == 0
                                    ? Color(0xfffde9b4)
                                    : Color(0xffffefd6),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        image1[index],
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    Text(
                                      text1[index],
                                      style: TextStyle(
                                        color: index == 0
                                            ? Colors.yellowAccent
                                            : Colors.brown,
                                        fontSize: index == 0 ? 27 : 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      name[index],
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          price[index],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          height: 45,
                                          width: 45,
                                          decoration: BoxDecoration(
                                            color: Color(0xffb9b539),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: List.generate(
                            2,
                            (index) => Container(
                              width: 196,
                              height: 228,
                              margin: EdgeInsets.only(bottom: 0, top: 10),
                              decoration: BoxDecoration(
                                color: index == 0
                                    ? Color(0xffffed8d3)
                                    : Color(0xfffe6f99f),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        image2[index],
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    Text(
                                      text2[index],
                                      style: TextStyle(
                                        color: index == 0
                                            ? Color(0xffc3675f)
                                            : Color(0xff8ca32e),
                                        fontSize: index == 0 ? 27 : 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      name2[index],
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          price2[index],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          height: 45,
                                          width: 45,
                                          decoration: BoxDecoration(
                                            color: Color(0xffb9b539),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
