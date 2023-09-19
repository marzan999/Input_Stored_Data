import 'package:flutter/material.dart';

class CommentScreen extends StatefulWidget {
  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  List<String> comments = [];
  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text('Comment Here')),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: comments.length,
              itemBuilder: (context, index) {
                // return ListTile(
                //   title: Text(comments[index]),
                // );
                return Container(
                  height: 50,
                  margin: EdgeInsets.all(2),
                  color: Color.fromARGB(255, 222, 220, 220),
                  padding: EdgeInsets.all(5),
                  child: Center(child: Text(comments[index])),
                );
              },
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: commentController,
                    decoration: InputDecoration(
                      hintText: 'Add a comment...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.send,
                    color: Colors.blueGrey,
                  ),
                  onPressed: () {
                    String newComment = commentController.text;
                    if (newComment.isNotEmpty) {
                      setState(() {
                        comments.add(newComment);
                        commentController.clear();
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
