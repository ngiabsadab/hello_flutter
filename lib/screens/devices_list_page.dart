import 'package:flutter/material.dart';
import 'package:my_app/components/image_circle.dart';
import 'package:my_app/models/items.dart';
import 'package:my_app/screens/devices_info_page.dart';

class DevicesListPage extends StatefulWidget {
  @override
  _DevicesListPageState createState() => _DevicesListPageState();
}

class _DevicesListPageState extends State<DevicesListPage> {
  _onItem(Device item) {
    Navigator.push(
      context,
      // Create the SelectionScreen in the next step.
      MaterialPageRoute(builder: (context) => DevicesInfoPage(item: item)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('รายการอุปกร์ของฉัน')),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(16),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return buildCard(items[index]);
              // return Text('$index');
            }),
      ),
    );
  }

  Widget buildCard(Device item) {
    return Card(
      child: ListTile(
        leading: ImageCircle(path: item.img, size: 50),
        title: Text(item.name),
        subtitle: Text(item.brand),
        trailing: Icon(Icons.navigate_next),
        onTap: () => _onItem(item),
      ),
    );
  }
}
