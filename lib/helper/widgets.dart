import 'package:flutter/material.dart';
import 'package:invenzine/pages/full_view.dart';

class NewsTile extends StatelessWidget {
  final String imgUrl, title, desc;
  final DateTime date;

  NewsTile({Key key, this.imgUrl, this.title, this.desc, this.date}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (content) => full_view(imgurl: imgUrl, title: title, desc: desc, date: date,))
        );
      },
      child: Container(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(6), bottomLeft: Radius.circular(6))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  imgUrl,
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                      date.toString(),
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14
                      )
                    ),
                  )
                ],
              ),
              SizedBox(height: 4),
              Text(
                desc,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                )
              ),
              Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.thumb_up), 
                      onPressed: () {  },
                    ),
                    Text(
                      '0'
                    ),
                    IconButton(
                      icon: Icon(Icons.thumb_down), 
                      onPressed: () { }
                    ),
                    Text(
                      '0'
                    )
                  ]
                )
            ],
          ),
        ),
      ),
    );
  }
}