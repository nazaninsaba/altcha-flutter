class AltchaCodeChallenge {
  final String image;
  final int? length;
  final String? audio;

  AltchaCodeChallenge({
    required this.image,
    this.audio,
    this.length,
  });

  factory AltchaCodeChallenge.fromJson(Map<String, dynamic> json) {
    return AltchaCodeChallenge(
      audio: json['audio'] as String?,
      image: json['image'] as String,
      length: json['length'] as int?,
    );
  }
}
