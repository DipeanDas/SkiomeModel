// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_prac1/models/cart.dart';
import 'dart:convert';

import 'package:flutter_application_prac1/models/catalog.dart';
//import 'package:flutter_application_prac1/widgets/drawer.dart';
//import 'package:flutter_application_prac1/widgets/item_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import '../core/store.dart';
import '../utils/routes.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
        backgroundColor: context.cardColor,
        floatingActionButton: VxBuilder(
          mutations: {AddMutation, RemoveMutation},
          builder: ((context, _, _CartList) => FloatingActionButton(
                onPressed: () =>
                    Navigator.pushNamed(context, MyRoutes.cartRoute),
                backgroundColor: context.theme.buttonColor,
                child: Icon(CupertinoIcons.cart, color: Colors.white),
              ).badge(
                  color: Vx.amber600,
                  position: VxBadgePosition.values[3],
                  size: 24,
                  count: _cart.items.length,
                  textStyle: TextStyle(
                    color: context.cardColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ))),
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ));
  }
}
