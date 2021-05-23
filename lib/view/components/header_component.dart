import 'package:flutter/material.dart';
import '../../controller/animations/fade_animation.dart';
import '../../controller/utils/color.dart';

class HeaderContainer extends StatelessWidget {
  var text = "Login";

  HeaderContainer(this.text);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(100),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [colorPrimary, colorSecondary],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 20,
              right: 30,
              child: FadeAnimation(
                  1.25,
                  Text(
                    text,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.64),
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      shadows: [
                        Shadow(
                          blurRadius: 15,
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                    ),
                  )),
            ),
            FadeAnimation(
              0.9,
              Center(
                child: Image.asset("assets/logo.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
