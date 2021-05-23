import 'package:flutter/material.dart';
import 'login_screen.dart';
import '../../controller/utils/color.dart';
import '../components/btn_large_component.dart';
import '../components/header_component.dart';
import '../components/input_text_component.dart';
import '../../controller/animations/fade_animation.dart';

class RegPage extends StatefulWidget {
  @override
  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            HeaderContainer("Criar Conta"),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 40),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    InputTextWidget(hint: "Nome", icon: Icons.person),
                    InputTextWidget(hint: "E-mail", icon: Icons.email),
                    InputTextWidget(hint: "Telefone", icon: Icons.call),
                    InputTextWidget(hint: "Senha", icon: Icons.vpn_key),
                    Expanded(
                      child: Center(
                        child: ButtonLarge(
                          btnText: "CONFIRMAR",
                          onClick: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: FadeAnimation(
                        0.1,
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Já possui conta? ",
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: " Faça Login!",
                                style: TextStyle(
                                  color: colorPrimary,
                                  fontSize: 16,
                                )),
                          ]),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
