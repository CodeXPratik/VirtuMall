import 'package:flutter/material.dart';
import 'package:virtumall/views/pages/welcome_page.dart';

import '../widgets/notifiers.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Account',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Divider(thickness: 1, color: Color(0xFFE6E6E6)),
          ),
          ListTile(
            leading: const Icon(Icons.card_giftcard_outlined),
            title: const Text('My Orders'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          Divider(thickness: 7, color: Color(0xFFE6E6E6)),
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text('My Details'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 57, right: 30),
            child: Divider(thickness: 1, color: Color(0xFFE6E6E6)),
          ),
          ListTile(
            leading: const Icon(Icons.house_outlined),
            title: const Text('Address Book'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 57, right: 30),
            child: Divider(thickness: 1, color: Color(0xFFE6E6E6)),
          ),
          ListTile(
            leading: const Icon(Icons.payment_outlined),
            title: const Text('Payments Method'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 57, right: 30),
            child: Divider(thickness: 1, color: Color(0xFFE6E6E6)),
          ),
          ListTile(

            leading: const Icon(Icons.notifications_outlined),
            title: const Text('Notifications'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          Divider(thickness: 7, color: Color(0xFFE6E6E6)),
          ListTile(
            leading: const Icon(Icons.question_answer_outlined),
            title: const Text('FAQ\'s'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 57, right: 30),
            child: Divider(thickness: 1, color: Color(0xFFE6E6E6)),
          ),
          ListTile(
            leading: const Icon(Icons.description_outlined),
            title: const Text('My Details'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 57, right: 30),
            child: Divider(thickness: 1, color: Color(0xFFE6E6E6)),
          ),
          ListTile(
            leading: const Icon(Icons.help_center_outlined),
            title: const Text('Help Center'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          Divider(thickness: 7, color: Color(0xFFE6E6E6)),
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: const Text('Logout'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
