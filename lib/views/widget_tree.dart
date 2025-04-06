import 'package:flutter/material.dart';
import 'package:virtumall/views/pages/account.dart';
import 'package:virtumall/views/pages/cart.dart';
import 'package:virtumall/views/pages/home_page.dart';
import 'package:virtumall/views/pages/saved.dart';
import 'package:virtumall/views/pages/search.dart';
import 'package:virtumall/views/widgets/navbar_widget.dart';
import 'package:virtumall/views/widgets/notifiers.dart';

List<Widget> pages = [
  HomePage(),
  SearchPage(),
  SavedPage(),
  CartPage(),
  AccountPage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(valueListenable: selectedPageNotifier, builder: (context, selectedPage, child) {
        return pages.elementAt(selectedPage);
      }),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
