import 'package:flutter/material.dart';
import 'package:icebuddy/useless.dart';
import 'homescreen.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  RangeValues values = RangeValues(0, 500);
  RangeValues value = RangeValues(0, 500);
  bool isOpen = false;
  String selectOption = "Select Option";
  List<String> memberList = [
    'Student',
    'Teacher',
    'Housewife',
    'Worker',
    'Oldpeople'
  ];
  @override
  Widget build(BuildContext context) {
    RangeLabels lables =
        RangeLabels(values.start.toString(), values.end.toString());
    RangeLabels lable =
        RangeLabels(value.start.toString(), value.end.toString());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homeScreen()),
              );
            },
            icon: const Icon(Icons.arrow_back_sharp)),
        title: Center(
            child:
                Text('Profile', style: Theme.of(context).textTheme.headline4)),
        backgroundColor: Colors.pink.shade100,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_add_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(image: AssetImage('img/banner5.png')))),
            ),
            const Divider(),
            Form(
              child: Column(children: [
                TextFormField(
                  // controller: Controller.fullName,
                  decoration: InputDecoration(
                      label: Text('Full Name'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Type in your Name",
                      fillColor: Colors.white70,
                      prefixIcon: Icon(Icons.person_outline_rounded)),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // controller: Controller.fullName,
                  decoration: InputDecoration(
                      label: Text('Email_id'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Type in your Email_id",
                      fillColor: Colors.white70,
                      prefixIcon: Icon(Icons.email_outlined)),
                ),
                const SizedBox(
                  height: 20,
                ),
              ]),
            ),
            Text('Total Expenditure'),
            Container(
              child: RangeSlider(
                values: values,
                labels: lables,
                divisions: 10,
                min: 0,
                max: 500,
                activeColor: Colors.pink.shade100,
                inactiveColor: Colors.blue.shade100,
                onChanged: (newValues) {
                  values = newValues;
                  print('${newValues.start}, ${newValues.end}');

                  setState(() {});
                },
              ),
            ),
            Text('Average Expenditure'),
            Container(
              child: RangeSlider(
                values: value,
                labels: lable,
                divisions: 10,
                min: 0,
                max: 500,
                activeColor: Colors.pink.shade100,
                inactiveColor: Colors.blue.shade100,
                onChanged: (newValue) {
                  value = newValue;
                  print('${newValue.start}, ${newValue.end}');

                  setState(() {});
                },
              ),
            ),
            InkWell(
              onTap: () {
                isOpen = !isOpen;
                setState(() {});
              },
              child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.pink.shade100),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(selectOption),
                          Icon(Icons.keyboard_arrow_down),
                        ]),
                  )),
            ),
            if (isOpen)
              ListView(
                primary: true,
                shrinkWrap: true,
                children: memberList
                    .map(
                      (e) => Container(
                        decoration: BoxDecoration(color: Colors.pink.shade100),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                             onTap: () {
                                    selectOption = e;
                                    isOpen = false;
                                    setState(() {});
                                  },
                              child: Text(e)),
                        ),
                      ),
                    )
                    .toList(),
              )
          ],
        ),
      )),
    );
  }
}





// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile'),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const SizedBox(height: 20),
//           Center(
//             child: CircleAvatar(
//               radius: 70,
//               backgroundImage: AssetImage('img/banner1.png'),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             'John Doe',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             'johndoe@gmail.com',
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.grey[700],
//             ),
//           ),
//           const SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {
//               // TODO: Implement edit profile functionality
//             },
//             child: const Text('Edit Profile'),
//           ),
//         ],
//       ),
//     );
//   }
// }
