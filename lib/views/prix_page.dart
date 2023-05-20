
import 'package:flutter/material.dart';

import '../Widgets/textfield_widget.dart';
import '../config/constants.dart';

class PrixPage extends StatefulWidget {
  const PrixPage({Key? key}) : super(key: key);

  @override
  State<PrixPage> createState() => _PrixPageState();
}

class _PrixPageState extends State<PrixPage> {

  TextEditingController _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Prix',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kdPadding),
                child: CustomTextField(
                  keyboardType: TextInputType.number,
                  label: 'Prix',
                  obscureText: false,
                  controller: _priceController,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: kdPadding),
                child: Text(
                  'Pour vendre rapidement ton article, selectionne un prix equivalent au prix fixe pour des articles similaries vendus sur Vinted.',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
