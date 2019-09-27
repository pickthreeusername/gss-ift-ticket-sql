# 采购一审二审
# 采购一审 提交航司退款
[09:26:14.107][INFO ] 退废核价参数：
/*
{
    "passengerRefundPriceList": [
        {
            "salePrice": 4170,
            "saleTax": 477,
            "saleRefundPrice": 0,
            "saleTicketAccount": 4647,
            "saleRecoveryAward": 0,
            "saleRefundAccount": 4647,
            "buyTicketAccount": 4647,
            "buyFefundAccount": 4647,
            "buyPrice": 4170,
            "buyTax": 477,
            "buyRefundPrice": 0,
            "passengerType": "ADT",
            "saleBrokerage": 0,
            "buyBrokerage": 0,
            "saleRecoveryCommission": 0,
            "buyRecoveryCommission": 0
        }
    ],
    "saleChangeNo": 1177388857541390300,
    "passenger": [
        {
            "passengerNo": 1177388532210200600,
            "passengerType": "ADT",
            "policyNo": 0
        }
    ],
    "saleOrderNo": 1177388531849490400,
    "status": "1",
    "todoType": 0,
    "currency": "CNY",
    "saleCurrency": "CNY",
    "exchangeRate": 1,
    "buyExchangeRate": 1
}
*/

#批量更新乘客退废信息
Time：21 ms - ID：com.tempus.gss.product.ift.dao.PassengerRefundPriceDao.getPassengerRefundPrice
 Execute SQL：select PASSENGER_REFUND_PRICE_NO, ID, OWNER, SALE_ORDER_NO,SALE_CHANGE_NO , PASSENGER_NO, SALE_PRICE,SALE_BROKERAGE,BUY_BROKERAGE, SALE_TAX, SALE_REFUND_PRICE, SALE_TICKET_ACCOUNT, SALE_RECOVERY_AWARD, SALE_REFUND_ACCOUNT, BUY_TICKET_ACCOUNT, BUY_RECOVERY_AWARD, BUY_FEFUND_ACCOUNT, BUY_PRICE, BUY_TAX, BUY_REFUND_PRICE, PASSENGER_TYPE, ORDER_TYPE, VALID, STATUS, CREATOR, CREATE_TIME, MODIFIER, MODIFY_TIME,SALE_COUNT,BUY_COUNT,CHARGE_PROFIT, CURRENCY,SALE_CURRENCY,EXCHANGE_RATE, BUY_CURRENCY,BUY_EXCHANGE_RATE,SALE_RECOVERY_COMMISSION,BUY_RECOVERY_COMMISSION from IFT_PASSENGER_REFUND_PRICE where 1=1 AND SALE_ORDER_NO = 1177388531849490432 AND SALE_CHANGE_NO = 1177388857541390336 AND PASSENGER_NO = 1177388532210200576

- 退废单:1177388857541390336审核，批量更新乘客退废信息：PassengerRefundPrice{passengerRefundPriceNo=1177388863547633664, id=null, owner=null, saleOrderNo=null, saleChangeNo=null, passengerNo=null, passenger=null, salePrice=4170.00, saleTax=477.00, saleRefundPrice=0.00, saleTicketAccount=4647.00, saleRecoveryAward=0.00, saleRefundAccount=4647.00, buyTicketAccount=4647.00, buyRecoveryAward=null, buyFefundAccount=4647.00, buyPrice=4170.00, buyTax=477.00, buyRefundPrice=0.00, passengerType='ADT', orderType='null', valid=null, status='null', creator='null', createTime=null, modifier='admin', ticketNo='null', modifyTime=Fri Sep 27 09:36:17 CST 2019, saleCount=null, buyCount=null, saleBrokerage=0.00, buyBrokerage=0.00, chargeProfit=null, currency='null', saleCurrency='null', exchangeRate=null} 
 Time：31 ms - ID：com.tempus.gss.product.ift.dao.PassengerRefundPriceDao.updateByPrimaryKeySelective
EXECUTE SQL：update IFT_PASSENGER_REFUND_PRICE
SET SALE_PRICE = 4170.00,
 SALE_BROKERAGE = 0.00,
 BUY_BROKERAGE = 0.00,
 SALE_TAX = 477.00,
 SALE_REFUND_PRICE = 0.00,
 SALE_TICKET_ACCOUNT = 4647.00,
 SALE_RECOVERY_AWARD = 0.00,
 SALE_REFUND_ACCOUNT = 4647.00,
 BUY_TICKET_ACCOUNT = 4647.00,
 BUY_FEFUND_ACCOUNT = 4647.00,
 BUY_PRICE = 4170.00,
 BUY_TAX = 477.00,
 BUY_REFUND_PRICE = 0.00,
 PASSENGER_TYPE = 'ADT',
 MODIFIER = 'admin',
 MODIFY_TIME = '2019-09-27 09:36:17',
 BUY_CURRENCY = 'CNY',
 BUY_EXCHANGE_RATE = 1.00,
 SALE_RECOVERY_COMMISSION = 0.00,
 BUY_RECOVERY_COMMISSION = 0.00
WHERE
	PASSENGER_REFUND_PRICE_NO = 1177388863547633664

# 修改销售变更单
Time：1 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_SALECHANGE
SET OWNER = 8755,
 STATUS = 3,
 child_status = 2,
 modifier = 'admin'
WHERE
	SALE_CHANGE_NO = 1177388857541390336

# 修改国际销售扩展
 - 修改销售变更单信息:SaleChangeExt{saleChangeNo=1177388857541390336, saleChange=SaleChange{saleChangeNo=1177388857541390336, owner=8755, businessSignNo=1177388947309772800, transationOrderNo=1177388621265551360, saleOrderNo=1177388531849490432, deptCode='69', orderChangeType=2, incomeExpenseType=2, amount=0.00, discountAmount=0.00, planAmount=0.00, actualAmount=0.00, payStatus=1, status=null, childStatus=1, changeReason='客人自愿按照客规', createTime=Fri Sep 27 09:06:14 CST 2019, modifyTime=null, modifier='admin', goodsType=2, goodsSubType=12, goodsName='', pcount=null, valid=1, bsignType=3, haveDifference=null, differenceTotalAmount=null, keepSeat=0}, id=3460, owner=8755, refundWay=null, modifier='admin', status='2', modifyTime=Fri Sep 27 09:06:15 CST 2019, valid=1, createTime=Fri Sep 27 09:06:14 CST 2019, creator='admin', locker=1, lockTime=null, changeType=2, contactName='tudou123', contactMobile='18923880699', customerRemark='test', refuseReason='null', airlineStatus=2, auditPerson='admin', auditTime='2019-09-27 09:42:05', refundFileUrl='null', customerNo=401703040743530784, customerTypeNo=301, ticketChangeType=null, saleChangeDetailList=[com.tempus.gss.product.ift.api.entity.SaleChangeDetail@39ae8371, com.tempus.gss.product.ift.api.entity.SaleChangeDetail@5c0c5252], passengerChangePriceList=[], passengerRefundPriceList=[PassengerRefundPrice{passengerRefundPriceNo=1177388863547633664, id=3093, owner=8755, saleOrderNo=1177388531849490432, saleChangeNo=1177388857541390336, passengerNo=1177388532210200576, passenger=Passenger{passengerNo=1177388532210200576, owner=8755, historyPassenger='null', id=12432, saleOrderNo=1177388531849490432, passengerType='ADT', surname='CHEN', name='YUCHENG', certType='PP', certNo='441521199609126547', certValid=Wed Sep 20 00:00:00 CST 2023, passengerBirth=Tue Jun 09 00:00:00 CST 1998, nationality='', gender='1', ticketConfig='null', ticketAirline='UA', ticketType='BSP', buyFare=4170.0000, buyTax=477.0000, buyBrokerage=0.0000, buyAgencyFee=0.0000, buyRebate=0.0000, buyAwardPrice=4170.0000, buyPrice=4647.0000, saleFare=4170.0000, saleTax=477.0000, saleBrokerage=0.0000, saleAgencyFee=0.0000, saleRebate=0.0000, saleAwardPrice=4170.0000, serviceCharge=null, salePrice=4647.0000, modifier='null', status='1', modifyTime=null, valid=1, createTime=Fri Sep 27 09:04:56 CST 2019, creator='admin', ticketNo='null', phone='15302887558', policyNo=0, deptProfit=0.00, profit=0.00, buyCurrency='CNY', buyExchangeRate=1.00, civilValidateType='null', validateContent='null'}, salePrice=4170.0000, saleTax=477.0000, saleRefundPrice=0.0000, saleTicketAccount=4647.0000, saleRecoveryAward=0.0000, saleRefundAccount=4647.0000, buyTicketAccount=4647.0000, buyRecoveryAward=null, buyFefundAccount=4647.0000, buyPrice=4170.0000, buyTax=477.0000, buyRefundPrice=0.0000, passengerType='ADT', orderType='null', valid=1, status='1', creator='admin', createTime=Fri Sep 27 09:36:16 CST 2019, modifier='admin', ticketNo='null', modifyTime=Fri Sep 27 09:36:17 CST 2019, saleCount=null, buyCount=null, saleBrokerage=0.0000, buyBrokerage=0.0000, chargeProfit=null, currency='CNY', saleCurrency='CNY', exchangeRate=1.00}], saleOrderDetailList=null, changeRemark='test', pnrNo=null, differenceOrderList=null, currency='CNY', saleCurrency='null', exchangeRate=null, handlers='null', office='null', drawerLoginName='null', airLineRefundStatus=null,supplierNo=null, originSaleChangeNo=0,refundTime=null,outBookOrderNo=} 
 Time：6 ms - ID：com.tempus.gss.product.ift.dao.SaleChangeExtDao.updateByPrimaryKeySelective
EXECUTE SQL：update IFT_SALE_CHANGE_EXT
SET ID = 3460,
 OWNER = 8755,
 MODIFIER = 'admin',
 STATUS = '2',
 MODIFY_TIME = '2019-09-27 09:06:15',
 VALID = 1,
 CREATE_TIME = '2019-09-27 09:06:14',
 CREATOR = 'admin',
 LOCKER = 1,
 CHANGE_TYPE = 2,
 CONTACT_NAME = 'tudou123',
 CONTACT_MOBILE = '18923880699',
 CUSTOMER_REMARK = 'test',
 AIRLINE_STATUS = 2,
 AUDIT_PERSON = 'admin',
 AUDIT_TIME = '2019-09-27 09:42:05',
 CUSTOMER_NO = 401703040743530784,
 CUSTOMER_TYPE_NO = 301,
 CHANGE_REMARK = 'test',
 CURRENCY = 'CNY',
 ALONE_LOCKER = 1,
 ORIGIN_SALE_CHANGE_NO = 0
WHERE
	SALE_CHANGE_NO = 1177388857541390336

#修改采购单 子状态
[2019-09-27 09:55:02.227][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.BuyChangeServiceImpl][?.()] - 采购变更单update()参数-->BuyChange [buyChangeNo=1177388860733255680, owner=8755, businessSignNo=1177388947309772800, buyOrderNo=1177388532319252480, deptCode=69, orderChangeType=2, incomeExpenseType=1, planAmount=0.00, actualAmount=0.00, changeReason=null, payStatus=1, status=null, childStatus=2, createTime=Fri Sep 27 09:06:15 CST 2019, modifyTime=Fri Sep 27 09:42:05 CST 2019, modifier=admin, goodsType=2, goodsSubType=22, goodsName=, pcount=null, valid=1, bsignType=4, haveDifference=null, differenceTotalAmount=null] 
 Time：3 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_BUYCHANGE
SET OWNER = 8755,
 business_sign_no = 1177388947309772800,
 buy_order_no = 1177388532319252480,
 dept_code = '69',
 order_change_type = 2,
 income_expense_type = 1,
 plan_amount = 0.00,
 actual_amount = 0.00,
 pay_status = 1,
 child_status = 2,
 create_time = '2019-09-27 09:06:15',
 modify_time = '2019-09-27 09:42:05',
 modifier = 'admin',
 goods_type = 2,
 goods_sub_type = 22,
 goods_name = '',
 valid = 1,
 bsign_type = 4
WHERE
	BUY_CHANGE_NO = 1177388860733255680

# 修改采购扩展
- 更新改签扩展记录信息:BuyChangeExt{id=2017, buyChangeNo=1177388860733255680, buyChange=null, orderChangeType=null, owner=8755, office='', ticketType='BSP', refuseReason='null', pnrList=null, creator='admin', createTime=Fri Sep 27 09:06:14 CST 2019, modifier='admin', modifyTime=Fri Sep 27 10:00:44 CST 2019, valid=1, status='1', changeRemark='null', airLineRefundStatus=0, buyLocker=1} 
 Time：6 ms - ID：com.tempus.gss.product.ift.dao.BuyChangeExtDao.updateByPrimaryKeySelective
EXECUTE SQL：update IFT_BUY_CHANGE_EXT
SET ID = 2017,
 OWNER = 8755,
 OFFICE = '',
 TICKET_TYPE = 'BSP',
 CREATOR = 'admin',
 CREATE_TIME = '2019-09-27 09:06:14',
 MODIFIER = 'admin',
 MODIFY_TIME = '2019-09-27 10:00:44',
 VALID = 1,
 STATUS = '1',
 AIRLINE_REFUND_STATUS = 0,
 BUY_LOCKER = 1,
 REFUND_FILE_URL = NULL
WHERE
	BUY_CHANGE_NO = 1177388860733255680


# 采购二审
# 采购二审
- 提交航司信息:
/*
{
    "auditSaleChangeNo": 1177388857541390300,
    "customerNo": 411805170138410100,
    "customerTypeNo": 101,
    "refundVoList": [
        {
            "payment": 4647,
            "accountNo": "809683098651348992",
            "arrivalTime": "Sep 26, 2019 12:00:00 AM",
            "capitalFow": "1158258"
        }
    ],
    "remark": " test"
}
*/
- 获取销售废退单开始============ 
 Time：40 ms - ID：com.tempus.gss.product.ift.dao.SaleChangeExtDao.selectByPrimaryKey
 Execute SQL：select SALE_CHANGE_NO, ID, OWNER, REFUND_WAY, MODIFIER, STATUS, MODIFY_TIME, VALID, CREATE_TIME, CREATOR, LOCKER, LOCK_TIME, CHANGE_TYPE, CONTACT_NAME, CONTACT_MOBILE, CUSTOMER_REMARK, REFUSE_REASON,AIRLINE_STATUS,AUDIT_PERSON,AUDIT_TIME,REFUND_FILE_URL,CUSTOMER_NO, CUSTOMER_TYPE_NO,TICKET_CHANGE_TYPE,PNR_NO,CHANGE_REMARK,CURRENCY,SALE_CURRENCY,EXCHANGE_RATE,OFFICE, DRAWER_LOGIN_NAME,ALONE_LOCKER,SUPPLIER_NO,ORIGIN_SALE_CHANGE_NO,OUT_BOOK_ORDER_NO from IFT_SALE_CHANGE_EXT where SALE_CHANGE_NO = 1177419795348410368

 Time：3 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.selectById
 Execute SQL：SELECT SALE_CHANGE_NO AS saleChangeNo,owner AS owner,business_sign_no AS businessSignNo,transation_order_no AS transationOrderNo,sale_order_no AS saleOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,amount AS amount,discount_amount AS discountAmount,plan_amount AS planAmount,actual_amount AS actualAmount,pay_status AS payStatus,status AS status,child_status AS childStatus,change_reason AS changeReason,keep_seat AS keepSeat,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_SALECHANGE WHERE SALE_CHANGE_NO=1177419795348410368

- 获取销售单结束============ 
- 航司审核更新变更单号信息:SaleChangeExt{saleChangeNo=1177419795348410368, saleChange=SaleChange{saleChangeNo=1177419795348410368, owner=8755, businessSignNo=1177419885607567360, transationOrderNo=1177419446044508160, saleOrderNo=1177419355818905600, deptCode='69', orderChangeType=2, incomeExpenseType=2, amount=0.00, discountAmount=0.00, planAmount=0.00, actualAmount=0.00, payStatus=1, status=3, childStatus=2, changeReason='客人自愿按照客规', createTime=Fri Sep 27 11:09:10 CST 2019, modifyTime=null, modifier='admin', goodsType=2, goodsSubType=12, goodsName='', pcount=null, valid=1, bsignType=3, haveDifference=null, differenceTotalAmount=null, keepSeat=0}, id=3463, owner=8755, refundWay=1, modifier='admin', status='2', modifyTime=Fri Sep 27 11:12:32 CST 2019, valid=1, createTime=Fri Sep 27 11:09:10 CST 2019, creator='admin', locker=1, lockTime=null, changeType=2, contactName='tudou123', contactMobile='18923880699', customerRemark='test', refuseReason='null', airlineStatus=3, auditPerson='admin', auditTime='2019-09-27 11:09:22', refundFileUrl='null', customerNo=401703040743530784, customerTypeNo=301, ticketChangeType=null, saleChangeDetailList=[com.tempus.gss.product.ift.api.entity.SaleChangeDetail@37aa73e0, com.tempus.gss.product.ift.api.entity.SaleChangeDetail@2aff46be], passengerChangePriceList=[], passengerRefundPriceList=[PassengerRefundPrice{passengerRefundPriceNo=1177419796350849024, id=3096, owner=8755, saleOrderNo=1177419355818905600, saleChangeNo=1177419795348410368, passengerNo=1177419355886014464, passenger=Passenger{passengerNo=1177419355886014464, owner=8755, historyPassenger='null', id=12435, saleOrderNo=1177419355818905600, passengerType='ADT', surname='CHEN', name='YUCHENG', certType='PP', certNo='441521199609126547', certValid=Thu Sep 28 00:00:00 CST 2023, passengerBirth=Tue Jun 09 00:00:00 CST 1998, nationality='', gender='1', ticketConfig='null', ticketAirline='UA', ticketType='BSP', buyFare=4170.0000, buyTax=477.0000, buyBrokerage=0.0000, buyAgencyFee=0.0000, buyRebate=0.0000, buyAwardPrice=4170.0000, buyPrice=4647.0000, saleFare=4170.0000, saleTax=477.0000, saleBrokerage=0.0000, saleAgencyFee=0.0000, saleRebate=0.0000, saleAwardPrice=4170.0000, serviceCharge=null, salePrice=4647.0000, modifier='null', status='1', modifyTime=null, valid=1, createTime=Fri Sep 27 11:07:26 CST 2019, creator='admin', ticketNo='null', phone='15302887558', policyNo=0, deptProfit=0.00, profit=0.00, buyCurrency='CNY', buyExchangeRate=1.00, civilValidateType='null', validateContent='null'}, salePrice=4170.0000, saleTax=477.0000, saleRefundPrice=0.0000, saleTicketAccount=4647.0000, saleRecoveryAward=0.0000, saleRefundAccount=4647.0000, buyTicketAccount=4647.0000, buyRecoveryAward=null, buyFefundAccount=4647.0000, buyPrice=4170.0000, buyTax=477.0000, buyRefundPrice=0.0000, passengerType='ADT', orderType='null', valid=1, status='1', creator='admin', createTime=Fri Sep 27 11:09:22 CST 2019, modifier='admin', ticketNo='null', modifyTime=Fri Sep 27 11:09:22 CST 2019, saleCount=null, buyCount=null, saleBrokerage=0.0000, buyBrokerage=0.0000, chargeProfit=null, currency='CNY', saleCurrency='CNY', exchangeRate=1.00}], saleOrderDetailList=null, changeRemark='test', pnrNo=null, differenceOrderList=null, currency='CNY', saleCurrency='CNY', exchangeRate=1.00, handlers='null', office='null', drawerLoginName='null', airLineRefundStatus=null,supplierNo=null, originSaleChangeNo=0,refundTime=null,outBookOrderNo=} 
- 修改销售变更单信息:SaleChangeExt{saleChangeNo=1177419795348410368, saleChange=SaleChange{saleChangeNo=1177419795348410368, owner=8755, businessSignNo=1177419885607567360, transationOrderNo=1177419446044508160, saleOrderNo=1177419355818905600, deptCode='69', orderChangeType=2, incomeExpenseType=2, amount=0.00, discountAmount=0.00, planAmount=0.00, actualAmount=0.00, payStatus=1, status=3, childStatus=2, changeReason='客人自愿按照客规', createTime=Fri Sep 27 11:09:10 CST 2019, modifyTime=null, modifier='admin', goodsType=2, goodsSubType=12, goodsName='', pcount=null, valid=1, bsignType=3, haveDifference=null, differenceTotalAmount=null, keepSeat=0}, id=3463, owner=8755, refundWay=1, modifier='admin', status='2', modifyTime=Fri Sep 27 11:12:32 CST 2019, valid=1, createTime=Fri Sep 27 11:09:10 CST 2019, creator='admin', locker=1, lockTime=null, changeType=2, contactName='tudou123', contactMobile='18923880699', customerRemark='test', refuseReason='null', airlineStatus=3, auditPerson='admin', auditTime='2019-09-27 11:09:22', refundFileUrl='null', customerNo=401703040743530784, customerTypeNo=301, ticketChangeType=null, saleChangeDetailList=[com.tempus.gss.product.ift.api.entity.SaleChangeDetail@6556a8f6, com.tempus.gss.product.ift.api.entity.SaleChangeDetail@79cec64c], passengerChangePriceList=[], passengerRefundPriceList=[PassengerRefundPrice{passengerRefundPriceNo=1177419796350849024, id=3096, owner=8755, saleOrderNo=1177419355818905600, saleChangeNo=1177419795348410368, passengerNo=1177419355886014464, passenger=Passenger{passengerNo=1177419355886014464, owner=8755, historyPassenger='null', id=12435, saleOrderNo=1177419355818905600, passengerType='ADT', surname='CHEN', name='YUCHENG', certType='PP', certNo='441521199609126547', certValid=Thu Sep 28 00:00:00 CST 2023, passengerBirth=Tue Jun 09 00:00:00 CST 1998, nationality='', gender='1', ticketConfig='null', ticketAirline='UA', ticketType='BSP', buyFare=4170.0000, buyTax=477.0000, buyBrokerage=0.0000, buyAgencyFee=0.0000, buyRebate=0.0000, buyAwardPrice=4170.0000, buyPrice=4647.0000, saleFare=4170.0000, saleTax=477.0000, saleBrokerage=0.0000, saleAgencyFee=0.0000, saleRebate=0.0000, saleAwardPrice=4170.0000, serviceCharge=null, salePrice=4647.0000, modifier='null', status='1', modifyTime=null, valid=1, createTime=Fri Sep 27 11:07:26 CST 2019, creator='admin', ticketNo='null', phone='15302887558', policyNo=0, deptProfit=0.00, profit=0.00, buyCurrency='CNY', buyExchangeRate=1.00, civilValidateType='null', validateContent='null'}, salePrice=4170.0000, saleTax=477.0000, saleRefundPrice=0.0000, saleTicketAccount=4647.0000, saleRecoveryAward=0.0000, saleRefundAccount=4647.0000, buyTicketAccount=4647.0000, buyRecoveryAward=null, buyFefundAccount=4647.0000, buyPrice=4170.0000, buyTax=477.0000, buyRefundPrice=0.0000, passengerType='ADT', orderType='null', valid=1, status='1', creator='admin', createTime=Fri Sep 27 11:09:22 CST 2019, modifier='admin', ticketNo='null', modifyTime=Fri Sep 27 11:09:22 CST 2019, saleCount=null, buyCount=null, saleBrokerage=0.0000, buyBrokerage=0.0000, chargeProfit=null, currency='CNY', saleCurrency='CNY', exchangeRate=1.00}], saleOrderDetailList=null, changeRemark='test', pnrNo=null, differenceOrderList=null, currency='CNY', saleCurrency='CNY', exchangeRate=1.00, handlers='null', office='null', drawerLoginName='null', airLineRefundStatus=null,supplierNo=null, originSaleChangeNo=0,refundTime=null,outBookOrderNo=} 
#修改销售变更单信息 
Time：3 ms - ID：com.tempus.gss.product.ift.dao.SaleChangeExtDao.updateByPrimaryKeySelective
EXECUTE SQL：update IFT_SALE_CHANGE_EXT
SET ID = 3463,
 OWNER = 8755,
 REFUND_WAY = 1,
 MODIFIER = 'admin',
 STATUS = '2',
 MODIFY_TIME = '2019-09-27 11:12:32',
 VALID = 1,
 CREATE_TIME = '2019-09-27 11:09:10',
 CREATOR = 'admin',
 LOCKER = 1,
 CHANGE_TYPE = 2,
 CONTACT_NAME = 'tudou123',
 CONTACT_MOBILE = '18923880699',
 CUSTOMER_REMARK = 'test',
 AIRLINE_STATUS = 3,
 AUDIT_PERSON = 'admin',
 AUDIT_TIME = '2019-09-27 11:09:22',
 CUSTOMER_NO = 401703040743530784,
 CUSTOMER_TYPE_NO = 301,
 CHANGE_REMARK = 'test',
 CURRENCY = 'CNY',
 SALE_CURRENCY = 'CNY',
 EXCHANGE_RATE = 1.00,
 ALONE_LOCKER = 1,
 ORIGIN_SALE_CHANGE_NO = 0
WHERE
	SALE_CHANGE_NO = 1177419795348410368
 Time：4 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.selectById
 Execute SQL：SELECT SALE_CHANGE_NO AS saleChangeNo,owner AS owner,business_sign_no AS businessSignNo,transation_order_no AS transationOrderNo,sale_order_no AS saleOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,amount AS amount,discount_amount AS discountAmount,plan_amount AS planAmount,actual_amount AS actualAmount,pay_status AS payStatus,status AS status,child_status AS childStatus,change_reason AS changeReason,keep_seat AS keepSeat,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_SALECHANGE WHERE SALE_CHANGE_NO=1177419795348410368


 - 添加（title=修改国际退/废销售单）操作日志异常===java.lang.NullPointerException  
- 采购废退单审核开始 
 Time：4 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.selectById
 Execute SQL：SELECT SALE_CHANGE_NO AS saleChangeNo,owner AS owner,business_sign_no AS businessSignNo,transation_order_no AS transationOrderNo,sale_order_no AS saleOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,amount AS amount,discount_amount AS discountAmount,plan_amount AS planAmount,actual_amount AS actualAmount,pay_status AS payStatus,status AS status,child_status AS childStatus,change_reason AS changeReason,keep_seat AS keepSeat,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_SALECHANGE WHERE SALE_CHANGE_NO=1177470335935664128

- 采购变更单getBuyChangesByBONo()-->buyOrderNo:1177469956334374912 
 Time：3 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.selectList
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,owner AS owner,business_sign_no AS businessSignNo,buy_order_no AS buyOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,plan_amount AS planAmount,actual_amount AS actualAmount,change_reason AS changeReason,pay_status AS payStatus,status AS status,child_status AS childStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_BUYCHANGE WHERE buy_order_no=1177469956334374912 AND valid=1 ORDER BY CREATE_TIME DESC

- generated Key : 1177470336493506560-2-5-5690.0000 
- generated Key : 1177470336493506560-2-5-5690.0000 
- OS_Redis : set[1177470336493506560-2-5-5690.0000--value:1177470336493506560-2-5-5690.0000] 
- 应收(付)记录创建开始--->参数为：CreatePlanAmountVO [recordNo=1177470336493506560, businessType=5, goodsType=2, recordMovingType=5, incomeExpenseType=1, movingReason=null, planAmount=5690.0000] 
- 业务单号查询应收付记录总和开始------> 
 Time：59 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.queryPlanAmountByRecordNo
 Execute SQL：SELECT ID,OWNER,RECORD_NO as recordNo,BUSINESS_TYPE as businessType,INCOME_EXPENSE_TYPE as incomeExpenseType, GOODS_TYPE as goodsType,RECORD_MOVING_TYPE as recordMovingType,SETTLEMENT_NO as settlementNo, PLAN_AMOUNT as planAmount,MOVING_REASON as movingReason, SETTLEMENT_STATUS as settlementStatus,MODIFIER,CREATE_TIME as createTime,MODIFY_TIME as modifyTime,VALID FROM OS_PLANAMOUNTRECORD WHERE VALID=1 AND RECORD_NO=1177470336493506560 AND BUSINESS_TYPE=5

- 业务单号无应收付记录------>1177470336493506560 
- 开始创建应收付记录----> 业务单号:1177470336493506560  创建总金额:5690.00   本次金额:5690.0000 
- 创建应收(付)记录--->验证类型为:5的业务单:1177470336493506560的结算状态是否为未结算。。。。。。 
 Time：3 ms - ID：com.tempus.gss.order.dao.BuyChangeExtendMapper.selectById
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,supplier_type_no AS supplierTypeNo,supplier_type_name AS supplierTypeName,supplier_no AS supplierNo,supplier_no_name AS supplierNoName,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,buy_channel_no AS buyChannelNo,clearance_amount AS clearanceAmount,TICKETNOS AS ticketNos FROM OS_BUYCHANGE_EXTEND WHERE BUY_CHANGE_NO=1177470336493506560

- 创建应收(付)记录--->验证应收(付)金额是否满足条件,amountCount:5690.00,recordNo:1177470336493506560 
- 采购变更单getBuyChangeByNo()-->buyChangeNo:1177470336493506560 
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.selectById
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,owner AS owner,business_sign_no AS businessSignNo,buy_order_no AS buyOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,plan_amount AS planAmount,actual_amount AS actualAmount,change_reason AS changeReason,pay_status AS payStatus,status AS status,child_status AS childStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_BUYCHANGE WHERE BUY_CHANGE_NO=1177470336493506560

 Time：42 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryOrderListByBusNo
 Execute SQL：SELECT ID,OWNER,RECORD_NO as recordNo,CERTIFICATE_NO as certificateNo,BUSINESS_TYPE as businessType, INCOME_EXPENSE_TYPE as incomeExpenseType,GOODS_TYPE as goodsType,PAY_TYPE as payType, GOODS_SUB_TYPE as goodsSubType,GOODS_NAME as goodsName,ACTUAL_AMOUNT as actualAmount, AUDIT_STATUS as auditStatus,ACTUAL_STATUS as actualStatus,MOVING_REASON as movingReason, SETTLEMENT_NO as settlementNo,PAY_NO as payNo,SETTLEMENT_STATUS as settlementStatus, REFUND_AMOUNT as refundAmount,MODIFIER, CREATE_TIME as createTime,MODIFY_TIME as modifyTime,ARRIVE_ACCOUNT_TIME as arriveAccountTime,VALID FROM OS_ACTUALAMOUNTRECORD R WHERE R.VALID=1 AND ( (R.RECORD_NO=1177470336493506560 AND R.BUSINESS_TYPE=5) OR (R.BUSINESS_TYPE=3 AND R.RECORD_NO IN( SELECT BUY_ORDER_NO FROM OS_BUYCHANGE WHERE BUY_CHANGE_NO=1177470336493506560 )) OR (R.BUSINESS_TYPE=5 AND R.RECORD_NO IN( SELECT BUY_CHANGE_NO FROM OS_BUYCHANGE WHERE BUY_ORDER_NO IN( SELECT BUY_ORDER_NO FROM OS_BUYCHANGE WHERE BUY_CHANGE_NO=1177470336493506560 ) ) AND RECORD_NO!=1177470336493506560) )
# 创建采购应付
 Time：3 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.insert
EXECUTE SQL：INSERT INTO OS_PLANAMOUNTRECORD (
	OWNER,
	record_no,
	business_type,
	income_expense_type,
	goods_type,
	record_moving_type,
	settlement_no,
	plan_amount,
	moving_reason,
	settlement_status,
	modifier,
	create_time,
	modify_time,
	valid
)
VALUES
	(
		8755,
		1177470336493506560,
		5,
		1,
		2,
		5,
		NULL,
		5690.0000,
		NULL,
		0,
		'admin',
		'2019-09-27 14:54:28',
		NULL,
		1
	)
 Time：2 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.selectById
 Execute SQL：SELECT id,owner AS owner,record_no AS recordNo,business_type AS businessType,income_expense_type AS incomeExpenseType,goods_type AS goodsType,record_moving_type AS recordMovingType,settlement_no AS settlementNo,plan_amount AS planAmount,moving_reason AS movingReason,settlement_status AS settlementStatus,modifier AS modifier,create_time AS createTime,modify_time AS modifyTime,valid AS valid FROM OS_PLANAMOUNTRECORD WHERE id=136183

 - 创建应收付记录完成----> PlanAmountRecord [id=136183, owner=8755, recordNo=1177470336493506560, businessType=5, incomeExpenseType=1, goodsType=2, recordMovingType=5, settlementNo=null, planAmount=5690.00, movingReason=null, settlementStatus=0, modifier=admin, createTime=Fri Sep 27 14:54:28 CST 2019, modifyTime=null, valid=1] 
 - 创建应收(付)记录--->修改业务单信息。。。。。。 
 - 业务单号查询应收付记录总和开始------> 
 Time：55 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.queryPlanAmountByRecordNo
 Execute SQL：SELECT ID,OWNER,RECORD_NO as recordNo,BUSINESS_TYPE as businessType,INCOME_EXPENSE_TYPE as incomeExpenseType, GOODS_TYPE as goodsType,RECORD_MOVING_TYPE as recordMovingType,SETTLEMENT_NO as settlementNo, PLAN_AMOUNT as planAmount,MOVING_REASON as movingReason, SETTLEMENT_STATUS as settlementStatus,MODIFIER,CREATE_TIME as createTime,MODIFY_TIME as modifyTime,VALID FROM OS_PLANAMOUNTRECORD WHERE VALID=1 AND RECORD_NO=1177470336493506560 AND BUSINESS_TYPE=5

 - 业务单号查询应收付记录总和结束------>recordNo:1177470336493506560  businessType:5  金额:5690.00 
 - 采购变更单getBuyChangeByNo()-->buyChangeNo:1177470336493506560 
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.selectById
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,owner AS owner,business_sign_no AS businessSignNo,buy_order_no AS buyOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,plan_amount AS planAmount,actual_amount AS actualAmount,change_reason AS changeReason,pay_status AS payStatus,status AS status,child_status AS childStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_BUYCHANGE WHERE BUY_CHANGE_NO=1177470336493506560

 - 采购变更单update()参数-->BuyChange [buyChangeNo=1177470336493506560, owner=8755, businessSignNo=1177470426953990144, buyOrderNo=1177469956334374912, deptCode=69, orderChangeType=2, incomeExpenseType=1, planAmount=5690.00, actualAmount=0.00, changeReason=null, payStatus=1, status=null, childStatus=2, createTime=Fri Sep 27 14:30:00 CST 2019, modifyTime=Fri Sep 27 14:39:07 CST 2019, modifier=admin, goodsType=2, goodsSubType=22, goodsName=, pcount=null, valid=1, bsignType=4, haveDifference=null, differenceTotalAmount=null] 
# 更新采购变更单信息 
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_BUYCHANGE
SET OWNER = 8755,
 business_sign_no = 1177470426953990144,
 buy_order_no = 1177469956334374912,
 dept_code = '69',
 order_change_type = 2,
 income_expense_type = 1,
 plan_amount = 5690.00,
 actual_amount = 0.00,
 pay_status = 1,
 child_status = 2,
 create_time = '2019-09-27 14:30:00',
 modify_time = '2019-09-27 14:39:07',
 modifier = 'admin',
 goods_type = 2,
 goods_sub_type = 22,
 goods_name = '',
 valid = 1,
 bsign_type = 4
WHERE
	BUY_CHANGE_NO = 1177470336493506560
 Time：3 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.selectById
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,owner AS owner,business_sign_no AS businessSignNo,buy_order_no AS buyOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,plan_amount AS planAmount,actual_amount AS actualAmount,change_reason AS changeReason,pay_status AS payStatus,status AS status,child_status AS childStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_BUYCHANGE WHERE BUY_CHANGE_NO=1177470336493506560

- 订单核价结束 


- 采购变更单getBuyChangesByBONo()-->buyOrderNo:1177469956334374912 
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.selectList
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,owner AS owner,business_sign_no AS businessSignNo,buy_order_no AS buyOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,plan_amount AS planAmount,actual_amount AS actualAmount,change_reason AS changeReason,pay_status AS payStatus,status AS status,child_status AS childStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_BUYCHANGE WHERE buy_order_no=1177469956334374912 AND valid=1 ORDER BY CREATE_TIME DESC

 Time：3 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.selectById
 Execute SQL：SELECT SALE_CHANGE_NO AS saleChangeNo,owner AS owner,business_sign_no AS businessSignNo,transation_order_no AS transationOrderNo,sale_order_no AS saleOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,amount AS amount,discount_amount AS discountAmount,plan_amount AS planAmount,actual_amount AS actualAmount,pay_status AS payStatus,status AS status,child_status AS childStatus,change_reason AS changeReason,keep_seat AS keepSeat,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_SALECHANGE WHERE SALE_CHANGE_NO=1177470335935664128

 - 航司退款审核结算,创建采购退款单参数:CertificateCreateVO:{ "orderInfoList":"[BusinessOrderInfo [recordNo=1177470336493506560, businessType=5, actualAmount=5690.00]]","payWay":"1000001","payType":"1000001","accoutNo":"809683098651348992","serviceLine":"2","channel":"","ticketNos":"","customerTypeNo":"104","incomeExpenseType":"1","customerNo":"411805170138410133","subBusinessType":"3","reason":"创建采购退款单信息","thirdPayNo":",896655","thirdBusNo":"","amount":null,"settlementNo":"","paymentAccount":"","receivableAccount":"","isWithHold":"false","payNo":"","pnr":"","transationOrderNo":"","saleOrderNo":"","specialType":null} 
 - 调用根据退款金额列表创建采购退款单服务开始--->参数为：CertificateCreateVO:{ "orderInfoList":"[BusinessOrderInfo [recordNo=1177470336493506560, businessType=5, actualAmount=5690.00]]","payWay":"1000001","payType":"1000001","accoutNo":"809683098651348992","serviceLine":"2","channel":"","ticketNos":"","customerTypeNo":"104","incomeExpenseType":"1","customerNo":"411805170138410133","subBusinessType":"3","reason":"创建采购退款单信息","thirdPayNo":",896655","thirdBusNo":"","amount":null,"settlementNo":"","paymentAccount":"","receivableAccount":"","isWithHold":"false","payNo":"","pnr":"","transationOrderNo":"","saleOrderNo":"","specialType":null} 
 - 转换业务单信息。。。。。。 
 - 创建采购退款单--->验证类型为:5的业务单:1177470336493506560的结算状态是否为未结算! 
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyChangeExtendMapper.selectById
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,supplier_type_no AS supplierTypeNo,supplier_type_name AS supplierTypeName,supplier_no AS supplierNo,supplier_no_name AS supplierNoName,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,buy_channel_no AS buyChannelNo,clearance_amount AS clearanceAmount,TICKETNOS AS ticketNos FROM OS_BUYCHANGE_EXTEND WHERE BUY_CHANGE_NO=1177470336493506560

- 根据传入的单号列表获取对应业务单的退款应收付金额列表。。。。。。 
- 根据单号获取应收付减实收付后的金额。。。。。。 
- 采购变更单getBuyChangeByNo()-->buyChangeNo:1177470336493506560 
 Time：3 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.selectById
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,owner AS owner,business_sign_no AS businessSignNo,buy_order_no AS buyOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,plan_amount AS planAmount,actual_amount AS actualAmount,change_reason AS changeReason,pay_status AS payStatus,status AS status,child_status AS childStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_BUYCHANGE WHERE BUY_CHANGE_NO=1177470336493506560

 - 采购单getBOrderByBONo()-->buyOrderNo:1177469956334374912 
 Time：4 ms - ID：com.tempus.gss.order.dao.BuyOrderMapper.selectOne
 Execute SQL：SELECT BUY_ORDER_NO AS buyOrderNo,owner AS owner,sale_order_no AS saleOrderNo,bsign_type AS bsignType,business_sign_no AS businessSignNo,buy_channel_no AS buyChannelNo,dept_code AS deptCode,supplier_type_no AS supplierTypeNo,supplier_no AS supplierNo,buy_change_type AS buyChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,buyer AS buyer,pcount AS pcount,payable AS payable,payment AS payment,saleorder_price AS saleorderPrice,buying_time AS buyingTime,pay_status AS payStatus,buy_status AS buyStatus,buy_child_status AS buyChildStatus,modify_time AS modifyTime,modifier AS modifier,valid AS valid,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,transation_order_no AS transationOrderNo FROM OS_BUYORDER WHERE BUY_ORDER_NO=1177469956334374912

 Time：44 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryOrderListByBusNo
 Execute SQL：SELECT ID,OWNER,RECORD_NO as recordNo,CERTIFICATE_NO as certificateNo,BUSINESS_TYPE as businessType, INCOME_EXPENSE_TYPE as incomeExpenseType,GOODS_TYPE as goodsType,PAY_TYPE as payType, GOODS_SUB_TYPE as goodsSubType,GOODS_NAME as goodsName,ACTUAL_AMOUNT as actualAmount, AUDIT_STATUS as auditStatus,ACTUAL_STATUS as actualStatus,MOVING_REASON as movingReason, SETTLEMENT_NO as settlementNo,PAY_NO as payNo,SETTLEMENT_STATUS as settlementStatus, REFUND_AMOUNT as refundAmount,MODIFIER, CREATE_TIME as createTime,MODIFY_TIME as modifyTime,ARRIVE_ACCOUNT_TIME as arriveAccountTime,VALID FROM OS_ACTUALAMOUNTRECORD R WHERE R.VALID=1 AND R.INCOME_EXPENSE_TYPE=2 AND ( (R.RECORD_NO=1177470336493506560 AND R.BUSINESS_TYPE=5) OR (R.BUSINESS_TYPE=3 AND R.RECORD_NO IN( SELECT BUY_ORDER_NO FROM OS_BUYCHANGE WHERE BUY_CHANGE_NO=1177470336493506560 )) OR (R.BUSINESS_TYPE=5 AND R.RECORD_NO IN( SELECT BUY_CHANGE_NO FROM OS_BUYCHANGE WHERE BUY_ORDER_NO IN( SELECT BUY_ORDER_NO FROM OS_BUYCHANGE WHERE BUY_CHANGE_NO=1177470336493506560 ) ) AND RECORD_NO!=1177470336493506560) )

 - 创建c、a、修改业务单信息和状态、修改扩展表  setCertificate 开始,参数：amount---5690.00,   CertificateCreateVO:{ "orderInfoList":"[BusinessOrderInfo [recordNo=1177470336493506560, businessType=5, actualAmount=5690.00]]","payWay":"1000001","payType":"1","accoutNo":"809683098651348992","serviceLine":"2","channel":"","ticketNos":"","customerTypeNo":"104","incomeExpenseType":"1","customerNo":"411805170138410133","subBusinessType":"3","reason":"创建采购退款单信息","thirdPayNo":",896655","thirdBusNo":"","amount":null,"settlementNo":"","paymentAccount":"","receivableAccount":"","isWithHold":"false","payNo":"","pnr":"","transationOrderNo":"","saleOrderNo":"","specialType":null} 
 - setCertificate 保存certificate：Certificate:{ "certificateNo":"1177476750190231552","owner":"8755","businessType":"2","incomeExpenseType":"1","subBusinessType":"3","payType":"1","payWay":"1000001","customerTypeNo":"104","customerNo":"411805170138410133","capitalAccountNo":"809683098651348992","amount":"5690.00","auditStatus":"1","reason":"创建采购退款单信息","settlementNo":"","settlementStatus":"0","payNo":"","thirdPayNo":",896655","thirdBusNo":"","payAmount":null,"billsNumber":"","modifier":"admin","createTime":"Fri Sep 27 14:55:08 CST 2019","modifyTime":null,"actualStatus":"0","valid":"1","ticketnos":"","specialType":"0","pnr":"","transationOrderNo":"","saleOrderNo":"","actualAmountRecordList":"[]"} 
 Time：3 ms - ID：com.tempus.gss.order.dao.CertificateMapper.insertSelective
EXECUTE SQL：INSERT INTO OS_CERTIFICATE (
	certificate_no,
	OWNER,
	business_type,
	income_expense_type,
	sub_business_type,
	pay_type,
	pay_way,
	customer_type_no,
	customer_no,
	capital_account_no,
	amount,
	audit_status,
	reason,
	settlement_no,
	settlement_status,
	third_pay_no,
	modifier,
	create_time,
	actual_status,
	valid,
	special_type
)
VALUES
	(
		1177476750190231552,
		8755,
		2,
		1,
		3,
		1,
		1000001,
		104,
		411805170138410133,
		'809683098651348992',
		5690.00,
		1,
		'创建采购退款单信息',
		'',
		0,
		',896655',
		'admin',
		'2019-09-27 14:55:08',
		0,
		1,
		0
	)
 - 创建实收(付)记录--->参数为：ActualAmountRecord [id=null, owner=null, recordNo=1177470336493506560, certificateNo=1177476750190231552, businessType=5, payType=1, incomeExpenseType=1, goodsType=2, goodsSubType=22, goodsName=, actualAmount=5690.00, auditStatus=null, actualStatus=null, movingReason=null, settlementNo=null, payNo=null, settlementStatus=null, modifier=null, createTime=null, modifyTime=null, arriveAccountTime=null, valid=null, refundAmount=0, payWay=null, capitalAccountNo=null，payWayName=null] 
 Time：2 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.insert
EXECUTE SQL：INSERT INTO OS_ACTUALAMOUNTRECORD (
	OWNER,
	record_no,
	certificate_no,
	business_type,
	pay_type,
	income_expense_type,
	goods_type,
	goods_sub_type,
	goods_name,
	actual_amount,
	audit_status,
	actual_status,
	moving_reason,
	settlement_no,
	pay_no,
	settlement_status,
	modifier,
	create_time,
	modify_time,
	arrive_account_time,
	valid,
	refund_amount
)
VALUES
	(
		8755,
		1177470336493506560,
		1177476750190231552,
		5,
		1,
		1,
		2,
		22,
		'',
		5690.00,
		1,
		0,
		NULL,
		NULL,
		NULL,
		0,
		'admin',
		'2019-09-27 14:55:08',
		NULL,
		NULL,
		1,
		0
	)
 - 创建退款单--->开始调用支付线下退款服务。。。。。。 
 - 创建退款单--->调用支付线下退款服务请求参数：com.tempus.gss.pay.entity.vo.OffLineRefundRequest@197de7b1[tradeNo=<null>,threeTradeNo=<null>,isAudit=false,amount=5690.00,refundOrderNo=1177476750190231552,cusId=411805170138410133,paymentAccount=809683098651348992,receivableAccount=<null>,shortRemark=创建采购退款单信息,payWay=1000001,transationOrderNo=<null>,saleOrderNo=<null>,pnr=<null>] 
- 线下退款请求：OffLineRefundRequest [tradeNo=null, threeTradeNo=null, isAudit=false, amount=5690.00, refundOrderNo=1177476750190231552, cusId=411805170138410133, paymentAccount=809683098651348992, receivableAccount=null, shortRemark=创建采购退款单信息, payWay=1000001, transationOrderNo=null, saleOrderNo=null, pnr=null], com.tempus.gss.vo.Agent@250f1717[owner=8755,type=<null>,num=<null>,id=1,account=admin,token=,ip=172.16.51.69,device=OP,enterpriseNo=<null>,telephone=<null>,seat=<null>] 
 Time：19 ms - ID：com.tempus.gss.pay.dao.AllPayInfoMapper.insert
EXECUTE SQL：INSERT INTO PS_ALL_PAY_INFO (
	all_pay_info_no,
	cust_user_no,
	cust_user_account_no,
	cust_channel,
	service_line,
	order_no,
	order_type,
	pay_category_code,
	pay_way_code,
	three_interface_set_no,
	amount,
	real_amount,
	plat_rate,
	three_rate,
	plat_fare,
	three_fare,
	three_trade_no,
	old_all_pay_info_no,
	old_three_trade_no,
	trade_type,
	trade_status,
	audit_status,
	mark,
	submit_info,
	calback_info,
	payment_account,
	payment_account_name,
	receivable_account,
	receivable_account_name,
	before_balance,
	after_balance,
	cust_remark,
	audit_remark,
	payment_ip,
	payment_address,
	payment_time,
	creator,
	create_time,
	auditor,
	audit_time,
	completer,
	complete_time,
	OWNER,
	operator,
	operator_tel,
	call_back_url,
	transation_order_no,
	sale_order_no,
	pnr,
	notify_time,
	transation_certificate_url,
	payment_type,
	payback_amount,
	receive_time,
	product_type,
	pay_way
)
VALUES
	(
		1177476750232174592,
		411805170138410133,
		0,
		NULL,
		'1',
		1177476750190231552,
		1,
		1000,
		1000001,
		NULL,
		5690.00,
		NULL,
		0,
		0,
		0,
		0,
		NULL,
		NULL,
		NULL,
		3,
		1,
		0,
		NULL,
		NULL,
		NULL,
		'809683098651348992',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'创建采购退款单信息',
		NULL,
		NULL,
		NULL,
		NULL,
		'admin',
		'2019-09-27 14:55:08',
		NULL,
		NULL,
		NULL,
		NULL,
		8755,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	)
- 线下退款响应：OffLineRefundResponse [code=0000, message=退款成功, payStatus=1, payWay=1000001, paymentAccount=809683098651348992, receivableAccount=null, payNo=1177476750232174592] 
- 创建退款单--->调用支付线下退款服务结果：com.tempus.gss.pay.entity.vo.OffLineRefundResponse@75d5b7e9[code=0000,message=退款成功,payStatus=1,payWay=1000001,paymentAccount=809683098651348992,receivableAccount=<null>,payNo=1177476750232174592] 
- 调用支付结果通知服务payReceive开始--->参数为：PayReceiveVO [certificateNo=1177476750190231552, payStatus=1, amount=5690.00, payWay=1000001, payNo=1177476750232174592, thirdPayNo=null, paymentAccount=809683098651348992, receivableAccount=null, reason=null] 
 Time：2 ms - ID：com.tempus.gss.order.dao.CertificateMapper.selectByCertificateNoAll
 Execute SQL：SELECT * FROM OS_CERTIFICATE WHERE CERTIFICATE_NO = 1177476750190231552

 Time：1 ms - ID：com.tempus.gss.order.dao.CertificateMapper.updateByPrimaryKeySelective
EXECUTE SQL：update OS_CERTIFICATE
SET PAY_WAY = 1000001,
 CAPITAL_ACCOUNT_NO = '809683098651348992',
 PAY_NO = '1177476750232174592',
 PAY_AMOUNT = 5690.00,
 ACTUAL_STATUS = 1,
 VALID = 1
WHERE
	CERTIFICATE_NO = 1177476750190231552
 - 发送通知--更新收付款单：为Certificate:{ "certificateNo":"1177476750190231552","owner":null,"businessType":null,"incomeExpenseType":null,"subBusinessType":null,"payType":null,"payWay":"1000001","customerTypeNo":null,"customerNo":null,"capitalAccountNo":"809683098651348992","amount":null,"auditStatus":null,"reason":"","settlementNo":"","settlementStatus":null,"payNo":"1177476750232174592","thirdPayNo":"","thirdBusNo":"","payAmount":"5690.00","billsNumber":"","modifier":"","createTime":null,"modifyTime":null,"actualStatus":"1","valid":"1","ticketnos":"","specialType":null,"pnr":"","transationOrderNo":"","saleOrderNo":"","actualAmountRecordList":"[]"} 
 Time：1 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.updateActualAmountRecord
EXECUTE SQL：UPDATE OS_ACTUALAMOUNTRECORD
SET ACTUAL_STATUS = 1,
 PAY_NO = '1177476750232174592',
 MODIFY_TIME = '2019-09-27 14:55:08',
 VALID = 1
WHERE
	CERTIFICATE_NO = 1177476750190231552
 Time：3 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryListBycertificateNo
 Execute SQL：SELECT ID,OWNER,RECORD_NO as recordNo,CERTIFICATE_NO as certificateNo,BUSINESS_TYPE as businessType, INCOME_EXPENSE_TYPE as incomeExpenseType,GOODS_TYPE as goodsType,PAY_TYPE as payType, GOODS_SUB_TYPE as goodsSubType,GOODS_NAME as goodsName,ACTUAL_AMOUNT as actualAmount, AUDIT_STATUS as auditStatus,ACTUAL_STATUS as actualStatus,MOVING_REASON as movingReason, SETTLEMENT_NO as settlementNo,PAY_NO as payNo,SETTLEMENT_STATUS as settlementStatus, REFUND_AMOUNT as refundAmount,MODIFIER, CREATE_TIME as createTime,MODIFY_TIME as modifyTime,ARRIVE_ACCOUNT_TIME as arriveAccountTime,VALID FROM OS_ACTUALAMOUNTRECORD WHERE VALID=1 AND CERTIFICATE_NO = 1177476750190231552

 - 修改业务单的实收、状态。。。。。。 
 Time：3 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryActualAmountByRecordNo
 Execute SQL：( SELECT A.ID, A.OWNER, A.RECORD_NO AS recordNo, A.CERTIFICATE_NO AS certificateNo, A.BUSINESS_TYPE AS businessType, A.INCOME_EXPENSE_TYPE AS incomeExpenseType, A.GOODS_TYPE AS goodsType, A.PAY_TYPE AS payType, A.GOODS_SUB_TYPE AS goodsSubType, A.GOODS_NAME AS goodsName, A.ACTUAL_AMOUNT AS actualAmount, A.AUDIT_STATUS AS auditStatus, A.ACTUAL_STATUS AS actualStatus, A.MOVING_REASON AS movingReason, A.SETTLEMENT_NO AS settlementNo, A.PAY_NO AS payNo, A.SETTLEMENT_STATUS AS settlementStatus, A.REFUND_AMOUNT AS refundAmount, A.MODIFIER, A.CREATE_TIME AS createTime, A.MODIFY_TIME AS modifyTime, A.ARRIVE_ACCOUNT_TIME AS arriveAccountTime, A.VALID, C.PAY_WAY AS payWay, C.CAPITAL_ACCOUNT_NO AS capitalAccountNo, P.NAME AS payWayName FROM OS_ACTUALAMOUNTRECORD A LEFT JOIN OS_CERTIFICATE C ON A.CERTIFICATE_NO = C.CERTIFICATE_NO LEFT JOIN PS_PAY_WAY P ON P.CODE = C.PAY_WAY WHERE A.VALID=1 AND A.RECORD_NO=1177470336493506560 AND A.BUSINESS_TYPE=5 ORDER BY A.CREATE_TIME DESC) UNION ( SELECT A.ID, A.OWNER, A.RECORD_NO AS recordNo, A.CERTIFICATE_NO AS certificateNo, A.BUSINESS_TYPE AS businessType, A.INCOME_EXPENSE_TYPE AS incomeExpenseType, A.GOODS_TYPE AS goodsType, A.PAY_TYPE AS payType, A.GOODS_SUB_TYPE AS goodsSubType, A.GOODS_NAME AS goodsName, A.ACTUAL_AMOUNT AS actualAmount, A.AUDIT_STATUS AS auditStatus, A.ACTUAL_STATUS AS actualStatus, A.MOVING_REASON AS movingReason, A.SETTLEMENT_NO AS settlementNo, A.PAY_NO AS payNo, A.SETTLEMENT_STATUS AS settlementStatus, A.REFUND_AMOUNT AS refundAmount, A.MODIFIER, A.CREATE_TIME AS createTime, A.MODIFY_TIME AS modifyTime, A.ARRIVE_ACCOUNT_TIME AS arriveAccountTime, A.VALID, C.PAY_WAY AS payWay, C.CAPITAL_ACCOUNT_NO AS capitalAccountNo, P.NAME AS payWayName FROM OS_ACTUALAMOUNTRECORD A LEFT JOIN OS_CERTIFICATE C ON A.CERTIFICATE_NO = C.CERTIFICATE_NO LEFT JOIN PS_PAY_WAY P ON P.CODE = C.PAY_WAY LEFT JOIN OS_DIFFERENCE_ORDER D on D.BUSINESS_ORDER_NO=A.RECORD_NO WHERE A.VALID=1 AND D.BUSINESS_ORDER_NO =1177470336493506560 AND A.BUSINESS_TYPE=5 ORDER BY A.CREATE_TIME DESC )

 - 采购变更单getBuyChangeByNo()-->buyChangeNo:1177470336493506560 
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.selectById
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,owner AS owner,business_sign_no AS businessSignNo,buy_order_no AS buyOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,plan_amount AS planAmount,actual_amount AS actualAmount,change_reason AS changeReason,pay_status AS payStatus,status AS status,child_status AS childStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_BUYCHANGE WHERE BUY_CHANGE_NO=1177470336493506560

 - 采购变更单update()参数-->BuyChange [buyChangeNo=1177470336493506560, owner=8755, businessSignNo=1177470426953990144, buyOrderNo=1177469956334374912, deptCode=69, orderChangeType=2, incomeExpenseType=1, planAmount=5690.00, actualAmount=5690.00, changeReason=null, payStatus=3, status=null, childStatus=2, createTime=Fri Sep 27 14:30:00 CST 2019, modifyTime=Fri Sep 27 14:39:07 CST 2019, modifier=admin, goodsType=2, goodsSubType=22, goodsName=, pcount=null, valid=1, bsignType=4, haveDifference=null, differenceTotalAmount=null] 
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_BUYCHANGE
SET OWNER = 8755,
 business_sign_no = 1177470426953990144,
 buy_order_no = 1177469956334374912,
 dept_code = '69',
 order_change_type = 2,
 income_expense_type = 1,
 plan_amount = 5690.00,
 actual_amount = 5690.00,
 pay_status = 3,
 child_status = 2,
 create_time = '2019-09-27 14:30:00',
 modify_time = '2019-09-27 14:39:07',
 modifier = 'admin',
 goods_type = 2,
 goods_sub_type = 22,
 goods_name = '',
 valid = 1,
 bsign_type = 4
WHERE
	BUY_CHANGE_NO = 1177470336493506560
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.selectById
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,owner AS owner,business_sign_no AS businessSignNo,buy_order_no AS buyOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,plan_amount AS planAmount,actual_amount AS actualAmount,change_reason AS changeReason,pay_status AS payStatus,status AS status,child_status AS childStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_BUYCHANGE WHERE BUY_CHANGE_NO=1177470336493506560

 - 修改业务单扩展表的相关信息。。。。。。 
 Time：3 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryActualAmountByRecordNo
 Execute SQL：( SELECT A.ID, A.OWNER, A.RECORD_NO AS recordNo, A.CERTIFICATE_NO AS certificateNo, A.BUSINESS_TYPE AS businessType, A.INCOME_EXPENSE_TYPE AS incomeExpenseType, A.GOODS_TYPE AS goodsType, A.PAY_TYPE AS payType, A.GOODS_SUB_TYPE AS goodsSubType, A.GOODS_NAME AS goodsName, A.ACTUAL_AMOUNT AS actualAmount, A.AUDIT_STATUS AS auditStatus, A.ACTUAL_STATUS AS actualStatus, A.MOVING_REASON AS movingReason, A.SETTLEMENT_NO AS settlementNo, A.PAY_NO AS payNo, A.SETTLEMENT_STATUS AS settlementStatus, A.REFUND_AMOUNT AS refundAmount, A.MODIFIER, A.CREATE_TIME AS createTime, A.MODIFY_TIME AS modifyTime, A.ARRIVE_ACCOUNT_TIME AS arriveAccountTime, A.VALID, C.PAY_WAY AS payWay, C.CAPITAL_ACCOUNT_NO AS capitalAccountNo, P.NAME AS payWayName FROM OS_ACTUALAMOUNTRECORD A LEFT JOIN OS_CERTIFICATE C ON A.CERTIFICATE_NO = C.CERTIFICATE_NO LEFT JOIN PS_PAY_WAY P ON P.CODE = C.PAY_WAY WHERE A.VALID=1 AND A.RECORD_NO=1177470336493506560 AND A.BUSINESS_TYPE=5 ORDER BY A.CREATE_TIME DESC) UNION ( SELECT A.ID, A.OWNER, A.RECORD_NO AS recordNo, A.CERTIFICATE_NO AS certificateNo, A.BUSINESS_TYPE AS businessType, A.INCOME_EXPENSE_TYPE AS incomeExpenseType, A.GOODS_TYPE AS goodsType, A.PAY_TYPE AS payType, A.GOODS_SUB_TYPE AS goodsSubType, A.GOODS_NAME AS goodsName, A.ACTUAL_AMOUNT AS actualAmount, A.AUDIT_STATUS AS auditStatus, A.ACTUAL_STATUS AS actualStatus, A.MOVING_REASON AS movingReason, A.SETTLEMENT_NO AS settlementNo, A.PAY_NO AS payNo, A.SETTLEMENT_STATUS AS settlementStatus, A.REFUND_AMOUNT AS refundAmount, A.MODIFIER, A.CREATE_TIME AS createTime, A.MODIFY_TIME AS modifyTime, A.ARRIVE_ACCOUNT_TIME AS arriveAccountTime, A.VALID, C.PAY_WAY AS payWay, C.CAPITAL_ACCOUNT_NO AS capitalAccountNo, P.NAME AS payWayName FROM OS_ACTUALAMOUNTRECORD A LEFT JOIN OS_CERTIFICATE C ON A.CERTIFICATE_NO = C.CERTIFICATE_NO LEFT JOIN PS_PAY_WAY P ON P.CODE = C.PAY_WAY LEFT JOIN OS_DIFFERENCE_ORDER D on D.BUSINESS_ORDER_NO=A.RECORD_NO WHERE A.VALID=1 AND D.BUSINESS_ORDER_NO =1177470336493506560 AND A.BUSINESS_TYPE=5 ORDER BY A.CREATE_TIME DESC )

 - 调用收付款单查询服务开始--->收付款单号为：1177476750190231552 
 Time：3 ms - ID：com.tempus.gss.order.dao.CertificateMapper.selectByCertificateNo
 Execute SQL：SELECT C.* FROM ( SELECT T.OWNER, T.CERTIFICATE_NO, T.BUSINESS_TYPE, T.INCOME_EXPENSE_TYPE, T.SUB_BUSINESS_TYPE, T.PAY_TYPE, T.PAY_WAY, T.CUSTOMER_TYPE_NO, T.CUSTOMER_NO, T.CAPITAL_ACCOUNT_NO, T.AMOUNT, T.AUDIT_STATUS, T.REASON, T.SETTLEMENT_NO, T.SETTLEMENT_STATUS, T.PAY_NO, T.THIRD_PAY_NO, T.THIRD_BUS_NO, T.MODIFIER, T.MODIFY_TIME, T.CREATE_TIME, T.ACTUAL_STATUS, T.SPECIAL_TYPE, T.VALID, S.ID, S.OWNER as AAR_OWNER, S.RECORD_NO, S.CERTIFICATE_NO AS AAR_CERTIFICATE_NO, S.BUSINESS_TYPE AS AAR_BUSINESS_TYPE, S.INCOME_EXPENSE_TYPE AS AAR_INCOME_EXPENSE_TYPE, S.GOODS_TYPE AS AAR_GOODS_TYPE, S.GOODS_SUB_TYPE AS AAR_GOODS_SUB_TYPE, S.GOODS_NAME AS AAR_GOODS_NAME, S.ACTUAL_AMOUNT, S.ACTUAL_STATUS AS AAR_ACTUAL_STATUS, S.AUDIT_STATUS AS AAR_AUDIT_STATUS, S.MOVING_REASON, S.SETTLEMENT_STATUS AS AAR_SETTLEMENT_STATUS, S.SETTLEMENT_NO AS AAR_SETTLEMENT_NO, S.PAY_NO AS AAR_PAY_NO, S.MODIFIER AS AAR_MODIFIER, S.ARRIVE_ACCOUNT_TIME, S.VALID AS AAR_VALID, S.CREATE_TIME AS AAR_CREATE_TIME, S.MODIFY_TIME AS AAR_MODIFY_TIME FROM OS_CERTIFICATE T LEFT JOIN OS_ACTUALAMOUNTRECORD S ON S.CERTIFICATE_NO = T.CERTIFICATE_NO ) C WHERE VALID=1 AND CERTIFICATE_NO = 1177476750190231552

 Time：3 ms - ID：com.tempus.gss.order.dao.BuyChangeExtendMapper.selectById
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,supplier_type_no AS supplierTypeNo,supplier_type_name AS supplierTypeName,supplier_no AS supplierNo,supplier_no_name AS supplierNoName,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,buy_channel_no AS buyChannelNo,clearance_amount AS clearanceAmount,TICKETNOS AS ticketNos FROM OS_BUYCHANGE_EXTEND WHERE BUY_CHANGE_NO=1177470336493506560

 Time：1 ms - ID：com.tempus.gss.order.dao.BuyChangeExtendMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_BUYCHANGE_EXTEND
SET settlement_status = 1,
 match_status = 1,
 check_result = 0,
 clearance_status = 1,
 supplier_type_no = 104,
 supplier_no = 411805170138410133,
 certificate_no = '1177476750190231552',
 pay_way = '1000001',
 third_pay_no = ',896655',
 third_bus_no = '',
 TICKETNOS = ''
WHERE
	BUY_CHANGE_NO = 1177470336493506560

- 采购变更单getBuyChangesByBONo()-->buyOrderNo:1177469956334374912 
 Time：4 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.selectList
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,owner AS owner,business_sign_no AS businessSignNo,buy_order_no AS buyOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,plan_amount AS planAmount,actual_amount AS actualAmount,change_reason AS changeReason,pay_status AS payStatus,status AS status,child_status AS childStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_BUYCHANGE WHERE buy_order_no=1177469956334374912 AND valid=1 ORDER BY CREATE_TIME DESC

 Time：6 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.selectById
 Execute SQL：SELECT SALE_CHANGE_NO AS saleChangeNo,owner AS owner,business_sign_no AS businessSignNo,transation_order_no AS transationOrderNo,sale_order_no AS saleOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,amount AS amount,discount_amount AS discountAmount,plan_amount AS planAmount,actual_amount AS actualAmount,pay_status AS payStatus,status AS status,child_status AS childStatus,change_reason AS changeReason,keep_seat AS keepSeat,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_SALECHANGE WHERE SALE_CHANGE_NO=1177470335935664128

- t。。。。。。 
- 采购变更单getBuyChangeByNo()-->buyChangeNo:1177470336493506560 
 Time：6 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.selectById
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,owner AS owner,business_sign_no AS businessSignNo,buy_order_no AS buyOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,plan_amount AS planAmount,actual_amount AS actualAmount,change_reason AS changeReason,pay_status AS payStatus,status AS status,child_status AS childStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_BUYCHANGE WHERE BUY_CHANGE_NO=1177470336493506560

 - 采购单getBOrderByBONo()-->buyOrderNo:1177469956334374912 
 Time：3 ms - ID：com.tempus.gss.order.dao.BuyOrderMapper.selectOne
 Execute SQL：SELECT BUY_ORDER_NO AS buyOrderNo,owner AS owner,sale_order_no AS saleOrderNo,bsign_type AS bsignType,business_sign_no AS businessSignNo,buy_channel_no AS buyChannelNo,dept_code AS deptCode,supplier_type_no AS supplierTypeNo,supplier_no AS supplierNo,buy_change_type AS buyChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,buyer AS buyer,pcount AS pcount,payable AS payable,payment AS payment,saleorder_price AS saleorderPrice,buying_time AS buyingTime,pay_status AS payStatus,buy_status AS buyStatus,buy_child_status AS buyChildStatus,modify_time AS modifyTime,modifier AS modifier,valid AS valid,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,transation_order_no AS transationOrderNo FROM OS_BUYORDER WHERE BUY_ORDER_NO=1177469956334374912

 - 支付结果通知接收--->发送MQ消息：com.tempus.gss.order.entity.vo.PayNoticeVO@6aa996db[owner=8755,goodsType=2,businessNo=1177470336493506560,traNo=1177470035663175680,businessType=5,changeType=2,payWay=1000001,incomeExpenseType=1,payStatus=1,reason=<null>,actualAmount=5690.00,agent={owner=8755, enterpriseNo=null, num=null, ip=172.16.51.69, id=1, type=null, device=OP, account=admin, token=}] 
 Time：107 ms - ID：com.tempus.gss.pay.dao.AllPayInfoMapper.selectOne
 Execute SQL：SELECT id,all_pay_info_no AS allPayInfoNo,cust_user_no AS custUserNo,cust_user_account_no AS custUserAccountNo,cust_channel AS custChannel,service_line AS serviceLine,order_no AS orderNo,order_type AS orderType,pay_category_code AS payCategoryCode,pay_way_code AS payWayCode,three_interface_set_no AS threeInterfaceSetNo,amount AS amount,real_amount AS realAmount,plat_rate AS platRate,three_rate AS threeRate,plat_fare AS platFare,three_fare AS threeFare,three_trade_no AS threeTradeNo,old_all_pay_info_no AS oldAllPayInfoNo,old_three_trade_no AS oldThreeTradeNo,trade_type AS tradeType,trade_status AS tradeStatus,audit_status AS auditStatus,mark AS mark,submit_info AS submitInfo,calback_info AS calbackInfo,payment_account AS paymentAccount,payment_account_name AS paymentAccountName,receivable_account AS receivableAccount,receivable_account_name AS receivableAccountName,before_balance AS beforeBalance,after_balance AS afterBalance,cust_remark AS custRemark,audit_remark AS auditRemark,payment_ip AS paymentIp,payment_address AS paymentAddress,payment_time AS paymentTime,creator AS creator,create_time AS createTime,auditor AS auditor,audit_time AS auditTime,completer AS completer,complete_time AS completeTime,owner AS owner,operator AS operator,operator_tel AS operatorTel,call_back_url AS callBackUrl,transation_order_no AS transationOrderNo,sale_order_no AS saleOrderNo,pnr AS pnr,notify_time AS notifyTime,transation_certificate_url AS transationCertificateUrl,payment_type AS paymentType,payback_amount AS paybackAmount,receive_time AS receiveTime,product_type AS productType,pay_way AS payWay FROM PS_ALL_PAY_INFO WHERE trade_status=1 AND owner=8755 AND transation_order_no='1177470035663175680'

 - allPayInfo====AllPayInfo [id=210337, allPayInfoNo=1177470092827344896, custUserNo=401703040743530784, custUserName=null, custUserAccountNo=838648777869889536, custChannel=301, serviceLine=1, orderNo=1177470091862654976, orderType=1, payCategoryCode=2000, payCategoryName=null, payWayCode=2000001, payWayName=null, threeInterfaceSetNo=920165217933959168, amount=5690.00, realAmount=5690.00, platRate=0.000, threeRate=0.000, platFare=0.00, threeFare=0.00, threeTradeNo=null, oldAllPayInfoNo=null, oldThreeTradeNo=null, tradeType=2, tradeStatus=1, auditStatus=0, mark=null, submitInfo=null, calbackInfo=null, paymentAccount=838648777869889536, paymentAccountName=null, receivableAccount=919103034074636288, receivableAccountName=null, beforeBalance=6247061.31, afterBalance=6241371.31, custRemark=null, auditRemark=null, paymentIp=172.16.51.69, paymentAddress=null, paymentTime=null, creator=admin, createTime=Fri Sep 27 14:28:41 CST 2019, auditor=null, auditTime=null, completer=null, completeTime=null, owner=8755, operator=null, operatorTel=null, callBackUrl=null, transationOrderNo=1177470035663175680, saleOrderNo=1177469956208545792, pnr=, notifyTime=null, transationCertificateUrl=null, paymentType=null, paybackAmount=null, receiveTime=null, productType=null, payWay=null] 
 - 调用审核收付款单服务开始--->审核状态为：1 ,收付款单号为： 
 Time：4 ms - ID：com.tempus.gss.order.dao.CertificateMapper.selectByCertificateNo
 Execute SQL：SELECT C.* FROM ( SELECT T.OWNER, T.CERTIFICATE_NO, T.BUSINESS_TYPE, T.INCOME_EXPENSE_TYPE, T.SUB_BUSINESS_TYPE, T.PAY_TYPE, T.PAY_WAY, T.CUSTOMER_TYPE_NO, T.CUSTOMER_NO, T.CAPITAL_ACCOUNT_NO, T.AMOUNT, T.AUDIT_STATUS, T.REASON, T.SETTLEMENT_NO, T.SETTLEMENT_STATUS, T.PAY_NO, T.THIRD_PAY_NO, T.THIRD_BUS_NO, T.MODIFIER, T.MODIFY_TIME, T.CREATE_TIME, T.ACTUAL_STATUS, T.SPECIAL_TYPE, T.VALID, S.ID, S.OWNER as AAR_OWNER, S.RECORD_NO, S.CERTIFICATE_NO AS AAR_CERTIFICATE_NO, S.BUSINESS_TYPE AS AAR_BUSINESS_TYPE, S.INCOME_EXPENSE_TYPE AS AAR_INCOME_EXPENSE_TYPE, S.GOODS_TYPE AS AAR_GOODS_TYPE, S.GOODS_SUB_TYPE AS AAR_GOODS_SUB_TYPE, S.GOODS_NAME AS AAR_GOODS_NAME, S.ACTUAL_AMOUNT, S.ACTUAL_STATUS AS AAR_ACTUAL_STATUS, S.AUDIT_STATUS AS AAR_AUDIT_STATUS, S.MOVING_REASON, S.SETTLEMENT_STATUS AS AAR_SETTLEMENT_STATUS, S.SETTLEMENT_NO AS AAR_SETTLEMENT_NO, S.PAY_NO AS AAR_PAY_NO, S.MODIFIER AS AAR_MODIFIER, S.ARRIVE_ACCOUNT_TIME, S.VALID AS AAR_VALID, S.CREATE_TIME AS AAR_CREATE_TIME, S.MODIFY_TIME AS AAR_MODIFY_TIME FROM OS_CERTIFICATE T LEFT JOIN OS_ACTUALAMOUNTRECORD S ON S.CERTIFICATE_NO = T.CERTIFICATE_NO ) C WHERE VALID=1 AND CERTIFICATE_NO = 1177476750190231552

 Time：2 ms - ID：com.tempus.gss.order.dao.CertificateMapper.updateByPrimaryKeySelective
EXECUTE SQL：update OS_CERTIFICATE
SET AUDIT_STATUS = 2
WHERE
	CERTIFICATE_NO = 1177476750190231552
- 审核收付款单--->更新c表：Certificate:{ "certificateNo":"1177476750190231552","owner":null,"businessType":null,"incomeExpenseType":null,"subBusinessType":null,"payType":null,"payWay":null,"customerTypeNo":null,"customerNo":null,"capitalAccountNo":"","amount":null,"auditStatus":"2","reason":"","settlementNo":"","settlementStatus":null,"payNo":"","thirdPayNo":"","thirdBusNo":"","payAmount":null,"billsNumber":"","modifier":"","createTime":null,"modifyTime":null,"actualStatus":null,"valid":null,"ticketnos":"","specialType":null,"pnr":"","transationOrderNo":"","saleOrderNo":"","actualAmountRecordList":"[]"} 
 Time：1 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.updateActualAmountRecord
EXECUTE SQL：UPDATE OS_ACTUALAMOUNTRECORD
SET AUDIT_STATUS = 2
WHERE
	CERTIFICATE_NO = 1177476750190231552
 - 审核收付款单--->更新a表：ActualAmountRecord [id=null, owner=null, recordNo=null, certificateNo=null, businessType=null, payType=null, incomeExpenseType=null, goodsType=null, goodsSubType=null, goodsName=null, actualAmount=null, auditStatus=2, actualStatus=null, movingReason=null, settlementNo=null, payNo=null, settlementStatus=null, modifier=null, createTime=null, modifyTime=null, arriveAccountTime=null, valid=null, refundAmount=null, payWay=null, capitalAccountNo=null，payWayName=null] 
 Time：2 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryListBycertificateNo
 Execute SQL：SELECT ID,OWNER,RECORD_NO as recordNo,CERTIFICATE_NO as certificateNo,BUSINESS_TYPE as businessType, INCOME_EXPENSE_TYPE as incomeExpenseType,GOODS_TYPE as goodsType,PAY_TYPE as payType, GOODS_SUB_TYPE as goodsSubType,GOODS_NAME as goodsName,ACTUAL_AMOUNT as actualAmount, AUDIT_STATUS as auditStatus,ACTUAL_STATUS as actualStatus,MOVING_REASON as movingReason, SETTLEMENT_NO as settlementNo,PAY_NO as payNo,SETTLEMENT_STATUS as settlementStatus, REFUND_AMOUNT as refundAmount,MODIFIER, CREATE_TIME as createTime,MODIFY_TIME as modifyTime,ARRIVE_ACCOUNT_TIME as arriveAccountTime,VALID FROM OS_ACTUALAMOUNTRECORD WHERE VALID=1 AND CERTIFICATE_NO = 1177476750190231552

 Time：2 ms - ID：com.tempus.gss.order.dao.BuyChangeExtendMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_BUYCHANGE_EXTEND
SET clearance_status = 2,
 clearance_amount = 5690.0
WHERE
	BUY_CHANGE_NO = 1177470336493506560
