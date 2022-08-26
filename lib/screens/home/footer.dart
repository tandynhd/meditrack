import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              icon: Icon(Icons.add_circle),
              onPressed: (){},
              label: Text('New Medication'),
            ),
            TextButton(
              onPressed: (){},
              child: Text('Add List'),
            ),
          ],
        )
    );
  }
}
