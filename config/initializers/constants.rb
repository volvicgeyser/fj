module Constants
  #PREF_LIST = [ ["東京", "tokyo"], ["大阪", "osaka"],
  #]
  PREF_LIST = JpPrefecture::Prefecture.all.map { |f| [f.name, f.name_e] }
  CATEGORY_LIST = ["営業", "企画", "事務", "販売", "金融", "公務員", "SE・エンジニ
ア", "機械・電気", "工場", "医療専門", "デザイン"]
  TERM_LIST = ["長期", "短期"]
  EMP_PATTERN_LIST = ["人材派遣", "紹介予定派遣", "両方"]  
end
