// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_application_1/favourites_page.dart';
// import 'package:flutter_application_1/model/transaction.dart';
// import 'package:flutter_application_1/providers/transaction_provider.dart';
// import 'package:flutter_application_1/screens/form_screen.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';

// import '../main.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int index = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//         backgroundColor: Colors.blue.shade700,
//         actions: [
//           IconButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return FormScreen();
//                 }));
//               },
//               icon: const Icon(Icons.add)),
//           IconButton(
//               onPressed: () {
//                 SystemNavigator.pop();
//               },
//               icon: Icon(
//                 Icons.exit_to_app,
//                 color: Colors.red,
//               )),
//         ],
//       ),
//       // backgroundColor: Colors.greenAccent.shade400,
//       drawer: const NavigationDrawer(),
//       body: Consumer(builder: ((context, TransactionProvider provider, child) {
//         var count = provider.transactions.length;
//         if (count <= 0) {
//           return const Center(
//               child: Text("ไม่พบข้อมูล", style: TextStyle(fontSize: 35)));
//         } else {
//           return ListView.builder(
//               itemCount: provider.transactions.length,
//               itemBuilder: (context, int index) {
//                 Transactions data = provider.transactions[index];
//                 return Card(
//                   elevation: 5,
//                   margin:
//                       const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
//                   child: ListTile(
//                     leading: CircleAvatar(
//                         radius: 30,
//                         child: FittedBox(child: Text(data.amount.toString()))),
//                     title: Text(data.title),
//                     subtitle: Text(
//                         DateFormat("dd/MM/yyyy HH:mm:ss").format(data.date)),
//                   ),
//                 );
//               });
//         }
//       })),
//     );
//   }
// }

// class NavigationDrawer extends StatelessWidget {
//   const NavigationDrawer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: SingleChildScrollView(
//           child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[buildHeader(context), buildMenuItems(context)],
//       )),
//     );
//   }

//   Widget buildHeader(BuildContext context) => Container(
//         color: Colors.blue.shade700,
//         padding: EdgeInsets.only(
//           top: 24 + MediaQuery.of(context).padding.top,
//           bottom: 24,
//         ),
//         child: Column(children: const [
//           CircleAvatar(
//             radius: 52,
//             backgroundImage: NetworkImage(
//                 'https://avatars.githubusercontent.com/u/90053668?s=96&v=4'),
//           ),
//           SizedBox(
//             height: 12,
//           ),
//           Text('Flutter Dev',
//               style: TextStyle(fontSize: 28, color: Colors.white)),
//           Text('Flutter@Dev.com',
//               style: TextStyle(fontSize: 16, color: Colors.white)),
//         ]),
//       );

//   Widget buildMenuItems(BuildContext context) => Container(
//         padding: const EdgeInsets.all(24),
//         child: Wrap(
//           runSpacing: 16,
//           children: [
//             ListTile(
//               leading: const Icon(Icons.home_outlined),
//               title: const Text('Home'),
//               onTap: () {
//                 Navigator.of(context).pushReplacement(MaterialPageRoute(
//                     builder: (context) =>
//                         const MyHomePage(title: 'Home Page')));
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.favorite_border),
//               title: const Text('Favourites'),
//               onTap: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => const FavouritesPage()));
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.work_outline),
//               title: const Text('Workflow'),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: const Icon(Icons.update),
//               title: const Text('Updates'),
//               onTap: () {},
//             ),
//             const Divider(
//               color: Colors.black54,
//             ),
//             ListTile(
//               leading: const Icon(Icons.account_tree_outlined),
//               title: const Text('Plugins'),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: const Icon(Icons.notifications_outlined),
//               title: const Text('Notifications'),
//               onTap: () {},
//             ),
//           ],
//         ),
//       );
// }
