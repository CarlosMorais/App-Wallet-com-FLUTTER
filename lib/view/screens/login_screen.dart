import 'package:flutter/material.dart';
import '../screens/wallet_screen.dart';
import '../../controller/utils/color.dart';
import '../components/btn_large_component.dart';
import '../components/header_component.dart';
import '../components/input_text_component.dart';
import 'register_screen.dart';
import '../../controller/animations/fade_animation.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            HeaderContainer("Login"),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 75),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    InputTextWidget(hint: "E-mail", icon: Icons.email),
                    InputTextWidget(hint: "Senha", icon: Icons.vpn_key),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      alignment: Alignment.center,
                      child: FadeAnimation(
                        0.1,
                        Text(
                          "Esqueceu a senha?",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: ButtonLarge(
                          onClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WalletApp()));
                          },
                          btnText: "ENTRAR",
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => RegPage()));
                      },
                      child: FadeAnimation(
                        0.1,
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Não possui conta? ",
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: " Crie Sua Conta!",
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
