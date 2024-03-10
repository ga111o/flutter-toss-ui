import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 6.5),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
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
            AccountLine(
              accountName: 'TossBank Bankbook',
              amount: '123,123',
              icon: Icons.star,
              bgColor: Colors.lightBlueAccent.shade100,
              iconColor: Colors.white.withOpacity(0.5),
              getButton: false,
              sideButton: true,
            ), //TossBank Bankbook
            AccountLine(
              accountName: 'TossBank Interest',
              amount: '123,123',
              icon: Icons.star,
              bgColor: Colors.lightBlueAccent.shade100,
              iconColor: Colors.white.withOpacity(0.5),
              getButton: true,
              sideButton: true,
            ), //
            AccountLine(
              accountName: 'Foreign Currency',
              amount: '123,123',
              icon: Icons.star,
              bgColor: Colors.lightBlueAccent.shade100,
              iconColor: Colors.white.withOpacity(0.5),
              getButton: false,
              sideButton: false,
            ), //
            AccountLine(
              accountName: 'wowow',
              amount: '123,123',
              icon: Icons.star,
              bgColor: Colors.lightBlueAccent.shade100,
              iconColor: Colors.white.withOpacity(0.5),
              getButton: false,
              sideButton: false,
            ), //TossBank Interest
            AccountLine(
              accountName: 'Kakaobank',
              amount: '123,123',
              icon: Icons.star,
              bgColor: Colors.lightBlueAccent.shade100,
              iconColor: Colors.white.withOpacity(0.5),
              getButton: false,
              sideButton: true,
            ),
          ],
        ),
      ),
    );
  }
}

class AccountLine extends StatelessWidget {
  final String accountName, amount;
  final IconData icon;
  final Color bgColor, iconColor;
  final bool sideButton, getButton;

  const AccountLine({
    super.key,
    required this.accountName,
    required this.amount,
    required this.icon,
    required this.bgColor,
    required this.iconColor,
    required this.sideButton,
    required this.getButton,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: constraints.maxWidth > (getButton ? 135 : 100) + 200 + 50 + 15
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildIconAndText(),
                    if (sideButton) buildTextButton(),
                  ],
                )
              : Column(
                  children: [
                    buildIconAndText(),
                    if (sideButton) buildTextButton(),
                  ],
                ),
        );
      },
    );
  }

  Row buildIconAndText() {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: bgColor, borderRadius: BorderRadius.circular(100)),
          child: Icon(
            icon,
            size: 30,
            color: iconColor,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              accountName,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Colors.black54),
            ),
            Text(
              amount,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 23,
                  color: Colors.black87),
            ),
          ],
        ),
      ],
    );
  }

  Container buildTextButton() {
    return Container(
      height: 50,
      width: getButton ? 85 : 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
        child: Text(
          getButton ? 'GET NOW' : 'TOSS',
          style: const TextStyle(
              fontWeight: FontWeight.w700, color: Colors.black54),
        ),
      ),
    );
  }
}
