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
    sql: ${TABLE}.catenm ;;
  }

  measure: count {
    label : "개수"
    type :  count

  }

}
