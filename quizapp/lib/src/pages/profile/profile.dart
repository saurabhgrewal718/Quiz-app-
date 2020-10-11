import 'package:flutter/material.dart';
import './profilehead.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Profile extends StatefulWidget {
  static const routeName = './studentprofile';

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

var _isLoading= false;
  String insta='';
  List<dynamic> society = [];
  String bio = '';
  String things = '';
  String can = '';
  String who = '';
  String instagram = '';
  bool _inIt = true;
   var widthnum=0.0;

  @override
  void didChangeDependencies() async {
    if(_inIt){
      final prefs = await SharedPreferences.getInstance(); 
      // final myId = prefs.getString('userId');
            
      setState(() {
        instagram = prefs.getString('instagram');
        bio = prefs.getString('bio');
        can = prefs.getString('can');
        things= prefs.getString('things');
        who = prefs.getString('who'); 
        society = prefs.getStringList('society'); 
      });
      // final result = await Firestore.instance.collection('users/$myId/personal').document('$myId').get();
      // setState(() {
      //     insta = result.data['instagram'];
      //     society = result.data['societies'];
      //     name = result.data['name'];
      //     age = result.data['age'];
      //     userId = result.data['myId'];
      //     profile_picture = result.data['profile_picture'];
      //     bio = result.data['bio'];
      //     gender =result.data['gender'];
      //     course = result.data['course'];
      //     can = result.data['can'];
      //     things = result.data['things'];
      //     who = result.data['who'];
      // });
    }
    _inIt =false;
    super.didChangeDependencies();
  }


// void _editanswer(){
//   HapticFeedback.vibrate();
//   Navigator.of(context).pushNamed(EditMyProfile.routeName);
// }

// void _editprofile(){
//   HapticFeedback.vibrate();
//   Navigator.of(context).pushNamed(PersonalProfileCarry.routeName);
// }

//   Future<void> _launchInApp(String urlstring) async {
//   HapticFeedback.vibrate();
//   if(urlstring == "null"){
//     Fluttertoast.showToast(
//         msg: "User Havn't Added there Instagram Yet",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.redAccent,
//         textColor: Colors.white,
//         fontSize: 16.0
//     );
//   }else{
//   String url = "https://www.instagram.com/$urlstring/";
//     if (await canLaunch(url)) {
//       final bool nativeAppLaunchSucceeded = await launch(
//         url,
//         forceSafariVC: false,
//         universalLinksOnly: true,
//       );
//       if (!nativeAppLaunchSucceeded) {
//         await launch(
//           url,
//           forceSafariVC: true,
//         );
//       }
//     }
//   }
// }

//  void _showAlert(){
//     HapticFeedback.vibrate();
//     showDialog(
//       context: context,
//       barrierDismissible: true,
//       builder: (ctx) => AlertDialog(
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(20.0))
//         ),
//         title:Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Text('Do you want to logout?',textAlign: TextAlign.center, style: TextStyle(
//             fontWeight: FontWeight.w900, 
//             fontSize: 18,
//             color: Colors.black
//           ),),
//         ),
//         content: Container(height: 1,color: Colors.black12,),
//         actions: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               FlatButton(
//                 onPressed: _signout, 
//                 child: Container(
//                   padding: EdgeInsets.only(top: 3, left: 3),
//                   width: MediaQuery.of(context).size.width*0.23,
//                   margin: EdgeInsets.only(left:20,right:20,bottom:20),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(50),
//                     border: Border(
//                       bottom: BorderSide(color: Colors.green),
//                       top: BorderSide(color: Colors.green),
//                       left: BorderSide(color: Colors.green),
//                       right: BorderSide(color: Colors.green),
//                     )
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Text('Yes',textAlign: TextAlign.center, style: TextStyle(
//                         fontWeight: FontWeight.w900, 
//                         fontSize: 18,
//                         color: Colors.black
//                       ),),
//                   ),
//                 )
//               ),
//               FlatButton(
//                 onPressed: (){
//                   Navigator.of(ctx).pop();
//                 }, 
//                 child: Container(
//                   padding: EdgeInsets.only(top: 3, left: 3),
//                   width: MediaQuery.of(context).size.width*0.23,
//                   margin: EdgeInsets.only(left:20,right:20,bottom:20),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(50),
//                     border: Border(
//                       bottom: BorderSide(color: Colors.redAccent),
//                       top: BorderSide(color: Colors.redAccent),
//                       left: BorderSide(color: Colors.redAccent),
//                       right: BorderSide(color: Colors.redAccent),
//                     )
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Text('No',textAlign: TextAlign.center, style: TextStyle(
//                         fontWeight: FontWeight.w900, 
//                         fontSize: 18,
//                         color: Colors.black
//                       ),),
//                   ),
//                 )
//               )
//             ],
//           )
//         ],
//       )
//     );
//   }

// void updateInformation(String information) {
//   if(information == "text"){
//     _inIt = true;
//   }
// }

// void refreshIntrests()async{
//   final prefs = await SharedPreferences.getInstance(); 
//   final uid = prefs.getString('userId');
//   final result = await Firestore.instance.collection('users/$uid/personal').document('$uid').get();
//   setState(() {
//     society = result.data['societies'];
//   });
  
// }

// void moveToSecondPage() async {
//   HapticFeedback.vibrate();
//   final information = await Navigator.push(
//     context,
//     MaterialPageRoute(
//         fullscreenDialog: true, builder: (context) => Societies()),
//   );
//   updateInformation(information);
// }

// void _signout() async {
//     setState(() {
//       _isLoading=true;
//     });
//     await FirebaseAuth.instance.signOut();
//     final prefs = await SharedPreferences.getInstance();
//     prefs.clear();
//     final currentId = prefs.getString('userId');
//     if(currentId == null){
//       Navigator.of(context).pushReplacementNamed(HomePage.routeName);
//     }
//     setState(() {
//       _isLoading=false;
//     });
//   }

//   Future<void> onRefresh()async{
//     HapticFeedback.vibrate();

//     final prefs = await SharedPreferences.getInstance();
//       setState(() {
//         instagram = prefs.getString('instagram');
//         bio = prefs.getString('bio');
//         can = prefs.getString('can');
//         things= prefs.getString('things');
//         who = prefs.getString('who'); 
//         society = prefs.getStringList('society'); 
//       });
//   }

 Widget _header(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
          height: 120,
          width: width,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: 10,
                  right: -120,
                  child: _circularContainer(300, Colors.greenAccent)),
              Positioned(
                  top: -60,
                  left: -65,
                  child: _circularContainer(width * .5, Colors.blueGrey)),
              Positioned(
                  top: -230,
                  right: -30,
                  child: _circularContainer(width * .7, Colors.transparent,
                      borderColor: Colors.white38)),
              Positioned(
                  top: 50,
                  left: 0,
                  child: Container(
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(
                        children: <Widget>[
                          // IconButton(
                          //   icon: Icon(Icons.keyboard_arrow_left),
                          //   color: Colors.white,
                          //   onPressed: () {
                          //     Navigator.of(context).pushReplacement(newRoute)
                          //   },
                          // ),
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Profile",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                              ))
                        ],
                      ))),
            ],
          )),
    );
  }

    Widget _circularContainer(double height, Color color,
      {Color borderColor = Colors.transparent, double borderWidth = 2}) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    if(society!=null){
      if(society.length > 3 && society.length <=6){widthnum=0.18;}
      if(society.length <= 3){widthnum=0.11;}
      if(society.length > 6){widthnum=0.28;}
    }
    
    final subjectTitle = ModalRoute.of(context).settings.arguments as Map<String,String>;
    if(subjectTitle != null){
      String refresh = subjectTitle['init'];
      if(refresh == 'true') {
        print('object');
        setState(() {
          _inIt = true;
        });
      }
    }

    return Scaffold(
        body:SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                      _header(context),
                      SizedBox(
                        height: 40,
                      ),
                      ProfileInfo(),
                      SizedBox(
                        height: 30,
                      ),
                          instagram!='' && instagram !=null && instagram != "null"? 
                          FlatButton.icon(
                            icon: Image.asset('assets/images/mque.png',height:25,width: 25,),
                            onPressed: (){
                              // _launchInApp(instagram);
                            },
                            label: Text('$instagram'),
                          ):FlatButton.icon(
                            icon: Image.asset('assets/images/more.png',height:25,width: 25,),
                            onPressed: (){},
                            label: Text('Not Set Yet!'),
                          ),
                          
                      SizedBox(
                        height: 30,
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width*0.4,
                            padding: EdgeInsets.only(top: 3, left: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                              )
                            ),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 50,
                              onPressed:(){},
                              color: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: Text('Edit Profile', style: TextStyle(
                                fontWeight: FontWeight.w600, 
                                fontSize: 18,
                                color: Colors.black
                              ),),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.4,
                            padding: EdgeInsets.only(top: 3, left: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                              )
                            ),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 50,
                              onPressed: (){},
                              color: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: Text('Edit Answers', style: TextStyle(
                                fontWeight: FontWeight.w600, 
                                fontSize: 18,
                                color: Colors.black
                              ),),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height:30),


                      Padding(
                        padding: const EdgeInsets.only(left:30.0,right:25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'My Instrests',
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900)),
                            ),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.edit),
                                  onPressed: (){},
                                ),
                                IconButton(
                                  icon: Icon(Icons.refresh),
                                  onPressed: (){},
                                ),
                              ],
                            ),
                            
                            
                          ],
                          ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      society != null ?
                      Container(
                        height: MediaQuery.of(context).size.height*widthnum,
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10,crossAxisSpacing: 10, childAspectRatio: 1.5),
                          padding: EdgeInsets.only(left: 10, right: 10,),                  
                          itemCount: society.length,
                          itemBuilder: (context, index) {
                          return Container(
                                margin: EdgeInsets.only(bottom:10),
                                decoration: BoxDecoration(
                                color: Colors.greenAccent, borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      society[index],
                                    ),
                                  ],
                                )
                              );
                          },
                        ),
                      ) : Container(child:Text('No Intrests Added')),

                      SizedBox(
                        height: 60,
                      ),
                      Center(
                        child: Text(
                          'My Bio',
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900)),
                        ),
                      ),
                      bio!=null ?
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text('$bio')
                      ): Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(child:Text('Bio Not Added')),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      Center(
                        child: Text(
                          'Who can connect with me?',
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900)),
                        ),
                      ),
                      who!=null ?
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text('$who')
                      ):Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(child:Text('Not Added')),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      Center(
                        child: Text(
                          'Things i like the most',
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900)),
                        ),
                      ),
                      things!=null ?
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text('$things')
                      ):Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(child:Text('Not Added')),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      Center(
                        child: Text(
                          'Can can can can',
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900)),
                        ),
                      ),
                      can!=null ?
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text('$can')
                      ):Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(child:Text('Not Added')),
                      ),

                      
                      SizedBox(
                        height: 60,
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width*0.6,
                        padding: EdgeInsets.only(top: 3, left: 3),
                        margin: EdgeInsets.only(left:40,right:40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          )
                        ),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 50,
                          onPressed: (){},
                          color: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Text('💝 Invite A Friend', style: TextStyle(
                            fontWeight: FontWeight.w600, 
                            fontSize: 18,
                            color: Colors.black
                          ),),
                        ),
                      ),
                      
                      SizedBox(
                        height: 30,
                      ),
           
                    _isLoading 
                    ?
                      Center(child:CircularProgressIndicator(backgroundColor: Colors.greenAccent))
                    :
                      Container(
                        width: MediaQuery.of(context).size.width*0.6,
                        padding: EdgeInsets.only(top: 3, left: 3),
                        margin: EdgeInsets.only(left:40,right:40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          )
                        ),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 50,
                          onPressed: (){},
                          color: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Text('Logout', style: TextStyle(
                            fontWeight: FontWeight.w600, 
                            fontSize: 18,
                            color: Colors.black
                          ),),
                        ),
                      ),  
                      SizedBox(
                        height: 60,
                      )
                    ],
                  ),
                ),
              ),
        );
    }
}

        