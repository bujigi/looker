view: categorybrand {
  # # You can specify the table name if it's different from the view name:
   sql_table_name:gurufit_to_looker.es_catagoryBrand ;;
  #
  # # dimension 정의
  dimension: cate_cd {
    hidden: yes
    primary_key: yes
    label: "카테고리 코드"
    type: string
    sql: ${TABLE}.cate_cd ;;
  }

  dimension: cate_nm {
    label: "카테고리 명"
    type: string
    sql: ${TABLE}.cate_nm ;;
  }
}
