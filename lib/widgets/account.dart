import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 520,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6.5),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Account',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey.shade500,
                    size: 20,
                  ),
                ],
              ),
            ), // Title
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.lightBlueAccent.shade100,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.star,
                          size: 30,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'TossBank Bankbook',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: Colors.black54),
                          ),
                          Text(
                            '123,123 WON',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 23,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                    ],
                  ), // icon and Text
                  Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          'TOSS',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                      )), // Text Button
                ],
              ),
            ), // TossBank Bankbook
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent.shade200,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.thunderstorm,
                          size: 25,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'TossBank Interest',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: Colors.black54),
                          ),
                          Text(
                            '123,123 WON',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 23,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                    ],
                  ), // icon and Text
                  Container(
                      height: 50,
                      width: 85,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          'GET NOW',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                      )), // Text Button
                ],
              ),
            ), // TossBank Interest
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.attach_money_rounded,
                          size: 25,
                          color: Colors.black12.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Foreign Currency',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: Colors.black54),
                          ),
                          Text(
                            '123,123 WON',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 23,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                    ],
                  ), // icon and Text
                ],
              ),
            ), // Foreign Currency
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.pinkAccent.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.money_rounded,
                          size: 25,
                          color: Colors.black12.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Friend Bankbook',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: Colors.black54),
                          ),
                          Text(
                            '123,123 WON',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 23,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                    ],
                  ), // icon and Text
                ],
              ),
            ), // Friend Bankbook
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.abc_rounded,
                          size: 30,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kakaobank',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: Colors.black54),
                          ),
                          Text(
                            '123,123 WON',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 23,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                    ],
                  ), // icon and Text
                  Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          'TOSS',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                      )), // Text Button
                ],
              ),
            ), // Kakaobank
          ],
        ),
      ),
    );
  }
}
