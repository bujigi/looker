view: order {
  # # You can specify the table name if it's different from the view name:
   sql_table_name: gurufit_to_looker.es_order ;;
  #
  label: "Order"
  # # dimension 정의
  dimension: orderNo {
    hidden: yes
    primary_key: yes
    label: "주문번호"
    type: string
    sql: ${TABLE}.orderNo ;;
  }

  dimension: eventCouponFl {
    hidden: yes
    label: "구매 쿠폰 지급여부"
    type: yesno
    sql: ${TABLE}.eventCouponFl ;;
  }

  dimension: firstCouponFl {
    hidden: yes
    label: "첫구매 쿠폰 지급 여부"
    type: yesno
    sql: ${TABLE}.firstCouponFl ;;
  }

  dimension: firstSaleFl {
    label: "첫 구매 여부"
    type: yesno
    sql: ${TABLE}.firstSaleFl ;;
  }

  dimension: memNo {
    hidden: yes
    label: "회원 번호"
    type: number
    sql: ${TABLE}.memNo ;;
  }

  dimension: modDt {
    hidden: yes
    label: "수정일"
    type: date
    sql: ${TABLE}.modDt ;;
  }

  dimension: multiShippingFl {
    hidden: yes
    label: "복수배송지 사용여부"
    type: yesno
    sql: ${TABLE}.multiShippingFl ;;
  }

  dimension: orderChannelFl {
    label: "주문채널"
    type: string
    sql: ${TABLE}.orderChannelFl ;;
  }

  dimension: orderEmail {
    hidden: yes
    label: "비회원 이메일"
    type: string
    sql: ${TABLE}.orderEmail ;;
  }

  dimension: orderGoodsCnt {
    hidden: yes
    label: "주문 상품 갯수"
    type: number
    sql: ${TABLE}.orderGoodsCnt ;;
  }

  dimension: orderGoodsNm {
    label: "주문 상품명"
    type: string
    sql: ${TABLE}.orderGoodsNm ;;
  }

  dimension: orderGoodsNmStandard {
    hidden: yes
    label: "주문 상품명(기준월)"
    type: string
    sql: ${TABLE}.orderGoodsNmStandard ;;
  }

  dimension: orderIp {
    hidden: yes
    label: "주문자 IP"
    type: string
    sql: ${TABLE}.orderIp ;;
  }

  dimension: orderStatus {
    hidden: yes
    label: "주문상태"
    type: string
    sql: ${TABLE}.orderStatus ;;
  }

  dimension: orderTypeFl {
    label: "주문 유형"
    description: "모바일,PC,수기"
    type: string
    sql: ${TABLE}.orderTypeFl ;;
  }

  dimension_group: paymentDt {
    hidden: yes
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

  dimension: receiptFl {
    label: "영수증 신청여부"
    type: yesno
    sql: ${TABLE}.receiptFl ;;
  }

  dimension: regDt {
    hidden: yes
    label: "등록일"
    type: date
    sql: ${TABLE}.regDt ;;
  }

  dimension: sendMailSmsFl {
    hidden: yes
    label: "메일/SMS 전송 여부"
    type: yesno
    sql: ${TABLE}.sendMailSmsFl ;;
  }

  dimension: settleKind {
    hidden: yes
    label: "지불방법"
    type: string
    sql: ${TABLE}.settleKind ;;
  }

  dimension: settleKindNm {
    label: "지불방법"
    type: string
    sql: CASE
            WHEN ${settleKind} = 'eb' THEN '에스크로 계좌이체'
            WHEN ${settleKind} = 'ec' THEN '에스크로 신용카드'
            WHEN ${settleKind} = 'ev' THEN '에스크로 가상계좌'
            WHEN ${settleKind} = 'fa' THEN '간편결제 무통장입금'
            WHEN ${settleKind} = 'fb' THEN '간편결제 계좌이체'
            WHEN ${settleKind} = 'fc' THEN '간편결제 신용카드'
            WHEN ${settleKind} = 'fh' THEN '간편결제 휴대폰'
            WHEN ${settleKind} = 'fp' THEN '간편결제 포인트'
            WHEN ${settleKind} = 'fv' THEN '간편결제 가상계좌'
            WHEN ${settleKind} = 'gb' THEN '무통장 입금'
            WHEN ${settleKind} = 'gm' THEN '마일리지'
            WHEN ${settleKind} = 'gz' THEN '전액할인'
            WHEN ${settleKind} = 'pb' THEN '계좌이체'
            WHEN ${settleKind} = 'pc' THEN '신용카드'
            WHEN ${settleKind} = 'pg' THEN '예치금'
            WHEN ${settleKind} = 'ph' THEN '휴대폰'
            WHEN ${settleKind} = 'pv' THEN '가상계좌'
            ELSE '기타'
         END;;
  }

  dimension: userConsultMemo {
    hidden: yes
    label: "고객상담메모"
    description: "관리자용메모"
    type: string
    sql: ${TABLE}.userConsultMemo ;;
  }

  dimension: userRequestMemo {
    hidden: yes
    label: "고객요청메모"
    description: "관리자용메모"
    type: string
    sql: ${TABLE}.userRequestMemo ;;
  }

  measure: order_count {
    label : "상품갯수"
    type: sum
    sql:${orderGoodsCnt};;
    drill_fields: [orderSet*]
 }

  measure: count {
    label : "건수"
    type: count
    drill_fields: [orderSet*]
  }
 ## set 설정 주문번호, 상품명, 상품수
 set: orderSet {
   fields: [orderNo,orderGoodsNm,orderGoodsCnt]
 }
 ################################################
}
