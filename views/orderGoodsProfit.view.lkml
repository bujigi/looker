view: orderGoodsProfit {
  derived_table: {
    sql: SELECT orderNo,
                SUM(goodsPrice - IFNULL(enuri,0) - IFNULL(memberDcPrice,0) - IFNULL(divisionUseMileage,0) - IFNULL(divisionCouponOrderDcPrice,0) - IFNULL(couponGoodsDcPrice,0)) as goodsPrice,

                SUM(CASE WHEN orderStatus in ('p1','g1','d1','d2','s1','b3','b1','b2','b4','r2','r1','z1','z2','z3','z4','z5','e1','e2','e3','e4','e5') and (orderStatus  in ('d1','d2','g1','p1','s1') and handleSno < 0)
                THEN goodsPrice - IFNULL(enuri,0) - IFNULL(memberDcPrice,0) - IFNULL(divisionUseMileage,0) - IFNULL(divisionCouponOrderDcPrice,0) - IFNULL(couponGoodsDcPrice,0)
                ELSE 0
                END) as netSales,

                SUM(goodsPrice - IFNULL(divisionCouponOrderDcPrice,0) - IFNULL(couponGoodsDcPrice,0)) salePrice,
                SUM((goodsPrice - IFNULL(enuri,0) - IFNULL(memberDcPrice,0) - IFNULL(divisionUseMileage,0) - IFNULL(divisionCouponOrderDcPrice,0) - IFNULL(couponGoodsDcPrice,0)) * 0.028) as pgCommistion,

                SUM(CASE WHEN timeSaleFl = 'n' THEN fixedPrice - goodsPrice ELSE 0 END) as baseDcPrice,
                SUM(CASE WHEN timeSaleFl = 'y' THEN fixedPrice - goodsPrice ELSE 0 END) as timeDcPrice
           FROM es_orderGoods
        GROUP BY orderNo;;
  }

  label: "Order Goods Profit"

  dimension: orderNo {
    label: "주문번호"
    primary_key: yes
    type: string
    sql: ${TABLE}.orderNo ;;
  }

  measure: goodsPrice {
    label: "금액정보"
    type: number
    sql: ${TABLE}.goodsPrice ;;
  }

  measure: netSales {
    label: "순매출"
    type: number
    sql: ${TABLE}.netSales ;;
  }

  measure: salePrice {
    label: "판매대금"
    type: number
    sql: ${TABLE}.salePrice ;;
  }

  measure: pgCommistion {
    label: "PG수수료"
    type: number
    sql: ${TABLE}.pgCommistion ;;
    value_format: "##,##0"
  }

  measure: profitPrice {
    label: "이익금"
    type: number
    sql: ${netSales} - ${pgCommistion} ;;
    value_format: "##,##0"
  }

  measure: baseDcPrice {
    label: "기본할인금액"
    type: number
    sql: ${TABLE}.baseDcPrice ;;
  }

  measure: timeDcPrice {
    label: "타임세일할인금액"
    type: number
    sql: ${TABLE}.timeDcPrice ;;
  }

  measure: dcPrice {
    label: "할인금액"
    type: number
    sql: ${orderGoods.enuri} + ${timeDcPrice} + ${orderGoods.memberDcPrice} + ${orderGoods.divisionCouponOrderMileage} + ${orderGoods.divisionCouponOrderDcPrice}
    + ${orderGoods.couponGoodsDcPrice} + ${baseDcPrice};;
  }



}

# view: ordergoodsprofit {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
