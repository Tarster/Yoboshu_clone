import 'package:flutter/material.dart';
import 'package:trainer_clone/trainer_widget/helper/custom_card_widget.dart';

class Pricing extends StatelessWidget {
  static const List<String> planName = [
    'STARTER PLAN',
    'POPULAR PLAN',
    'BEST VALUE PLAN'
  ];
  static const List<int> planTime = [5, 12, 24];
  static const List<int> discount = [0, 8, 15];

  final int sessionRate;
  Pricing(this.sessionRate);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            '1-on-1 Pricing',
            style: Theme.of(context)
                .textTheme
                .headline1
                .copyWith(color: Colors.black),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.info_outline,color: Colors.black,),
            alignment: Alignment.center,
          ),
        ),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.all(4),
            itemCount: planName.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomCardWidget(
                planName: planName[index],
                sessionRate: sessionRate,
                index: index,
                discount: discount[index],
                numberOfSessions: planTime[index],
              );
            }),
        SizedBox(
          height: 20,
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
                style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.black54),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
