import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          height: MediaQuery.of(context).size.height - 20,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildTitle(),
              _buildMainImage(),
              SizedBox(height: 10),
              _buildListItem("images/fruits.jpg",
                  "Important of fruits \n in breakfast", "Food"),
              _buildListItem("images/music.jpg",
                  "How white noisy music \n help in relax", "Music"),
              _buildListItem(
                  "images/cup.jpg", "World Cup Of 2022 \n in Qatar", "Sport"),
              _buildListItem("images/art.jpg",
                  "The beautiful design and \n decore of home", "Art"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          "Today",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Discover last news Toady!!",
          style: TextStyle(
            // fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Widget _buildMainImage() {
    return Container(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "images/corona.jpg",
            ),
          ),
          Positioned(
            bottom: 20,
            child: Text(
              "Should you worry about Corona Virus??",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w900,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(image, title, type) {
    return Card(
      margin: EdgeInsets.all(5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: 120,
              height: 100,
            ),
          ),
          SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                type,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 5),
              Text(
                title,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
