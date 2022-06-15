import 'package:flutter/material.dart';
import '../../constants.dart';

class Medal extends StatelessWidget {
  const Medal({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
            bottom: BorderSide(
          color: Color(0xffdfe2e1),
          width: 0.5,
        )),
      ),
      child: Container(
        width: double.infinity,
        height: (MediaQuery.of(context).size.height) * 0.16,
        child: Column(
          children: [
            IconButton(
              onPressed: () {
                print("추후 업데이트 예정입니다.");
              },
              icon: const Icon(
                Icons.workspace_premium,
              ),
              color: subColor,
              iconSize: (MediaQuery.of(context).size.height) * 0.1,
            ),
            Text("새싹이", style: Theme.of(context).textTheme.subtitle1),
          ],
        ),
      ),
    );
  }
}
