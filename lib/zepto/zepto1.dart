import 'package:flutter/material.dart';

class zepto extends StatefulWidget {
  const zepto({Key? key}) : super(key: key);

  @override
  State<zepto> createState() => _zeptoState();
}

class _zeptoState extends State<zepto> {
  List<String> values = [
    "asset/image/grocery1.jpg",
    "asset/image/grocery2.jpg",
    "asset/image/grocery3.jpg",
    "asset/image/grocery4.jpg",
    "asset/image/grocery5.jpg",
    "asset/image/grocery6.jpg",
  ];
  Container ZeptoImage (String iamge,String heading,String Subheading){
    return   Container(
      width: 200,
      child: Card(
        child: Wrap(
          children: [
            Image.asset("asset/image/gravey.jpg"),
            ListTile(
              title: Text('Vegtables'),
              subtitle: Text("Container"),

            )
          ],
        ),
      ),
    );

  }
  Container ZeptoImagess (String iamge,String headings,String Subheadings){
    return Container(
      width: 200,
      child: Card(
        child: Wrap(
          children: [
          ],
        ),
        elevation: 10.0,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Icon(Icons.add_location),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Icon(Icons.account_circle,),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text('zepto',),
        ),
        toolbarHeight: 120,
        elevation: 100,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 70,right: 10,left: 10,bottom: 10),
          child: TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Search",   icon: Icon(Icons.search),
            ),
          ),
        ),
      ),

body:  ListView(
  children: [
    Column(
      children: [
        Container(
          height: 80,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('asset/image/zepto2.jpg'),
                fit: BoxFit.fill
            ),
          ),
        ),
        Container(
            height: 200,
            child: GridView.count(crossAxisSpacing: 1,
              scrollDirection: Axis.vertical,
              crossAxisCount: 1,
              children: List.generate(25,(index){
                return    Container(
                  width: 200,
                  child: Card(
                    child: Wrap(
                      children: [
                        Image.asset("asset/image/grocery6.jpg",fit: BoxFit.fill,width: double.infinity,),
                        ListTile(
                          title: Text('Farm Fresh Veggies',style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text("upto 30% off",style: TextStyle(fontWeight: FontWeight.bold)),

                        )
                      ],
                    ),
                  ),
                );
              }),
            )
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 100,
          child: ListView.builder(
            itemCount: values.length,
              itemBuilder: (BuildContext ctx,int index){
            return Image.asset(values[index],);
          }),
        ),
        ListTile(
          title: Text('Trending Near You',style: TextStyle(fontWeight: FontWeight.bold),),
        ),

        Column(
          children: [
            Container(
                height: 100,
                child: GridView.count(crossAxisCount: 1,
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
                )
            ),
            ListTile(
              title: Text('Explore By Categories', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Column(
              children: [
                Container(
                    height: 225,
                    child: GridView.count(crossAxisCount: 1,
                      scrollDirection: Axis.horizontal,
                      crossAxisSpacing: 1,
                      children:
                      List.generate(25, (index) {
                        return Container(
                          child: Card(

                            elevation: 15.0,
                            child: Image.asset(values.last, fit: BoxFit.fill,),
                            color: Colors.green,
                          ),
                        );
                      }
                      ),
                    )
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 2.0),
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ZeptoImage(values.last, "fruits", "fruits"),
                      ZeptoImagess(values.first,"fruits", "fruits")

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 2.0),
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(scrollDirection: Axis.horizontal,
                      itemCount: values.length,
                      itemBuilder: (BuildContext ctx,int index){
                    return Image.asset(values[index],);
                  }
                  )

                )
              ],
            )],

        )],
    ),
  ],
)



    );

  }
}



