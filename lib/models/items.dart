class Device {
  String name, model, img, brand, mac, fw, sn;

  Device(
      {this.name,
      this.model,
      this.img,
      this.brand,
      this.mac,
      this.fw,
      this.sn});
}

Device thermometer = Device(
  name: 'Thermometer',
  model: 'td-1241',
  img: 'assets/images/thermometer.png',
  brand: 'Tia Doc',
  mac: '4C:24:98:A4:B6',
  fw: 't1.2.3',
  sn: '238943489343',
);

Device bpMonitor = Device(
  name: 'Blood Pressure Monitor',
  model: 'hem-9200t',
  img: 'assets/images/blood-pressure-monitor.png',
  brand: 'Omron',
  mac: '3D:22:72:A5:B1',
  fw: 'A2.3.3',
  sn: '96002513112',
);

List<Device> items = [
  thermometer,
  bpMonitor,
];
