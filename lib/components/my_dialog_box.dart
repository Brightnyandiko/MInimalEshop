import 'package:flutter/material.dart';
import 'package:minimal_eshop/models/product.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';

class MyDialogBox extends StatelessWidget {
  const MyDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("Add this item to your cart?"),
      actions: [
        //cancel button
        MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
          child: Text("Cancel"),
        ),

        //accept button
        MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Yes"),
        )
      ],
    );
  }
}
