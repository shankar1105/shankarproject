import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<String> Images = [

  ];
  Container ZeptoImagessr (String iamge,String heading,bool Subheading){
    return   Container(
      width: 200,
      child: Card(
        child: Wrap(
          children: [
            Image.asset("asset/image/gravey.jpg"),
            ListTile(
              title: Text('ffr'),
              subtitle: Text("Rs 200"),

            )
          ],
        ),
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
        crossAxisSpacing: 5,
        children:
        List.generate(25, (index) {
          return Container(
            width: 200,
            child: Card(
              child: Wrap(
                children: [
                  Image.asset("asset/image/grocery4.jpg",fit: BoxFit.fill,width: double.infinity,),
                  ListTile(
                    title: Text('Farm Fresh Veggies',style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("upto 30% off",style: TextStyle(fontWeight: FontWeight.bold)),

                  )
                ],
              ),
            ),
          );
        }
        ),
      ),

    );
  }
}
