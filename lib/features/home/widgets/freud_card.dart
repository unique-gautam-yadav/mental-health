import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mental_health/common/colors/app_colors.dart';
import 'package:mental_health/features/home/data/data.dart';

class FreudScoreCard extends StatelessWidget {
  const FreudScoreCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    "Freud Score",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "Track your score.",
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    LineBar(lineIndex: 0),
                    LineBar(lineIndex: 1),
                    LineBar(lineIndex: 2),
                    LineBar(lineIndex: 3),
                    LineBar(lineIndex: 4),
                    LineBar(lineIndex: 5),
                    LineBar(lineIndex: 6),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LineBar extends StatefulWidget {
  const LineBar({
    Key? key,
    required this.lineIndex,
  }) : super(key: key);

  final int lineIndex;

  @override
  State<LineBar> createState() => _LineBarState();
}

class _LineBarState extends State<LineBar> {
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
    return Column(
      children: [
        Expanded(
          child: AnimatedOpacity(
            curve: Curves.fastEaseInToSlowEaseOut,
            duration: const Duration(milliseconds: 4500),
            opacity: show ? 1 : .3,
            child: Container(
              width: 10,
              height: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.iconColor,
                border: Border.all(
                  color: AppColors.surfaceColor.withOpacity(.3),
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: LayoutBuilder(
                builder: (context, constrains) {
                  return Stack(
                    children: [
                      ...weekScore[widget.lineIndex]
                          .map(
                            (e) => AnimatedPositioned(
                              duration: const Duration(milliseconds: 4500),
                              top: show ? e.starts * constrains.maxHeight : 0,
                              curve: Curves.fastEaseInToSlowEaseOut,
                              left: 0,
                              right: 0,
                              child: AnimatedContainer(
                                curve: Curves.fastEaseInToSlowEaseOut,
                                duration: const Duration(milliseconds: 4500),
                                height: show
                                    ? (e.ends - e.starts) * constrains.maxHeight
                                    : 0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF3F40F8),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          days[widget.lineIndex],
          style: const TextStyle(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}

class DotLine extends StatelessWidget {
  const DotLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 0,
      child: CustomPaint(
        painter: DottedLinePainter(),
      ),
    );
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppColors.iconColor.withOpacity(.5)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2.0;

    double dashWidth = 20;
    double dashSpace = 10;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
