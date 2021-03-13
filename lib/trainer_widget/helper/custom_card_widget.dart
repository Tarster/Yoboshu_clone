import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final int index;
  final int numberOfSessions;
  int sessionRate;
  final int discount;
  final String planName;

  CustomCardWidget ({@required this.discount, @required this.numberOfSessions,@required this.index,@required this.planName, @required this.sessionRate});
  @override
  Widget build(BuildContext context) {
    sessionRate = (sessionRate - sessionRate * discount *0.01).round();
    return Card(
      elevation: 4,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.55),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xff1d98cb),
              Color(0xff6c4791),
            ],
          ),
        ),
        height: index == 0 ? 130 : 180,
        child: Column(
          children: <Widget>[
            Flexible(
              fit: FlexFit.loose,
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                color: Color.fromRGBO(00, 00, 00, 0.2),
                child: Text(
                  planName,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.black),
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline5,
                        text: 'Buy',
                        children: <TextSpan>[
                          TextSpan(
                            text: ' $numberOfSessions',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          TextSpan(text: ' sessions')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 11.0,
                    ),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline5,
                        text: 'Rs',
                        children: <TextSpan>[
                          TextSpan(
                            text: ' $sessionRate',
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                .copyWith(fontSize: 24),
                          ),
                          TextSpan(text: '/ sessions')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 11.0,
                    ),
                    index == 0
                        ? Container()
                        : RichText(
                            text: TextSpan(
                              text: 'Save',
                              style: Theme.of(context).textTheme.headline5,
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' $discount %',
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
