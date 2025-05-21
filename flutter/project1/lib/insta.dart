import 'package:flutter/material.dart';

class Insta extends StatelessWidget {
  Insta({super.key});

  final List<String> _img = [
    "assets/mbj2.jpg",
    "assets/mbj.jpg",
    "assets/Untitled.jpg",
    "assets/iphone1.jpg",
    "assets/iphone222.jpg",
    "assets/iphone33.jpg"
  ];

  final List<String> _name = [
    "@rdyfg_hfg",
    "@rdyfg_hfg",
    "@rdyfg_hfg",
    "@rdyfg_hfg",
    "@rdyfg_hfg",
    "@rdyfg_hfg",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Instagram",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Billabong',
            fontSize: 28,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.favorite_border, color: Colors.black),
          SizedBox(width: 16),
          Icon(Icons.send, color: Colors.black),
          SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            // Stories
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _img.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(_img[index]),
                        ),
                        SizedBox(height: 4),
                        Text(
                          _name[index],
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Divider(),

            // Feed posts
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _img.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Post header
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(_img[index]),
                      ),
                      title: Text(_name[index]),
                      trailing: Icon(Icons.more_vert),
                    ),

                    // Post image (50% width)
                    Center(
                      child: Image.asset(
                        _img[index],
                        fit: BoxFit.cover,
                        width: screenWidth * 0.5, // 50% of screen width
                        height: 250,
                      ),
                    ),

                    // Post actions
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.favorite_border),
                          SizedBox(width: 16),
                          Icon(Icons.comment),
                          SizedBox(width: 16),
                          Icon(Icons.send),
                          Spacer(),
                          Icon(Icons.bookmark_border),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),

                    // Likes and description
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        "Liked by user123 and others",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
                      child: Text(
                        "${_name[index]} Awesome post!",
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
