view: order {
  # # You can specify the table name if it's different from the view name:
   sql_table_name: gurufit_to_looker.es_order ;;
  #
  # # dimension 정의
  dimension: orderNo {
    hidden: yes
    primary_key: yes
    label: "주문번호"
    type: string
    sql: ${TABLE}.orderNo ;;
  }

  dimension: eventCouponFl {
    label: "구매 쿠폰 지급여부"
    type: yesno
    sql: ${TABLE}.eventCouponFl ;;
  }

  dimension: firstCouponFl {
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
    label: "회원 번호"
    type: number
    sql: ${TABLE}.memNo ;;
  }

  dimension: modDt {
    label: "수정일"
    type: date
    sql: ${TABLE}.modDt ;;
  }

  dimension: multiShippingFl {
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
    label: "비회원 이메일"
    type: string
    sql: ${TABLE}.orderEmail ;;
  }

  dimension: orderGoodsCnt {
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
    label: "주문 상품명(기준월)"
    type: string
    sql: ${TABLE}.orderGoodsNmStandard ;;
  }

  dimension: orderIp {
    label: "주문자 IP"
    type: string
    sql: ${TABLE}.orderIp ;;
  }

  dimension: orderStatus {
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

  dimension: paymentDt {
    label: "입금일자"
    type: date
    sql: ${TABLE}.paymentDt ;;
  }

  dimension: receiptFl {
    label: "영수증 신청여부"
    type: yesno
    sql: ${TABLE}.receiptFl ;;
  }

  dimension: regDt {
    label: "등록일"
    type: date
    sql: ${TABLE}.regDt ;;
  }

  dimension: sendMailSmsFl {
    label: "메일/SMS 전송 여부"
    type: yesno
    sql: ${TABLE}.sendMailSmsFl ;;
  }

  dimension: settleKind {
    label: "주문방법"
    type: string
    sql: ${TABLE}.settleKind ;;
  }

  dimension: userConsultMemo {
    label: "고객상담메모"
    description: "관리자용메모"
    type: string
    sql: ${TABLE}.userConsultMemo ;;
  }

  dimension: userRequestMemo {
    label: "고객요청메모"
    description: "관리자용메모"
    type: string
    sql: ${TABLE}.userRequestMemo ;;
  }

}
