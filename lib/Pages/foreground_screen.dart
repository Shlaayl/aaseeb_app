import 'package:aaseeb_app/Core/core.dart';
import 'package:flutter/material.dart';
import 'package:aaseeb_app/Models/prayer.dart';
import 'package:aaseeb_app/Pages/home_screen.dart';
import 'package:aaseeb_app/Functions/time_util.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';

class ForeGroundWidget extends StatefulWidget {
  const ForeGroundWidget(this.nextPrayer, this.reminderTime, this.currentPrayer,
      {Key? key})
      : super(key: key);

  final Prayer nextPrayer;
  final Prayer? currentPrayer;
  final String reminderTime;

  @override
  State<ForeGroundWidget> createState() => _ForeGroundWidgetState();
}

class _ForeGroundWidgetState extends State<ForeGroundWidget> {
  var cardWidth = 0.0;

  var screenHeight = 0.0;

  var screenWidth = 0.0;
  var country = "";
  var city = "";

  @override
  void initState() {
    super.initState();
    context.read<PrefsCore>().init().then((value) {
      country = value.getString('country') ?? "";
      city = value.getString('city') ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    cardWidth = MediaQuery.of(context).size.width / 1.2;
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenHeight / 45),
          loaderWidget(),
          Container(
            margin: const EdgeInsets.all(8),
            child: Text(
              "$country-$city",
              style: const TextStyle(color: Colors.white60),
            ),
          ),
          SizedBox(height: screenHeight / 2, child: cardWidget(context))
        ],
      ),
    );
  }

  Widget cardWidget(BuildContext context) {
    final controller = context.read<ControllerCore>();
    final hadeethCore = context.read<HadeethCore>();
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 4,
      margin: const EdgeInsets.only(right: 15, left: 15),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xffE5E5E5),
          // image: DecorationImage(
          //     image: AssetImage("assets/card_background.png"),
          //     fit: BoxFit.cover)
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          children: [
            FittedBox(child: listOfTimes(controller.prayers)),
            const SizedBox(height: 10),
            Expanded(
                child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overScroll) {
                overScroll.disallowIndicator();
                return true;
              },
              child: SingleChildScrollView(
                child: Text(
                    " ${hadeethCore.getNewHead().title} \n ${hadeethCore.getNewHead().body}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontFamily: "Amiri", fontSize: 18),
                    textDirection: TextDirection.rtl),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget listOfTimes(List<Prayer> prayers) {
    return Row(
      children: [
        Column(
            children: [prayers[1], prayers[3], prayers[5]]
                .map((e) => timeWithTitle(e))
                .toList()),
        SizedBox(width: screenWidth / 7.5),
        Column(
            children: [prayers[0], prayers[2], prayers[4]]
                .map((e) => timeWithTitle(e))
                .toList()),
      ],
    );
  }

  Widget timeWithTitle(Prayer prayer) {
    return Container(
      margin:
          EdgeInsets.only(top: screenHeight / 55, bottom: screenHeight / 55),
      child: Column(
        children: [
          Row(
            children: [
              //Time widget
              Container(
                alignment: Alignment.centerLeft,
                width: 55,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    amPm(prayer.time)
                    
                    ,
                    style: const TextStyle(fontSize: 22),
                  ),
                ),
              ),
              const SizedBox(width: 4),
              //Title widget
              Container(
                  alignment: Alignment.centerRight,
                  width: 55,
                  child: FittedBox(
                      child: Text(prayer.title,
                          style: const TextStyle(
                              color: Color(0xFFE26B26), fontSize: 24)))),
            ],
          ),
          if (prayer.selected)
            Container(width: 92, height: 2.3, color: const Color(0xFFE26B26))
        ],
      ),
    );
  }

  Widget loaderWidget() => SizedBox(
        height: screenHeight / 3.5,
        child: FittedBox(
          child: CircularPercentIndicator(
            radius: 100.0,
            progressColor: Colors.white,
            lineWidth: 13.0,
            backgroundWidth: 10.0,
            percent:
                progress(widget.currentPrayer?.time, widget.nextPrayer.time),
            center: insideLoader(),
            animation: !firstTime,
            animationDuration: 3000,
            circularStrokeCap: CircularStrokeCap.round,
            backgroundColor: const Color(0xffc6b7d2),
          ),
        ),
      );

  Widget insideLoader() => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.reminderTime,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ), //Reminding time
          Text(widget.nextPrayer.title,
              style: const TextStyle(
                  color: Colors.white, fontSize: 18)) //Next prayer
        ],
      );
}
