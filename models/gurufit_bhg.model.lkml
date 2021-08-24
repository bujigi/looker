connection: "gurufit_mariadb_skillchange"

 include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.

  datagroup: orders_datagroup {
    sql_trigger: SELECT max(sno) FROM gurufit_to_looker.es_orderGoods ;;
    max_cache_age: "24 hours"
  }

  explore: orderGoods{
    sql_always_where: ${finishDt_year} in (2018,2019,2020) AND ${member.entryDt_year} in (2018,2019,2020) ;;

    # always_filter: {
    #   filters: [orderGoods.finishDt_year: ">= 2018"]
    # }
    join: order {
      type: left_outer
      relationship: many_to_one
      sql_on: ${order.orderNo} = ${orderGoods.orderNo} ;;
    }

    join: member {
      type: left_outer
      relationship: many_to_one
      sql_on: ${member.memNo} = ${order.memNo} ;;
    }

    join: orderinfo {
      type: left_outer
      relationship: many_to_one
      sql_on: ${orderinfo.orderNo} = ${orderGoods.orderNo} ;;
    }

    join: goods {
      type: left_outer
      relationship: many_to_one
      sql_on: ${goods.goodsNo} = ${orderGoods.goodsNo} ;;
    }

    join: categoryBrand {
      type: left_outer
      relationship: many_to_one
      sql_on: ${categoryBrand.cate_cd} = ${goods.brand_cd} ;;
    }

    join: goodsLinkCategory {
      type: left_outer
      relationship: many_to_many
      sql_on: ${goodsLinkCategory.goodsNo} = ${orderGoods.goodsNo} ;;
    }

    aggregate_table: monthly_orders {
      materialization: {
        datagroup_trigger: orders_datagroup
      }
      query: {
        dimensions: [orderGoods.finishDt_month]
        measures: [orderGoods.sales_sum, orderGoods.profitPriceSum]
        #filters: [orderGoods.finishDt_date: "4 year"]
      }
    }

    aggregate_table: dailly_orders {
      materialization: {
        datagroup_trigger: orders_datagroup
      }
      query: {
        dimensions: [orderGoods.finishDt_date]
        measures: [orderGoods.sales_sum, orderGoods.profitPriceSum]
        #filters: [orderGoods.finishDt_date: "4 year"]
      }
    }

    # join: orderGoodsProfit {
    #   relationship: one_to_one
    #   sql_on: ${orderGoods.orderNo} = ${orderGoodsProfit.orderNo} ;;
    # }
  }
