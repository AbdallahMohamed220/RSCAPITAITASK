import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 4.0,
              horizontal: 8,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffE0E0E0),
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: const Color(0xffD7D7D7),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Home Address',
                      style: TextStyle(
                        color: Color(0xff474749),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Mustafa St. No:2',
                      style: TextStyle(
                        color: Color(0xff474749),
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      'Street x12',
                      style: TextStyle(
                        color: Color(0xff474749),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10.0),
              padding: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffE0E0E0),
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: const Color(0xffD7D7D7),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Home Address',
                        style: TextStyle(
                          color: Color(0xff474749),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Mustafa St. No:2',
                        style: TextStyle(
                          color: Color(0xff474749),
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        'Street x12',
                        style: TextStyle(
                          color: Color(0xff474749),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
