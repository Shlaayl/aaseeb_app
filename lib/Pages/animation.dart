import 'package:flutter/cupertino.dart';

class AnimationWidget extends StatelessWidget {
  const AnimationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return AnimatedPositioned(
    duration: const Duration(seconds: 3),
       //bottom: 150,
      //right: 100,
      child: Container(
          height: 300,
          alignment: Alignment.bottomRight,
          child: Positioned(
            top: 150,
            child: SizedBox(
              height: 300,
              child: Opacity(
                opacity: 0.8,
                child: RotatedBox(
                    quarterTurns: 1,
                    child: false? Image.asset(
                      "assets/Asset 2.png",
                    ):const SizedBox()),
              ),
            ),
          )),
    );
  }
}
