import 'package:flutter/material.dart';
import 'package:paint/router.dart';
import 'package:paint/screen/custom_text_form_field.dart';
import 'package:paint/screen/register_two.dart';
import 'package:paint/styles/colors.dart';
import 'package:find_dropdown/find_dropdown.dart';

class Registerthree extends StatefulWidget {
  @override
  _RegisterthreeState createState() => _RegisterthreeState();
}

class _RegisterthreeState extends State<Registerthree> {
  TextEditingController car_body_color = TextEditingController();
  TextEditingController color_code = TextEditingController();
  TextEditingController other_color_code = TextEditingController();
  String dented,scratch,paint_type,service;

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: _theme.scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (_, __, ___) => new RegisterTwo()));
          },
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(LoginRoute);
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Track Id",
                style: TextStyle(
                  color: _theme.primaryColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "Step 3/3 ",
                  style: _theme.textTheme.title.merge(
                    TextStyle(fontSize: 30.0),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              _signupForm(),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(bottom: 30.0),
                height: 45.0,
                child: FlatButton(
                  color: _theme.primaryColor,
                  onPressed: () {
                    Navigator.of(context).pushNamed(OtpVerificationRoute);
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _signupForm() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: CustomTextFormField(
                hintText: "Car Body Color",
                controller: car_body_color,
              ),
            ),
            SizedBox(width: 15.0),
            Expanded(
              child: CustomTextFormField(
                hintText: "Color Code",
                controller: color_code,
              ),
            )
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: CustomTextFormField(
                hintText: "Other color code",
                controller: other_color_code,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        FindDropdown(
          items: ["", "Yes", "No",],
          label: "Is your car dented/Scratched? ",
          onChanged: (v) {
            v = dented;
          },
          selectedItem: "",
          showSearchBox: false,
          labelStyle: TextStyle(color: Color(0xFF9CA4AA)),
          backgroundColor: Colors.white,
          titleStyle:TextStyle(color: Colors.black45),
          validate: (String item) {
            if (item == null)
              return "Required field";
            else if (item == "Brasil")
              return "Invalid item";
            else
              return null;
          },
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: <Widget>[
            Container(
              width: 150.0,
              child: FindDropdown(
                items: ["", " Nothing serious", "Nothing too serious"," Its Quite serious",],
                label: "Class of Dent/Scratch:",
                onChanged: (v) {
                  v = scratch;
                },
                selectedItem: "",
                showSearchBox: false,
                labelStyle: TextStyle(color: Color(0xFF9CA4AA)),
                backgroundColor: Colors.white,
                titleStyle:TextStyle(color: Colors.black45),
                validate: (String item) {
                  if (item == null)
                    return "Required field";
                  else if (item == "Brasil")
                    return "Invalid item";
                  else
                    return null;
                },
              ),
            ),
            SizedBox(width: 30.0),
            Expanded(
              child: CustomTextFormField(
                hintText: "Image upload",
              ),
            )
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        FindDropdown(
          items: ["", "Premium(Sikkens)", "Regular"],
          label: "Select paint type:",
          onChanged: (v) {
            v = paint_type;
          },
          selectedItem: "",
          showSearchBox: false,
          labelStyle: TextStyle(color: Color(0xFF9CA4AA)),
          backgroundColor: Colors.white,
          titleStyle:TextStyle(color: Colors.black45),
          validate: (String item) {
            if (item == null)
              return "Required field";
            else if (item == "Brasil")
              return "Invalid item";
            else
              return null;
          },
        ),
        SizedBox(
          height: 20.0,
        ),
        FindDropdown(
          items: ["", "Pick Up only", "Pick Up and Drop Off","Drop Off only"],
          label: "Additional Services:",
          onChanged: (v) {
            v = service;
          },
          selectedItem: "",
          showSearchBox: false,
          labelStyle: TextStyle(color: Color(0xFF9CA4AA)),
          backgroundColor: Colors.white,
          titleStyle:TextStyle(color: Colors.black45),
          validate: (String item) {
            if (item == null)
              return "Required field";
            else if (item == "Brasil")
              return "Invalid item";
            else
              return null;
          },
        ),
      ],
    );
  }
}
