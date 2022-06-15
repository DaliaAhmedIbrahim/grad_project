import 'package:flutter/material.dart';

class WorkSpaceModel{
  final int? id;
  final String? name;
  final String? image;
  final double? rate;
  final String? distance;
  final String? cost;
  final String? location;


  WorkSpaceModel({
    required this.id,
    this.rate,
    this.cost,
    this.distance,
    required this.name,
    required this.image,
    required this.location,
});
}