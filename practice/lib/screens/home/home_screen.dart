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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                        const MedalWeeks(),
                      ]),
                    ),
                  ),
                )
              ]),
            ),
          ),
          //mission
          SizedBox(height: defaultPadding * 3),
          Padding(
            padding:
                EdgeInsets.only(left: defaultPadding, right: defaultPadding),
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today Activities",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const Mission(),
                  ],
                )),
          )
        ],
      )),
    );
  }
}

class Mission extends StatefulWidget {
  const Mission({Key? key}) : super(key: key);

  @override
  _MissionState createState() => _MissionState();
}

class _MissionState extends State<Mission> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    double defaultPadding = MediaQuery.of(context).size.height * 0.01;
    return SizedBox(
      child: GestureDetector(
          onTap: () {
            setState(() {
              check = !check;
            });
          },
          child: Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: AnimatedContainer(
              width: double.infinity,
              height: check
                  ? MediaQuery.of(context).size.height * 0.07
                  : MediaQuery.of(context).size.height * 0.2,
              alignment:
                  check ? Alignment.centerLeft : AlignmentDirectional.topStart,
              duration: const Duration(milliseconds: 300),
              decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(
                      Radius.circular(defaultBorderRadius / 2))),
              curve: Curves.fastOutSlowIn,
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    backgroundColor: primaryColor, side: BorderSide.none),
                onPressed: () {
                  setState(() {
                    check = !check;
                  });
                },
                icon: const Icon(Icons.photo_camera),
                label: const Text("제목"),
              ),
            ),
          )),
    );
  }
}






    // width: double.infinity,
    //     height: (MediaQuery.of(context).size.height) * 0.08,
    //     decoration: const BoxDecoration(
    //         color: primaryColor,
    //         borderRadius:
    //             BorderRadius.all(Radius.circular(defaultBorderRadius / 2))),
    //     child: check
    //         ? OutlinedButton.icon(
    //             style: OutlinedButton.styleFrom(
    //                 backgroundColor: primaryColor, side: BorderSide.none),
    //             onPressed: () {
    //               setState(() {
    //                 check = !check;
    //               });
    //             },
    //             icon: const Icon(Icons.photo_camera),
    //             label: const Text("제목"),
    //           )
            // : const MedalLevelBar());