import 'package:flutter/material.dart';

class Pricing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('1-on-1 Pricing'),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.info_outline),
            alignment: Alignment.center,
          ),
        ),
        RichText(
          text: TextSpan(
            text: 'Note: ',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                text:
                    'Above charges are for in-person training, It does not include group discount. Moreover price for online training is 20% less than in-person training',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
