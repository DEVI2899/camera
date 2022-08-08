import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://stage-video.aigoeye.se/16/video/mjpeg/ba998a2b-7ef3-4980-af9d-2bf95446403d');

void main() => runApp(
  const MaterialApp(
    home: Material(
      child: Center(
        child: ElevatedButton(
          onPressed: _launchUrl,
          child: Text('Live Video'),
        ),
      ),
    ),
  ),
);

void _launchUrl() async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}