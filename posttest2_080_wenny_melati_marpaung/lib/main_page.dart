import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 244, 122, 122),
        title: Text(
          "Penawaran",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizeContainer(isActive: true, size: "Ayam"),
                SizeContainer(size: "Daging"),
                SizeContainer(size: "Sarapan"),
                SizeContainer(size: "Reguler"),
                SizeContainer(size: "Dessert"),
                SizeContainer(size: "Minuman"),
                SizeContainer(size: "Nasi"),
                SizeContainer(size: "Kopi"),
              ],
            ),
          ),
          Container(
            width: lebar,
            height: 250,
            margin: EdgeInsets.only(bottom: 10, left: 18),
            child: Row(
              children: [
                Image.asset(
                  "assets/1.jpeg",
                ),
                Image.asset(
                  "assets/2.jpeg",
                  width: 198,
                  height: 250,
                ),
              ],
            ),
          ),
          Container(
            width: lebar,
            height: 240,
            margin: EdgeInsets.only(bottom: 10, top: 5, left: 15),
            child: Row(
              children: [
                Image.asset(
                  "assets/3.jpeg",
                ),
                Image.asset(
                  "assets/4.jpeg",
                  width: 200,
                  height: 240,
                ),
              ],
            ),
          ),
          Container(
            width: lebar,
            height: 255,
            margin: EdgeInsets.only(left: 18, bottom: 10, top: 5),
            child: Row(
              children: [
                Image.asset(
                  "assets/5.jpeg",
                ),
                Image.asset(
                  "assets/6.jpeg",
                  width: 200,
                  height: 255,
                ),
              ],
            ),
          ),
          Container(
            width: lebar,
            height: 250,
            margin: EdgeInsets.only(left: 18, bottom: 10, top: 5),
            child: Row(
              children: [
                Image.asset(
                  "assets/7.jpeg",
                ),
                Image.asset(
                  "assets/8.jpeg",
                  width: 200,
                  height: 260,
                ),
              ],
            ),
          ),
          Container(
            width: lebar,
            height: 250,
            margin: EdgeInsets.only(left: 18, bottom: 10, top: 5),
            child: Row(
              children: [
                Image.asset(
                  "assets/9.jpeg",
                ),
                Image.asset(
                  "assets/10.jpeg",
                  width: 200,
                  height: 260,
                ),
              ],
            ),
          ),
          Container(
            width: lebar,
            height: 350,
            margin: EdgeInsets.only(left: 18, bottom: 10, top: 5),
            child: Row(
              children: [
                Image.asset(
                  "assets/11.jpeg",
                ),
                Image.asset(
                  "assets/12.jpeg",
                  width: 200,
                  height: 350,
                ),
              ],
            ),
          ),
          Container(
            width: lebar,
            height: 290,
            margin: EdgeInsets.only(left: 18, bottom: 10, top: 5),
            child: Row(
              children: [
                Image.asset(
                  "assets/13.jpeg",
                ),
                Image.asset(
                  "assets/14.jpeg",
                  width: 200,
                  height: 290,
                ),
              ],
            ),
          ),
          Container(
            width: lebar,
            height: 275,
            margin: EdgeInsets.only(left: 18, bottom: 10, top: 5),
            child: Row(
              children: [
                Image.asset(
                  "assets/15.jpeg",
                ),
                Image.asset(
                  "assets/16.jpeg",
                  width: 200,
                  height: 275,
                ),
              ],
            ),
          ),
          Container(
            width: lebar,
            height: 290,
            margin: EdgeInsets.only(left: 18, top: 5),
            child: Row(
              children: [
                Image.asset(
                  "assets/17.jpeg",
                ),
                Image.asset(
                  "assets/18.jpeg",
                  width: 200,
                  height: 290,
                ),
              ],
            ),
          ),
          Container(
            width: lebar,
            height: 150,
            margin: EdgeInsets.only(left: 18, bottom: 20),
            child: Row(
              children: [
                Text(
                    "Terima kasih dan jangan\nlupa untuk terus cek\naplikasi kita yah\n\nWenny Melati Marpaung"),
                Image.asset(
                  "assets/19.jpeg",
                  width: 210,
                  height: 250,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  const SizeContainer({Key? key, this.isActive = false, required this.size})
      : super(key: key);

  final bool isActive;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 40,
      margin: EdgeInsets.only(top: 20, bottom: 20, right: 5, left: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color:
            isActive ? Color.fromARGB(255, 233, 174, 46) : Colors.transparent,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          width: 1,
          color: isActive ? Color.fromARGB(255, 233, 174, 46) : Colors.black,
        ),
      ),
      child: Text(
        size,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: isActive
              ? Color.fromARGB(255, 0, 0, 0)
              : Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}
