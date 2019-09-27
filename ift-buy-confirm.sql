# gss-ift 改签订单 采购确认出单

# //更新采购应收应付
- 应收(付)记录修改开始--->参数为：UpdatePlanAmountVO [id=136117, incomeExpenseType=2, recordMovingType=5, planAmount=20.00, movingReason=null] 
 Time：2 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.selectById
 Execute SQL：SELECT id,owner AS owner,record_no AS recordNo,business_type AS businessType,income_expense_type AS incomeExpenseType,goods_type AS goodsType,record_moving_type AS recordMovingType,settlement_no AS settlementNo,plan_amount AS planAmount,moving_reason AS movingReason,settlement_status AS settlementStatus,modifier AS modifier,create_time AS createTime,modify_time AS modifyTime,valid AS valid FROM OS_PLANAMOUNTRECORD WHERE id=136117

- 创建应收(付)记录--->验证类型为:5的业务单:1176449684353323008的结算状态是否为未结算。。。。。。 
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyChangeExtendMapper.selectById
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,supplier_type_no AS supplierTypeNo,supplier_type_name AS supplierTypeName,supplier_no AS supplierNo,supplier_no_name AS supplierNoName,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,buy_channel_no AS buyChannelNo,clearance_amount AS clearanceAmount,TICKETNOS AS ticketNos FROM OS_BUYCHANGE_EXTEND WHERE BUY_CHANGE_NO=1176449684353323008

- 业务单号查询应收付记录总和开始------> 
 Time：58 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.queryPlanAmountByRecordNo
 Execute SQL：SELECT ID,OWNER,RECORD_NO as recordNo,BUSINESS_TYPE as businessType,INCOME_EXPENSE_TYPE as incomeExpenseType, GOODS_TYPE as goodsType,RECORD_MOVING_TYPE as recordMovingType,SETTLEMENT_NO as settlementNo, PLAN_AMOUNT as planAmount,MOVING_REASON as movingReason, SETTLEMENT_STATUS as settlementStatus,MODIFIER,CREATE_TIME as createTime,MODIFY_TIME as modifyTime,VALID FROM OS_PLANAMOUNTRECORD WHERE VALID=1 AND RECORD_NO=1176449684353323008 AND BUSINESS_TYPE=5

- 业务单号查询应收付记录总和结束------>recordNo:1176449684353323008  businessType:5  金额:-20.00 
- 创建应收(付)记录--->验证应收(付)金额是否满足条件,amountCount:-60.00,recordNo:1176449684353323008 
- 采购变更单getBuyChangeByNo()-->buyChangeNo:1176449684353323008 
 Time：3 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.selectById
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,owner AS owner,business_sign_no AS businessSignNo,buy_order_no AS buyOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,plan_amount AS planAmount,actual_amount AS actualAmount,change_reason AS changeReason,pay_status AS payStatus,status AS status,child_status AS childStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_BUYCHANGE WHERE BUY_CHANGE_NO=1176449684353323008

 Time：2 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_PLANAMOUNTRECORD
SET OWNER = 8755,
 record_no = 1176449684353323008,
 business_type = 5,
 income_expense_type = 2,
 goods_type = 2,
 record_moving_type = 5,
 plan_amount = 20.00,
 settlement_status = 0,
 modifier = 'admin',
 create_time = '2019-09-24 18:55:05',
 valid = 1
WHERE
	id = 136117
 Time：2 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.selectById
 Execute SQL：SELECT id,owner AS owner,record_no AS recordNo,business_type AS businessType,income_expense_type AS incomeExpenseType,goods_type AS goodsType,record_moving_type AS recordMovingType,settlement_no AS settlementNo,plan_amount AS planAmount,moving_reason AS movingReason,settlement_status AS settlementStatus,modifier AS modifier,create_time AS createTime,modify_time AS modifyTime,valid AS valid FROM OS_PLANAMOUNTRECORD WHERE id=136117

- 创建应收(付)记录--->修改业务单信息。。。。。。 
- 业务单号查询应收付记录总和开始------> 
 Time：56 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.queryPlanAmountByRecordNo
 Execute SQL：SELECT ID,OWNER,RECORD_NO as recordNo,BUSINESS_TYPE as businessType,INCOME_EXPENSE_TYPE as incomeExpenseType, GOODS_TYPE as goodsType,RECORD_MOVING_TYPE as recordMovingType,SETTLEMENT_NO as settlementNo, PLAN_AMOUNT as planAmount,MOVING_REASON as movingReason, SETTLEMENT_STATUS as settlementStatus,MODIFIER,CREATE_TIME as createTime,MODIFY_TIME as modifyTime,VALID FROM OS_PLANAMOUNTRECORD WHERE VALID=1 AND RECORD_NO=1176449684353323008 AND BUSINESS_TYPE=5

- 业务单号查询应收付记录总和结束------>recordNo:1176449684353323008  businessType:5  金额:-20.00 
- 采购变更单getBuyChangeByNo()-->buyChangeNo:1176449684353323008 
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.selectById
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,owner AS owner,business_sign_no AS businessSignNo,buy_order_no AS buyOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,plan_amount AS planAmount,actual_amount AS actualAmount,change_reason AS changeReason,pay_status AS payStatus,status AS status,child_status AS childStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_BUYCHANGE WHERE BUY_CHANGE_NO=1176449684353323008

- 采购变更单update()参数-->BuyChange [buyChangeNo=1176449684353323008, owner=8755, businessSignNo=1176449759368511488, buyOrderNo=1175945351677358080, deptCode=null, orderChangeType=3, incomeExpenseType=2, planAmount=20.00, actualAmount=0.00, changeReason=null, payStatus=1, status=null, childStatus=1, createTime=Tue Sep 24 18:54:14 CST 2019, modifyTime=null, modifier=admin, goodsType=2, goodsSubType=23, goodsName=, pcount=null, valid=1, bsignType=3, haveDifference=null, differenceTotalAmount=null] 
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_BUYCHANGE
SET OWNER = 8755,
 business_sign_no = 1176449759368511488,
 buy_order_no = 1175945351677358080,
 order_change_type = 3,
 income_expense_type = 2,
 plan_amount = 20.00,
 actual_amount = 0.00,
 pay_status = 1,
 child_status = 1,
 create_time = '2019-09-24 18:54:14',
 modifier = 'admin',
 goods_type = 2,
 goods_sub_type = 23,
 goods_name = '',
 valid = 1,
 bsign_type = 3
WHERE
	BUY_CHANGE_NO = 1176449684353323008
 Time：3 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.selectById
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,owner AS owner,business_sign_no AS businessSignNo,buy_order_no AS buyOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,plan_amount AS planAmount,actual_amount AS actualAmount,change_reason AS changeReason,pay_status AS payStatus,status AS status,child_status AS childStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_BUYCHANGE WHERE BUY_CHANGE_NO=1176449684353323008

# 生成 采购付款表记录

# 确认改签
[2019-09-24 19:14:57.488][INFO ][http-nio-8479-exec-4][com.tempus.gss.product.ift.service.ChangeServiceImpl][?.()] - 改签确认操作开始 
 Time：9 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderDetailDao.selectByPrimaryKey
 Execute SQL：select SALE_ORDER_DETAIL_NO, ID,CABIN, OWNER,TICKET_NO, SALE_ORDER_NO, PASSENGER_NO, LEG_NO, FARE, TAX, BROKERAGE, AGENCY_FEE, REBATE, AWARD_PRICE, PARENT_SECTION, CHILD_SECTION, IS_CHANGE, MODIFIER, MODIFY_TIME, CREATOR, CREATE_TIME, STATUS, VALID, REFUSE_REASON,DEPT_PROFIT,PROFIT from IFT_SALE_ORDER_DETAIL where SALE_ORDER_DETAIL_NO = 1176449684537872384 and VALID=1

 Time：10 ms - ID：com.tempus.gss.product.ift.dao.SaleChangeDetailDao.selectBySaleOrderDetailNoAndSaleChangeNo
 Execute SQL：select SALE_CHANGE_DETAIL_NO, ID, OWNER, SALE_CHANGE_NO, BUY_CHANGE_NO, SALE_ORDER_DETAIL_NO, ORDER_DETAIL_TYPE, CREATOR, CREATE_TIME, VALID,TICKET_NO from IFT_SALE_CHANGE_DETAIL where SALE_ORDER_DETAIL_NO = 1176449684537872384 AND SALE_CHANGE_NO = 1176449684344934400

 Time：2 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderDetailDao.updateByPrimaryKeySelective
EXECUTE SQL：update IFT_SALE_ORDER_DETAIL
SET ID = 27406,
 OWNER = 8755,
 SALE_ORDER_NO = 1176449684344934400,
 PASSENGER_NO = 1175945351664775168,
 CABIN = 'E',
 LEG_NO = 1176449684495929344,
 TICKET_NO = '859-9658558542',
 IS_CHANGE = TRUE,
 MODIFIER = 'admin',
 MODIFY_TIME = '2019-09-24 19:14:57',
 CREATOR = 'admin',
 CREATE_TIME = '2019-09-24 18:54:14',
 STATUS = '4',
 VALID = 1
WHERE
	SALE_ORDER_DETAIL_NO = 1176449684537872384
 Time：9 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderDetailDao.selectByPrimaryKey
 Execute SQL：select SALE_ORDER_DETAIL_NO, ID,CABIN, OWNER,TICKET_NO, SALE_ORDER_NO, PASSENGER_NO, LEG_NO, FARE, TAX, BROKERAGE, AGENCY_FEE, REBATE, AWARD_PRICE, PARENT_SECTION, CHILD_SECTION, IS_CHANGE, MODIFIER, MODIFY_TIME, CREATOR, CREATE_TIME, STATUS, VALID, REFUSE_REASON,DEPT_PROFIT,PROFIT from IFT_SALE_ORDER_DETAIL where SALE_ORDER_DETAIL_NO = 1176449684625952768 and VALID=1

 Time：10 ms - ID：com.tempus.gss.product.ift.dao.SaleChangeDetailDao.selectBySaleOrderDetailNoAndSaleChangeNo
 Execute SQL：select SALE_CHANGE_DETAIL_NO, ID, OWNER, SALE_CHANGE_NO, BUY_CHANGE_NO, SALE_ORDER_DETAIL_NO, ORDER_DETAIL_TYPE, CREATOR, CREATE_TIME, VALID,TICKET_NO from IFT_SALE_CHANGE_DETAIL where SALE_ORDER_DETAIL_NO = 1176449684625952768 AND SALE_CHANGE_NO = 1176449684344934400

 Time：2 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderDetailDao.updateByPrimaryKeySelective
 Execute SQL：update IFT_SALE_ORDER_DETAIL SET ID = 27407, OWNER = 8755, SALE_ORDER_NO = 1176449684344934400, PASSENGER_NO = 1175945351664775168, CABIN = 'T', LEG_NO = 1176449684516900864, TICKET_NO = '859-9658558543', IS_CHANGE = true, MODIFIER = 'admin', MODIFY_TIME = '2019-09-24 19:14:57', CREATOR = 'admin', CREATE_TIME = '2019-09-24 18:54:14', STATUS = '4', VALID = 1 where SALE_ORDER_DETAIL_NO = 1176449684625952768

 Time：1 ms - ID：com.tempus.gss.product.ift.dao.PassengerChangePriceDao.updateByPrimaryKeySelective
EXECUTE SQL：update IFT_PASSENGER_CHANGE_PRICE
SET BUY_PRICE = 20.00,
 BUY_TAX = 0.00,
 BUY_BROKERAGE = 0.00,
 BUY_REST = 0.00,
 BUY_COUNT_PRICE = 20.00,
 BUY_AGENCY_FEE = 0.00,
 BUY_REBATE = 0.00,
 BUY_CURRENCY = 'CNY',
 BUY_EXCHANGE_RATE = 1.00,
 PROFIT = - 20.00
WHERE
	CHANGE_PRICE_NO = 1176449885730246656
[2019-09-24 19:14:57.539][INFO ][http-nio-8479-exec-6][com.tempus.gss.order.service.SaleChangeServiceImpl][?.()] - 销售变更单updateStatus()-->saleChangeNo:1176449684344934400,childStatus:10 
 Time：2 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.selectById
 Execute SQL：SELECT SALE_CHANGE_NO AS saleChangeNo,owner AS owner,business_sign_no AS businessSignNo,transation_order_no AS transationOrderNo,sale_order_no AS saleOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,amount AS amount,discount_amount AS discountAmount,plan_amount AS planAmount,actual_amount AS actualAmount,pay_status AS payStatus,status AS status,child_status AS childStatus,change_reason AS changeReason,keep_seat AS keepSeat,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_SALECHANGE WHERE SALE_CHANGE_NO=1176449684344934400

 Time：1 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_SALECHANGE
SET OWNER = 8755,
 STATUS = 5,
 child_status = 10,
 modifier = 'admin'
WHERE
	SALE_CHANGE_NO = 1176449684344934400
 Time：3 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.selectById
 Execute SQL：SELECT SALE_CHANGE_NO AS saleChangeNo,owner AS owner,business_sign_no AS businessSignNo,transation_order_no AS transationOrderNo,sale_order_no AS saleOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,amount AS amount,discount_amount AS discountAmount,plan_amount AS planAmount,actual_amount AS actualAmount,pay_status AS payStatus,status AS status,child_status AS childStatus,change_reason AS changeReason,keep_seat AS keepSeat,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_SALECHANGE WHERE SALE_CHANGE_NO=1176449684344934400

 Time：2 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.selectById
 Execute SQL：SELECT SALE_CHANGE_NO AS saleChangeNo,owner AS owner,business_sign_no AS businessSignNo,transation_order_no AS transationOrderNo,sale_order_no AS saleOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,amount AS amount,discount_amount AS discountAmount,plan_amount AS planAmount,actual_amount AS actualAmount,pay_status AS payStatus,status AS status,child_status AS childStatus,change_reason AS changeReason,keep_seat AS keepSeat,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_SALECHANGE WHERE SALE_CHANGE_NO=1176449684344934400

# 更新采购备注
Time：10 ms - ID：com.tempus.gss.product.ift.dao.BuyChangeExtDao.updateBuyRemarkBySelectBuyChangeNo
EXECUTE SQL：UPDATE IFT_BUY_CHANGE_EXT b
SET CHANGE_REMARK = 'test',
 b.CHANGE_REMARK = 'test'
WHERE
	b.BUY_CHANGE_NO = 1176449684353323008
Time：3 ms - ID：com.tempus.gss.product.ift.dao.SaleChangeExtDao.updateByPrimaryKey
EXECUTE SQL：update IFT_SALE_CHANGE_EXT
SET ID = 3454,
 OWNER = 8755,
 MODIFIER = 'admin',
 STATUS = '1',
 MODIFY_TIME = '2019-09-24 19:16:47',
 VALID = 1,
 CREATE_TIME = '2019-09-24 18:54:14',
 CREATOR = 'admin',
 LOCKER = 1,
 CHANGE_TYPE = 3,
 CONTACT_NAME = '董生升',
 CONTACT_MOBILE = '18923880699',
 CUSTOMER_REMARK = 'test',
 AIRLINE_STATUS = 1,
 CUSTOMER_NO = 401703040743530784,
 CUSTOMER_TYPE_NO = 301,
 TICKET_CHANGE_TYPE = 3,
 PNR_No = 1176447162871975936,
 CHANGE_REMARK = 'test',
 CURRENCY = 'CNY',
 SALE_CURRENCY = 'CNY',
 EXCHANGE_RATE = 1.00,
 DRAWER_LOGIN_NAME = 'admin',
 ALONE_LOCKER = 1,
 SUPPLIER_NO = 411805170138410133,
 OFFICE = '',
 ORIGIN_SALE_CHANGE_NO = 0
WHERE
	SALE_CHANGE_NO = 1176449684344934400
