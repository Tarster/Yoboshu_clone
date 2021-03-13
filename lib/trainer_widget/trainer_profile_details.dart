import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trainer_clone/trainer_widget/helper/pricing.dart';
import 'package:trainer_clone/user/userdata.dart';
import 'helper/Text_vertical_line.dart';
import 'helper/custom_list_builder.dart';
import 'helper/icon_text_container.dart';
import 'helper/main_title.dart';
import 'helper/tag_builder.dart';
import 'helper/two_text_container.dart';

class TrainerDetailedProfile extends StatelessWidget {
  final double _thickness = 2;

  /*
  Creating object so we can show the details but in real app either we are fetching these details locally or from the service like firebase.
  */

  @override
  Widget build(BuildContext context) {
    const String aboutMeBody =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
    const String educationBody =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do ei';
    const String location = 'Amritsar, Punjab';
    const int sessionRate = 150;
    const int experience = 5;
    const Map<String, IconData> modeOfTraining = {
      'Online(Google Meet)': FontAwesomeIcons.globeAsia,
      'In Home': FontAwesomeIcons.home,
      'Outdoors': FontAwesomeIcons.tree
    };
    const List<String> languages = [
      'Hindi',
      'English',
      'Punjabi',
    ];
    const List<String> myExpertise = [
      'GYM',
      'YOGA',
      'BOXING',
      'SPORTS TRAINER',
      'MARTIAL ARTIST',
    ];
    const List<String> availability = [
      '6:00 AM TO 7:00 AM',
      '10:30 AM TO 11:30 AM',
      '11:00 AM TO 12:00 PM',
      '12:28 PM TO 1:28 PM',
      '1:00 PM TO 2:00 PM',
      '2:30 PM TO 3:30 PM'
    ];
    const List<String> peopleILoveTraining = [
      'ACTORS',
      'MEN',
      'WOMEN',
      'BEGINNERS',
      'MODEL',
      'YOUTH',
      'OVERWEIGHT',
      'BODYBUILDERS',
      'OBESE',
      'MILITARY',
      'SPECIALLY ABLE',
      'BRIDE TO BE'
    ];
    const List<String> medicalCondition = [
      'Injury',
      'Smoking Addiction',
      'Anxiety',
      'Drinking Addiction',
      'Lung Disease',
    ];

    UserData user1 = new UserData(
      name: "Suraj Kumar",
      aboutMe: aboutMeBody,
      qualification: educationBody,
      location: location,
      sessionRate: sessionRate,
      experience: experience,
      modeOfTraining: modeOfTraining,
      languages: languages,
      myExpertise: myExpertise,
      availability: availability,
      peopleILoveTraining: peopleILoveTraining,
    );

    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          MainTitle(
            experience: user1.experience,
            sessionRate: user1.sessionRate,
            name: user1.name,
          ),
          Divider(
            height: 50,
            thickness: _thickness,
          ),
          TwoTextContainer(titleText: 'About me', bodyText: aboutMeBody),
          Divider(
            height: 50,
            thickness: _thickness,
          ),
          MyTagBuilder(titleText: 'My Expertise', myTags: user1.myExpertise),
          Divider(
            height: 50,
            thickness: _thickness,
          ),
          TextVerticalLine(
              titleText: 'Medical Condition Experience',
              myTags: medicalCondition),
          Divider(
            height: 50,
            thickness: _thickness,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'My Location',
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
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.mapMarkerAlt,
              color: Color(0xFF1d98cb),
            ),
            title: Text(user1.location),
          ),
          Divider(
            height: 50,
            thickness: _thickness,
          ),
          IconText(
              titleText: 'Mode of Training', buildView: user1.modeOfTraining),
          Divider(
            height: 50,
            thickness: _thickness,
          ),
          Pricing(user1.sessionRate),
          Divider(
            height: 50,
            thickness: _thickness,
          ),
          MyTagBuilder(titleText: 'Availability', myTags: user1.availability),
          Divider(
            height: 50,
            thickness: _thickness,
          ),
          TextVerticalLine(
              titleText: 'Training Days', myTags: medicalCondition),
          Divider(
            height: 50,
            thickness: _thickness,
          ),
          ListText(
            titleText: "Languages",
            listView: user1.languages,
          ),
          Divider(
            height: 50,
            thickness: _thickness,
          ),
          TwoTextContainer(
              titleText: 'Educational Qualification',
              bodyText: educationBody),
          Divider(
            height: 50,
            thickness: _thickness,
          ),
          MyTagBuilder(
              titleText: 'Availability', myTags: user1.peopleILoveTraining),
          Divider(
            height: 50,
            thickness: _thickness,
          ),
        ],
      ),
    );
  }
}
