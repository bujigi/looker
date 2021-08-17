view: orderGoods {
  # # You can specify the table name if it's different from the view name:
   sql_table_name: gurufit_to_looker.es_orderGoods ;;
  #
  label: "Order Goods"
  ## dimension 정의
  dimension: sno {
    hidden: yes
    primary_key: yes
    label: "일련번호"
    type: number
    sql: ${TABLE}.sno ;;
  }

  dimension: orderNo {
    label: "주문번호"
    type: string
    sql: ${TABLE}.orderNo ;;
  }

  dimension: orderStatus {
    label: "주문 상태"
    type: string
    sql: ${TABLE}.orderStatus ;;
  }

  dimension: orderCd {
    label: "주문 코드(순서)"
    type: number
    sql: ${TABLE}.orderCd ;;
  }

  dimension: goodsCnt {
    label: "상품 수량"
    type: number
    sql: ${TABLE}.goodsCnt ;;
  }

  dimension: brandCd {
    label: "브랜드 코드"
    type: string
    sql: ${TABLE}.brandCd ;;
  }

  dimension: cateCd {
    label: "카테고리 코드"
    type: string
    sql: ${TABLE}.cateCd ;;
  }

  dimension: goodsCd {
    label: "상품 코드"
    type: string
    sql: ${TABLE}.goodsCd ;;
  }

  dimension: goodsModelNo {
    label: "모델명"
    type: string
    sql: ${TABLE}.goodsModelNo ;;
  }

  dimension: goodsNm {
    label: "상품명"
    type: string
    sql: ${TABLE}.goodsNm ;;
  }

  dimension: timeSaleFl {
    label: "타임세일여부"
    type: yesno
    sql: ${TABLE}.timeSaleFl ;;
  }

  dimension: goodsNmStandard {
    label: "기준몰 상품명"
    type: string
    sql: ${TABLE}.goodsNmStandard ;;
  }

  dimension: goodsNo {
    label: "상품 번호"
    type: number
    sql: ${TABLE}.goodsNo ;;
  }

  dimension: goodsWeight {
    label: "상품 무게"
    type: number
    sql: ${TABLE}.goodsWeight ;;
  }

  dimension: fixedPrice {
    label: "정가"
    type: number
    sql: ${TABLE}.fixedPrice ;;
  }

  dimension: goodsPrice {
    label: "상품 가격"
    type: number
    sql: ${TABLE}.goodsPrice ;;
  }

  dimension: couponGoodsDcPrice {
    label: "상품쿠폰 할인 금액"
    type: number
    sql: ${TABLE}.couponGoodsDcPrice ;;
  }

  dimension: divisionCouponOrderDcPrice {
    label: "주문할인 금액의 안분된 주문쿠폰"
    type: number
    sql: ${TABLE}.divisionCouponOrderDcPrice ;;
  }

  dimension: divisionUseDeposit {
    label: "주문할인 금액의 안분된 예치금"
    type: number
    sql: ${TABLE}.divisionUseDeposit ;;
  }

  dimension: divisionUseMileage {
    label: "주문할인 금액의 안분된 적립금"
    type: number
    sql: ${TABLE}.divisionUseMileage ;;
  }

  dimension: enuri {
    label: "에누리 할인"
    type: number
    sql: ${TABLE}.enuri ;;
  }

  dimension: goodsDcPrice {
    label: "상품 할인 금액"
    type: number
    sql: ${TABLE}.goodsDcPrice ;;
  }

  dimension: memberDcPrice {
    label: "회원 할인 금액"
    type: number
    sql: ${TABLE}.memberDcPrice ;;
  }

  dimension: couponGoodsMileage {
    label: "상품쿠폰 적립 적립금"
    type: number
    sql: ${TABLE}.couponGoodsMileage ;;
  }

  dimension: divisionCouponOrderMileage {
    label: "주문금액의 안분된 적립금"
    type: number
    sql: ${TABLE}.divisionCouponOrderMileage ;;
  }

  dimension: goodsMileage {
    label: "상품 적립금"
    type: number
    sql: ${TABLE}.goodsMileage ;;
  }

  dimension: memberMileage {
    label: "회원 적립금"
    type: number
    sql: ${TABLE}.memberMileage ;;
  }

  dimension: plusMileageFl {
    label: "적립금 지급 여부"
    type: yesno
    sql: ${TABLE}.plusMileageFl ;;
  }

  dimension: handleSno {
    label: "환불/반품/교환 처리 번호"
    type: number
    sql: ${TABLE}.handleSno ;;
  }

  dimension_group: cancelDt {
    label: "취소완료일자"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cancelDt ;;
  }

  dimension_group: deliveryCompleteDt {
    label: "배송완료일자"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.deliveryCompleteDt ;;
  }

  dimension_group: deliveryDt {
    label: "배송일자"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.deliveryDt ;;
  }

  dimension_group: finishDt {
    label: "구매확정일자"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.finishDt ;;
  }

  dimension: regDt {
    hidden: yes
    label: "등록일"
    type: date
    sql: ${TABLE}.regDt ;;
  }

  dimension: modDt {
    hidden: yes
    label: "수정일"
    type: date
    sql: ${TABLE}.modDt ;;
  }

  dimension_group: paymentDt {
    label: "입금일자"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.paymentDt ;;
  }

  dimension: saleAmt {
    label: "매출"
    type: number
    sql: ${goodsPrice} ;;
  }

  dimension: netSales {
    label: "순매출"
    type: number
    sql: ${goodsPrice} - IFNULL(${couponGoodsDcPrice},0) - IFNULL(${enuri},0) - IFNULL(${goodsDcPrice},0) - IFNULL(${memberDcPrice},0) ;;
  }

  measure: sales_sum {
    label: "매출합계"
    type:  sum
    sql: ${saleAmt} ;;
    value_format :  "#,##0"
  }

  measure: netSales_sum {
    label: "순매출합계"
    type:  sum
    sql: ${netSales} ;;
    value_format :  "#,##0"
  }

  measure: orderGoods_count {
    label : "상품주문개수"
    type: count
    # drill_fields: []
  }
}
