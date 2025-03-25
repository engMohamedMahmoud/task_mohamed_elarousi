extension ListExtension on List {
  String toParameters(String key) {
    String params = '';
    for(int i=0; i< length; i++){
      params += '$key[$i]=${this[i]}&';
    }
    params.substring(0, params.length - 1);
    return params;
  }
}