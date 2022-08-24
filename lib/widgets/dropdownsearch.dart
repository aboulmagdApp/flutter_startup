import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class DropdownSearchTest extends StatefulWidget {
  @override
  State<DropdownSearchTest> createState() => _DropdownSearchTestState();
}

class _DropdownSearchTestState extends State<DropdownSearchTest> {
  var selecteditem = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('dropdownSearch')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownSearch<String>(
                popupProps: PopupProps.modalBottomSheet(
                    showSelectedItems: true, showSearchBox: true
                    //disabledItemFn: (String s) => s.startsWith('B'),
                    ),
                items: ["Brazil", "Tunisia", 'Canada'],
                onChanged: (val) {
                  print(val);
                },
                selectedItem: selecteditem,
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "Menu mode",
                    hintText: "country in menu mode",
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
