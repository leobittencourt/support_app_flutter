import 'package:flutter/material.dart';
import 'package:support_app_flutter/screens/home_screen.dart';
import 'package:support_app_flutter/services/auth_services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordFocus = FocusNode();
  final _authServices = AuthServices();

  void _login() async {
    try {
      var token = await _authServices.token(
          _emailController.text, _passwordController.text);

      if (token != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    } catch (e) {
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text(e),
        duration: Duration(seconds: 3),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Image.asset(
                'images/support_app_logo.png',
              ),
            ),
            Column(
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  onSubmitted: (email) {
                    FocusScope.of(context).requestFocus(_passwordFocus);
                  },
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'E-mail'),
                ),
                TextField(
                  focusNode: _passwordFocus,
                  textInputAction: TextInputAction.done,
                  onSubmitted: (password) {
                    _login();
                  },
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Senha'),
                ),
                SizedBox(height: 5.0),
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: FlatButton(
                    padding: const EdgeInsets.all(0.0),
                    onPressed: () {},
                    child: Text(
                      'Esqueceu sua senha ?',
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                RaisedButton(
                  onPressed: _login,
                  color: const Color(0xFF26A2E2),
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text(
                    'Entrar',
                    style: TextStyle(fontSize: 14.0, color: Colors.white),
                  ),
                ),
                SizedBox(height: 20.0),
                FlatButton(
                  onPressed: () {},
                  child: Text('Não possui uma conta ? Crie agora.'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
