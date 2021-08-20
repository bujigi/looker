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
    hidden: yes
    label: "주문 상태"
    type: string
    sql: ${TABLE}.orderStatus ;;
  }

  dimension: orderCd {
    hidden: yes
    label: "주문 코드(순서)"
    type: number
    sql: ${TABLE}.orderCd ;;
  }

  dimension: goodsCnt {
    hidden: yes
    label: "상품 수량"
    type: number
    sql: ${TABLE}.goodsCnt ;;
  }

  dimension: brandCd {
    hidden: yes
    label: "브랜드 코드"
    type: string
    sql: ${TABLE}.brandCd ;;
  }

  dimension: cateCd {
    hidden: yes
    label: "카테고리 코드"
    type: string
    sql: ${TABLE}.cateCd ;;
  }

  dimension: cateNm {
    label: "판매카테고리"
    type: string
    sql: CASE
             WHEN ${cateCd} = '010' THEN 'SALE'
             WHEN ${cateCd} = '043' THEN '회원권'
             WHEN ${cateCd} = '044' THEN '플러스존 상품'
         ELSE '기타'
         END;;
  }

  dimension: goodsCd {
    hidden: yes
    label: "상품 코드"
    type: string
    sql: ${TABLE}.goodsCd ;;
  }

  dimension: goodsModelNo {
    hidden: yes
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
    hidden: yes
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
    hidden: yes
    label: "상품 번호"
    type: number
    sql: ${TABLE}.goodsNo ;;
  }

  dimension: goodsWeight {
    hidden: yes
    label: "상품 무게"
    type: number
    sql: ${TABLE}.goodsWeight ;;
  }

  dimension: fixedPrice {
    hidden: yes
    label: "정가"
    type: number
    sql: ${TABLE}.fixedPrice ;;
  }

  dimension: goodsPrice {
    hidden: yes
    label: "상품 가격"
    type: number
    sql: ${TABLE}.goodsPrice ;;
  }

  dimension: couponGoodsDcPrice {
    hidden: yes
    label: "상품쿠폰 할인 금액"
    type: number
    sql: ${TABLE}.couponGoodsDcPrice ;;
  }

  dimension: divisionCouponOrderDcPrice {
    hidden: yes
    label: "주문할인 금액의 안분된 주문쿠폰"
    type: number
    sql: ${TABLE}.divisionCouponOrderDcPrice ;;
  }

  dimension: divisionUseDeposit {
    hidden: yes
    label: "주문할인 금액의 안분된 예치금"
    type: number
    sql: ${TABLE}.divisionUseDeposit ;;
  }

  dimension: divisionUseMileage {
    hidden: yes
    label: "주문할인 금액의 안분된 적립금"
    type: number
    sql: ${TABLE}.divisionUseMileage ;;
  }

  dimension: enuri {
    hidden: yes
    label: "에누리 할인"
    type: number
    sql: ${TABLE}.enuri ;;
  }

  dimension: goodsDcPrice {
    hidden: yes
    label: "상품 할인 금액"
    type: number
    sql: ${TABLE}.goodsDcPrice ;;
  }

  dimension: memberDcPrice {
    hidden: yes
    label: "회원 할인 금액"
    type: number
    sql: ${TABLE}.memberDcPrice ;;
  }

  dimension: couponGoodsMileage {
    hidden: yes
    label: "상품쿠폰 적립 적립금"
    type: number
    sql: ${TABLE}.couponGoodsMileage ;;
  }

  dimension: divisionCouponOrderMileage {
    hidden: yes
    label: "주문금액의 안분된 적립금"
    type: number
    sql: ${TABLE}.divisionCouponOrderMileage ;;
  }

  dimension: goodsMileage {
    hidden: yes
    label: "상품 적립금"
    type: number
    sql: ${TABLE}.goodsMileage ;;
  }

  dimension: memberMileage {
    hidden: yes
    label: "회원 적립금"
    type: number
    sql: ${TABLE}.memberMileage ;;
  }

  dimension: plusMileageFl {
    hidden: yes
    label: "적립금 지급 여부"
    type: yesno
    sql: ${TABLE}.plusMileageFl ;;
  }

  dimension: handleSno {
    hidden: yes
    label: "환불/반품/교환 처리 번호"
    type: number
    sql: ${TABLE}.handleSno ;;
  }

  dimension_group: cancelDt {
    hidden: yes
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

  dimension: deliveryCompleteDt {
    hidden: yes
    label: "배송완료일자"
    type: date
    sql: ${TABLE}.deliveryCompleteDt ;;
  }

  dimension: deliveryDt {
    hidden: yes
    label: "배송일자"
    type: date
    sql: ${TABLE}.deliveryDt ;;
  }

  dimension_group: finishDt {
    #hidden: yes
    label: "구매일자"
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

  dimension: deliveryDays {
    hidden: yes
    type: number
    label : "배송소요일"
    sql: TIMESTAMPDIFF(DAY, ${deliveryDt},${deliveryCompleteDt} ) ;;
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

  dimension: saleAmt {
    hidden: yes
    label: "매출"
    type: number
    sql: ${goodsPrice} ;;
  }

  # dimension: netSales {
  #   hidden: yes
  #   label: "순매출"
  #   type: number
  #   sql: ${goodsPrice} - IFNULL(${couponGoodsDcPrice},0) - IFNULL(${enuri},0) - IFNULL(${goodsDcPrice},0) - IFNULL(${memberDcPrice},0) ;;
  # }

  dimension: goodsPriceInfo {
    hidden: yes
    label: "금액정보"
    type: number
    sql: ${goodsPrice} - IFNULL(${enuri},0) - IFNULL(${memberDcPrice},0) - IFNULL(${divisionUseMileage},0) - IFNULL(${divisionCouponOrderDcPrice},0) - IFNULL(${couponGoodsDcPrice},0) ;;
  }

  dimension: goodNetSales {
    hidden: yes
    label: "순매출"
    type: number
    sql: CASE WHEN ${orderStatus} in ('p1','g1','d1','d2','s1','b3','b1','b2','b4','r2','r1','z1','z2','z3','z4','z5','e1','e2','e3','e4','e5') and ${orderType} ='일반'
              THEN ${goodsPriceInfo}
         ELSE 0
         END ;;
  }

  # dimension: salePrice {
  #   label: "판매대금"
  #   type:  number
  #   sql: ${goodsPrice} - IFNULL(${divisionCouponOrderDcPrice},0) - IFNULL(${couponGoodsDcPrice},0) ;;
  # }

  dimension: pgCommistion {
    hidden: yes
    label: "PG수수료"
    type:  number
    sql: ${goodsPriceInfo} * 0.028 ;;
    value_format: "##,##0"
  }

  dimension: profitPrice {
    hidden: yes
    label: "이익금"
    type:  number
    sql: ${goodNetSales} - IFNULL(${fee_price},0) - IFNULL(${pgCommistion},0) ;;
    value_format: "##,##0"
  }


  dimension: baseDcPrice {
    hidden: yes
    label: "기본할인금액"
    type:  number
    sql: CASE WHEN ${timeSaleFl} = 'n' THEN ${fixedPrice} - ${goodsPrice} ELSE 0 END ;;
  }

  dimension: timeDcPrice {
    hidden: yes
    label: "타임세일할인금액"
    type:  number
    sql: CASE WHEN ${timeSaleFl} = 'y' THEN ${fixedPrice} - ${goodsPrice} ELSE 0 END ;;
  }

  dimension: dcPrice {
    hidden: yes
    label: "할인금액"
    type:  number
    sql: ${enuri} + ${timeDcPrice} + ${memberDcPrice} + ${divisionCouponOrderMileage} + ${divisionCouponOrderDcPrice} + ${couponGoodsDcPrice} + ${baseDcPrice};;
  }

  dimension: orderType {
    #hidden: yes
    label: "주문정보"
    description: "주문 유형(일반/교환)"
    type: string
    sql: CASE WHEN ${orderStatus}  in ('d1','d2','g1','p1','s1') and ${handleSno} > 0 THEN '교환' else '일반' END ;;
  }

  dimension: fee_price {
    hidden: yes
    label: "판매대금"
    type: number
    sql:
    if((${orderStatus} in ("p1","g1","d1","d2","s1","b3","b1","b2","b4","r2","r1","e1","e2","e3","e4","e5")) and (${orderType}='일반'),
    case
    when ${goods.purchase_no}='100009' and ${goods.brandcate_cd}='GB' and ${dc_price_rate_hidden}<0.2 and ${payment_dt_date} < '2019-09-01'
    then ${fixedPrice}*0.55
    when ${goods.purchase_no}='100009' and ${goods.brandcate_cd}='GB' and ${dc_price_rate_hidden}<0.2 and ${payment_dt_date} >= '2019-09-01'
    then ${fixedPrice}*0.52
    when ${goods.purchase_no}='100009' and ${goods.brandcate_cd}='GB' and ${dc_price_rate_hidden}<0.4 and ${dc_price_rate_hidden}>=0.2 and ${payment_dt_date} < TIMESTAMP('2019-12-31 08:00')
    then ${fixedPrice}*0.5
    when ${goods.purchase_no}='100009' and ${goods.brandcate_cd}='GB' and ${dc_price_rate_hidden}<0.4 and ${dc_price_rate_hidden}>=0.2 and ${payment_dt_date} >= TIMESTAMP('2019-12-31 08:00')
    then ${fixedPrice}*0.47
    when ${goods.purchase_no}='100009' and ${goods.brandcate_cd}='GB' and ${dc_price_rate_hidden}>=0.4 and ${payment_dt_hour} < TIMESTAMP('2019-10-31 08:00')
    then ${fixedPrice}*0.35
    when ${goods.purchase_no}='100009' and ${goods.brandcate_cd}='GB' and ${dc_price_rate_hidden}>=0.4 and ${payment_dt_hour} >= TIMESTAMP('2019-10-31 08:00')
    then ${fixedPrice}*0.25
    when ${goods.purchase_no}='100009' and ${goods.brandcate_cd}='KB' and ${dc_price_rate_hidden}<0.2 and ${payment_dt_date} < '2019-09-01'
    then ${fixedPrice}*0.35
    when ${goods.purchase_no}='100009' and ${goods.brandcate_cd}='KB' and ${dc_price_rate_hidden}<0.2 and ${payment_dt_date} >= '2019-09-01'
    then ${fixedPrice}*0.36
    when ${goods.purchase_no}='100009' and ${goods.brandcate_cd}='KB' and ${dc_price_rate_hidden}<0.4 and ${dc_price_rate_hidden}>=0.2 and ${payment_dt_date} < TIMESTAMP('2019-12-31 08:00')
    then ${fixedPrice}*0.3
    when ${goods.purchase_no}='100009' and ${goods.brandcate_cd}='KB' and ${dc_price_rate_hidden}<0.4 and ${dc_price_rate_hidden}>=0.2 and ${payment_dt_date} >= TIMESTAMP('2019-12-31 08:00')
    then ${fixedPrice}*0.27
    when ${goods.purchase_no}='100009' and ${goods.brandcate_cd}='KB' and ${dc_price_rate_hidden}>=0.4 and ${payment_dt_hour} < TIMESTAMP('2019-10-31 08:00')
    then ${fixedPrice}*0.2
    when ${goods.purchase_no}='100009' and ${goods.brandcate_cd}='KB' and ${dc_price_rate_hidden}>=0.4 and ${payment_dt_hour}>= TIMESTAMP('2019-10-31 08:00')
    then ${fixedPrice}*0.15
    when ${goods.purchase_no} in ('100007','100003') and ${dc_price_rate_hidden}<0.1
    then (${goodsPrice}-${divisionCouponOrderDcPrice}-${couponGoodsDcPrice})*0.7
    when ${goods.purchase_no} in ('100007','100003') and ${dc_price_rate_hidden}>=0.1 and ${dc_price_rate_hidden}<0.2
    then (${goodsPrice}-${divisionCouponOrderDcPrice}-${couponGoodsDcPrice})*0.725
    when ${goods.purchase_no} in ('100007','100003') and ${dc_price_rate_hidden}>=0.2
    then (${goodsPrice}-${divisionCouponOrderDcPrice}-${couponGoodsDcPrice})*0.75
    when ${goods.purchase_no}='100005' and ${dc_price_rate_hidden}<=0.2
    then (${goodsPrice}-${divisionCouponOrderDcPrice}-${couponGoodsDcPrice})*0.7
    when ${goods.purchase_no}='100005' and ${dc_price_rate_hidden}>0.2 and ${dc_price_rate_hidden}<=0.4
    then (${goodsPrice}-${divisionCouponOrderDcPrice}-${couponGoodsDcPrice})*0.72
    when ${goods.purchase_no}='100005' and ${dc_price_rate_hidden}>0.4
    then (${goodsPrice}-${divisionCouponOrderDcPrice}-${couponGoodsDcPrice})*0.75
    when ${goods.purchase_no} in ('100010','100004','100014','100015')
    then (${goodsPrice}-${divisionCouponOrderDcPrice}-${couponGoodsDcPrice})*0.7
    when ${goods.purchase_no}='100006'
    then (${goodsPrice}-${divisionCouponOrderDcPrice}-${couponGoodsDcPrice})*0.72
    when ${goods.purchase_no}='100008'
    then (${goodsPrice}-${divisionCouponOrderDcPrice}-${couponGoodsDcPrice})*0.45
    when ${goods.purchase_no}='100011'
    then (${goodsPrice}-${divisionCouponOrderDcPrice}-${couponGoodsDcPrice})*0.75
    when ${goods.purchase_no}='100012'
    then (${goodsPrice}-${divisionCouponOrderDcPrice}-${couponGoodsDcPrice})*0.70
    when ${goods.purchase_no}='100013'
    then (${goodsPrice}-${divisionCouponOrderDcPrice}-${couponGoodsDcPrice})*0.78
    when ${goods.purchase_no}='100021'
    then (${goodsPrice}-${divisionCouponOrderDcPrice}-${couponGoodsDcPrice})*0.6
    else null
    end,
    null);;
    value_format :  "#,##0"
  }

  dimension: dc_price_rate_hidden {
    hidden: yes
    description: "이익률 산출용 할인률"
    type: number
    sql:
    case when ${goods.purchase_no}='100009'
    then ${goods.lesmore_dc_rate}/100
    when ${goods.purchase_no} in ('100003','100004','100005','100006','100007','100008','100010','100011','100012','100013','100014','100015')
    then (${couponGoodsDcPrice}+${divisionCouponOrderDcPrice}+${baseDcPrice}+${timeDcPrice})/${fixedPrice}
    when ${goods.purchase_no}='100001'
    then (${couponGoodsDcPrice}+${divisionCouponOrderDcPrice}+${baseDcPrice}+${timeDcPrice}+${divisionUseMileage})/${fixedPrice}
    else null
    end;;
  }

  dimension: payment_dt_hour_tier {
    hidden: yes
    description: "주문 시간 Tier"
    type: string
    sql: case when ${payment_dt_hour_of_day}>=1 and ${payment_dt_hour_of_day}<=6 then "1새벽(1~6)"
      when ${payment_dt_hour_of_day}>=7 and ${payment_dt_hour_of_day}<=12 then "2오전(7~12)"
      when ${payment_dt_hour_of_day}>=13 and ${payment_dt_hour_of_day}<=18 then "3오후(13~~18)"
      when (${payment_dt_hour_of_day}>=19 and ${payment_dt_hour_of_day}<=23) or ${payment_dt_hour_of_day}=0 then "4저녁(19~24)"
    else "5알수없음"
    end;;
  }

  dimension_group: payment_dt {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      hour,
      hour_of_day,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.paymentDt ;;
  }


  measure: sales_sum {
    label: "매출금액"
    type:  sum
    sql: ${saleAmt} ;;
    value_format :  "#,##0"
  }

  measure: netSales_sum {
    label: "순매출금액"
    type:  sum
    sql: ${goodNetSales} ;;
    value_format :  "#,##0"
  }

  measure: orderGoods_count {
    label : "상품주문건수"
    type: count
    # drill_fields: []
  }

  measure: deleveryDaysTotal {
    label : "평균배송소요일"
    type: average
    sql: ${deliveryDays} ;;
    value_format: "##,##0"
  }

  measure: goodsCntSum {
    label: "상품수량"
    type:  sum
    sql: ${goodsCnt} ;;
    value_format :  "#,##0"
  }

  measure: freePriceSum {
    label: "판매금액"
    type:  sum
    sql: ${fee_price} ;;
    value_format :  "#,##0"
  }

  # measure: dcPriceRate {
  #   label: "할인율"
  #   type: number
  #   sql:  (${dcPriceSum} / IFNULL(${sales_sum},0)) * 100;;
  #   value_format: "#,##0.00%"
  # }

  measure: pgCommistionSum {
    label: "PG수수료"
    type:  sum
    sql: ${pgCommistion} ;;
    value_format: "##,##0"
  }

  measure: profitPriceSum {
    label: "이익금"
    type:  sum
    sql: ${profitPrice} ;;
    value_format: "##,##0"
  }


  measure: baseDcPriceSum {
    label: "기본할인금액"
    type:  sum
    sql: ${baseDcPrice};;
  }

  measure: timeDcPriceSum {
    label: "타임세일할인금액"
    type:  sum
    sql: ${timeDcPrice} ;;
  }

  measure: dcPriceSum {
    label: "할인금액"
    type:  sum
    sql: ${dcPrice};;
  }


}
