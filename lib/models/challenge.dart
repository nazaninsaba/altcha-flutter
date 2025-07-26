import 'code_challenge.dart';

class AltchaChallenge {
  final String algorithm;
  final AltchaCodeChallenge? codeChallenge;
  final String challenge;
  final String salt;
  final String signature;
  final int? maxNumber;

  AltchaChallenge({
    required this.algorithm,
    required this.codeChallenge,
    required this.challenge,
    required this.salt,
    required this.signature,
    required this.maxNumber,
  });

  factory AltchaChallenge.fromJson(Map<String, dynamic> json) {
    return AltchaChallenge(
      algorithm: json['algorithm'] as String,
      codeChallenge: json['codeChallenge'] != null
          ? AltchaCodeChallenge.fromJson(json['codeChallenge'])
          : null,
      challenge: json['challenge'] as String,
      salt: json['salt'] as String,
      signature: json['signature'] as String,
      maxNumber: json['maxNumber'] is int
          ? json['maxNumber']
          : int.tryParse(json['maxNumber'].toString()),
    );
  }
}
