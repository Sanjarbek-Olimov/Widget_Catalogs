import 'package:flutter/material.dart';
import 'package:mywidgecatalog_less6/pages/dialog_page.dart';
import 'package:mywidgecatalog_less6/pages/list_view_page.dart';
import 'package:mywidgecatalog_less6/pages/single_child_scroll_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // dialog page
            MaterialButton(
              shape: const StadiumBorder(),
              height: 50,
              minWidth: 250,
              onPressed: () {
                Navigator.of(context).pushNamed(DialogPage.id);
              },
              child: const Text(
                "Dialog and Drawer",
                style: TextStyle(fontSize: 20),
              ),
              textColor: Colors.white,
              color: Colors.blueAccent,
            ),
            SizedBox(height: 20,),
            MaterialButton(
              shape: const StadiumBorder(),
              height: 50,
              minWidth: 250,
              onPressed: () {
                Navigator.of(context).pushNamed(SingleChildScrollPage.id);
              },
              child: const Text(
                "SingleChildScrollView",
                style: TextStyle(fontSize: 20),
              ),
              textColor: Colors.white,
              color: Colors.blueAccent,
            ),
            SizedBox(height: 20,),
            MaterialButton(
              shape: const StadiumBorder(),
              height: 50,
              minWidth: 250,
              onPressed: () {
                Navigator.of(context).pushNamed(ListViewPage.id);
              },
              child: const Text(
                "List View",
                style: TextStyle(fontSize: 20),
              ),
              textColor: Colors.white,
              color: Colors.blueAccent,
            ),

          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black87),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/image1.jpg"),
                ),
                accountName: Text(
                  "Sanjarbek Olimov",
                  style: TextStyle(fontSize: 24),
                ),
                accountEmail: Text("SanjarbekOlimov@gmail.com")),
            ListTile(
              leading: const Icon(Icons.house),
              title: const Text(
                "Houses",
                style: TextStyle(fontSize: 24),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.apartment),
              title: const Text(
                "Apartments",
                style: TextStyle(fontSize: 24),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.house_outlined),
              title: const Text(
                "Townhouses",
                style: TextStyle(fontSize: 24),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: const Text(
                "Favourites",
                style: TextStyle(fontSize: 24),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      drawerScrimColor: Colors.blueGrey,
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Samuel.jpg"),
                ),
                accountName: Text(
                  "Samuel Adams",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
                accountEmail: Text(
                  "samuel_a88@gmail.com",
                  style: TextStyle(color: Colors.grey),
                )),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              selectedTileColor: Colors.grey[200],
              selectedColor: Colors.deepPurpleAccent,
              selected: _selectedDestination == 0,
              onTap: () => selectDestination(0),
              leading: const Icon(
                Icons.folder,
                size: 30,
              ),
              title: const Text(
                "My Files",
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            ListTile(
              selectedTileColor: Colors.grey[200],
              selectedColor: Colors.deepPurpleAccent,
              selected: _selectedDestination == 1,
              onTap: () => selectDestination(1),
              leading: const Icon(
                Icons.people,
                size: 30,
              ),
              title: const Text(
                "Shared with me",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            ListTile(
              selectedTileColor: Colors.grey[200],
              selectedColor: Colors.deepPurpleAccent,
              selected: _selectedDestination == 2,
              onTap: () => selectDestination(2),
              leading: const Icon(
                Icons.star,
                size: 30,
              ),
              title: const Text(
                "Starred",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            ListTile(
              selectedTileColor: Colors.grey[200],
              selectedColor: Colors.deepPurpleAccent,
              selected: _selectedDestination == 3,
              onTap: () => selectDestination(3),
              leading: const Icon(
                Icons.watch_later_outlined,
                size: 30,
              ),
              title: const Text(
                "Recent",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            ListTile(
              selectedTileColor: Colors.grey[200],
              selectedColor: Colors.deepPurpleAccent,
              selected: _selectedDestination == 4,
              onTap: () => selectDestination(4),
              leading: const Icon(
                Icons.offline_pin,
                size: 30,
              ),
              title: const Text(
                "Offline",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            ListTile(
              selectedTileColor: Colors.grey[200],
              selectedColor: Colors.deepPurpleAccent,
              selected: _selectedDestination == 5,
              onTap: () => selectDestination(5),
              leading: const Icon(
                Icons.upload_sharp,
                size: 30,
              ),
              title: const Text(
                "Uploads",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            ListTile(
              selectedTileColor: Colors.grey[200],
              selectedColor: Colors.deepPurpleAccent,
              selected: _selectedDestination == 6,
              onTap: () => selectDestination(6),
              leading: const Icon(
                Icons.backup,
                size: 30,
              ),
              title: const Text(
                "Backups",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            ListTile(
              selectedTileColor: Colors.grey[200],
              selectedColor: Colors.deepPurpleAccent,
              selected: _selectedDestination == 7,
              onTap: () => selectDestination(7),
              leading: const Icon(
                Icons.delete,
                size: 30,
              ),
              title: const Text(
                "Trash",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              selectedTileColor: Colors.grey[200],
              selectedColor: Colors.deepPurpleAccent,
              selected: _selectedDestination == 8,
              onTap: () => selectDestination(8),
              leading: const Icon(
                Icons.settings,
                size: 30,
              ),
              title: const Text(
                "Settings & account",
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
