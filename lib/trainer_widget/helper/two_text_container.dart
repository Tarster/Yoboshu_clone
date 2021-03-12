import 'package:flutter/material.dart';

class TwoTextContainer extends StatelessWidget {
  final String titleText;
  final String bodyText;

  TwoTextContainer({@required this.titleText, @required this.bodyText})
      : assert(titleText != null),
        assert(bodyText != null);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            titleText,
            style: Theme.of(context)
                .textTheme
                .headline1
                .copyWith(color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          bodyText,
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 14),
        ),
      ],
    );
  }
}
