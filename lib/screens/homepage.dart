import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/archived.dart';

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 3, 167, 148),
          child: Icon(Icons.abc),
        ),
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Archived()));
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.abc,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Archived")
                      ],
                    ),
                  ),
                ),
                ...List.generate(15, (index) {
                  return ListTile(
                    leading: SizedBox(
                      height: 50,
                      width: 50,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              // border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(50))),
                    ),
                    title: const Text("mkj"),
                    subtitle: const Text("subtitle"),
                    trailing: const Text("10:48am"),
                  );
                })
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: SizedBox(
                    height: 50,
                    width: 50,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            // border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.circular(50))),
                  ),
                  title: const Text("My status"),
                  subtitle: const Text("subtitle"),
                  trailing: Icon(Icons.more_horiz),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                  child: Text("Recent Updates"),
                ),
                ...List.generate(15, (index) {
                  return ListTile(
                    leading: SizedBox(
                      height: 50,
                      width: 50,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              // border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(50))),
                    ),
                    title: const Text("mkj"),
                    subtitle: const Text("subtitle"),
                  );
                })
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: SizedBox(
                    height: 50,
                    width: 50,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            // border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.circular(50))),
                  ),
                  title: const Text("Create a call link"),
                  subtitle: const Text("subtitle"),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                  child: Text("Recent"),
                ),
                ...List.generate(15, (index) {
                  return ListTile(
                    leading: SizedBox(
                      height: 50,
                      width: 50,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              // border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(50))),
                    ),
                    title: const Text("mkj"),
                    subtitle: const Text("subtitle"),
                    trailing: Icon(Icons.call),
                  );
                })
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
