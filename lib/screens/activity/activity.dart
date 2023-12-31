import 'package:flutter/material.dart';
import 'package:freelance_app/screens/projects_jobs/architects_projects/projects_posted.dart';
import 'package:freelance_app/screens/activity/activity_jobs_taken.dart';
import 'package:freelance_app/screens/activity/conf_posted.dart';
import 'package:freelance_app/screens/homescreen/sidebar.dart';
import 'package:freelance_app/utils/colors.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
          drawer: SideBar(),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(
              color: Color(0xffD2A244),
            ),
            title: const Padding(
              padding: EdgeInsets.only(left: 180),
              child: Text(
                "ArchNEO",
                style: TextStyle(color: Color(0xffD2A244)),
              ),
            ),
            bottom: const TabBar(
              tabs: [Tab(text: 'Upcoming')],
              labelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 15),
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Material(
                        elevation: 5,
                        child: TextField(
                          // onChanged: (value) => updateList(value),
                          style: TextStyle(color: yellow),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                            hintText: "Join the Event...",
                            prefixIcon: const Icon(Icons.search),
                            prefixIconColor: Color.fromRGBO(245, 186, 65, 1),
                            suffixIconColor: yellow,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: TabBarView(children: [posted2()])),
            ],
          )),
    );
  }
}
