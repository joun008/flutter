import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MedalTopBar extends StatelessWidget {
  const MedalTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (MediaQuery.of(context).size.height) * 0.07,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          height: (MediaQuery.of(context).size.height) * 0.04,
          child: FloatingActionButton(
              onPressed: () {
                print("menu");
              },
              backgroundColor: const Color(0xfff6fdfb),
              shape: const CircleBorder(),
              child: const Icon(
                Icons.sort,
                color: Color(0xff69716f),
                size: 24.0,
              )),
        ),
        Text("Green Activites",
            style: Theme.of(context).textTheme.headline6!.copyWith(
                color: const Color(0xff69716f), fontWeight: FontWeight.w400)),
        SizedBox(
            height: (MediaQuery.of(context).size.height) * 0.04,
            child: FloatingActionButton(
                onPressed: () {
                  print("이미지");
                },
                backgroundColor: const Color(0xfff6fdfb),
                shape: const CircleBorder(),
                child: SvgPicture.asset(
                  "assets/icons/menu.svg",
                  fit: BoxFit.fill,
                ))),
      ]),
    );
  }
}
