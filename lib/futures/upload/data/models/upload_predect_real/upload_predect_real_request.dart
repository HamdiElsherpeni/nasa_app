import 'dart:convert';
class PredictionRealRequest {
  final String kepoiName;
  final int koiCount;
  final double koiDiccoMsky;
  final double koiDiccoMskyErr;
  final double koiMaxMultEv;
  final double koiModelSnr;
  final double koiPrad;
  final double koiPradErr1;
  final double koiScore;
  final double koiSmetErr2;

  PredictionRealRequest({
    required this.kepoiName,
    required this.koiCount,
    required this.koiDiccoMsky,
    required this.koiDiccoMskyErr,
    required this.koiMaxMultEv,
    required this.koiModelSnr,
    required this.koiPrad,
    required this.koiPradErr1,
    required this.koiScore,
    required this.koiSmetErr2,
  });

  /// fromJson
  factory PredictionRealRequest.fromJson(Map<String, dynamic> json) {
    return PredictionRealRequest(
      kepoiName: json["kepoi_name"] ?? "",
      koiCount: json["koi_count"] ?? 0,
      koiDiccoMsky: (json["koi_dicco_msky"] as num?)?.toDouble() ?? 0.0,
      koiDiccoMskyErr: (json["koi_dicco_msky_err"] as num?)?.toDouble() ?? 0.0,
      koiMaxMultEv: (json["koi_max_mult_ev"] as num?)?.toDouble() ?? 0.0,
      koiModelSnr: (json["koi_model_snr"] as num?)?.toDouble() ?? 0.0,
      koiPrad: (json["koi_prad"] as num?)?.toDouble() ?? 0.0,
      koiPradErr1: (json["koi_prad_err1"] as num?)?.toDouble() ?? 0.0,
      koiScore: (json["koi_score"] as num?)?.toDouble() ?? 0.0,
      koiSmetErr2: (json["koi_smet_err2"] as num?)?.toDouble() ?? 0.0,
    );
  }

  /// toJson
  Map<String, dynamic> toJson() {
    return {
      "kepoi_name": kepoiName,
      "koi_count": koiCount,
      "koi_dicco_msky": koiDiccoMsky,
      "koi_dicco_msky_err": koiDiccoMskyErr,
      "koi_max_mult_ev": koiMaxMultEv,
      "koi_model_snr": koiModelSnr,
      "koi_prad": koiPrad,
      "koi_prad_err1": koiPradErr1,
      "koi_score": koiScore,
      "koi_smet_err2": koiSmetErr2,
    };
  }

  /// Raw Json Helpers
  factory PredictionRealRequest.fromRawJson(String str) =>
      PredictionRealRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());
}
  


