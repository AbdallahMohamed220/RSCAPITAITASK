import 'package:flutter/material.dart';
import 'package:rescpitalitask/widgets/address_card.dart';
import 'package:rescpitalitask/widgets/categories.dart';
import 'package:rescpitalitask/widgets/category_header.dart';
import 'package:rescpitalitask/widgets/deals.dart';
import 'package:rescpitalitask/widgets/deals_header.dart';
import 'package:rescpitalitask/widgets/header.dart';
import 'package:rescpitalitask/widgets/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Header(),
            ),
            SliverToBoxAdapter(
              child: Search(),
            ),
            SliverToBoxAdapter(
              child: AddressCard(),
            ),
            SliverToBoxAdapter(
              child: CategoryHeader(),
            ),
            SliverToBoxAdapter(
              child: Categories(),
            ),
            SliverToBoxAdapter(
              child: DealsHeader(),
            ),
            SliverToBoxAdapter(
              child: Deals(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
