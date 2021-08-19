connection: "gurufit_mariadb_skillchange"

 include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.

  explore: orderGoods{
    join: order {
      relationship: many_to_one
      sql_on: ${order.orderNo} = ${orderGoods.orderNo} ;;
    }

    join: member {
      relationship: many_to_one
      sql_on: ${member.memNo} = ${order.memNo} ;;
    }

    join: orderinfo {
      relationship: many_to_one
      sql_on: ${orderinfo.orderNo} = ${orderGoods.orderNo} ;;
    }

    join: goods {
      relationship: many_to_one
      sql_on: ${goods.goodsNo} = ${orderGoods.goodsNo} ;;
    }

    join: categoryBrand {
      relationship: many_to_one
      sql_on: ${categoryBrand.cate_cd} = ${goods.brand_cd} ;;
    }

    join: goodsLinkCategory {
      relationship: many_to_many
      sql_on: ${goodsLinkCategory.goodsNo} = ${orderGoods.goodsNo} ;;
    }

    # join: orderGoodsProfit {
    #   relationship: one_to_one
    #   sql_on: ${orderGoods.orderNo} = ${orderGoodsProfit.orderNo} ;;
    # }
  }
