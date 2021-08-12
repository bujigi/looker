view: goodsLinkCategory {
  # # You can specify the table name if it's different from the view name:
   sql_table_name: gurufit_to_looker.es_goodsLinkCategory ;;
  #

  # # dimension 정의
  dimension: sno {
    hidden: yes
    primary_key: yes
    label: "일련번호"
    type: number
    sql: ${TABLE}.sno ;;
  }

  dimension: cateCd {
    hidden: yes
    label: "카테고리 코드"
    type: string
    sql: ${TABLE}.cateCd ;;
  }

  dimension: goodsNo {
    hidden: yes
    label: "상품번호"
    type: string
    sql: ${TABLE}.goodsNo ;;
  }

}
