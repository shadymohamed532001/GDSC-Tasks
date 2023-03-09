import 'package:flutter/material.dart';

class NoteScrean_2 extends StatelessWidget {
  const NoteScrean_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Notepad',
              style: TextStyle(
                fontSize: 28,
                color: Color(0XFF242424),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            TextFormField(
              decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.fromLTRB(1, 1, 1, 0),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0XFF949494),
                  ),
                  hintText: 'Search notes',
                  hintStyle: const TextStyle(color: Color(0XFF676767)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0XFFBBFFCC),
              ),
              height: 58,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(
                      child: Text(
                        'Todays grocery list',
                        style:
                            TextStyle(fontSize: 12, color: Color(0XFF201F1F)),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Expanded(
                      child: Text(
                        ' june 26, 2022 08:05 PM',
                        style: TextStyle(fontSize: 8, color: Color(0XFF201F1F)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0XFFFEF9B2),
              ),
              height: 58,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(
                      child: Text(
                        'Rich dad poor dad quotes',
                        style:
                            TextStyle(fontSize: 12, color: Color(0XFF201F1F)),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Expanded(
                      child: Text(
                        ' june 22, 2023 05:05 AM ',
                        style: TextStyle(fontSize: 8, color: Color(0XFF201F1F)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFEDE3F),
        onPressed: () {},
        child: const Icon(Icons.add,
        color: Colors.black54,),
      ),
    );
  }
}
