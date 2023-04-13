import 'package:flutter/material.dart';

class shop extends StatelessWidget {
  const shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Shop',
              style: TextStyle(color: Colors.black, fontSize: 40),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Image.asset(
                      'lib/images/coupon1.jpeg',
                      height: 200,
                      width: 200,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Redeem Now',
                        style: TextStyle(fontSize: 20),
                      )),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Image.asset(
                      'lib/images/coupon2.jpeg',
                      height: 200,
                      width: 200,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Redeem Now',
                        style: TextStyle(fontSize: 20),
                      )),
                  SizedBox(height: 10),
                  Image.asset(
                    'lib/images/coupon3.jpeg',
                    height: 200,
                    width: 200,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Redeem Now',
                        style: TextStyle(fontSize: 20),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'lib/images/jio_coupon.png',
                    height: 200,
                    width: 200,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Redeem Now',
                        style: TextStyle(fontSize: 20),
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
