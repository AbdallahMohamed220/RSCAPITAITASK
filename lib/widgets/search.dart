import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 25.0,
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 10.0,
          ),
          hintText: 'Search in thousands of products',
          fillColor: Color(0xffF5F7F9),
          filled: true,
          hintStyle: TextStyle(
            color: Color(0xff474749),
            fontSize: 13.5,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xff474749),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Color(0xffE0E0E0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Color(0xffE0E0E0),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Color(0xffE0E0E0),
            ),
          ),
        ),
      ),
    );
  }
}
