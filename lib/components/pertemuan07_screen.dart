import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:app06/pertemuan06/pertemuan06_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan06Screen extends StatefulWidget {
  const Pertemuan06Screen({super.key});

  @override
  State<Pertemuan06Screen> createState() => _Pertemuan06ScreenState();
}

class _Pertemuan06ScreenState extends State<Pertemuan06Screen> {
  String itemSelected = 'Pilih Pekerjaan';
  String itemSelected1 = 'Pilih Cita-Cita';
  List items = [
    'Pilih Pekerjaan',
    'Mahasiswa',
    'Dosen',
    'Programmer',
    'UI UX Designer',
    'IT Consultant',
    'Project Manager',
    'PNS',
    'Wiraswasta'
  ];

  List items1 = [
    'Pilih Cita-Cita',
    'Programmer',
    'Dosen',
    'UI UX Designer',
    'IT Consultant',
  ];

  @override
  bool _status_switch = false;
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan06Provider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Switches | DropdownB.',
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Dark mode theme',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Switch(
                  value: prov.enableDarkMode,
                  activeColor: Colors.green,
                  onChanged: (val) {
                    prov.setBrightness = val;
                  })
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Pekerjaan',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              DropdownButton(
                  items: items.map((item) {
                    return DropdownMenuItem(
                      child: Text(item),
                      value: item,
                    );
                  }).toList(),
                  value: itemSelected,
                  onChanged: (val) {
                    setState(() {
                      itemSelected = val as String;
                    });
                  })
            ],
          ),
          if (itemSelected == "Pilih Pekerjaan")
            const Text("Anda Belum Memilih Pekerjaan")
          else if (itemSelected == "Mahasiswa")
            const Text("Pekerjaan : Mahasiswa")
          else if (itemSelected == "Dosen")
            const Text("Pekerjaan : Dosen")
          else if (itemSelected == "Programmer")
            const Text("Pekerjaan : Programmer")
          else if (itemSelected == "UI UX Designer")
            const Text("Pekerjaan : UI UX Designer")
          else if (itemSelected == "IT Consultant")
            const Text("Pekerjaan : IT Consultant")
          else if (itemSelected == "Project Manager")
            const Text("Pekerjaan : Project Manager")
          else if (itemSelected == "PNS")
            const Text("Pekerjaan : PNS")
          else if (itemSelected == "Wiraswasta")
            const Text("Pekerjaan : Wiraswasta"),
          if (prov.enableDarkMode == true)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Cita-cita',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                DropdownButton(
                    items: items1.map((item) {
                      return DropdownMenuItem(
                        child: Text(item),
                        value: item,
                      );
                    }).toList(),
                    value: itemSelected1,
                    onChanged: (val) {
                      setState(() {
                        itemSelected1 = val as String;
                      });
                    }),
              ],
            ),
          if (itemSelected1 == "Programmer")
            const DesProgrammer()
          else if (itemSelected1 == "Dosen")
            const DesDosen()
          else if (itemSelected1 == "UI UX Designer")
            const DesUiUx()
          else if (itemSelected1 == "IT Consultant")
            const DesITconsultant()
        ],
      ),
    );
  }
}

class DesProgrammer extends StatelessWidget {
  const DesProgrammer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const Text("Cita-Cita : Programmer"),
        Padding(padding: EdgeInsets.only(top: 40)),
        Container(
          padding: EdgeInsets.only(left: 1),
          child: Column(children: [
            Text('Deskripsi Programmer',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text("Programmer adalah ......"),
          ]),
        )
      ]),
    );
  }
}

class DesDosen extends StatelessWidget {
  const DesDosen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const Text("Cita-Cita : Dosen"),
        Padding(padding: EdgeInsets.only(top: 40)),
        Container(
          padding: EdgeInsets.only(left: 1),
          child: Column(children: [
            Text('Deskripsi Dosen',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text("Dosen adalah ......")
          ]),
        )
      ]),
    );
  }
}

class DesUiUx extends StatelessWidget {
  const DesUiUx({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const Text("Cita-Cita : UI / UX Designer"),
        Padding(padding: EdgeInsets.only(top: 40)),
        Container(
          padding: EdgeInsets.only(left: 1),
          child: Column(children: [
            Text('Deskripsi UI / UX Designer',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text("UI / UX Designer adalah ......")
          ]),
        )
      ]),
    );
  }
}

class DesITconsultant extends StatelessWidget {
  const DesITconsultant({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const Text("Cita-Cita : IT Consultant"),
        Padding(padding: EdgeInsets.only(top: 40)),
        Container(
          padding: EdgeInsets.only(left: 1),
          child: Column(children: [
            Text('Deskripsi IT Consultant',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text("IT Consultant adalah ......")
          ]),
        )
      ]),
    );
  }
}
