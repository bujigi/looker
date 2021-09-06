view: categoryBrand {
  # # You can specify the table name if it's different from the view name:
   sql_table_name:gurufit_to_looker.es_categoryBrand ;;
  #
  label: "Category Brand"
  # # dimension 정의
  dimension: cate_cd {
    hidden: yes
    primary_key: yes
    label: "카테고리 코드"
    type: string
    sql: ${TABLE}.catecd ;;
  }

  # 브랜드 URL이 테이블에 존재하지 않아 몇개 브랜드만 사이트 URL 정의 하여 브랜드명 클릭시 해당 사이트로 이동
  dimension: cate_url {
    hidden: yes
    description: "나이키, 아디다스, 리복, 뉴발란스,푸마 사이트 주소정의"
    type: string
    sql:CASE WHEN ${cate_nm} IN ("나이키","나이키 키즈") THEN 'http://www.nike.com'
             WHEN ${cate_nm} IN ("뉴발란스") THEN 'http://www.newbalance.com'
             WHEN ${cate_nm} IN ("푸마","푸마 키즈") THEN 'http://www.puma.com'
             WHEN ${cate_nm} IN ("리복","리복 키즈","리복+") THEN 'http://www.reebok.com'
             WHEN ${cate_nm} IN ("아디다스","아디다스 키즈","아이다스+") THEN 'http://www.adidas.com'
             ELSE "http://www.google.com/search?q={{ categoryBrand.cate_nm._value }}"
             END;;
  }
  dimension: cate_nm {
    label: "Cate Nm"
    type: string
    sql: CASE WHEN ${TABLE}.catenm IS NULL THEN '기타' ELSE ${TABLE}.catenm END  ;;
    link: {
      label: "{{value}}"
      url: "{{categoryBrand.cate_url._value}}"#"http://www.google.com/search?q={{ value }}"
      icon_url: "https://www.google.com/s2/favicons?domain={{categoryBrand.cate_url._value}} "
    }
  }

  measure: count {
    label : "개수"
    type :  count
  }




}
