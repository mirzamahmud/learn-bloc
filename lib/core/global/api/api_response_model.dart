class ApiResponseModel {
  final Object? responseData;
  final int? totalCount;
  final bool? isSuccessful;
  final int? statusCode;
  final String? successMsg;
  final String? errorMsg;

  ApiResponseModel({
    this.responseData,
    this.totalCount,
    this.isSuccessful,
    this.statusCode,
    this.successMsg,
    this.errorMsg,
  });

  @override
  String toString() {
    return 'ApiResponseModel(responseData: $responseData, totalCount: $totalCount, isSuccessful: $isSuccessful, statusCode: $statusCode, successMsg: $successMsg, errorMsg: $errorMsg)';
  }
}
