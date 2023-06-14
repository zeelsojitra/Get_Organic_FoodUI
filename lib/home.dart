import 'package:flutter/material.dart';

import 'food.dart';
import 'food_demo.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbab63b),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get\nOrganic Food',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Find the freshest food and get\nfree delivery in your town',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 25,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => demo(),
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
                minWidth: 200,
                child: Text('Get Started',
                    style: TextStyle(
                        color: Color(0xffbab63b),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/food_maker.png',
                height: 400,
                width: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
