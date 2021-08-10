view: goods {
  # # You can specify the table name if it's different from the view name:
   sql_table_name: gurufit_to_looker.es_goods ;;
  #
  # # dimension 정의
  dimension: goodsNo {
    hidden: yes
    primary_key: yes
    label: "상품번호"
    type: number
    sql: ${TABLE}.goodsNo ;;
  }

  dimension: goodsNm {
    label: "상품명"
    type: string
    sql: ${TABLE}.goodsNm ;;
  }

  dimension: goodsSellFl {
    label: "상품판매여부"
    type: yesno
    sql: ${TABLE}.goodsSellFl ;;
  }

  dimension: hitCnt {
    label: "조회 수"
    type: number
    sql: ${TABLE}.hitCnt ;;
  }

  dimension: cartCnt {
    label: "장바구니 수"
    type: number
    sql: ${TABLE}.cartCnt ;;
  }

  dimension: wishCnt {
    label: "관심상품 수"
    type: number
    sql: ${TABLE}.wishCnt ;;
  }

  dimension: reviewCnt {
    label: "리뷰 수"
    type: number
    sql: ${TABLE}.reviewCnt ;;
  }

  dimension: brand_cd {
    hidden: yes
    primary_key: yes
    label: "브랜드 코드"
    type: string
    sql: ${TABLE}.brand_cd ;;
  }

}
