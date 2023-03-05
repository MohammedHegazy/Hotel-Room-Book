import 'package:flutter/material.dart';
import 'package:hotel_booking_user/const/colors.dart';
import 'package:hotel_booking_user/widgets/textInputForSearchHotel.dart';
import 'package:rxdart/rxdart.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final BehaviorSubject<bool> isFullyExpanded =
      BehaviorSubject<bool>.seeded(false);
  final BehaviorSubject<bool> isFullyCollapsed =
      BehaviorSubject<bool>.seeded(false);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final double appBarHeight = AppBar().preferredSize.height;

    final double topPadding = MediaQuery.of(context).padding.top;

    final double expandedHeight = MediaQuery.of(context).size.height * 0.5;

    final double fullyExpandedHeight = MediaQuery.of(context).size.height * 0.9;

    return Scaffold(
        backgroundColor: kBaseColor,
        body: SafeArea(
          child: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification.metrics.axis == Axis.vertical) {
                // isFullyCollapsed
                if ((isFullyExpanded.value) &&
                    notification.metrics.extentBefore > 1) {
                  isFullyExpanded.add(false);
                }
                //isFullyCollapsed
                if (notification.metrics.extentBefore >
                    expandedHeight - AppBar().preferredSize.height - 10) {
                  if (!(isFullyCollapsed.value)) isFullyCollapsed.add(true);
                } else {
                  if ((isFullyCollapsed.value)) isFullyCollapsed.add(false);
                }
              }
              return false;
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: sliver(context, appBarHeight, fullyExpandedHeight,
                  expandedHeight, topPadding),
            ),
          ),
        ));
  }

  CustomScrollView sliver(
    BuildContext context,
    double appBarHeight,
    double fullyExpandedHeight,
    double expandedHeight,
    double topPadding,
  ) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ScrollController scrollController = ScrollController();
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        StreamBuilder<List<bool>>(
            stream: CombineLatestStream.list<bool>([
              isFullyCollapsed.stream,
              isFullyExpanded.stream,
            ]),
            builder:
                (BuildContext context, AsyncSnapshot<List<bool>> snapshot) {
              final List<bool> streams = (snapshot.data ?? [false, false]);
              final bool fullyCollapsed = streams[0];
              final bool fullyExpanded = streams[1];

              return SliverAppBar(
                actions: [
                  Visibility(
                    visible: fullyCollapsed,
                    child: IconButton(
                        onPressed: () {
                          scrollController.animateTo(
                              //go to top of scroll
                              0, //scroll offset to go
                              duration: Duration(
                                  milliseconds: 500), //duration of scroll
                              curve: Curves.fastOutSlowIn //scroll type
                              );
                        },
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                          color: kBaseThirdyColor,
                        )),
                  )
                ],
                leading: fullyCollapsed
                    ? Icon(
                        Icons.search,
                        color: kBaseThirdyColor,
                      )
                    : null,
                pinned: true,
                title: fullyCollapsed
                    ? Text(
                        "Dubai",
                        style: TextStyle(color: kBaseThirdyColor, fontSize: 18),
                      )
                    : null,
                backgroundColor: kBaseColor,
                expandedHeight: height * 0.5,
                flexibleSpace: FlexibleSpaceBar(
                  expandedTitleScale: 10,
                  background: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "image/Logo/logo.png",
                                width: width * 0.3,
                                height: height * 0.1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            Expanded(
                              child: Card(
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Destince"),
                                      TextInputSearchHotel(),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.pushNamed(
                                                    context, "RoomsAndGuests");
                                              },
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Rooms"),
                                                  Text("guests: 2 , room: 1"),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: GestureDetector(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Date"),
                                                  Text("Mar 10 - Mar 20"),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateColor
                                                          .resolveWith((states) =>
                                                              kPrimaryColor)),
                                              child: Text("Search"),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Looking"),
            ],
          ),
        )),
      ],
    );
  }
}
