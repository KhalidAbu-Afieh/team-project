import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            subtitle: Text('English'),
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('Send Feedback'),
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.email),
            title: Text('Contact Us'),
            subtitle: Text('support@marketplace.com'),
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text('Privacy Policy'),
          ),
        ],
      ),
    );
  }
}
