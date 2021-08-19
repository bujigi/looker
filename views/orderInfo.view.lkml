view: orderinfo {
  # # You can specify the table name if it's different from the view name:
   sql_table_name:gurufit_to_looker.es_orderInfo ;;
  #
  label: "Order Info"
  # # dimension 정의
  dimension: sno {
    hidden: yes
    primary_key: yes
    label: "일련번호"
    type: number
    sql: ${TABLE}.sno ;;
  }

  dimension: orderNo {
    hidden: yes
    label: "주문번호"
    type: string
    sql: ${TABLE}.orderNo ;;
  }

  dimension: orderMemo {
    hidden: yes
    label: "주문시 남기는 글"
    type: string
    sql: ${TABLE}.orderMemo ;;
  }

  dimension: packetCode {
    hidden: yes
    label: "묶음배송코드"
    type: string
    sql: ${TABLE}.packetCode ;;
  }

  dimension: orderCellPhone {
    hidden: yes
    label: "주문자 핸드폰 번호"
    type: string
    sql: ${TABLE}.orderCellPhone ;;
  }

  dimension: orderEmail {
    hidden: yes
    label: "주문자 e-mail"
    type: string
    sql: ${TABLE}.orderEmail ;;
  }

  dimension: orderName {
    label: "주문자 이름"
    type: string
    sql: ${TABLE}.orderName ;;
  }

  dimension: orderPhone {
    hidden: yes
    label: "주문자 전화번호"
    type: string
    sql: ${TABLE}.orderPhone ;;
  }

  dimension: orderAddress {
    hidden: yes
    label: "주문자 주소"
    type: string
    sql: ${TABLE}.orderAddress ;;
  }

  dimension: orderAddressSub {
    hidden: yes
    label: "주문자 상세주소"
    type: string
    sql: ${TABLE}.orderAddressSub ;;
  }

  dimension: orderCity {
    hidden: yes
    label: "주문자 도시"
    type: string
    sql: ${TABLE}.orderCity ;;
  }

  dimension: orderZipcode {
    hidden: yes
    label: "주문자 우편번호"
    type: string
    sql: ${TABLE}.orderZipcode ;;
  }

  dimension: orderZonecode {
    hidden: yes
    label: "주문자 우편번호(10자리)"
    type: string
    sql: ${TABLE}.orderZonecode ;;
  }

  dimension: orderState {
    hidden: yes
    label: "주문자 주/지방/지역"
    type: string
    sql: ${TABLE}.orderState ;;
  }

  dimension: receiverUseSafeNumberFl {
    hidden: yes
    label: "수취인 안심번호 사용여부"
    description: "n:미사용, y:사용, w:발급대기, c:사용해지"
    type: string
    sql: ${TABLE}.receiverUseSafeNumberFl ;;
  }

  dimension: receiverCellPhone {
    hidden: yes
    label: "수취인 핸드폰 번호"
    type: string
    sql: ${TABLE}.receiverCellPhone ;;
  }

  dimension: receiverName {
    hidden: yes
    label: "수취인 이름"
    type: string
    sql: ${TABLE}.receiverName ;;
  }

  dimension: receiverPhone {
    hidden: yes
    label: "수취인 전화번호"
    type: string
    sql: ${TABLE}.receiverPhone ;;
  }

  dimension: receiverSafeNumber {
    hidden: yes
    label: "수취인 안심번호"
    type: string
    sql: ${TABLE}.receiverSafeNumber ;;
  }

  dimension: receiverAddress {
    hidden: yes
    label: "수취인 주소"
    type: string
    sql: ${TABLE}.receiverAddress ;;
  }

  dimension: receiverAddressSub {
    hidden: yes
    label: "수취인 상세주소"
    type: string
    sql: ${TABLE}.receiverAddressSub ;;
  }

  dimension: receiverZipcode {
    hidden: yes
    label: "수취인 우편번호"
    type: string
    sql: ${TABLE}.receiverZipcode ;;
  }

  dimension: receiverZonecode {
    hidden: yes
    label: "수취인 우편번호(10자리)"
    type: string
    sql: ${TABLE}.receiverZonecode ;;
  }

  dimension: receiverCity {
    hidden: yes
    label: "수취인 도시"
    type: string
    sql: ${TABLE}.receiverCity ;;
  }

  dimension: receiverState {
    hidden: yes
    label: "수취인 주/지방/지역"
    type: string
    sql: ${TABLE}.receiverState ;;
  }

  dimension: modDt {
    hidden: yes
    label: "수정일"
    type: date
    sql: ${TABLE}.modDt ;;
  }

  dimension: receiverSafeNumberDt {
    hidden: yes
    label: "수취인 안심번호 발급일자"
    type: date
    sql: ${TABLE}.receiverSafeNumberDt ;;
  }

  dimension: regDt {
    hidden: yes
    label: "등록일"
    type: date
    sql: ${TABLE}.regDt ;;
  }

  measure: count {
    label: "주문횟수"
    type: count
  }

}
