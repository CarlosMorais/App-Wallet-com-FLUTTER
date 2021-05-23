import 'package:flutter/material.dart';
import '../../controller/utils/color.dart';
import '../../controller/animations/fade_animation.dart';
import '../../view/components/btn_filter_card_componnent.dart';
import '../../view/components/btn_setting_component.dart';
import '../../view/components/credit_card_component.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      0.1,
      Container(
        decoration: BoxDecoration(
          gradient: new LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [colorPrimary, colorSecondary],
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: DraggableScrollableSheet(
          builder: (context, scrollController) {
            return Container(
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Meus Cartões",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 24,
                                    color: Colors.black),
                              ),
                              Text(
                                "2 Cartões Físicos, e 1 Cartão Virtual",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 14,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.more_horiz,
                              color: Colors.lightBlue[900],
                              size: 30,
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 32),
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: <Widget>[
                          //copy same button
                          ButtonFilterCard(text: 'Cartões Físicos'),
                          ButtonFilterCard(text: 'Cartões Virtuais'),
                        ],
                      ),
                    ),

                    //Container for card
                    SizedBox(
                      height: 25,
                    ),
                    CreditCard(
                        card_number: '**** **** **** 7890',
                        card_holder: 'Ana Ferraz',
                        expires: '8/25',
                        cvc: '123'),
                    SizedBox(
                      height: 30,
                    ),

                    FadeAnimation(
                      0.05,
                      Column(children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Configurações",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 26),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ButtonSetting(
                            title: 'Compras On-line', icon: Icons.wifi),
                        ButtonSetting(
                            title: 'Compras No Exterior', icon: Icons.public),
                        ButtonSetting(
                            title: 'Compras Na Maquininha',
                            icon: Icons.smartphone),
                      ]),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(243, 245, 248, 1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
            );
          },
          initialChildSize: 0.95,
          maxChildSize: 0.95,
        ),
      ),
    );
  }
}
