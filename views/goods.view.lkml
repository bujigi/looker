view: goods {
  # # You can specify the table name if it's different from the view name:
   sql_table_name: gurufit_to_looker.es_goods ;;
  #
  label: "Goods"
  # # dimension 정의
  dimension: goodsNo {
    hidden: yes
    primary_key: yes
    label: "상품번호"
    type: number
    sql: ${TABLE}.goodsNo ;;
  }

  dimension: goodsNm {
    label: "Goods Name"
    type: string
    sql: ${TABLE}.goodsNm ;;
  }

  dimension: goodsSellFl {
    label: "상품판매여부"
    type: yesno
    sql: ${TABLE}.goodsSellFl ;;
  }

  dimension: hitCnt {
    hidden: yes
    label: "조회 수"
    type: number
    sql: ${TABLE}.hitCnt ;;
  }

  dimension: cartCnt {
    hidden: yes
    label: "장바구니 수"
    type: number
    sql: ${TABLE}.cartCnt ;;
  }

  dimension: wishCnt {
    hidden: yes
    label: "관심상품 수"
    type: number
    sql: ${TABLE}.wishCnt ;;
  }

  dimension: reviewCnt {
    hidden: yes
    label: "리뷰 수"
    type: number
    sql: ${TABLE}.reviewCnt ;;
  }

  dimension: brand_cd {
    hidden: yes
    label: "브랜드 코드"
    type: string
    sql: ${TABLE}.brandcd ;;
  }

  dimension: brandcate_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.brandcateCd ;;
  }

  dimension: lesmore_dc_rate {
    hidden: yes
    type: number
    sql: ${TABLE}.lesmoreDcRate ;;
  }

  dimension: purchase_no {
    hidden: yes
    type: number
    sql: ${TABLE}.purchaseNo ;;
  }

  measure: hitCntSum {
    label: "조회 수"
    type: sum
    sql: ${hitCnt}  ;;
  }

  measure: cartCntSum {
    label: "장바구니 수"
    type: sum
    sql: ${cartCnt}  ;;
  }

  measure: wishCntSum {
    label: "관심상품 수"
    type: sum
    sql: ${wishCnt}  ;;
  }

  measure: reviewCntSum {
    label: "리뷰 수"
    type: sum
    sql: ${reviewCnt}  ;;
  }


  measure: goods_count {
    label : "상품개수"
    type: count
    # drill_fields: []
  }

  ## liquid parameter 적용 ####################################
  parameter: field_to_select {
    label: "상품 관련 수"
    type: unquoted
    allowed_value: {
      value: "hitCntSum"
      label: "조회 수"
    }
    allowed_value: {
      value: "cartCntSum"
      label: "장바구니 수"
    }
    allowed_value: {
      value: "wishCntSum"
      label: "관심상품 수"
    }
    allowed_value: {
      value: "reviewCntSum"
      label: "리뷰 수"
    }
  }

  dimension: goods_select_count {
    label: "상품 관련 수"
    type: number
    sql: ${TABLE}.{% parameter field_to_select %} ;;
    label_from_parameter: field_to_select
  }
 ##########################################################
}
