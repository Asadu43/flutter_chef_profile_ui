import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 350.0,
                width: double.infinity,
              ),
              Container(
                height: 200,
                width: double.infinity,
                 color: Colors.red[400],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
                      onPressed: (){}),
                ),
              ),
              Positioned(
               top: 125.0,
               left: 15.0,
               right: 15.0,
               child: Material(
                 elevation: 3.0,
                 borderRadius: BorderRadius.circular(7.0),
                 child: Container(
                   height: 200.0,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10.0),
                     color: Colors.white,
                   ),
                 ),
               ),
              ),
              Positioned(
                top: 75.0,
                left: (MediaQuery.of(context).size.width/2-50.0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(
                      image: AssetImage('images/muree.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 190.0,
                left: (MediaQuery.of(context).size.width/2)-100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text("Asad Ullah",style: TextStyle(
                       fontSize: 17.0,
                       fontWeight: FontWeight.bold,
                       color: Colors.black

                     ),
                     ),
                    SizedBox(height: 7.0,),
                Text("Pakistani",style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
                ),
                    SizedBox(height: 10.0,),
                    Row(
                      children: [
                        FlatButton(onPressed: (){},
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                          color: Colors.red,
                          child: Text("Message",style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        FlatButton(onPressed: (){},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          color: Colors.grey,
                          child: Text("Follow",style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],

          ),
          Padding(padding: EdgeInsets.only(left: 15.0,right: 15.0),child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Menu',style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              Text('see all',style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey,
              ),
              ),
            ],
          ),
          ),
          SizedBox(height: 10.0,),
          Column(
            children: [
              MenuCard("Berry Banana MilkShake", "images/one.jpg",
                  "Breakfast",5, 2.8, 1.2),
              SizedBox(height: 10.0,),
              MenuCard("Fruit Pancakes", "images/two.jpg",
                  "Breakfast",5, 4.1, 2.8),
            ],
          ),
          SizedBox(height: 25.0,),
          Padding(padding: EdgeInsets.only(left: 15.0,right: 15.0),child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Works',style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              Text('see all',style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey,
              ),
              ),
            ],
          ),
          ),
          SizedBox(height: 10.0,),
          Padding(padding: EdgeInsets.only(left: 15.0,right: 5.0),
          child: Container(
            height: 125.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GetWork("images/three.jpg"),
                GetWork("images/one.jpg"),
                GetWork("images/two.jpg"),

              ],
            ),
          ),
          ),
          SizedBox(height: 10.0,),
          Padding(padding: EdgeInsets.only(left: 15.0,right: 15.0),child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Brought',style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              Text('see all',style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey,
              ),
              ),
            ],
          ),
          ),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }
  Widget GetWork(String imgPath){
    return Padding(padding: EdgeInsets.only(right: 10.0),
     child: Container(
       height: 100.0,
       width: 125.0,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(7.0),
         image: DecorationImage(
           image: AssetImage(imgPath),
           fit: BoxFit.cover,
         ),
       ),
     ),
    );
  }
  Widget MenuCard(String title, String imgPth, String type, int rating,double views, double likes){
    return Padding(padding: EdgeInsets.only(left: 10.0, right: 10.0),
    child: Material(
      borderRadius: BorderRadius.circular(7.0),
      elevation: 4.0,
      child: Container(
        height: 125.0,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          color: Colors.white,
        ),
        child: Row(
          children: [
            SizedBox(width: 10.0,),
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                image: DecorationImage(
                   image: AssetImage(imgPth),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15.0,),
                Text(
                  title,style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 7.0,),
                Text(
                  type,style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
                ),
                SizedBox(height: 7.0,),
                Row(
                  children: [
                    GetStar(rating, 1),
                    GetStar(rating, 2),
                    GetStar(rating, 3),
                    GetStar(rating, 4),
                    GetStar(rating, 5),
                  ],
                ),
                SizedBox(height: 4.0,),
                Row(
                  children: [
                    Icon(Icons.remove_red_eye,color: Colors.grey,),
                    SizedBox(width: 3.0,),
                    Text(views.toString()),
                    SizedBox(width: 10.0,),
                    Icon(Icons.favorite,color: Colors.red,),
                    SizedBox(width: 3.0,),
                    Text(likes.toString()),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),

    );
  }
   Widget GetStar(rating, index ){
    if(rating >index){
      return Icon(Icons.star, color: Colors.yellow,);
    }else{
      return Icon(Icons.star,color: Colors.grey,);
    }
   }
}
