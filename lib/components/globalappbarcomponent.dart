import 'package:flutter/material.dart';

class Globalappbarcomponent extends StatelessWidget implements PreferredSizeWidget {
  const Globalappbarcomponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 0, 255, 242),
      title: Text("CPU Social"),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}