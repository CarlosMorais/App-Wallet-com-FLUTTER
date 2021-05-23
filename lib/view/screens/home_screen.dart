import 'package:flutter/material.dart';
import '../components/transaction_block_component.dart';
import '../../controller/utils/color.dart';
import '../components/btn_wallet_componnent.dart';
import '../../controller/animations/fade_animation.dart';
import '../components/btn_filter_transaction_componnent.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: new LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [colorPrimary, colorSecondary],
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          //Container for top data
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "R\$ 3.789,10",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.notifications,
                              color: Colors.lightBlue[100],
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: ClipOval(
                                child: Image.asset(
                                  "assets/dp.jpg",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Text(
                    "Saldo Disponível",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 22,
                        color: Colors.blue[100]),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ButtonWallet(
                          text: "Faturas", icon: Icons.date_range, delay: 0.5),
                      ButtonWallet(
                          text: "Compras",
                          icon: Icons.add_shopping_cart,
                          delay: 0.7),
                      ButtonWallet(
                          text: "Pagar", icon: Icons.payment, delay: 0.9),
                      ButtonWallet(
                          text: "Recargar",
                          icon: Icons.trending_up,
                          delay: 1.1),
                    ],
                  )
                ],
              ),
            ),
          ),

          //draggable sheet
          DraggableScrollableSheet(
            builder: (context, scrollController) {
              return FadeAnimation(
                0.05,
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Color(0xFFb0b0b0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 4,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Color.fromRGBO(243, 245, 248, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 25, bottom: 25, left: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Últimas Transações",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 24,
                                    color: Colors.black),
                              ),
                              Text(
                                "Buscar",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.grey[700]),
                              )
                            ],
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 32),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              ButtonFilterTransaction(
                                  text: 'Tudo', color: Colors.grey[500]),
                              SizedBox(
                                width: 10,
                              ),
                              ButtonFilterTransaction(
                                  text: 'Entradas', color: Colors.green),
                              SizedBox(
                                width: 10,
                              ),
                              ButtonFilterTransaction(
                                  text: 'Saídas', color: Colors.orange),
                            ],
                          ),
                        ),
                        //Container Listview for last-month and incomes
                        TransactionBlock(title: 'HOJE', list: 'today'),
                        TransactionBlock(
                            title: 'ÚLTIMO MÊS', list: 'last-month'),
                        //now expense
                      ],
                    ),
                    controller: scrollController,
                  ),
                ),
              );
            },
            initialChildSize: 0.65,
            minChildSize: 0.65,
            maxChildSize: 1,
          )
        ],
      ),
    );
  }
}
