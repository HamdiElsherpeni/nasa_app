
import 'dart:convert';

class PredictionRealResponse {
  final int prediction;       // 0 or 1 (هل كوكب ولا لا)
  final double probability;   // نسبة الاحتمال
  final String message;       // رسالة من السيرفر

  PredictionRealResponse({
    required this.prediction,
    required this.probability,
    required this.message,
  });

  factory PredictionRealResponse.fromJson(Map<String, dynamic> json) {
    return PredictionRealResponse(
      prediction: json['prediction'] ?? 0,
      probability: (json['probability'] as num?)?.toDouble() ?? 0.0,
      message: json['message'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "prediction": prediction,
      "probability": probability,
      "message": message,
    };
  }

  /// Helpers for raw json
  factory PredictionRealResponse.fromRawJson(String str) =>
      PredictionRealResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());
}
  
