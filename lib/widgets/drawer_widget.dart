import 'package:flutter/material.dart';
import 'package:untitled/screens/input_page.dart';
import '../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/listtile_widget.dart';
import '../screens/save_result.dart';

class DrawerWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Eke John Igwe",
                style: kDescriptionStyle),
            accountEmail: const Text("ekejohnigwe@gmail.com",
            ),
            onDetailsPressed: (){
              Navigator.pop(context);
            },
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('images/passport1.png'),
              backgroundColor: Colors.white,
            ),
            decoration: const BoxDecoration(
                color: kInactiveColour,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )
            ),
          ),
          SizedBox(height: 20,),
          ListTileWidget(
            icon: FontAwesomeIcons.house,
            name: 'HOME',
            navigator: () => Navigator.push(context, 
            MaterialPageRoute(builder: (context)=>InputPage())),
          ),
          ListTileWidget(
            icon: FontAwesomeIcons.cloudArrowDown,
            name: 'RESULTS',
            navigator: ()=>Navigator.push(context,
                MaterialPageRoute(builder: (context)=> SavedResults())),),
          ListTileWidget(
              icon: FontAwesomeIcons.addressBook,
              name: 'CONTACT',
              navigator: () => Navigator.pop(context)),
          ListTileWidget(icon: FontAwesomeIcons.gear, name: 'SETTINGS', navigator: (){
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
