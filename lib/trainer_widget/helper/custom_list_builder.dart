import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListText extends StatelessWidget {
  final String titleText;
  final List<String> listView;

  ListText({@required this.titleText, @required this.listView});

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
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.all(4),
            itemCount: listView.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.globe,
                  color: Color(0xFF1d98cb),
                ),
                title: Text('${listView[index]}'),
              );
            }),
      ],
    );
  }
}
