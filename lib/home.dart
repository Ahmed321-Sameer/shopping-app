import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.yellow,
          title: Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.yellowAccent,
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.yellowAccent,
                  child: Icon(
                    Icons.search,
                    size: 17,
                    color: Colors.black,
                  )),
            )
          ]),
      body: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.cdc.gov/foodsafety/images/comms/features/GettyImages-1247930626-500px.jpg'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 130, bottom: 10),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Color(0xffd1ad17),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  )),
                              child: Center(
                                child: Text(
                                  "Vegi",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                            color: Colors.green,
                                            blurRadius: 10,
                                            offset: Offset(3, 3))
                                      ]),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "30% Off",
                            style: TextStyle(
                              color: Colors.green[100],
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                          Text(
                            "On all vegetable product",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
