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

  dimension: cate_nm {
    label: "Cate Nm"
    type: string
    sql: CASE WHEN ${TABLE}.catenm IS NULL THEN '기타' ELSE ${TABLE}.catenm END  ;;
    link: {
      label: "Google"
      url: "http://www.google.com/search?q={{ value }}"
      icon_url: "http://google.com/favicon.ico"
    }
  }

  measure: count {
    label : "개수"
    type :  count
  }




}
