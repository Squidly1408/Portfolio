import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../models/comment.dart';
import '../models/costs.dart';
import '../models/mentors.dart';
import '../models/project_resources.dart';
import '../widgets/footer.dart';
import '../widgets/header.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({
    super.key,
    required this.id,
    required this.title,
    required this.cost,
    required this.description,
    required this.stepsToComplete,
    required this.resources,
    required this.mentors,
    required this.comments,
  });
  final String id;
  final String title;
  final List<Costs> cost;
  final String description;
  final List stepsToComplete;
  final List<ProjectResources> resources;
  final List<Mentors> mentors;
  final List<Comment> comments;

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  var skillsScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171717),
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.0801),
        child: const Header(),
      ),
      bottomNavigationBar: Visibility(
        visible: MediaQuery.of(context).size.width < 1000,
        child: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
          child: const Footer(),
        ),
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'lib/assets/images/homepage/homepage_banner.png',
                fit: BoxFit.fitWidth,
              ),
              MediaQuery.of(context).size.width > 1000
                  ? Container(
                      width: MediaQuery.of(context).size.width,
                      height: 75,
                      color: const Color(0xff171717),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.title,
                                style: const TextStyle(
                                    color: Color(0xff10d0d6),
                                    fontSize: 50,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                            widget.cost[0].amount > 0.0
                                ? TextButton(
                                    style: const ButtonStyle(
                                        alignment: Alignment.centerLeft),
                                    onPressed: () {
                                      launchUrl(
                                        Uri.parse(widget.cost[0].link),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        ('Costs: \$${widget.cost[0].amount}'),
                                        style: const TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 15,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                    ),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                    )
                  : Container(
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xff171717),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.title,
                              style: const TextStyle(
                                  color: Color(0xff10d0d6),
                                  fontSize: 50,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          widget.cost[0].amount > 0.0
                              ? TextButton(
                                  style: const ButtonStyle(
                                      alignment: Alignment.centerLeft),
                                  onPressed: () {
                                    launchUrl(
                                      Uri.parse(widget.resources[0].link),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      ('Costs: \$${widget.cost[0].amount}'),
                                      style: const TextStyle(
                                          color: Color(0xffffffff),
                                          fontSize: 15,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff171717),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width > 1000
                          ? MediaQuery.of(context).size.width * 0.15
                          : 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Description',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 25,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.description,
                          style: const TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              MediaQuery.of(context).size.width > 400
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          color: const Color(0xff171717),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width >
                                        1000
                                    ? MediaQuery.of(context).size.width * 0.15
                                    : 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Steps to complete',
                                    style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 25,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: widget.stepsToComplete.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        child: Text(
                                          '\u2022  ${widget.stepsToComplete[index]}',
                                          style: const TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          color: const Color(0xff171717),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width >
                                        1000
                                    ? MediaQuery.of(context).size.width * 0.15
                                    : 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Resources & Help',
                                    style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 25,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: widget.resources.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextButton(
                                        style: const ButtonStyle(
                                            alignment: Alignment.centerLeft),
                                        onPressed: () {
                                          launchUrl(
                                            Uri.parse(
                                                widget.resources[index].link),
                                          );
                                        },
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.6,
                                          child: Text(
                                            widget.resources[index].name,
                                            style: const TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 15,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: const Color(0xff171717),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width >
                                        1000
                                    ? MediaQuery.of(context).size.width * 0.15
                                    : 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Steps to complete',
                                    style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 25,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: widget.stepsToComplete.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        child: Text(
                                          '\u2022  ${widget.stepsToComplete[index]}',
                                          style: const TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: const Color(0xff171717),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width >
                                        1000
                                    ? MediaQuery.of(context).size.width * 0.15
                                    : 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Resources & Help',
                                    style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 25,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: widget.resources.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextButton(
                                        style: const ButtonStyle(
                                            alignment: Alignment.centerLeft),
                                        onPressed: () {
                                          launchUrl(
                                            Uri.parse(
                                                widget.resources[index].link),
                                          );
                                        },
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.6,
                                          child: Text(
                                            widget.resources[index].name,
                                            style: const TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 15,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff171717),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width > 1000
                          ? MediaQuery.of(context).size.width * 0.15
                          : 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Mentors & People',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 25,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.mentors.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              child: TextButton(
                                style: const ButtonStyle(
                                    alignment: Alignment.centerLeft),
                                onPressed: () {
                                  launchUrl(
                                    Uri.parse(widget.mentors[index].link),
                                  );
                                },
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xff10d0d6),
                                        child: Icon(
                                          Icons.person,
                                          color: Color(0xff171717),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.28,
                                      child: Text(
                                        widget.mentors[index].name,
                                        style: const TextStyle(
                                          color: Color(0xffffffff),
                                          fontSize: 15,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff171717),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width > 1000
                          ? MediaQuery.of(context).size.width * 0.15
                          : 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Comments',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 25,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        addRepaintBoundaries: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.comments.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xffffffff),
                                      child: Icon(
                                        Icons.person,
                                        color: Color(0xff171717),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        widget.comments[index].name,
                                        style: const TextStyle(
                                          color: Color(0xffffffff),
                                          fontSize: 10,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        child: Text(
                                          widget.comments[index].content,
                                          style: const TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
