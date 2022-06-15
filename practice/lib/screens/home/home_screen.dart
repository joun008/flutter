import 'package:flutter/material.dart';
import 'package:practice/constants.dart';
import '../components/medal.dart';
import '../components/medal_grade_mission.dart';
import '../components/medal_level_bar.dart';
import '../components/medal_top_bar.dart';
import '../components/medal_weeks.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultPadding = MediaQuery.of(context).size.height * 0.01;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Container(
              width: double.infinity,
              height: (MediaQuery.of(context).size.height) * 0.5,
              decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius:
                      BorderRadius.all(Radius.circular(defaultBorderRadius))),
              child: Column(children: [
                const MedalTopBar(),
                Padding(
                  padding: EdgeInsets.only(
                      left: defaultPadding,
                      right: defaultPadding,
                      bottom: defaultPadding),
                  child: Container(
                    width: double.infinity,
                    height: (MediaQuery.of(context).size.height) * 0.43 -
                        defaultPadding,
                    decoration: const BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.all(
                            Radius.circular(defaultBorderRadius))),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: defaultPadding * 3,
                        right: defaultPadding * 3,
                        top: defaultPadding,
                      ),
                      child: Column(children: [
                        const Medal(),
                        const MedalLevelBar(),
                        const MedalGradeMission(),
                        Container(height: defaultPadding * 2),
                        MedalWeeks(defaultPadding: defaultPadding)
                      ]),
                    ),
                  ),
                )
              ]),
            ),
          ),
          //mission
          Container(
            decoration: const BoxDecoration(color: Colors.black),
          )
        ],
      )),
    );
  }
}






// class MedalProgressBar extends StatefulWidget {
//   const MedalProgressBar({Key? key}) : super(key: key);

//   @override
//   State<MedalProgressBar> createState() => _MedalProgressBarState();
// }

// class _MedalProgressBarState extends State<MedalProgressBar> {
//   double ab = 0.4;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const ClipRRect(
//             borderRadius:
//                 BorderRadius.all(Radius.circular(defaultBorderRadius)),
//             child: LinearProgressIndicator(
//               value: 0.3,
//               backgroundColor: Color(0xffdfe2e1),
//               minHeight: 15,
//             )),
//         GestureDetector(onTap: () {}, child: Text("hi"))
//       ],
//     );
//   }
// }
