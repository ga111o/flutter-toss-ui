import 'package:flutter/material.dart';

class TossMoney extends StatelessWidget {
  const TossMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 165,
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
                    'Toss Money',
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
                            'TossBank Virtual Account',
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
            ), // TossBank Virtual Account
          ],
        ),
      ),
    );
  }
}
