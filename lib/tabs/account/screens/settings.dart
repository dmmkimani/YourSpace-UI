import 'package:flutter/material.dart';
import 'package:project/tabs/account/widgets/btn_logout.dart';
import 'package:project/tabs/widgets/app_bar_pop.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool areNotificationsOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              padding:
                  const EdgeInsets.only(top: 90.0),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: Container(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: const Icon(Icons.notifications_active, color: Colors.blue),
                    ),
                    title: const Text('Notifications',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.normal)),
                    trailing: Switch(
                      value: areNotificationsOn,
                      onChanged: (value) {
                        setState(() {
                          areNotificationsOn = value;
                        });
                      },
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {},
                    leading: Container(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: const Icon(Icons.feedback, color: Colors.blue),
                    ),
                    title: const Text('Give Your Feedback',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.normal)),
                    trailing: const Icon(Icons.navigate_next),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {},
                    leading: Container(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: const Icon(Icons.contact_mail, color: Colors.blue),
                    ),
                    title: const Text('Contact Swansea University',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.normal)),
                    trailing: const Icon(Icons.navigate_next),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: const SizedBox(
                      width: 150.0,
                      height: 47.5,
                      child: LogoutBtn(),
                    ),
                  )
                ],
              )),
          PopAppBar(context, 'Settings')
        ],
      ),
    );
  }
}
