import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  List<Color> gradientColors = [
    Color.fromARGB(255, 25, 7, 218),
    Color.fromARGB(255, 246, 246, 248),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      // padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 3,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 18,
                  left: 12,
                  top: 24,
                  bottom: 12,
                ),
                child: LineChart(
                  mainData(),
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    // alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 72.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('/images/avatar.jpg'),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text('Todays Earning',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 20))),
                Text(
                  '(Mon 15 - Sun 21)',
                  style: TextStyle(color: Colors.black38),
                ),
                Text('573.67',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        show: false,
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 0.5),
            FlSpot(1, 1.2),
            FlSpot(2, 2),
            FlSpot(3, 1),
            FlSpot(3.4, 2.5),
            FlSpot(5, 1.5),
            FlSpot(6, 1.8),
            FlSpot(7, 1.7),
            FlSpot(8, 3),
            FlSpot(9, 6),
            FlSpot(11, 1),
          ],
          isCurved: true,
          color: Color.fromARGB(255, 51, 14, 186),
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class chart2 extends StatefulWidget {
  const chart2({super.key});

  @override
  State<StatefulWidget> createState() => chart2State();
}

class chart2State extends State<chart2> {
  final Color rightBarColor = Color.fromARGB(255, 86, 47, 184);
  final double width = 7;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 40);
    final barGroup2 = makeGroupData(1, 50);
    final barGroup3 = makeGroupData(2, 20);
    final barGroup4 = makeGroupData(3, 55);
    final barGroup5 = makeGroupData(4, 58);
    final barGroup6 = makeGroupData(5, 40);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      height: 410,
      child: AspectRatio(
        aspectRatio: 1,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: BarChart(
                    BarChartData(
                      maxY: 100,
                      titlesData: FlTitlesData(
                        show: true,
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: bottomTitles,
                            reservedSize: 42,
                          ),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 28,
                            interval: 1,
                            getTitlesWidget: leftTitles,
                          ),
                        ),
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      barGroups: showingBarGroups,
                      gridData: FlGridData(show: false),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff7589a2),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    if (value == 0) {
      text = '0';
    } else if (value == 33) {
      text = '33';
    } else if (value == 67) {
      text = '67';
    } else if (value == 100) {
      text = '100';
    } else {
      return Container();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      child: Text(text, style: style),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>['M', 'T', 'W', 'T', 'F', 'S'];

    final Widget text = Text(
      titles[value.toInt()],
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16, //margin top
      child: text,
    );
  }

  BarChartGroupData makeGroupData(int x, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(
            toY: y2,
            color: rightBarColor,
            width: 30,
            borderRadius: BorderRadius.all(Radius.circular(2))),
      ],
    );
  }
}

class chart3 extends StatefulWidget {
  const chart3({super.key});

  @override
  State<StatefulWidget> createState() => chart3State();
}

class chart3State extends State<chart3> {
  static const double barWidth = 22;
  static const shadowOpacity = 0.2;
  static const mainItems = <int, List<double>>{
    0: [2, 3, 2.5, 8],
    1: [-1.8, -2.7, -3, -6.5],
    2: [1.5, 2, 3.5, 6],
    3: [1.5, 1.5, 4, 6.5],
    4: [-2, -2, -5, -9],
    5: [-1.2, -1.5, -4.3, -10],
    6: [1.2, 4.8, 5, 5],
  };
  int touchedIndex = -1;

  @override
  void initState() {
    super.initState();
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style =
        TextStyle(color: Color.fromARGB(255, 222, 206, 206), fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Mon';
        break;
      case 1:
        text = 'Tue';
        break;
      case 2:
        text = 'Wed';
        break;
      case 3:
        text = 'Thu';
        break;
      case 4:
        text = 'Fri';
        break;
      case 5:
        text = 'Sat';
        break;
      case 6:
        text = 'Sun';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  Widget topTitles(double value, TitleMeta meta) {
    const style =
        TextStyle(color: Color.fromARGB(255, 211, 202, 202), fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Mon';
        break;
      case 1:
        text = 'Tue';
        break;
      case 2:
        text = 'Wed';
        break;
      case 3:
        text = 'Thu';
        break;
      case 4:
        text = 'Fri';
        break;
      case 5:
        text = 'Sat';
        break;
      case 6:
        text = 'Sun';
        break;
      default:
        return Container();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    const style =
        TextStyle(color: Color.fromARGB(255, 198, 174, 174), fontSize: 10);
    String text;
    if (value == 0) {
      text = '0';
    } else {
      text = '${value.toInt()}0k';
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(
        text,
        style: style,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget rightTitles(double value, TitleMeta meta) {
    const style =
        TextStyle(color: Color.fromARGB(255, 223, 208, 208), fontSize: 10);
    String text;
    if (value == 0) {
      text = '0';
    } else {
      text = '${value.toInt()}0k';
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      child: Text(
        text,
        style: style,
        textAlign: TextAlign.center,
      ),
    );
  }

  BarChartGroupData generateGroup(
    int x,
    double value1,
    double value2,
    double value3,
    double value4,
  ) {
    final isTop = value1 > 0;
    final sum = value1 + value2 + value3 + value4;
    final isTouched = touchedIndex == x;
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      showingTooltipIndicators: isTouched ? [0] : [],
      barRods: [
        BarChartRodData(
          toY: sum,
          width: barWidth,
          borderRadius: isTop
              ? const BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                )
              : const BorderRadius.only(
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ),
          rodStackItems: [
            BarChartRodStackItem(
              0,
              value1,
              const Color(0xff2bdb90),
              BorderSide(
                color: Colors.white,
                width: isTouched ? 2 : 0,
              ),
            ),
            BarChartRodStackItem(
              value1,
              value1 + value2,
              const Color(0xffffdd80),
              BorderSide(
                color: Colors.white,
                width: isTouched ? 2 : 0,
              ),
            ),
            BarChartRodStackItem(
              value1 + value2,
              value1 + value2 + value3,
              const Color(0xffff4d94),
              BorderSide(
                color: Colors.white,
                width: isTouched ? 2 : 0,
              ),
            ),
            BarChartRodStackItem(
              value1 + value2 + value3,
              value1 + value2 + value3 + value4,
              const Color(0xff19bfff),
              BorderSide(
                color: Colors.white,
                width: isTouched ? 2 : 0,
              ),
            ),
          ],
        ),
        BarChartRodData(
          toY: -sum,
          width: barWidth,
          color: Colors.transparent,
          // borderRadius: isTop
          //     ? const BorderRadius.only(
          //         bottomLeft: Radius.circular(6),
          //         bottomRight: Radius.circular(6),
          //       )
          //     : const BorderRadius.only(
          //         topLeft: Radius.circular(6),
          //         topRight: Radius.circular(6),
          //       ),
          rodStackItems: [
            BarChartRodStackItem(
              0,
              -value1,
              const Color(0xff2bdb90)
                  .withOpacity(isTouched ? shadowOpacity * 2 : shadowOpacity),
              const BorderSide(color: Colors.transparent),
            ),
            BarChartRodStackItem(
              -value1,
              -(value1 + value2),
              const Color(0xffffdd80)
                  .withOpacity(isTouched ? shadowOpacity * 2 : shadowOpacity),
              const BorderSide(color: Colors.transparent),
            ),
            BarChartRodStackItem(
              -(value1 + value2),
              -(value1 + value2 + value3),
              const Color(0xffff4d94)
                  .withOpacity(isTouched ? shadowOpacity * 2 : shadowOpacity),
              const BorderSide(color: Colors.transparent),
            ),
            BarChartRodStackItem(
              -(value1 + value2 + value3),
              -(value1 + value2 + value3 + value4),
              const Color(0xff19bfff)
                  .withOpacity(isTouched ? shadowOpacity * 2 : shadowOpacity),
              const BorderSide(color: Colors.transparent),
            ),
          ],
        ),
      ],
    );
  }

  bool isShadowBar(int rodIndex) => rodIndex == 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.all(20),
      child: AspectRatio(
        aspectRatio: 0.8,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          color: Color.fromARGB(255, 255, 255, 255),
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.center,
                maxY: 20,
                minY: -20,
                groupsSpace: 12,
                barTouchData: BarTouchData(
                  handleBuiltInTouches: false,
                  touchCallback: (FlTouchEvent event, barTouchResponse) {
                    if (!event.isInterestedForInteractions ||
                        barTouchResponse == null ||
                        barTouchResponse.spot == null) {
                      setState(() {
                        touchedIndex = -1;
                      });
                      return;
                    }
                    final rodIndex = barTouchResponse.spot!.touchedRodDataIndex;
                    if (isShadowBar(rodIndex)) {
                      setState(() {
                        touchedIndex = -1;
                      });
                      return;
                    }
                    setState(() {
                      touchedIndex =
                          barTouchResponse.spot!.touchedBarGroupIndex;
                    });
                  },
                ),
                titlesData: FlTitlesData(
                  show: true,
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 32,
                      getTitlesWidget: topTitles,
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 32,
                      getTitlesWidget: bottomTitles,
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: leftTitles,
                      interval: 5,
                      reservedSize: 42,
                    ),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: rightTitles,
                      interval: 5,
                      reservedSize: 42,
                    ),
                  ),
                ),
                gridData: FlGridData(
                  show: true,
                  checkToShowHorizontalLine: (value) => value % 5 == 0,
                  getDrawingHorizontalLine: (value) {
                    if (value == 0) {
                      return FlLine(
                        color: const Color(0xff363753),
                        strokeWidth: 3,
                      );
                    }
                    return FlLine(
                      color: const Color(0xff2a2747),
                      strokeWidth: 0.8,
                    );
                  },
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                barGroups: mainItems.entries
                    .map(
                      (e) => generateGroup(
                        e.key,
                        e.value[0],
                        e.value[1],
                        e.value[2],
                        e.value[3],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Chart4 extends StatefulWidget {
  const Chart4({super.key});

  @override
  State<Chart4> createState() => _Chart4State();
}

class _Chart4State extends State<Chart4> {
  List<Color> gradientColors = [
    Color.fromARGB(255, 25, 7, 218),
    Color.fromARGB(255, 246, 246, 248),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      // padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.70,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 18,
                  left: 12,
                  top: 24,
                  bottom: 12,
                ),
                child: LineChart(
                  mainData(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '3,500,000',
                      style: TextStyle(
                          color: Color.fromARGB(235, 36, 35, 35),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text('November 2021',
                          style: TextStyle(
                            color: Color.fromARGB(255, 179, 178, 182),
                          )),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        show: false,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: true),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 4,
      minY: 0,
      maxY: 20,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(-0.5, 1),
            FlSpot(2, 12),
            FlSpot(3, 8),
            FlSpot(4.5, 20),
          ],
          isCurved: true,
          color: Color.fromARGB(255, 51, 14, 186),
          dotData: FlDotData(
            show: false,
          ),
        ),
      ],
    );
  }
}
