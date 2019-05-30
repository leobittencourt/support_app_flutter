import 'package:flutter/material.dart';
import 'package:support_app_flutter/screens/login_screen.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              height: 100.0,
              color: Colors.white,
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Seja muito bem-vindo(a)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('teste@teste.com'),
                    ]),
              ),
            ),
            ListTile(
              title: Text(
                'Sair',
                style: TextStyle(fontSize: 14.0, color: Colors.black),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Sair'),
                        content: Text('Você tem certeza que deseja sair ?'),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Não'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          FlatButton(
                            child: Text('Sim'),
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                          ),
                        ],
                      );
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
