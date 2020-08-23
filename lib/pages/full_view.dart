import 'package:flutter/material.dart';
import 'package:invenzine/pages/comments.dart';

// ignore: camel_case_types
class full_view extends StatelessWidget {
  final String imgurl, title, desc;
  final DateTime date;

  const full_view({Key key, this.imgurl, this.title, this.desc, this.date}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ClipRRect(
            child: Image.asset(
                imgurl,
                height: 240,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
          ),
          titleSection(title, date),
          buttoncolumn(),
          textSection(desc),
        ]
      ),
    );
  }
}

Container titleSection(String title, DateTime dateTime) {
  return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ),
                Text(
                  dateTime.toString(),
                  style: TextStyle(
                    color: Colors.grey[500]
                  ),
                ),
              ],
            ),
          ),
        ]
      ),
    );
    } 
class buttoncolumn extends StatefulWidget {
  @override
  _buttoncolumnState createState() => _buttoncolumnState();
}

class _buttoncolumnState extends State<buttoncolumn> {
  Column _buttonClumn(IconData icon, String label, {String val = ''}) {
      
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(icon), 
                onPressed: () {  },
              ),
              SizedBox(width: 6,),
              Text(val)
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            )
          )
        ]
      );
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buttonClumn(Icons.thumb_up, 'like', val: '0'),
          _buttonClumn(Icons.thumb_down, 'dislike',val: '0'),
          Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.comment), 
                onPressed: () { 
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CommentSection()));
                 },
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              'comment',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            )
          )
        ]
      ),
        ],
      )
    );
  }
}
    



Container textSection(String desc) {
  return Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    desc,
    style: TextStyle(
      fontSize: 16
    ),
    softWrap: true,
  ),
);
} 

void likes() {
  
}