import 'package:flutter/material.dart';
import 'package:my_app/components/image_circle.dart';
import 'package:my_app/models/items.dart';

class DevicesInfoPage extends StatefulWidget {
  final Device item;

  DevicesInfoPage({this.item});

  @override
  _DevicesInfoPageState createState() => _DevicesInfoPageState();
}

class _DevicesInfoPageState extends State<DevicesInfoPage> {
  @override
  Widget build(BuildContext context) {
    Device item = widget.item;
    return Scaffold(
      appBar: AppBar(
        title: Text('รายละเอียดอุปกรณ์'),
      ),
      body: buildContent(item),
    );
  }

  Widget buildContent(item) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ImageCircle(path: item.img, size: 100),
          SizedBox(
            height: 24,
          ),
          Text(
            item.name,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            item.mac != null ? item.mac : '',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          SizedBox(height: 20),
          Divider(),
          ListTile(title: Text('ยี่ห้อ'), trailing: Text(item.brand)),
          Divider(),
          ListTile(
            title: Text('โมเดล'),
            trailing: Text(
              item.model != null ? item.model : '-',
            ),
          ),
          Divider(),
          ListTile(
            title: Text('เฟริมแวร์เวอร์ชัน'),
            trailing: Text(
              item.fw != null ? item.fw : '-',
            ),
          ),
          Divider(),
          ListTile(
            title: Text('หมายเลขอุปกรณ์'),
            trailing: Text(
              item.sn != null ? item.sn : '-',
            ),
          ),
        ],
      ),
    );
  }
}
