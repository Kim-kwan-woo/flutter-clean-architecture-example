import 'package:flutter/material.dart';

class HistoryDrawer extends StatelessWidget {
  const HistoryDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Clear Stroy History'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
