import 'package:flutter/material.dart';
import 'my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
    const MyDrawer({super.key});

    @override
    Widget build(BuildContext context) {
        return Drawer(
            backgroundColor: Theme.of(context).colorScheme.background,
            child: Column(
                children: [
                    //app logo
                    Padding(
                        padding: const EdgeInsets.only(top:100.0),
                        Icon(
                            Icons.lock_open_rounded,
                            size: 80,
                            color: Theme.of(context).colorScheme.inversePrimary,
                            ), //Icon
                    ), //Padding

                    Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Divider(
                            Theme.of(context).colorScheme.secondary,
                        ), //Divider
                    ) //Padding

                    //home list tile
                    MyDrawer(
                        text: "H O M E", 
                        icon: icon, 
                        onTap: () {},
                        ), //MyDrawer
                    //settings list tile
                    MyDrawer(
                        text: "S E T T I N G S", 
                        icon: icon, 
                        onTap: () {},
                        ), //MyDrawer
                    //logout list tile
                        MyDrawer(
                        text: "L O G O U T", 
                        icon: icon, 
                        onTap: () {},
                        ), //MyDrawer
                ]
            ), //Column

        ); //Drawer
    }
}