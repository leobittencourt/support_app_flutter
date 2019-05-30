import 'package:flutter/material.dart';
import 'package:support_app_flutter/services/calleds_services.dart';
import 'package:support_app_flutter/widgets/drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _calledsServices = CalledsServices();
  Map<String, dynamic> _calleds = {};

  @override
  void initState() {
    super.initState();

    _getAllCalleds();
  }

  void _getAllCalleds() async {
    try {
      var response = await _calledsServices.getAllCalleds();
      setState(() {
        _calleds = response;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xFF26A2E2),
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            tabs: <Widget>[
              Tab(text: 'Chamados'),
              Tab(text: 'Murais'),
              Tab(text: 'Condomínios'),
            ],
          ),
          title: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.white,
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.home),
            Icon(Icons.message),
            Icon(Icons.call),
          ],
        ),
      ),
    );
  }
}
