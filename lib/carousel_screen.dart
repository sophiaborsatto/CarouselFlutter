import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZal1dLQhBXFMZZeEYeiv2p9-APiLi9-6x5g&s',
  'https://scontent.frao1-1.fna.fbcdn.net/v/t51.75761-15/473692339_18475138540030716_5986251113822117359_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=127cfc&_nc_ohc=1PJAo_CI8f8Q7kNvwFUCIhG&_nc_oc=AdrImn1l1IFdoG_7MYJHepzgo1MH-pYwklt4V7pwwy6P8wRhGL9oBOSknPFETnhnfHA&_nc_zt=23&_nc_ht=scontent.frao1-1.fna&_nc_gid=HpXMu3PCYUGu78f-S7XIBw&_nc_ss=7a289&oh=00_Af5tN856Xb33e32ZbMX9mfUKIBzyfOLSIFgMdfcDAQCtcA&oe=6A1432A2',
  'https://www3.maringa.pr.gov.br/sistema/imagens/gd_02ce1d08ce3a.jpg',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
];

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({super.key});

  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  final List<Widget> imageSliders = imgList
      .map(
        (item) => Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Image.network(item, fit: BoxFit.cover, width: 1000.0),
          ),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Complicated image slider demo')),
      body: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: imageSliders,
        ),
      ),
    );
  }
}
