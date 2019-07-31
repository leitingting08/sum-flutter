final String hostAddress = 'http://localhost:3000';

class Api {
  loginApi() {
    // return
  }
  static hotSearchApi(){
    return '$hostAddress/search/hot/detail';
  }
  static searchApi(){
    return '$hostAddress/search';
  }
}
