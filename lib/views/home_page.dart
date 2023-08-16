


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,

        body:Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [






                Container(


                  height: 180,

                  width: double.infinity,



                  decoration: const BoxDecoration(
                    color: Color(0xff4870CF),

                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0)),
                  ),


                  // child: ClipRRect(
                  //   borderRadius: const BorderRadius.only(
                  //     bottomRight: Radius.circular(20),
                  //     bottomLeft: Radius.circular(20),
                  //
                  //   ),
                  //
                  //     child: CachedNetworkImage(
                  //       imageUrl: "https://images.unsplash.com/uploads/141103282695035fa1380/95cdfeef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2860&q=80",
                  //       fit: BoxFit.cover,)) ,

                  child: CachedNetworkImage(
                    imageUrl: "https://cdn2.iconfinder.com/data/icons/thesquid-ink-40-free-flat-icon-pack/64/support-512.png", height: 100,),
                ),

                Positioned(
                  top: 140,
                  right: 30,
                  left: 30,

                  child: Card(

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 4,
                    child: SizedBox(
                      width: 300,
                      child: ClipRRect(
                        child: TextFormField(


                            decoration:  const InputDecoration(


                                border: InputBorder.none,
                                hintText:  "Search ",
                                hintStyle: TextStyle(fontSize: 14),
                                prefixIcon: Icon(

                                  Icons.search,
                                  color: Colors.grey,
                                ),


                            )
                        ),
                      ),
                    ),
                  ),
                ),







              ],
            ),

            const SizedBox(height: 50,),


            _buildCard(
                image1: "https://cdn2.iconfinder.com/data/icons/asia-man-professions/512/profession_avatar_man_people_user_professional_asia_work_job-51-512.png",
                text1: "Doctor",
                image2: "https://cdn2.iconfinder.com/data/icons/woman-professions/512/profession_avatar_woman_people_user_professional_white_work_job-06-512.png",
                 text2: "Teacher"
            ),


            _buildCard(
                image1: "https://cdn2.iconfinder.com/data/icons/asia-woman-professions/512/profession_avatar_woman_people_user_professional_asia_work_job-03-512.png",
                text1: "Mechanic",
                image2: "https://cdn2.iconfinder.com/data/icons/black-man-professions-1/512/profession_avatar_man_people_user_professional_black_work_job-10-512.png",
                text2: "Cook"
            ),

            _buildCard(
                image1: "https://cdn3.iconfinder.com/data/icons/white-man-professions/512/profession_avatar_man_people_user_professional_white_work_job-15-512.png",
                text1: "Painter",
                image2: "https://cdn2.iconfinder.com/data/icons/woman-professions/512/profession_avatar_woman_people_user_professional_white_work_job-07-1024.png",
                text2: "Electrician"
            ),






          ],
        ),

      ),
    );
  }

  Widget _buildCard({required String image1, required String text1, required String image2, required String text2}) {
    return Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 10),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 160,
                    child: Card(
                      elevation: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CachedNetworkImage(imageUrl: image1, height: 100,),
                           Text(text1, style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 160,
                    child: Card(
                      elevation: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CachedNetworkImage(imageUrl: image2, height: 100,),
                           Text(text2, style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
