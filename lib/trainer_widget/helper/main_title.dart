import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainTitle extends StatelessWidget {
  final String name;
  final int experience;
  final int sessionRate;
  MainTitle({@required this.name, @required this.experience ,@required this.sessionRate})
  : assert(name != null), assert(experience != null ), assert(sessionRate != null);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Text(
                  name,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Container(
                  width: 80,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "\u{20B9} $sessionRate",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Per session",
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ))
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: RichText(
                    text: TextSpan(
                      text: '$experience+',
                      style: Theme.of(context).textTheme.headline1,
                      children: <TextSpan>[
                        TextSpan(
                          text: '   years of Experience',
                          style: Theme.of(context).textTheme.bodyText1,
                        )
                      ],
                    )),
              ),
              Container(
                  width: 80,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: FaIcon(
                              Icons.shield,
                              size: 18,
                              color: Color(0xFF1d98cb),
                            ),
                          ),
                          TextSpan(
                            text: " Certified",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
