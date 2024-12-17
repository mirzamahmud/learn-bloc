class ApiResponseModel {
  Object? data;
  int? totalCount;
  bool isSuccessful;
  int? statusCode;
  String? successMsg;
  String? errorMsg;

  ApiResponseModel({
    this.data,
    this.totalCount,
    required this.isSuccessful,
    this.statusCode,
    this.successMsg,
    this.errorMsg
  });

  @override
  String toString() {
    return 'ApiResponseModel(data: $data, totalCount: $totalCount, isSuccessful: $isSuccessful, statusCode: $statusCode, successMessage: $successMsg, errorMessage: $errorMsg)';
  }
}