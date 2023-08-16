

import 'package:flutter/material.dart';

class DesignPage extends StatelessWidget {
  const DesignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: const Color(0xff4870CF),

              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
                ),
                margin: const EdgeInsets.only(top: 220),
                child: const Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 20, right: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 180,
              left: 30,
              right: 30,
              child: Card(
                elevation: 10,
                child: SizedBox(
                  width: 300,
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
          ],
        ),

      ),
    );
  }
}
