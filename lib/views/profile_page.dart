






import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_page/constants/color.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body:Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 360,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    color: AppColor.blueColor,
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(36.0),
                        bottomLeft: Radius.circular(36.0)),
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[350],
                            radius: 60,
                            backgroundImage: const CachedNetworkImageProvider("https://cdn1.iconfinder.com/data/icons/user-pictures/100/male3-512.png"),
                          ),

                          Positioned(
                            top: 100,
                              left: 20,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),

                                  elevation: 2,
                                  child:  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4),
                                    child: Row(
                                      children: [
                                        Icon(Icons.verified_user_outlined, color: AppColor.blueColor, size: 18,),
                                        Text(" Verified", style: TextStyle(color: AppColor.blueColor, fontSize: 12),),
                                      ],
                                    ),
                                  ))
                          ),

                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text("Nikel Maharjan", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),),

                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 4),
                          child: const Text("98323432", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),)),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 18),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        width: 70,
                        child:  Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.verified, color: AppColor.blueColor, size: 18,),
                              Text(" Active", style: TextStyle(color:AppColor.blueColor, fontSize: 12),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  top: 330,
                  right: 30,
                  left: 30,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 2,
                    child: SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  const Icon(CupertinoIcons.pencil_ellipsis_rectangle, size: 30,),
                                  const SizedBox(width: 12,),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: const TextSpan(
                                          style: TextStyle(color: Colors.black,),
                                          children:[
                                            TextSpan(text: 'NPR ' , style: TextStyle(fontWeight: FontWeight.w300)),
                                            TextSpan(text: '12,000', style: TextStyle(fontWeight: FontWeight.w500))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(vertical: 4),
                                          child: const Text("Balance", style: TextStyle(color: Colors.grey, fontSize: 14),)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  const Icon(CupertinoIcons.rocket, size: 30,),
                                  const SizedBox(width: 12,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text("22.34", style: TextStyle(fontWeight: FontWeight.w500)),


                                      Container(
                                        margin: const EdgeInsets.symmetric(vertical: 4),
                                          child: const Text("Rewards Points", style: TextStyle(color: Colors.grey, fontSize: 14),)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                  ),
                ),







              ],
            ),

            const SizedBox(height: 70,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      _buildListTile(
                          title: "My Information",
                          subtitle: "View your personal details"
                      ),

                      _buildListTile(
                          title: "Device and Credentials",
                          subtitle: "Manage device, credentials and ids"
                      ),

                      _buildListTile(
                          title: "My Bank Accounts",
                          subtitle: "Connected Banks"
                      ),

                      _buildListTile(
                          title: "Logout",
                          subtitle: "Logout from app"
                      ),


                    ]
                  ),
                ),
              ),
            )

          ],
        ),

      ),
    );
  }

  Widget _buildListTile({required String title, required String subtitle}) {
    return  ListTile(
                      trailing: const Icon(Icons.navigate_next),
                      title: Text(title),
                      subtitle: Text(subtitle, style: const TextStyle(color: Colors.grey),),
                    );
  }
}
