import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 3, 167, 148),
          title: const Text("WhatsApp"),
          actions: <Widget>[
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
          ],
          bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3,
              // indicatorPadding: EdgeInsets.all(5),
              tabs: [
                Tab(
                  icon: Icon(Icons.people),
                ),
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Calls",
                ),
              ]),
          elevation: 2,
        ),
        body: TabBarView(children: [
          ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Container();
              }),
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [Text("data")],
                ),
                Expanded(
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text("Chats"),
                        );
                      }),
                ),
              ],
            ),
          ),
          ListView.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text("Status"),
                );
              }),
          ListView.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text("Calls"),
                );
              })
        ]),
      ),
    );
  }
}
