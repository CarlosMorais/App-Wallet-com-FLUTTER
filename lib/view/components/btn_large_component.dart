import 'package:flutter/material.dart';
import '../../controller/utils/color.dart';
import '../../controller/animations/fade_animation.dart';

class ButtonLarge extends StatelessWidget {
  var btnText = "";
  var onClick;

  ButtonLarge({this.btnText, this.onClick});

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      0.1,
      Material(
        elevation: 2,
        borderRadius: const BorderRadius.all(
          const Radius.circular(100),
        ),
        child: InkWell(
          onTap: onClick,
          child: Container(
            width: double.infinity,
            height: 45,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [colorPrimary, colorSecondary],
                  end: Alignment.centerLeft,
                  begin: Alignment.centerRight),
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              btnText,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
