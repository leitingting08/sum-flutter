final String hostAddress = 'http://localhost:3000';

class Api {
  loginApi() {
    // return
  }
  static hotSearchApi(){
    return '$hostAddress/search/hot/detail';
  }
  static searchApi(){ // 关键词搜索
    return '$hostAddress/search';
  }
   static multimatchApi(){ // 多重匹配
    return '$hostAddress/search/multimatch';
  }
  static searchSuggestApi(){
    return '$hostAddress/search/suggest';
  }
}
