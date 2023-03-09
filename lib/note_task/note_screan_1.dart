import 'package:flutter/material.dart';

import 'note_screan_2.dart';

class NoteScrean_1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset('assets/images/notes.png',
                width: double.infinity,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFEDE3F),
        onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)
          {
            return const NoteScrean_2();
          }));
        },
        child:const  Icon(
          Icons.arrow_forward_ios,
          color: Colors.black54,
        ),
      ),
    );
  }
}
