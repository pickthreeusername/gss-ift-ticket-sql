# gss ift-ticket 销售审核改签单  

# 更新 SaleChangeExt
[2019-09-24 18:27:05.832][INFO ][http-nio-8479-exec-1][com.tempus.gss.product.ift.service.ChangeServiceImpl][?.()] - 保存采购数据SaleChangeExt{saleChangeNo=1176384390767316992, saleChange=null, id=3445, owner=8755, refundWay=null, modifier='admin', status='1', modifyTime=Tue Sep 24 18:27:05 CST 2019, valid=1, createTime=Tue Sep 24 14:34:47 CST 2019, creator='admin', locker=1, lockTime=null, changeType=3, contactName='董生升', contactMobile='18923880699', customerRemark='test change', refuseReason='null', airlineStatus=1, auditPerson='null', auditTime='null', refundFileUrl='null', customerNo=401703040743530784, customerTypeNo=301, ticketChangeType=3, saleChangeDetailList=[com.tempus.gss.product.ift.api.entity.SaleChangeDetail@54241eb, com.tempus.gss.product.ift.api.entity.SaleChangeDetail@30569ca4, com.tempus.gss.product.ift.api.entity.SaleChangeDetail@5d912954, com.tempus.gss.product.ift.api.entity.SaleChangeDetail@368bdb7], passengerChangePriceList=[], passengerRefundPriceList=[], saleOrderDetailList=null, changeRemark='tse', pnrNo=null, differenceOrderList=null, currency='null', saleCurrency='CNY', exchangeRate=1, handlers='null', office='null', drawerLoginName='null', airLineRefundStatus=null,supplierNo=null, originSaleChangeNo=0,refundTime=null,outBookOrderNo=} 
 Time：6 ms - ID：com.tempus.gss.product.ift.dao.SaleChangeExtDao.updateByPrimaryKeySelective
 Execute SQL：update IFT_SALE_CHANGE_EXT SET ID = 3445, OWNER = 8755, MODIFIER = 'admin', STATUS = '1', MODIFY_TIME = '2019-09-24 18:27:05', VALID = 1, CREATE_TIME = '2019-09-24 14:34:47', CREATOR = 'admin', LOCKER = 1, CHANGE_TYPE = 3, CONTACT_NAME = '董生升', CONTACT_MOBILE = '18923880699', CUSTOMER_REMARK = 'test change', AIRLINE_STATUS = 1, CUSTOMER_NO = 401703040743530784, CUSTOMER_TYPE_NO = 301, TICKET_CHANGE_TYPE=3, CHANGE_REMARK= 'tse', SALE_CURRENCY='CNY', EXCHANGE_RATE =1, ALONE_LOCKER = 1, ORIGIN_SALE_CHANGE_NO = 0 where SALE_CHANGE_NO = 1176384390767316992
# 生成 乘客价格变动
[2019-09-24 18:28:04.320][INFO ][http-nio-8479-exec-3][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 查询订单模块（为运营平台订单管理提供服务）结束 
 Time：220 ms - ID：com.tempus.gss.product.ift.dao.PassengerChangePriceDao.insert
 Execute SQL：insert into IFT_PASSENGER_CHANGE_PRICE (CHANGE_PRICE_NO, ID, OWNER, SALE_ORDER_NO,SALE_CHANGE_NO, PASSENGER_NO, SALE_PRICE, SALE_TAX, SALE_BROKERAGE, SALE_REST, BUY_PRICE, BUY_TAX, BUY_BROKERAGE, BUY_REST, VALID, STATUS, CREATOR, CREATE_TIME, MODIFIER, MODIFY_TIME,PASSENGER_TYPE,ORDER_TYPE,SALE_COUNT_PRICE,BUY_COUNT_PRICE, BUY_AGENCY_FEE,BUY_REBATE,SALE_AGENCY_FEE,SALE_REBATE, BUY_CURRENCY, BUY_EXCHANGE_RATE, ALL_SALE_PRICE, ALL_BUY_PRICE,PROFIT) values (1176443154430169088, null, 8755, 1176036384889122816,1176384390767316992, 1176036385044312064, 30.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1, '1', 'admin', '2019-09-24 18:28:17', 'admin', '2019-09-24 18:28:17','ADT',null, 30,0.00,0.00,0.00 ,0.00 ,0.00,'CNY', 1.00, 2560.00, 2530.00, 30.00)
# 更新 OS_SALECHANGE 订单状态
Time：1 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.updateSelectiveById
 Execute SQL：UPDATE OS_SALECHANGE SET owner=8755, status=3, child_status=2, modifier='admin' WHERE SALE_CHANGE_NO=1176384390767316992
# 更新 OS_SALECHANGE 订单状态
 Time：2 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.updateSelectiveById
 Execute SQL：UPDATE OS_SALECHANGE SET owner=8755, pay_status=1, modifier='admin' WHERE SALE_CHANGE_NO=1176384390767316992
# 更新航段信息
Time：76 ms - ID：com.tempus.gss.product.ift.dao.LegDao.updateByPrimaryKeySelective
 Execute SQL：update IFT_LEG SET AIRLINE = 'AA', FLIGHT_NO = '2505', DEP_AIRPORT = 'EWR', ARR_AIRPORT = 'CLT', DEP_TIME = '2019-09-26 20:00:00', ARR_TIME = '2019-09-26 20:00:00', CABIN = 'L' where LEG_NO = 1176384544962514944

 Time：240 ms - ID：com.tempus.gss.product.ift.dao.LegDao.updateByPrimaryKeySelective
 Execute SQL：update IFT_LEG SET AIRLINE = 'AA', FLIGHT_NO = '1674', DEP_AIRPORT = 'CLT', ARR_AIRPORT = 'CHI', DEP_TIME = '2019-09-26 20:00:00', ARR_TIME = '2019-09-26 20:00:00', CABIN = 'L' where LEG_NO = 1176384545000263680

# 生成应收应付
- 改签单创建应收应付. 
 Time：2 ms - ID：com.tempus.gss.product.ift.dao.PassengerChangePriceDao.updateByPrimaryKeySelective
 Execute SQL：update IFT_PASSENGER_CHANGE_PRICE SET ID = 3115, OWNER = 8755, SALE_ORDER_NO = 1176450702671613952, SALE_CHANGE_NO = 1176451127365865472, PASSENGER_NO = 1176450702717751296, SALE_PRICE = 20.00, SALE_TAX = 0.00, SALE_BROKERAGE = 0.00, SALE_REST = 0.00, SALE_COUNT_PRICE = 20.00, BUY_PRICE = 0.00, BUY_TAX = 0.00, BUY_BROKERAGE = 0.00, BUY_REST = 0.00, BUY_COUNT_PRICE = 0.00, VALID = 1, STATUS = '1', CREATOR = 'admin', CREATE_TIME = '2019-09-24 19:00:28', MODIFIER = 'admin', MODIFY_TIME = '2019-09-24 19:00:28', BUY_AGENCY_FEE= 0.00, BUY_REBATE= 0.00, SALE_AGENCY_FEE= 0.00, SALE_REBATE= 0.00, BUY_CURRENCY = 'CNY', BUY_EXCHANGE_RATE = 1.00, ALL_SALE_PRICE = 2830.00, ALL_BUY_PRICE = 2810.00, PROFIT = 20.00 where CHANGE_PRICE_NO = 1176451254067400704

 
 generated Key : 1176451127365865472-2-4-20.00 
 - generated Key : 1176451127365865472-2-4-20.00 
 set[1176451127365865472-2-4-20.00--value:1176451127365865472-2-4-20.00] 
应收(付)记录创建开始--->参数为：CreatePlanAmountVO [recordNo=1176451127365865472, businessType=4, goodsType=2, recordMovingType=5, incomeExpenseType=1, movingReason=null, planAmount=20.00] 
- 业务单号查询应收付记录总和开始------> 

 - 业务单号无应收付记录------>1176451127365865472 
- 开始创建应收付记录----> 业务单号:1176451127365865472  创建总金额:20.00   本次金额:20.00 
 - 创建应收(付)记录--->验证类型为:4的业务单:1176451127365865472的结算状态是否为未结算。。。。。。 
 
 Time：2 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.insert
 Execute SQL：INSERT INTO OS_PLANAMOUNTRECORD ( owner,record_no,business_type,income_expense_type,goods_type,record_moving_type,settlement_no,plan_amount,moving_reason,settlement_status,modifier,create_time,modify_time,valid ) VALUES ( 8755,1176451127365865472,4,1,2,5,null,20.00,null,0,'admin','2019-09-24 19:00:53',null,1 )

 - 创建应收付记录完成----> PlanAmountRecord [id=136120, owner=8755, recordNo=1176451127365865472, businessType=4, incomeExpenseType=1, goodsType=2, recordMovingType=5, settlementNo=null, planAmount=20.00, movingReason=null, settlementStatus=0, modifier=admin, createTime=Tue Sep 24 19:00:53 CST 2019, modifyTime=null, valid=1] 
 - 创建应收(付)记录--->修改业务单信息。。。。。。 
 - 业务单号查询应收付记录总和开始------> 

[2019-09-24 19:00:53.794][INFO ][http-nio-8479-exec-6][com.tempus.gss.order.service.SaleChangeServiceImpl][?.()] - 销售变更单update()参数-->SaleChange{saleChangeNo=1176451127365865472, owner=8755, businessSignNo=1176451202339110912, transationOrderNo=1176450702617088000, saleOrderNo=1176450702671613952, deptCode='69', orderChangeType=3, incomeExpenseType=1, amount=0.00, discountAmount=0.00, planAmount=20.00, actualAmount=0.00, payStatus=1, status=3, childStatus=2, changeReason='aa', createTime=Tue Sep 24 18:59:58 CST 2019, modifyTime=null, modifier='admin', goodsType=2, goodsSubType=13, goodsName='', pcount=null, valid=1, bsignType=5, haveDifference=null, differenceTotalAmount=null, keepSeat=0} 
 Time：2 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.updateSelectiveById
 Execute SQL：UPDATE OS_SALECHANGE SET owner=8755, business_sign_no=1176451202339110912, transation_order_no=1176450702617088000, sale_order_no=1176450702671613952, dept_code='69', order_change_type=3, income_expense_type=1, amount=0.00, discount_amount=0.00, plan_amount=20.00, actual_amount=0.00, pay_status=1, status=3, child_status=2, change_reason='aa', keep_seat=0, create_time='2019-09-24 18:59:58', modifier='admin', goods_type=2, goods_sub_type=13, goods_name='', valid=1, bsign_type=5 WHERE SALE_CHANGE_NO=1176451127365865472

 - 创建应收(付)记录--->修改交易单信息。。。。。。 
 - 根据交易单单号修改交易单信息:1176450702617088000, 3, true 

- 根据交易单单号-->1176450702617088000修改交易单信息。修改类型:3应收:2830.00实收:2810.00金额差:20.00 
 Time：2 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.updateSelectiveById
 Execute SQL：UPDATE OS_TRANSATIONORDER SET owner=8755, source_channel_no='OP', customer_type_no=301, customer_no=401703040743530784, ordering_login_name='admin', total_amount=2830.00, discount_amount=0.00, receivable=2830.00, received=2810.00, contacts='tudou123', mobile='18923880699', pay_status=1, create_time='2019-09-24 18:57:59', modifier='admin', valid=1 WHERE TRANSATION_ORDER_NO=1176450702617088000

 Time：4 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.selectById
 Execute SQL：SELECT TRANSATION_ORDER_NO AS transationOrderNo,external_number AS externalNumber,owner AS owner,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,total_amount AS totalAmount,discount_amount AS discountAmount,receivable AS receivable,received AS received,contacts AS contacts,mobile AS mobile,pay_status AS payStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,valid AS valid FROM OS_TRANSATIONORDER WHERE TRANSATION_ORDER_NO=1176450702617088000

 - generated Key : 1176451127374254080-2-5-0.00 
 - generated Key : 1176451127374254080-2-5-0.00 
- OS_Redis : set[1176451127374254080-2-5-0.00--value:1176451127374254080-2-5-0.00] 
 - 应收(付)记录创建开始--->参数为：CreatePlanAmountVO [recordNo=1176451127374254080, businessType=5, goodsType=2, recordMovingType=5, incomeExpenseType=2, movingReason=null, planAmount=0.00] 
 - 业务单号查询应收付记录总和开始------> 

 Time：1 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.insert
 Execute SQL：INSERT INTO OS_PLANAMOUNTRECORD ( owner,record_no,business_type,income_expense_type,goods_type,record_moving_type,settlement_no,plan_amount,moving_reason,settlement_status,modifier,create_time,modify_time,valid ) VALUES ( 8755,1176451127374254080,5,2,2,5,null,0.00,null,0,'admin','2019-09-24 19:00:53',null,1 )

- 创建应收付记录完成----> PlanAmountRecord [id=136121, owner=8755, recordNo=1176451127374254080, businessType=5, incomeExpenseType=2, goodsType=2, recordMovingType=5, settlementNo=null, planAmount=0.00, movingReason=null, settlementStatus=0, modifier=admin, createTime=Tue Sep 24 19:00:53 CST 2019, modifyTime=null, valid=1] 
- 创建应收(付)记录--->修改业务单信息。。。。。。 
- 业务单号查询应收付记录总和开始------> 
 Time：55 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.queryPlanAmountByRecordNo

 -业务单号查询应收付记录总和结束------>recordNo:1176451127374254080  businessType:5  金额:0.00 
 -采购变更单getBuyChangeByNo()-->buyChangeNo:1176451127374254080 
 -采购变更单update()参数-->BuyChange [buyChangeNo=1176451127374254080, owner=8755, businessSignNo=1176451202339110912, buyOrderNo=1176450702742917120, deptCode=null, orderChangeType=3, incomeExpenseType=2, planAmount=0.00, actualAmount=0.00, changeReason=null, payStatus=1, status=null, childStatus=1, createTime=Tue Sep 24 18:59:58 CST 2019, modifyTime=null, modifier=admin, goodsType=2, goodsSubType=23, goodsName=, pcount=null, valid=1, bsignType=3, haveDifference=null, differenceTotalAmount=null] 
 Time：1 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.updateSelectiveById
 Execute SQL：UPDATE OS_BUYCHANGE SET owner=8755, business_sign_no=1176451202339110912, buy_order_no=1176450702742917120, order_change_type=3, income_expense_type=2, plan_amount=0.00, actual_amount=0.00, pay_status=1, child_status=1, create_time='2019-09-24 18:59:58', modifier='admin', goods_type=2, goods_sub_type=23, goods_name='', valid=1, bsign_type=3 WHERE BUY_CHANGE_NO=1176451127374254080

 
[2019-09-24 19:00:53.996][INFO ][http-nio-8479-exec-2][com.tempus.gss.product.ift.service.ChangeServiceImpl][?.()] - 审核改签单结束 
