import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:sizer/sizer.dart';

class InvitTimeline {
  final String day;
  final double invit;

  InvitTimeline({
    required this.day,
    required this.invit,
  });
}

class ChartsScreen extends StatefulWidget {
  @override
  _ChartsScreenState createState() => _ChartsScreenState();
}

class _ChartsScreenState extends State<ChartsScreen> {
  @override
  Widget build(BuildContext context) {
    final List<InvitTimeline> listInvit = [
      InvitTimeline(day: 'Sun', invit: 3),
      InvitTimeline(day: 'Mon', invit: 5),
      InvitTimeline(day: 'Tue', invit: 2),
      InvitTimeline(day: 'Wed', invit: 4),
      InvitTimeline(day: 'Thu', invit: 4.5),
      InvitTimeline(day: 'Fri', invit: 3),
      InvitTimeline(day: 'Str', invit: 1),
    ];

    List<charts.Series<InvitTimeline, String>> timeline = [
      charts.Series(
        id: "Subscribers",
        data: listInvit,
        colorFn: (_, __) => charts.Color.fromHex(code: '#D9DBF1'),
        domainFn: (InvitTimeline timeline, _) => timeline.day,
        measureFn: (InvitTimeline timeline, _) => timeline.invit,
      )
    ];

    return Container(
      height: 25.h,
      child: Column(
        children: <Widget>[
          Expanded(
            child: charts.BarChart(timeline, animate: true),
          ),
        ],
      ),
    );
  }
}
