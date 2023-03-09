import 'package:flutter/material.dart';

class AnimatedListView extends StatefulWidget {
  const AnimatedListView({Key? key}) : super(key: key);

  @override
  State<AnimatedListView> createState() => _AnimatedListViewState();
}

class _AnimatedListViewState extends State<AnimatedListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'AnimatedListView'
        ),
      ),
      body: _CustomAnmitedList(),
    );
  }
}

class _CustomAnmitedList extends StatelessWidget {
   _CustomAnmitedList({Key? key}) : super(key: key);
  final List<String> Items = [];
  final GlobalKey<AnimatedListState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          margin: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 5
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black87,
            boxShadow: [
              const BoxShadow(
                color: Colors.black12,
                blurRadius: 2
              )
            ]
          ),
          child: IconButton(
              onPressed: InsetItem,
              icon: const Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
          ),
        ),
        Expanded(
          child: AnimatedList(
            key: key,
              initialItemCount:Items.length,
              itemBuilder: (context, index , animation)
                  {
                    return SizeTransition(
                      sizeFactor: animation,
                      child: AnmitedListItems(
                        onpressed: ()
                          {
                            DeletItems(index);
                          },
                          text: Items[index]
                      ),
                    );
                  }
          ),
        ),
      ],
    );
  }

  InsetItem()
  {
    var index = Items.length  ;
    Items.add('Items ${ index + 1}');
    key.currentState!.insertItem(index);
  }

  DeletItems(int index)
  {
    Items.removeAt(index);
    key.currentState!.removeItem(
        index,
            (context, animation)
    {
      return SizeTransition(
        sizeFactor: animation,
        child: AnmitedListItems(
            text: Items[index],
            onpressed: (){}
        ),
      );
    });
  }
}
class AnmitedListItems extends StatelessWidget {
  const AnmitedListItems({required this.text, required this.onpressed});
  final String text ;
  final VoidCallback onpressed ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(

        height: 50,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 30
        ),
        decoration: BoxDecoration(
          boxShadow:const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4
            )
          ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.orangeAccent
        ),
        child: Row(
          children: [
            Text(
              text,
              style:const TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Spacer(),
            IconButton(
                onPressed:onpressed,
                icon: const Icon(
                  Icons.delete,
                  color: Colors.white,
                )
            )
          ],
        ),
      ),
    );
  }

  removeItem()
  {

  }
}

