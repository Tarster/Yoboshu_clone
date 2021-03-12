import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';

class MyTagBuilder extends StatelessWidget {
  final List<String> myTags;
  final String titleText;

  MyTagBuilder({@required this.titleText, @required this.myTags});
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
          height: 15,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Tags(
            columns: 5,
            itemCount: myTags.length,
            itemBuilder: (index) {
              final item = myTags[index];
              return ItemTags(
                index: index,
                title: item,
                active: false,
                pressEnabled: false,
                alignment: MainAxisAlignment.start,
                border: Border.all(
                    color: Color(0xFF6c4791),
                    width: 1,
                    style: BorderStyle.solid),
                elevation: 0,
                textColor: Color(0xFF6c4791),
                textStyle: TextStyle(fontSize: 14),
              );
            },
          ),
        )
      ],
    );
  }
}
