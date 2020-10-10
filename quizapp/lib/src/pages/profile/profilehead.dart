import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileInfo extends StatefulWidget {

  @override
  _ProfileInfoState createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {

  String name = '';
  String userId = '';
  String gender = '';
  String course = '';
  String picture = '';
  String age = '';

  @override
  void didChangeDependencies() async{
    final prefs = await SharedPreferences.getInstance(); 
      
      setState(() {
        userId = prefs.getString('userId');
        picture = prefs.getString('userProfilePicture');
        gender = prefs.getString('gender');
        course = prefs.getString('course');
        age = prefs.getString('age');
        name = prefs.getString('name');
      });
     
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return      
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                    onPressed: (){
                      // _openProfile(_userId,_name,_gender,_age,_course,_image,);
                    },
                    child: 
                    Container(
                    margin: EdgeInsets.only(top: 3),
                    child: CircleAvatar(
                        radius: 60,
                        backgroundImage:AssetImage("assets/images/more.png"),
                        backgroundColor: Colors.white,
                      )
                      //  : Container(margin:EdgeInsets.only(bottom: 5),width: 14,height: 14, child: CircularProgressIndicator()),
                    
                  ),
                ),
                FlatButton(
                    onPressed: (){
                      // _openProfile(_userId,_name,_gender,_age,_course,_image,);
                    },
                    child: Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    child: Column(
                      children: <Widget>[
                            name != null && name!= '' ?
                              Text(
                                name,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                              ) :Container(margin:EdgeInsets.only(bottom: 5),width: 14, height: 14,child: CircularProgressIndicator()),

                              age != null && age!= '' ?
                              Text(
                                age,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                              ) : Container(margin:EdgeInsets.only(bottom: 5),width: 14,height: 14, child: CircularProgressIndicator()),

                              course != null && course!= '' ?
                              Text(
                                course,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                              ) : Container(margin:EdgeInsets.only(bottom: 5),width: 14,height: 14, child: CircularProgressIndicator()),

                              gender != null && gender!= '' ?
                              Text(
                                gender,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                              ) : Container(margin:EdgeInsets.only(bottom: 5),width: 14,height: 14, child: CircularProgressIndicator()),

                              // userId != '' ?
                              // Text(
                              //   userId,
                              //   overflow: TextOverflow.ellipsis,
                              //   style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                              // ) : Container(margin:EdgeInsets.only(bottom: 5), width: 14,height: 14, child: CircularProgressIndicator()),



                      ],
                    ),
                  ),
                ),


              ],
            ),
            
    );
  }
}


