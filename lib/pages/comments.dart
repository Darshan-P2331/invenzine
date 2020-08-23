import 'package:flutter/material.dart';



class Post {
  String body;
  String author;

  Post(this.body, this.author);

}
class CommentSection extends StatefulWidget {
  @override
  _CommentSectionState createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  List<Post> posts = [];
  void newPost(String text) {
    this.setState(() {
      posts.add(new Post(text, "user"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comment'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: PostList(this.posts)),
          Comment(this.newPost)
        ],
      ),
    );
  }
}

class Comment extends StatefulWidget {
  final Function(String) callback;

  const Comment(this.callback);
  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void click() {
    widget.callback(controller.text);
    controller.clear();
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.controller,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.message),
          labelText: 'Add a Comment',
          suffixIcon: IconButton(icon: Icon(Icons.send), 
          onPressed: this.click
        )
        )
      );
  }
}

class PostList extends StatefulWidget {
  final List<Post> listitems;

  const PostList(this.listitems);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widget.listitems.length,
      itemBuilder: (BuildContext context, int index) { 
        var post = this.widget.listitems[index];
        return Card(
          child: Row(
            children: <Widget>[
              Expanded(child: ListTile(
                title: Text(post.body),
                subtitle: Text(post.author),
              ),
              )
            ]
          ),
        );
       },
      
    );
  }
}