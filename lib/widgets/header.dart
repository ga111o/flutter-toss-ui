import 'package:flutter/material.dart';

class DynamicAppBar extends StatefulWidget implements PreferredSizeWidget {
  final ScrollController controller;
  const DynamicAppBar({Key? key, required this.controller}) : super(key: key);

  @override
  _DynamicAppBarState createState() => _DynamicAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _DynamicAppBarState extends State<DynamicAppBar> {
  Color _appBarColor = Colors.white;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onScroll);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onScroll);
    super.dispose();
  }

  void _onScroll() {
    final offset = widget.controller.offset;
    double percent = offset / 100;
    if (percent > 1) {
      percent = 1;
    } else if (percent < 0) {
      percent = 0;
    }

    setState(() {
      _appBarColor = Colors.white.withOpacity(percent);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: _appBarColor,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          child: Row(
            children: [
              const SizedBox(width: 10),
              Icon(
                Icons.star,
                size: 28,
                color: Colors.grey.shade500,
              ),
              Text(
                'toss',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                  letterSpacing: 0.5,
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              Icon(
                Icons.star,
                size: 28,
                color: Colors.grey.shade500,
              ),
              Icon(
                Icons.star,
                size: 28,
                color: Colors.grey.shade500,
              ),
              const SizedBox(width: 10),
            ],
          ),
        )
      ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
