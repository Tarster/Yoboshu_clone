import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconTextObject {
  final IconData myIcon;
  final String text;
  IconTextObject(this.text, this.myIcon);
}

class IconText extends StatelessWidget {
  final String titleText;
  final Map<String, IconData> buildView;

  IconText({@required this.titleText, @required this.buildView});

  @override
  Widget build(BuildContext context) {
    final List<IconTextObject> buildViewList = buildView.entries
        .map((entry) => IconTextObject(entry.key, entry.value))
        .toList();
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
            itemCount: buildViewList.length,
            itemBuilder: (BuildContext context, int index) {
              return Align(
                alignment: Alignment.topLeft,
                child: ListTile(
                  leading: FaIcon(
                    buildViewList[index].myIcon,
                    color: Color(0xFF1d98cb),
                  ),
                  title: Text('${buildViewList[index].text}'),
                ),
              );
            }),
      ],
    );
  }
}
