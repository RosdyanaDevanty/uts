import 'package:flutter/material.dart';

class Bts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Artikel Bangtan Sonyeondan (방탄소년단)'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          actions: <Widget>[],
        ),
        body: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50),
            child: Image.network(
              'https://assets.pikiran-rakyat.com/crop/67x1105:1007x1803/x/photo/2020/11/12/419857355.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Text(
              'Nama grup, BTS, merupakan singkatan dari ekspresi Korea Bangtan Sonyeondan (Hangul: 방탄소년단; Hanja: 防彈少年團), secara harfiah berarti "Bulletproof Boy Scouts". Nama itu dikonseptualisasikan dengan pemikiran bahwa BTS akan memblokir stereotip, kritik, dan harapan yang menargetkan remaja seperti peluru dan melindungi nilai-nilai dan cita-cita remaja saat ini. Di Jepang, mereka dikenal sebagai Bōdan Shōnendan (防弾少年団), yang diterjemahkan sama.  Pada bulan Juli 2017, BTS menambahkan sebagai tambahan dari Bangtan Sonyeondan atau Bulletproof Boy Scouts, nama ini juga merupakan singkatan dari "Beyond the Scene" sebagai bagian dari identitas baru mereka. Tambahan nama mereka berarti "BTS merupakan orang muda yang tumbuh yang melampaui realitas yang mereka hadapi, dan maju." ',
              style: TextStyle(fontSize: 22, color: Colors.white)),
        ]));
  }
}
