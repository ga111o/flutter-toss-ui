import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/foundation.dart';

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
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey.shade500,
                    size: 20,
                  ),
                ],
              ),
            ), // Title
            _AccountLine(
              accountName: 'TossBank Bankbook',
              amount: '123,123',
              icon: Icons.star,
              bgColor: Colors.lightBlueAccent.shade100,
              iconColor: Colors.white.withOpacity(0.5),
              sideButton: true,
            ), //TossBank Bankbook
            if (Provider.of<InterestModel>(context).getInterest == 1)
              _AccountLine(
                accountName: 'TossBank Interest',
                amount: '123,123',
                icon: Icons.star,
                bgColor: Colors.lightBlueAccent.shade100,
                iconColor: Colors.white.withOpacity(0.5),
                getButton: true,
                sideButton: true,
              ),

            _AccountLine(
              accountName: 'Foreign Currency',
              amount: '123,123',
              icon: Icons.star,
              bgColor: Colors.lightBlueAccent.shade100,
              iconColor: Colors.white.withOpacity(0.5),
            ), //
            _AccountLine(
              accountName: 'wowow',
              amount: '123,123',
              icon: Icons.star,
              bgColor: Colors.lightBlueAccent.shade100,
              iconColor: Colors.white.withOpacity(0.5),
            ), //TossBank Interest
            _AccountLine(
              accountName: 'Kakaobank',
              amount: '123,123',
              icon: Icons.star,
              bgColor: Colors.lightBlueAccent.shade100,
              iconColor: Colors.white.withOpacity(0.5),
              sideButton: true,
            ),
          ],
        ),
      ),
    );
  }
}

class _AccountLine extends StatefulWidget {
  final String accountName, amount;
  final IconData icon;
  final Color bgColor, iconColor;
  final bool sideButton, getButton;

  const _AccountLine({
    super.key,
    required this.accountName,
    required this.amount,
    required this.icon,
    required this.bgColor,
    required this.iconColor,
    this.sideButton = false,
    this.getButton = false,
  });

  @override
  State<_AccountLine> createState() => _AccountLineState();
}

class _AccountLineState extends State<_AccountLine> {
  int getInterest = 1;

  void getInterestFunc() {
    setState(() {
      getInterest = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: constraints.maxWidth >
                  (widget.getButton ? 135 : 100) + 150 + 50 + 15
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildIconAndText(),
                    if (widget.sideButton) buildTextButton(),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    buildIconAndText(),
                    if (widget.sideButton) buildTextButton(),
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
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: widget.bgColor, borderRadius: BorderRadius.circular(100)),
          child: Icon(
            widget.icon,
            size: 25,
            color: widget.iconColor,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.accountName,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.black54),
            ),
            Text(
              widget.amount,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 19,
                  color: Colors.black87),
            ),
          ],
        ),
      ],
    );
  }

  InkWell buildTextButton() {
    return InkWell(
      onTap: widget.getButton
          ? Provider.of<InterestModel>(context, listen: false).getInterestFunc
          : null,
      child: Container(
        height: 50,
        width: widget.getButton ? 85 : 50,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
          child: Text(
            widget.getButton ? 'GET NOW' : 'TOSS',
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.black54),
          ),
        ),
      ),
    );
  }
}
