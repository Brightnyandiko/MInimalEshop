import 'package:flutter/material.dart';
import 'package:minimal_eshop/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //drawer header
              DrawerHeader(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  )
              ),

              const SizedBox(height: 25,),

              //shop tile
              MyListTile(
                text: "Shop",
                icon: Icons.home,
                onTap: () {
                  //pop the drawer
                  Navigator.pop(context);

                  //go to shop page
                  Navigator.pushNamed(context, '/shop_page');
                },
              ),

              const SizedBox(height: 10,),

              //cart tile
              MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  //pop drawer first
                  Navigator.pop(context);

                  //go to cart page
                  Navigator.pushNamed(context, '/cart_page');
                },
              ),

              const SizedBox(height: 10,),

              MyListTile(
                text: "Profile",
                icon: Icons.person,
                onTap: () {
                  // pop the drawer
                  Navigator.pop(context);

                  //go to the profile page
                  Navigator.pushNamed(context, '/profile_page');
                },
              )
            ],
          ),

          const SizedBox(height: 10,),

          //exit shop tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
              text: "Exit",
              icon: Icons.exit_to_app_rounded,
              onTap: () {
                //pop drawer
                Navigator.pop(context);

                //exit the app
              },
            ),
          )
        ],
      ),
    );
  }
}
