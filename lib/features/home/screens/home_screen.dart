// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:mental_health/animatins/fade_zoom.dart';
import 'package:mental_health/common/colors/app_colors.dart';
import 'package:mental_health/features/home/data/data.dart';
import 'package:mental_health/features/home/widgets/freud_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    FadeInAnimation(
                      delay: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "YourDay.",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 22,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 6),
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(1001),
                            ),
                            child: Row(
                              children: [
                                const SizedBox(width: 10),
                                const Badge(
                                  child: Icon(Iconsax.notification_bing),
                                ),
                                const SizedBox(width: 12),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(1001),
                                  child: Image.asset(
                                    'assets/images/model.jpg',
                                    height: 45,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    FadeInAnimation(
                      delay: 1.5,
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.surfaceColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(1001),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(4),
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.blackColor,
                                        ),
                                        child: Image.asset(
                                          'assets/icons/mood.png',
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Text("Mood Tracker"),
                                      const SizedBox(width: 10),
                                    ],
                                  ),
                                ),
                                CupertinoButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Text(
                                        "View Details",
                                        style: TextStyle(
                                          color: AppColors.whiteColor
                                              .withOpacity(.8),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Icon(
                                        Iconsax.arrow_right_1,
                                        color: AppColors.whiteColor
                                            .withOpacity(.8),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 25),
                            Text(
                              "How are you today?",
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 15),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MoodMoji(emoji: '😣', title: 'Depressed'),
                                MoodMoji(emoji: '😢', title: 'Sad'),
                                MoodMoji(emoji: '😑', title: 'Neutral'),
                                MoodMoji(emoji: '😀', title: 'Happy'),
                                MoodMoji(emoji: '🤩', title: 'Overjoy'),
                              ],
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    FadeInAnimation(
                      delay: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Your Metrics",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CupertinoButton(
                            padding: EdgeInsets.zero,
                            child: const Row(
                              children: [
                                Text("View Detail"),
                                SizedBox(width: 4),
                                Icon(Iconsax.arrow_right_1)
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              FadeInAnimation(
                delay: 2.5,
                child: SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 10),
                      const FreudScoreCard(),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: 300,
                        margin: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Mood",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Text(
                                      "Are you happy?",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text("Week"),
                                    const SizedBox(width: 10),
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: AppColors.iconColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Iconsax.arrow_right_3,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Expanded(
                              child: Stack(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(),
                                      DotLine(),
                                      DotLine(),
                                      DotLine(),
                                      DotLine(),
                                      DotLine(),
                                      DotLine(),
                                      DotLine(),
                                      DotLine(),
                                      DotLine(),
                                      DotLine(),
                                      SizedBox(),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      DotIndicator(title: "0-3", index: 0),
                                      DotIndicator(title: "3-6", index: 1),
                                      DotIndicator(title: "6-9", index: 2),
                                      DotIndicator(title: "9-12", index: 3),
                                      DotIndicator(title: "9-12", index: 4),
                                      DotIndicator(title: "12-0", index: 5),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      const FreudScoreCard(),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              FadeInAnimation(
                delay: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Community",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        child: const Row(
                          children: [
                            Text("View Detail"),
                            SizedBox(width: 4),
                            Icon(Iconsax.arrow_right_1)
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              FadeInAnimation(
                delay: 3.5,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: AppColors.blackColor,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Text(
                            "⭐️",
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your life club",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Improve ur better life here.",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Text("Join"),
                          const SizedBox(width: 20),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: AppColors.iconColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Iconsax.arrow_right_3,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends StatefulWidget {
  const DotIndicator({
    Key? key,
    required this.title,
    required this.index,
  }) : super(key: key);

  final String title;
  final int index;

  @override
  State<DotIndicator> createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
  bool show = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(
        const Duration(milliseconds: 500),
      ).then((value) => setState(() {
            show = !show;
          }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      curve: Curves.fastEaseInToSlowEaseOut,
      duration: const Duration(milliseconds: 4500),
      opacity: show ? 1 : .3,
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: 15,
              child: LayoutBuilder(builder: (context, constraint) {
                return Stack(
                  children: [
                    AnimatedPositioned(
                      curve: Curves.fastEaseInToSlowEaseOut,
                      duration: const Duration(milliseconds: 4500),
                      top: show
                          ? constraint.maxHeight * moodS[widget.index].value
                          : 0,
                      child: Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          color: moodS[widget.index].isNeg
                              ? AppColors.redColor
                              : AppColors.greenColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                );
              }),
            ),
          ),
          Text(
            widget.title,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class MoodMoji extends StatelessWidget {
  const MoodMoji({
    super.key,
    required this.emoji,
    required this.title,
  });
  final String emoji;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.blackColor,
            shape: BoxShape.circle,
          ),
          child: Text(
            emoji,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
