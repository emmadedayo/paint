import 'package:flutter/material.dart';
import 'package:paint/router.dart';
import 'package:paint/screen/custom_text_form_field.dart';
import 'package:paint/screen/register_two.dart';
import 'package:paint/styles/colors.dart';
import 'package:find_dropdown/find_dropdown.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController company_name = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController address = TextEditingController();

  String variation,car_make,car_model;
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
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
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
                  "Step 1/3 ",
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
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => new RegisterTwo()));
                  },
                  child: Text(
                    "Next",
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
                controller: firstname,
                hintText: "FirstName",
              ),
            ),
            SizedBox(width: 15.0),
            Expanded(
              child: CustomTextFormField(
                hintText: "LastName",
                controller: lastname,
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
                controller: company_name,
                hintText: "Enter company name",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        CustomTextFormField(
          hintText: "Email",
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: <Widget>[
            Container(
              width: 80.0,
              child: CustomTextFormField(
                hintText: "+234",
              ),
            ),
            SizedBox(width: 15.0),
            Expanded(
              child: CustomTextFormField(
                controller: phonenumber,
                hintText: "Phone number",
              ),
            )
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        CustomTextFormField(
          controller: address,
          hintText: "Address",
        ),
        SizedBox(
          height: 20.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: FindDropdown(
                items: ["", "Acura", "Alfa Romeo", "Audi","BMW", "Bentley", "Buick", "Cadillac",
                  "Chevrolet", "Chrysler", "Dodge", "Fiat","Ford", "GMC", "Genesis", "Honda",
                  "Hyundai", "Infiniti", "Jaguar", "Jeep","Kia", "Land Rover", "Lexus", "Lincoln",
                  "Maserati", "Mazda", "Mercedes-Benz","Mercury", "Mini", "Mitsubishi", "Nissan",
                  "Polestar", "Pontiac", "Porsche", "Ram","Rivian", "Saab", "Saturn", "Scion",
                  "Smart", "Subaru", "Suzuki", "Tesla","Toyota", "Volkswagen", "Volvo"],
                label: "Car make",
                onChanged: (v) {
                    v = car_make;
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
            SizedBox(width: 15.0),
            Expanded(
              child: FindDropdown(
                items: ["", "Acura", "Alfa Romeo", "Audi","BMW", "Bentley", "Buick", "Cadillac",
                  "Chevrolet", "Chrysler", "Dodge", "Fiat","Ford", "GMC", "Genesis", "Honda",
                  "Hyundai", "Infiniti", "Jaguar", "Jeep","Kia", "Land Rover", "Lexus", "Lincoln",
                  "Maserati", "Mazda", "Mercedes-Benz","Mercury", "Mini", "Mitsubishi", "Nissan",
                  "Polestar", "Pontiac", "Porsche", "Ram","Rivian", "Saab", "Saturn", "Scion",
                  "Smart", "Subaru", "Suzuki", "Tesla","Toyota", "Volkswagen", "Volvo"],
                label: "Car Model",
                onChanged: (v) {
                  v = car_model;
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
            )
          ],
        ),

        SizedBox(
          height: 20.0,
        ),
        Row(
          children: <Widget>[
            Container(
              width: 120.0,
              child: CustomTextFormField(
                hintText: "Year",
                controller: year,
              ),
            ),
            SizedBox(width: 15.0),
            Expanded(
              child: FindDropdown(
                items: ["", "Yes", "No"],
                label: "Does your car color have any variation?",
                onChanged: (v) {
                  v = variation;
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
            )
          ],
        ),
        SizedBox(
          height: 20.0,
        ),

      ],
    );
  }
}
