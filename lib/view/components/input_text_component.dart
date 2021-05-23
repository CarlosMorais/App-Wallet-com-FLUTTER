import 'package:flutter/material.dart';
import '../../controller/animations/fade_animation.dart';

class InputTextWidget extends StatelessWidget {
  var controller;
  var hint;
  var icon;

  InputTextWidget({this.controller, this.hint, this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeAnimation(
        0.05,
        Container(
          margin: EdgeInsets.only(top: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(29)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFc0c0c0),
                  blurRadius: 25,
                  offset: Offset(2, 2),
                ),
              ]),
          padding: EdgeInsets.all(0),
          child: Container(
            child: Material(
              elevation: 1,
              borderRadius: const BorderRadius.all(
                const Radius.circular(29),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 3, right: 5, bottom: 0, left: 5),
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hint,
                    prefixIcon: Container(
                        padding: EdgeInsets.only(
                            top: 0, right: 0, bottom: 5, left: 0),
                        child: Icon(icon)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
