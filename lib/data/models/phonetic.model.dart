import 'dart:convert';

import 'license.model.dart';

class Phonetic {
  final String text;
  final String audio;
  final String? sourceUrl;
  final License? license;

  Phonetic({
    required this.text,
    required this.audio,
    this.sourceUrl,
    this.license,
  });

  factory Phonetic.fromRawJson(String str) =>
      Phonetic.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Phonetic.fromJson(Map<String, dynamic> json) => Phonetic(
        text: json["text"],
        audio: json["audio"],
        sourceUrl: json["sourceUrl"],
        license:
            json["license"] == null ? null : License.fromJson(json["license"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "audio": audio,
        "sourceUrl": sourceUrl,
        "license": license?.toJson(),
      };
}
