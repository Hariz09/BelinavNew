import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late DateTime today; // Declare today as late DateTime
  late DateTime selectedDay; // Store the selected day
  Map<DateTime, List<String>> events = {}; // Map to store events

  @override
  void initState() {
    super.initState();
    today = DateTime.now();
    selectedDay = today; // Initialize selectedDay with today
    // Add sample events
    events = {
      DateTime.utc(2023, 9, 10): ['Ujian Membaca'],
      DateTime.utc(2023, 9, 20): ['Ujian Menulis'],
      DateTime.utc(2023, 9, 25): [
        'Ujian Menulis',
      ],
    };
  }

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      selectedDay = day; // Update the selected day
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(
          //   width: 50,
          // ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                  height: 370,
                  // width: 500,
                  // Wrap the TableCalendar with a Container
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    border: Border.all(
                        color: Colors.grey), // Add border to the container
                  ),
                  child: TableCalendar(
                    shouldFillViewport: true,
                    focusedDay: today,
                    firstDay: DateTime.utc(2022, 1, 1),
                    lastDay: DateTime.utc(2030, 12, 31),
                    calendarFormat: CalendarFormat.month,
                    onDaySelected: _onDaySelected,
                    eventLoader: (day) {
                      return events[day] ?? [];
                    },
                    selectedDayPredicate: (day) {
                      // Highlight the selected day
                      return isSameDay(day, selectedDay);
                    },
                    calendarStyle: const CalendarStyle(),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),

          // const SizedBox(
          // width: 10,
          // ),

          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 191, 46, 124),
              ),
              child: Column(
                children: [
                  const Text(
                    'Events:',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  ..._eventsForDay(selectedDay),
                ],
              ),
            ),
          ),

          // const SizedBox(
          //   width: 50,
          // ),
        ],
      ),
    );
  }

  List<Widget> _eventsForDay(DateTime day) {
    final List<Widget> eventWidgets = [];

    if (events[day] != null) {
      for (var event in events[day]!) {
        eventWidgets.add(
          ListTile(
            title: Row(
              children: [
                const Icon(
                  Icons.task_alt,
                  color: Colors.green,
                  size: 15,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  event,
                  style: const TextStyle(
                    fontSize: 8,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }

    return eventWidgets;
  }
}

void main() {
  runApp(const MaterialApp(home: Calendar()));
}
