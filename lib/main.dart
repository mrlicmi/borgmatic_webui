import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Borgmatic simple ui',
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Borgmatic simple ui'),
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xff5808e5),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'Repository', icon: Icon(Icons.storage)),
                Tab(text: 'Config files', icon: Icon(Icons.settings)),
                Tab(text: 'Archives', icon: Icon(Icons.inventory)),
                Tab(text: 'Logs', icon: Icon(Icons.event_note)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Row(children: <Widget>[
                Expanded(
                  child: TextFormField(
                    initialValue: 'example: /mnt/borg/repo1',
                    maxLength: 1000,
                    decoration: InputDecoration(
                      labelText: ' Repository path that you want to initialize',
                      labelStyle: TextStyle(
                        color: Color(0xFF6200EE),
                      ),
                      helperText: ' ',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF6200EE)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Respond to button press
                    },
                    icon: Icon(Icons.add, size: 18),
                    label: Text("Init repo"),
                  ),
                ),
              ]),
              Center(child: Text('Config')),
              Center(child: Text('Archives')),
              Row(
                children: const <Widget>[
                  Expanded(
                    child: Text('Deliver features faster',
                        textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: Text('Craft beautiful UIs',
                        textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain, // otherwise the logo will be tiny
                      child: FlutterLogo(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
