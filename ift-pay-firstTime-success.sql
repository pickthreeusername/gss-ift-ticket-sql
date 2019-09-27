# gss-ift pay 第一次就支付成功
- SALE-【A、C、PAY】开始--->参数为：CertificateCreateVO:{ "orderInfoList":"[BusinessOrderInfo [recordNo=1176690110263992320, businessType=1, actualAmount=null]]","payWay":"2000001","payType":"2","accoutNo":"838648777869889536","serviceLine":"1","channel":"301","ticketNos":"","customerTypeNo":"301","incomeExpenseType":"1","customerNo":"401703040743530784","subBusinessType":"1","reason":"","thirdPayNo":"","thirdBusNo":"","amount":null,"settlementNo":"","paymentAccount":"","receivableAccount":"","isWithHold":"false","payNo":"","pnr":"","transationOrderNo":"1176690110263992320","saleOrderNo":"1176690110968635392","specialType":null} 
- generated Key : 1176690110263992320_1:2:1 
- generated value : admin@172.16.51.69_no_type:1176690110263992320_1:2:1&size:1 
- OS_Redis : set[1176690110263992320_1:2:1--admin@172.16.51.69_no_type:1176690110263992320_1:2:1&size:1] 
- 处理业务单列表获得创建 A、C的参数 开始 
- 转换业务单信息。。。。。。 
 Time：19 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectList
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE transation_order_no=1176690110263992320 AND valid=1 ORDER BY ORDERING_TIME DESC

 Time：10 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.selectList
 Execute SQL：SELECT SALE_CHANGE_NO AS saleChangeNo,owner AS owner,business_sign_no AS businessSignNo,transation_order_no AS transationOrderNo,sale_order_no AS saleOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,amount AS amount,discount_amount AS discountAmount,plan_amount AS planAmount,actual_amount AS actualAmount,pay_status AS payStatus,status AS status,child_status AS childStatus,change_reason AS changeReason,keep_seat AS keepSeat,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_SALECHANGE WHERE sale_order_no=1176690110968635392 AND valid=1 ORDER BY CREATE_TIME DESC

[2019-09-25 10:51:06.406][INFO ][http-nio-8479-exec-10][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 根据单号获取应收付减实收付后的金额。。。。。。 
 Time：3 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE SALE_ORDER_NO=1176690110968635392

 Time：2 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,customer_no_name AS customerNoName,customer_type_name AS customerTypeName,TICKETNOS AS ticketNos FROM OS_SALEORDER_EXTEND WHERE SALE_ORDER_NO=1176690110968635392

 - SaleOrder [saleOrderNo=1176690110968635392, externalNumber=null, owner=8755, transationOrderNo=1176690110263992320, businessSignNo=1176690110968635393, deptCode=69, orderType=1, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, mainOrderNo=null, attachedType=null, orderChangeType=0:0:0, goodsType=2, goodsSubType=1, goodsName=EWR-DTW-LAX, pcount=null, amount=0.00, discountAmount=0.00, receivable=2540.00, received=0.00, buyorderPrice=null, orderingTime=Wed Sep 25 10:49:18 CST 2019, payStatus=1, orderStatus=5, orderChildStatus=2, modifyTime=null, actorUser=null, modifier=admin, valid=1, contacts=null, mobile=null, bsignType=1, haveDifference=null, differenceTotalAmount=null] 
 - 判断是否存在【已支付】的收付款单和实收单。。。。。。 
 - 业务单号查询应收付记录总和开始------> 
 Time：57 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.queryPlanAmountByRecordNo
 Execute SQL：SELECT ID,OWNER,RECORD_NO as recordNo,BUSINESS_TYPE as businessType,INCOME_EXPENSE_TYPE as incomeExpenseType, GOODS_TYPE as goodsType,RECORD_MOVING_TYPE as recordMovingType,SETTLEMENT_NO as settlementNo, PLAN_AMOUNT as planAmount,MOVING_REASON as movingReason, SETTLEMENT_STATUS as settlementStatus,MODIFIER,CREATE_TIME as createTime,MODIFY_TIME as modifyTime,VALID FROM OS_PLANAMOUNTRECORD WHERE VALID=1 AND RECORD_NO=1176690110968635392 AND BUSINESS_TYPE=2

- 业务单号查询应收付记录总和结束------>recordNo:1176690110968635392  businessType:2  金额:2540.00 
 Time：4 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryActualAmountByRecordNo
 Execute SQL：( SELECT A.ID, A.OWNER, A.RECORD_NO AS recordNo, A.CERTIFICATE_NO AS certificateNo, A.BUSINESS_TYPE AS businessType, A.INCOME_EXPENSE_TYPE AS incomeExpenseType, A.GOODS_TYPE AS goodsType, A.PAY_TYPE AS payType, A.GOODS_SUB_TYPE AS goodsSubType, A.GOODS_NAME AS goodsName, A.ACTUAL_AMOUNT AS actualAmount, A.AUDIT_STATUS AS auditStatus, A.ACTUAL_STATUS AS actualStatus, A.MOVING_REASON AS movingReason, A.SETTLEMENT_NO AS settlementNo, A.PAY_NO AS payNo, A.SETTLEMENT_STATUS AS settlementStatus, A.REFUND_AMOUNT AS refundAmount, A.MODIFIER, A.CREATE_TIME AS createTime, A.MODIFY_TIME AS modifyTime, A.ARRIVE_ACCOUNT_TIME AS arriveAccountTime, A.VALID, C.PAY_WAY AS payWay, C.CAPITAL_ACCOUNT_NO AS capitalAccountNo, P.NAME AS payWayName FROM OS_ACTUALAMOUNTRECORD A LEFT JOIN OS_CERTIFICATE C ON A.CERTIFICATE_NO = C.CERTIFICATE_NO LEFT JOIN PS_PAY_WAY P ON P.CODE = C.PAY_WAY WHERE A.VALID=1 AND A.RECORD_NO=1176690110968635392 AND A.BUSINESS_TYPE=2 ORDER BY A.CREATE_TIME DESC) UNION ( SELECT A.ID, A.OWNER, A.RECORD_NO AS recordNo, A.CERTIFICATE_NO AS certificateNo, A.BUSINESS_TYPE AS businessType, A.INCOME_EXPENSE_TYPE AS incomeExpenseType, A.GOODS_TYPE AS goodsType, A.PAY_TYPE AS payType, A.GOODS_SUB_TYPE AS goodsSubType, A.GOODS_NAME AS goodsName, A.ACTUAL_AMOUNT AS actualAmount, A.AUDIT_STATUS AS auditStatus, A.ACTUAL_STATUS AS actualStatus, A.MOVING_REASON AS movingReason, A.SETTLEMENT_NO AS settlementNo, A.PAY_NO AS payNo, A.SETTLEMENT_STATUS AS settlementStatus, A.REFUND_AMOUNT AS refundAmount, A.MODIFIER, A.CREATE_TIME AS createTime, A.MODIFY_TIME AS modifyTime, A.ARRIVE_ACCOUNT_TIME AS arriveAccountTime, A.VALID, C.PAY_WAY AS payWay, C.CAPITAL_ACCOUNT_NO AS capitalAccountNo, P.NAME AS payWayName FROM OS_ACTUALAMOUNTRECORD A LEFT JOIN OS_CERTIFICATE C ON A.CERTIFICATE_NO = C.CERTIFICATE_NO LEFT JOIN PS_PAY_WAY P ON P.CODE = C.PAY_WAY LEFT JOIN OS_DIFFERENCE_ORDER D on D.BUSINESS_ORDER_NO=A.RECORD_NO WHERE A.VALID=1 AND D.BUSINESS_ORDER_NO =1176690110968635392 AND A.BUSINESS_TYPE=2 ORDER BY A.CREATE_TIME DESC )

- 判断是否有没支付的实收单:【不存在A、C】1176690110968635392---CREATE_SUM : 2540.00 
- 创建A、C并调用支付 recordNo:1176690110968635392  OK 
- 处理业务单列表  决定是否创建 A、C并调用支付 结束  Size=1 
- 总金额：amount----2540.00 
- 创建c、a、修改业务单信息和状态、修改扩展表  setCertificate 开始,参数：amount---CertificateCreateVO:{ "orderInfoList":"[BusinessOrderInfo [recordNo=1176690110263992320, businessType=1, actualAmount=null]]","payWay":"2000001","payType":"2","accoutNo":"838648777869889536","serviceLine":"1","channel":"301","ticketNos":"","customerTypeNo":"301","incomeExpenseType":"1","customerNo":"401703040743530784","subBusinessType":"1","reason":"","thirdPayNo":"","thirdBusNo":"","amount":null,"settlementNo":"","paymentAccount":"","receivableAccount":"","isWithHold":"false","payNo":"","pnr":"","transationOrderNo":"1176690110263992320","saleOrderNo":"1176690110968635392","specialType":null},   {} 
- setCertificate 保存certificate：Certificate:{ "certificateNo":"1176690561931870208","owner":"8755","businessType":"1","incomeExpenseType":"1","subBusinessType":"1","payType":"2","payWay":"2000001","customerTypeNo":"301","customerNo":"401703040743530784","capitalAccountNo":"838648777869889536","amount":"2540.00","auditStatus":"1","reason":"","settlementNo":"","settlementStatus":"0","payNo":"","thirdPayNo":"","thirdBusNo":"","payAmount":null,"billsNumber":"","modifier":"admin","createTime":"Wed Sep 25 10:51:06 CST 2019","modifyTime":null,"actualStatus":"0","valid":"1","ticketnos":"","specialType":"0","pnr":"","transationOrderNo":"1176690110263992320","saleOrderNo":"1176690110968635392","actualAmountRecordList":"[]"} 
# 创建收款单  OS_CERTIFICATE
Time：128 ms - ID：com.tempus.gss.order.dao.CertificateMapper.insertSelective
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
	settlement_no,
	settlement_status,
	modifier,
	create_time,
	actual_status,
	valid,
	special_type
)
VALUES
	(
		1176690561931870208,
		8755,
		1,
		1,
		1,
		2,
		2000001,
		301,
		401703040743530784,
		'838648777869889536',
		2540.00,
		1,
		'',
		0,
		'admin',
		'2019-09-25 10:51:06',
		0,
		1,
		0
	)
 #- 创建实收记录
 Time：3 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.insert
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
		1176690110968635392,
		1176690561931870208,
		2,
		2,
		1,
		2,
		1,
		'EWR-DTW-LAX',
		2540.00,
		1,
		0,
		NULL,
		NULL,
		NULL,
		0,
		'admin',
		'2019-09-25 10:51:06',
		NULL,
		NULL,
		1,
		0
	)
- 开始调用balancePayByAccount。。。。。。 
- com.tempus.gss.pay.entity.vo.BalancePayRequest@6985f4f9[payWayCode=2000001,channel=301,serviceLine=1,cusId=401703040743530784,orderNo=1176690561931870208,balance=2540.00,AccoutNo=838648777869889536,custRemark=<null>,transationOrderNo=1176690110263992320,saleOrderNo=1176690110968635392,pnr=,productType=<null>,payWay=<null>] 
- 额度支付请求：BalancePayRequest [payWayCode=2000001, channel=301, serviceLine=1, cusId=401703040743530784, orderNo=1176690561931870208, balance=2540.00, AccoutNo=838648777869889536, custRemark=null, transationOrderNo=1176690110263992320, saleOrderNo=1176690110968635392, pnr=, productType=null, payWay=null], com.tempus.gss.vo.Agent@3fa9e8b1[owner=8755,type=301,num=401703040743530784,id=1,account=admin,token=,ip=172.16.51.69,device=OP,enterpriseNo=<null>,telephone=<null>,seat=<null>] 
 Time：3 ms - ID：com.tempus.gss.pay.dao.PayWayMapper.selectOne
 Execute SQL：SELECT id,code AS code,name AS name,pay_category_code AS payCategoryCode,sort AS sort,preset AS preset,image_data_url AS imageDataUrl,valid AS valid,creator AS creator,create_time AS createTime,modifier AS modifier,modify_time AS modifyTime,owner AS owner,status AS status FROM PS_PAY_WAY WHERE code=2000001 AND valid=true AND owner=8755

 Time：114 ms - ID：com.tempus.gss.pay.dao.AllPayInfoMapper.selectOne
 Execute SQL：SELECT id,all_pay_info_no AS allPayInfoNo,cust_user_no AS custUserNo,cust_user_account_no AS custUserAccountNo,cust_channel AS custChannel,service_line AS serviceLine,order_no AS orderNo,order_type AS orderType,pay_category_code AS payCategoryCode,pay_way_code AS payWayCode,three_interface_set_no AS threeInterfaceSetNo,amount AS amount,real_amount AS realAmount,plat_rate AS platRate,three_rate AS threeRate,plat_fare AS platFare,three_fare AS threeFare,three_trade_no AS threeTradeNo,old_all_pay_info_no AS oldAllPayInfoNo,old_three_trade_no AS oldThreeTradeNo,trade_type AS tradeType,trade_status AS tradeStatus,audit_status AS auditStatus,mark AS mark,submit_info AS submitInfo,calback_info AS calbackInfo,payment_account AS paymentAccount,payment_account_name AS paymentAccountName,receivable_account AS receivableAccount,receivable_account_name AS receivableAccountName,before_balance AS beforeBalance,after_balance AS afterBalance,cust_remark AS custRemark,audit_remark AS auditRemark,payment_ip AS paymentIp,payment_address AS paymentAddress,payment_time AS paymentTime,creator AS creator,create_time AS createTime,auditor AS auditor,audit_time AS auditTime,completer AS completer,complete_time AS completeTime,owner AS owner,operator AS operator,operator_tel AS operatorTel,call_back_url AS callBackUrl,transation_order_no AS transationOrderNo,sale_order_no AS saleOrderNo,pnr AS pnr,notify_time AS notifyTime,transation_certificate_url AS transationCertificateUrl,payment_type AS paymentType,payback_amount AS paybackAmount,receive_time AS receiveTime,product_type AS productType,pay_way AS payWay FROM PS_ALL_PAY_INFO WHERE order_no=1176690561931870208 AND trade_status=1 AND owner=8755

 Time：6 ms - ID：com.tempus.gss.pay.dao.CapitalAccountScopeMapper.selectOne
 Execute SQL：SELECT id,capital_account_scope_no AS capitalAccountScopeNo,capital_account_no AS capitalAccountNo,pay_way_code AS payWayCode,pay_category_code AS payCategoryCode,channel AS channel,income_type AS incomeType,valid AS valid,creator AS creator,create_time AS createTime,modifier AS modifier,modify_time AS modifyTime,owner AS owner,service_line AS serviceLine,show_index AS showIndex FROM PS_CAPITAL_ACCOUNT_SCOPE WHERE pay_way_code=2000006 AND pay_category_code=2000 AND channel='B2B' AND valid=true AND owner=8755

 Time：3 ms - ID：com.tempus.gss.pay.dao.ThreeInterfaceSetMapper.selectOne
 Execute SQL：SELECT id,three_interface_set_no AS threeInterfaceSetNo,name AS name,merchant_name AS merchantName,merchant_no AS merchantNo,op_password AS opPassword,capital_account_no AS capitalAccountNo,secret_key AS secretKey,rate AS rate,merchant_certificate AS merchantCertificate,ca_certificate AS caCertificate,status AS status,valid AS valid,butt_code AS buttCode,create_time AS createTime,creator AS creator,modifier AS modifier,modify_time AS modifyTime,owner AS owner,income_type AS incomeType FROM PS_THREE_INTERFACE_SET WHERE capital_account_no=918442969000312832 AND valid=true AND owner=8755

 Time：2 ms - ID：com.tempus.gss.pay.dao.CapitalAccountMapper.selectOne
 Execute SQL：SELECT id,capital_account_no AS capitalAccountNo,account AS account,account_name AS accountName,account_type AS accountType,pay_way_code AS payWayCode,pay_category_code AS payCategoryCode,is_payment_account AS isPaymentAccount,is_receivable_account AS isReceivableAccount,valid AS valid,creator AS creator,create_time AS createTime,modifier AS modifier,modify_time AS modifyTime,remark AS remark,owner AS owner,rate AS rate FROM PS_CAPITAL_ACCOUNT WHERE capital_account_no=918442969000312832 AND valid=true AND owner=8755

 - 调用客商接口查询客户账号余额请求:838648777869889536 
 - 根据账户Id查询账户余额-------------------------838648777869889536 
 Time：2 ms - ID：com.tempus.gss.cps.dao.AccountMapper.getAccountBalanceByAccountNo
 Execute SQL：SELECT T.BALANCE FROM CPS_ACCOUNT T WHERE T.ACCOUNT_NO = 838648777869889536

- 根据账户Id查询账户余额成功------------------------- 
- 调用客商接口查询客户账号余额响应:6257861.31 
- 调用客商接口更新余额请求:{owner=8755, enterpriseNo=null, num=401703040743530784, ip=172.16.51.69, id=1, type=301, device=OP, account=admin, token=}, 838648777869889536, 919103034074636288, 2540.00, 1, 1176690563471179776, null, 1176690561931870208 
- 付款/退款开始------------------ 
 Time：3 ms - ID：com.tempus.gss.cps.dao.AccountMapper.getAccountByAccountNo
 Execute SQL：SELECT c.NAME AS customerName, a.ID, a.ACCOUNT_NO AS accountNo, a.CUSTOMER_NO AS customerNo, a.CONTRACT_NO AS contractNo, a.NAME, a.PASSWORD, a.TYPE, a.SETTLEMENT_MODES AS settlementModes, a.CREDIT_LIMIT AS creditLimit, a.TEMPORARY_LINES AS temporaryLines, a.BALANCE, a.TEMPORARY_EXPIRE_TIME AS temporaryExpireTime, a.APPLY_STATUS AS applyStatus, a.APPLIER, a.APPLY_TIME AS applyTime, a.DRAW_PAY_TYPE AS drawPayType, a.OWNER, a.SOURCE, a.STATUS, a.IS_AUTO AS isAuto, a.SETTLEMENT_TYPE AS settlementType, a.WEEK, a.CREATER, a.CREATE_TIME AS createTime, a.MODIFIER, a.MODIFY_TIME AS modifyTime, a.SUPER_CUSTOMER_NO AS superCustomerNo, a.AGREEMENT_ID AS agreementId, a.IS_SPLIT AS isSplit, a.REMARK, a.EXTEND1, a.EXTEND2, a.EXTEND3,a.AVAILABLE_BALANCE as availableBalance FROM CPS_ACCOUNT a left join CPS_CUSTOMER c on a.CUSTOMER_NO = c.CUSTOMER_NO WHERE a.ACCOUNT_NO = 919103034074636288

- 根据账户编号，金额，类型余额更新-------------------------进入 
- payNo==1176690563471179776, tradeNo===1176690561931870208, payType==1 
- 更新流水列表开始======== 
 Time：2 ms - ID：com.tempus.gss.cps.dao.AccountMapper.getAccountByAccountNo
 Execute SQL：SELECT c.NAME AS customerName, a.ID, a.ACCOUNT_NO AS accountNo, a.CUSTOMER_NO AS customerNo, a.CONTRACT_NO AS contractNo, a.NAME, a.PASSWORD, a.TYPE, a.SETTLEMENT_MODES AS settlementModes, a.CREDIT_LIMIT AS creditLimit, a.TEMPORARY_LINES AS temporaryLines, a.BALANCE, a.TEMPORARY_EXPIRE_TIME AS temporaryExpireTime, a.APPLY_STATUS AS applyStatus, a.APPLIER, a.APPLY_TIME AS applyTime, a.DRAW_PAY_TYPE AS drawPayType, a.OWNER, a.SOURCE, a.STATUS, a.IS_AUTO AS isAuto, a.SETTLEMENT_TYPE AS settlementType, a.WEEK, a.CREATER, a.CREATE_TIME AS createTime, a.MODIFIER, a.MODIFY_TIME AS modifyTime, a.SUPER_CUSTOMER_NO AS superCustomerNo, a.AGREEMENT_ID AS agreementId, a.IS_SPLIT AS isSplit, a.REMARK, a.EXTEND1, a.EXTEND2, a.EXTEND3,a.AVAILABLE_BALANCE as availableBalance FROM CPS_ACCOUNT a left join CPS_CUSTOMER c on a.CUSTOMER_NO = c.CUSTOMER_NO WHERE a.ACCOUNT_NO = 838648777869889536
# 更新流水列表
 Time：2 ms - ID：com.tempus.gss.cps.dao.AccountBillMapper.insertSelective
EXECUTE SQL：INSERT INTO CPS_ACCOUNT_BILL (
	bill_no,
	account_no,
	customer_no,
	last_credit_limit,
	income_expense_type,
	money,
	balance,
	trade_no,
	pay_type,
	trade_time,
	order_no,
	STATUS,
	repay_money,
	OWNER,
	is_auto,
	bill_type,
	creater,
	create_time,
	modifier,
	modify_time
)
VALUES
	(
		1176690563890610176,
		838648777869889536,
		401703040743530784,
		6257861.31,
		1,
		2540.00,
		6255321.31,
		1176690561931870208,
		1,
		'2019-09-25 10:51:06',
		1176690563471179776,
		0,
		0,
		8755,
		1,
		'1000001,1000004,1000002,1000003,1000006,1000010',
		'admin',
		'2019-09-25 10:51:06',
		'admin',
		'2019-09-25 10:51:06'
	)
 - 流水表(AccountBill)增加成功--------------1176690563890610176 
 - 流水表日志新增成功--------------账户:838648777869889536, 本次交易金额：2540.00, 流水ID号：1176690563890610176, 收支类型：支出, 交易流水号：1176690563471179776, 收付款单号：1176690561931870208, 操作人：admin 
# 更新账户余额 
Time：1 ms - ID：com.tempus.gss.cps.dao.AccountMapper.updateAccountBalanceByAccountNo
EXECUTE SQL：UPDATE CPS_ACCOUNT T
SET T.BALANCE = 6255321.31,
 T.MODIFIER = 'admin',
 T.MODIFY_TIME = SYSDATE()
WHERE
	T.ACCOUNT_NO = 838648777869889536
AND T. OWNER = 8755
- 根据账户编号，金额，类型余额更新成功-------------- 
- 账户838648777869889536余额更新日志记录成功--------------账户金额为：6257861.31, 本次交易金额为：-2540.00, 更新后为：6255321.31 
- 充值还款进入 payType==1 
- 更新流水列表结束======== 
- 根据账户编号，金额，类型余额更新-------------------------进入 
- payNo==1176690563471179776, tradeNo===1176690561931870208, payType==1 
- 更新流水列表开始======== 
 Time：3 ms - ID：com.tempus.gss.cps.dao.AccountMapper.getAccountByAccountNo
 Execute SQL：SELECT c.NAME AS customerName, a.ID, a.ACCOUNT_NO AS accountNo, a.CUSTOMER_NO AS customerNo, a.CONTRACT_NO AS contractNo, a.NAME, a.PASSWORD, a.TYPE, a.SETTLEMENT_MODES AS settlementModes, a.CREDIT_LIMIT AS creditLimit, a.TEMPORARY_LINES AS temporaryLines, a.BALANCE, a.TEMPORARY_EXPIRE_TIME AS temporaryExpireTime, a.APPLY_STATUS AS applyStatus, a.APPLIER, a.APPLY_TIME AS applyTime, a.DRAW_PAY_TYPE AS drawPayType, a.OWNER, a.SOURCE, a.STATUS, a.IS_AUTO AS isAuto, a.SETTLEMENT_TYPE AS settlementType, a.WEEK, a.CREATER, a.CREATE_TIME AS createTime, a.MODIFIER, a.MODIFY_TIME AS modifyTime, a.SUPER_CUSTOMER_NO AS superCustomerNo, a.AGREEMENT_ID AS agreementId, a.IS_SPLIT AS isSplit, a.REMARK, a.EXTEND1, a.EXTEND2, a.EXTEND3,a.AVAILABLE_BALANCE as availableBalance FROM CPS_ACCOUNT a left join CPS_CUSTOMER c on a.CUSTOMER_NO = c.CUSTOMER_NO WHERE a.ACCOUNT_NO = 919103034074636288

 Time：2 ms - ID：com.tempus.gss.cps.dao.AccountBillMapper.insertSelective
EXECUTE SQL：INSERT INTO CPS_ACCOUNT_BILL (
	bill_no,
	account_no,
	customer_no,
	last_credit_limit,
	income_expense_type,
	money,
	balance,
	trade_no,
	pay_type,
	trade_time,
	order_no,
	STATUS,
	repay_money,
	OWNER,
	is_auto,
	bill_type,
	creater,
	create_time,
	modifier,
	modify_time
)
VALUES
	(
		1176690563966107648,
		919103034074636288,
		401611181218200133,
		39193214.71,
		2,
		2540.00,
		39195754.71,
		1176690561931870208,
		2,
		'2019-09-25 10:51:06',
		1176690563471179776,
		0,
		2540.00,
		8755,
		1,
		'1000001',
		'admin',
		'2019-09-25 10:51:06',
		'admin',
		'2019-09-25 10:51:06'
	)
- 流水表(AccountBill)增加成功--------------1176690563966107648 
- 流水表日志新增成功--------------账户:919103034074636288, 本次交易金额：2540.00, 流水ID号：1176690563966107648, 收支类型：收入, 交易流水号：1176690563471179776, 收付款单号：1176690561931870208, 操作人：admin 
 Time：1 ms - ID：com.tempus.gss.cps.dao.AccountMapper.updateAccountBalanceByAccountNo
EXECUTE SQL：UPDATE CPS_ACCOUNT T
SET T.BALANCE = 39195754.71,
 T.MODIFIER = 'admin',
 T.MODIFY_TIME = SYSDATE()
WHERE
	T.ACCOUNT_NO = 919103034074636288
AND T. OWNER = 8755
 - 根据账户编号，金额，类型余额更新成功-------------- 
 - 账户919103034074636288余额更新日志记录成功--------------账户金额为：39193214.71, 本次交易金额为：2540.00, 更新后为：39195754.71 
 - 充值还款进入 payType==1 
 - 更新流水列表结束======== 
 - 付款/退款成功------838648777869889536-----919103034074636288-----2540.00 
 - 调用客商接口更新余额响应:1 
 Time：1 ms - ID：com.tempus.gss.system.dao.ParamMapper.getValueByKey
 Execute SQL：select PARAM_VALUE from SM_PARAM WHERE PARAM_KEY = 'is_Tqb_sgsh'

 Time：1 ms - ID：com.tempus.gss.system.dao.ParamMapper.getValueByKey
 Execute SQL：select PARAM_VALUE from SM_PARAM WHERE PARAM_KEY = 'is_Tqb_sgsh'

- T钱包账户赎回失败，赎回流水号：1176690563471179776, 失败原因：签名错误 
# 创建所有交易流水
 Time：3 ms - ID：com.tempus.gss.pay.dao.AllPayInfoMapper.insert
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
		1176690563471179776,
		401703040743530784,
		838648777869889536,
		'301',
		'1',
		1176690561931870208,
		1,
		2000,
		2000001,
		920165217933959168,
		2540.00,
		2540.00,
		0,
		0,
		0,
		0,
		NULL,
		NULL,
		NULL,
		2,
		1,
		0,
		NULL,
		NULL,
		NULL,
		'838648777869889536',
		NULL,
		'919103034074636288',
		NULL,
		6257861.31,
		6255321.31,
		NULL,
		NULL,
		'172.16.51.69',
		NULL,
		NULL,
		'admin',
		'2019-09-25 10:51:06',
		NULL,
		NULL,
		NULL,
		NULL,
		8755,
		NULL,
		NULL,
		NULL,
		'1176690110263992320',
		'1176690110968635392',
		'',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	)
 - 额度支付响应：BalancePayResponse [code=0000, message=交易成功, payStatus=1, paymentAccount=838648777869889536, receivableAccount=919103034074636288, payNo=1176690563471179776] 
 - 创建收付款单并支付--->调用额度支付服务结果：com.tempus.gss.pay.entity.vo.BalancePayResponse@8c13881[code=0000,message=交易成功,payStatus=1,paymentAccount=838648777869889536,receivableAccount=919103034074636288,payNo=1176690563471179776] 
 - 同步通知开始PayReceiveVO [certificateNo=1176690561931870208, payStatus=1, amount=2540.00, payWay=2000001, payNo=1176690563471179776, thirdPayNo=null, paymentAccount=838648777869889536, receivableAccount=919103034074636288, reason=null] 
 - 调用支付结果通知服务payReceive开始--->参数为：PayReceiveVO [certificateNo=1176690561931870208, payStatus=1, amount=2540.00, payWay=2000001, payNo=1176690563471179776, thirdPayNo=null, paymentAccount=838648777869889536, receivableAccount=919103034074636288, reason=null] 
 Time：3 ms - ID：com.tempus.gss.order.dao.CertificateMapper.selectByCertificateNoAll
 Execute SQL：SELECT * FROM OS_CERTIFICATE WHERE CERTIFICATE_NO = 1176690561931870208
# 更新收款单
 Time：2 ms - ID：com.tempus.gss.order.dao.CertificateMapper.updateByPrimaryKeySelective
EXECUTE SQL：update OS_CERTIFICATE
SET PAY_WAY = 2000001,
 CAPITAL_ACCOUNT_NO = '838648777869889536',
 PAY_NO = '1176690563471179776',
 PAY_AMOUNT = 2540.00,
 ACTUAL_STATUS = 1,
 VALID = 1
WHERE
	CERTIFICATE_NO = 1176690561931870208
- 发送通知--更新收付款单：为Certificate:{ "certificateNo":"1176690561931870208","owner":null,"businessType":null,"incomeExpenseType":null,"subBusinessType":null,"payType":null,"payWay":"2000001","customerTypeNo":null,"customerNo":null,"capitalAccountNo":"838648777869889536","amount":null,"auditStatus":null,"reason":"","settlementNo":"","settlementStatus":null,"payNo":"1176690563471179776","thirdPayNo":"","thirdBusNo":"","payAmount":"2540.00","billsNumber":"","modifier":"","createTime":null,"modifyTime":null,"actualStatus":"1","valid":"1","ticketnos":"","specialType":null,"pnr":"","transationOrderNo":"","saleOrderNo":"","actualAmountRecordList":"[]"} 
 Time：2 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.updateActualAmountRecord
EXECUTE SQL：UPDATE OS_ACTUALAMOUNTRECORD
SET ACTUAL_STATUS = 1,
 PAY_NO = '1176690563471179776',
 MODIFY_TIME = '2019-09-25 10:51:07',
 VALID = 1
WHERE
	CERTIFICATE_NO = 1176690561931870208

 Time：2 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryListBycertificateNo
 Execute SQL：SELECT ID,OWNER,RECORD_NO as recordNo,CERTIFICATE_NO as certificateNo,BUSINESS_TYPE as businessType, INCOME_EXPENSE_TYPE as incomeExpenseType,GOODS_TYPE as goodsType,PAY_TYPE as payType, GOODS_SUB_TYPE as goodsSubType,GOODS_NAME as goodsName,ACTUAL_AMOUNT as actualAmount, AUDIT_STATUS as auditStatus,ACTUAL_STATUS as actualStatus,MOVING_REASON as movingReason, SETTLEMENT_NO as settlementNo,PAY_NO as payNo,SETTLEMENT_STATUS as settlementStatus, REFUND_AMOUNT as refundAmount,MODIFIER, CREATE_TIME as createTime,MODIFY_TIME as modifyTime,ARRIVE_ACCOUNT_TIME as arriveAccountTime,VALID FROM OS_ACTUALAMOUNTRECORD WHERE VALID=1 AND CERTIFICATE_NO = 1176690561931870208

- 修改业务单的实收、状态。。。。。。 
 Time：3 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryActualAmountByRecordNo
 Execute SQL：( SELECT A.ID, A.OWNER, A.RECORD_NO AS recordNo, A.CERTIFICATE_NO AS certificateNo, A.BUSINESS_TYPE AS businessType, A.INCOME_EXPENSE_TYPE AS incomeExpenseType, A.GOODS_TYPE AS goodsType, A.PAY_TYPE AS payType, A.GOODS_SUB_TYPE AS goodsSubType, A.GOODS_NAME AS goodsName, A.ACTUAL_AMOUNT AS actualAmount, A.AUDIT_STATUS AS auditStatus, A.ACTUAL_STATUS AS actualStatus, A.MOVING_REASON AS movingReason, A.SETTLEMENT_NO AS settlementNo, A.PAY_NO AS payNo, A.SETTLEMENT_STATUS AS settlementStatus, A.REFUND_AMOUNT AS refundAmount, A.MODIFIER, A.CREATE_TIME AS createTime, A.MODIFY_TIME AS modifyTime, A.ARRIVE_ACCOUNT_TIME AS arriveAccountTime, A.VALID, C.PAY_WAY AS payWay, C.CAPITAL_ACCOUNT_NO AS capitalAccountNo, P.NAME AS payWayName FROM OS_ACTUALAMOUNTRECORD A LEFT JOIN OS_CERTIFICATE C ON A.CERTIFICATE_NO = C.CERTIFICATE_NO LEFT JOIN PS_PAY_WAY P ON P.CODE = C.PAY_WAY WHERE A.VALID=1 AND A.RECORD_NO=1176690110968635392 AND A.BUSINESS_TYPE=2 ORDER BY A.CREATE_TIME DESC) UNION ( SELECT A.ID, A.OWNER, A.RECORD_NO AS recordNo, A.CERTIFICATE_NO AS certificateNo, A.BUSINESS_TYPE AS businessType, A.INCOME_EXPENSE_TYPE AS incomeExpenseType, A.GOODS_TYPE AS goodsType, A.PAY_TYPE AS payType, A.GOODS_SUB_TYPE AS goodsSubType, A.GOODS_NAME AS goodsName, A.ACTUAL_AMOUNT AS actualAmount, A.AUDIT_STATUS AS auditStatus, A.ACTUAL_STATUS AS actualStatus, A.MOVING_REASON AS movingReason, A.SETTLEMENT_NO AS settlementNo, A.PAY_NO AS payNo, A.SETTLEMENT_STATUS AS settlementStatus, A.REFUND_AMOUNT AS refundAmount, A.MODIFIER, A.CREATE_TIME AS createTime, A.MODIFY_TIME AS modifyTime, A.ARRIVE_ACCOUNT_TIME AS arriveAccountTime, A.VALID, C.PAY_WAY AS payWay, C.CAPITAL_ACCOUNT_NO AS capitalAccountNo, P.NAME AS payWayName FROM OS_ACTUALAMOUNTRECORD A LEFT JOIN OS_CERTIFICATE C ON A.CERTIFICATE_NO = C.CERTIFICATE_NO LEFT JOIN PS_PAY_WAY P ON P.CODE = C.PAY_WAY LEFT JOIN OS_DIFFERENCE_ORDER D on D.BUSINESS_ORDER_NO=A.RECORD_NO WHERE A.VALID=1 AND D.BUSINESS_ORDER_NO =1176690110968635392 AND A.BUSINESS_TYPE=2 ORDER BY A.CREATE_TIME DESC )

 Time：4 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE SALE_ORDER_NO=1176690110968635392

 Time：1 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,customer_no_name AS customerNoName,customer_type_name AS customerTypeName,TICKETNOS AS ticketNos FROM OS_SALEORDER_EXTEND WHERE SALE_ORDER_NO=1176690110968635392

- SaleOrder [saleOrderNo=1176690110968635392, externalNumber=null, owner=8755, transationOrderNo=1176690110263992320, businessSignNo=1176690110968635393, deptCode=69, orderType=1, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, mainOrderNo=null, attachedType=null, orderChangeType=0:0:0, goodsType=2, goodsSubType=1, goodsName=EWR-DTW-LAX, pcount=null, amount=0.00, discountAmount=0.00, receivable=2540.00, received=0.00, buyorderPrice=null, orderingTime=Wed Sep 25 10:49:18 CST 2019, payStatus=1, orderStatus=5, orderChildStatus=2, modifyTime=null, actorUser=null, modifier=admin, valid=1, contacts=null, mobile=null, bsignType=1, haveDifference=null, differenceTotalAmount=null] 
- 修改业务单的实收、状态, 销售单参数为：SaleOrder [saleOrderNo=1176690110968635392, externalNumber=null, owner=8755, transationOrderNo=1176690110263992320, businessSignNo=1176690110968635393, deptCode=69, orderType=1, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, mainOrderNo=null, attachedType=null, orderChangeType=0:0:0, goodsType=2, goodsSubType=1, goodsName=EWR-DTW-LAX, pcount=null, amount=0.00, discountAmount=0.00, receivable=2540.00, received=0.00, buyorderPrice=null, orderingTime=Wed Sep 25 10:49:18 CST 2019, payStatus=1, orderStatus=5, orderChildStatus=2, modifyTime=null, actorUser=null, modifier=admin, valid=1, contacts=null, mobile=null, bsignType=1, haveDifference=null, differenceTotalAmount=null] 
- 销售单update()更新参数为-->SaleOrder [saleOrderNo=1176690110968635392, externalNumber=null, owner=8755, transationOrderNo=1176690110263992320, businessSignNo=1176690110968635393, deptCode=69, orderType=1, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, mainOrderNo=null, attachedType=null, orderChangeType=0:0:0, goodsType=2, goodsSubType=1, goodsName=EWR-DTW-LAX, pcount=null, amount=0.00, discountAmount=0.00, receivable=2540.00, received=2540.00, buyorderPrice=null, orderingTime=Wed Sep 25 10:49:18 CST 2019, payStatus=4, orderStatus=5, orderChildStatus=2, modifyTime=null, actorUser=null, modifier=admin, valid=1, contacts=null, mobile=null, bsignType=1, haveDifference=null, differenceTotalAmount=null] 
 # 更新销售单
Time：2 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_SALEORDER
SET OWNER = 8755,
 transation_order_no = 1176690110263992320,
 business_sign_no = 1176690110968635393,
 dept_code = '69',
 order_type = 1,
 source_channel_no = 'OP',
 customer_type_no = 301,
 customer_no = 401703040743530784,
 ordering_login_name = 'admin',
 order_change_type = '0:0:0',
 goods_type = 2,
 goods_sub_type = 1,
 goods_name = 'EWR-DTW-LAX',
 amount = 0.00,
 discount_amount = 0.00,
 receivable = 2540.00,
 received = 2540.00,
 ordering_time = '2019-09-25 10:49:18',
 pay_status = 4,
 order_status = 5,
 order_child_status = 2,
 modifier = 'admin',
 valid = 1,
 bsign_type = 1
WHERE
	SALE_ORDER_NO = 1176690110968635392
 Time：2 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE SALE_ORDER_NO=1176690110968635392

 - 根据交易单单号修改交易单信息:1176690110263992320, 2, true 
 Time：3 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.selectById
 Execute SQL：SELECT TRANSATION_ORDER_NO AS transationOrderNo,external_number AS externalNumber,owner AS owner,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,total_amount AS totalAmount,discount_amount AS discountAmount,receivable AS receivable,received AS received,contacts AS contacts,mobile AS mobile,pay_status AS payStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,valid AS valid FROM OS_TRANSATIONORDER WHERE TRANSATION_ORDER_NO=1176690110263992320

- 交易单单号:TransationOrder [transationOrderNo=1176690110263992320, externalNumber=null, owner=8755, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, totalAmount=2540.00, discountAmount=0.00, receivable=2540.00, received=0.00, contacts=tudou123, mobile=18923880699, payStatus=1, createTime=Wed Sep 25 10:49:18 CST 2019, modifyTime=null, modifier=admin, valid=1] 
 Time：19 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectList
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE transation_order_no=1176690110263992320 AND valid=1 ORDER BY ORDERING_TIME DESC

 Time：3 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.selectByMap
 Execute SQL：SELECT SALE_CHANGE_NO AS saleChangeNo,owner AS owner,business_sign_no AS businessSignNo,transation_order_no AS transationOrderNo,sale_order_no AS saleOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,amount AS amount,discount_amount AS discountAmount,plan_amount AS planAmount,actual_amount AS actualAmount,pay_status AS payStatus,status AS status,child_status AS childStatus,change_reason AS changeReason,keep_seat AS keepSeat,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_SALECHANGE WHERE TRANSATION_ORDER_NO=1176690110263992320

- 根据交易单单号-->1176690110263992320修改交易单信息。修改类型:2应收:2540.00实收:2540.00金额差:0.00 
 Time：8 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_TRANSATIONORDER
SET OWNER = 8755,
 source_channel_no = 'OP',
 customer_type_no = 301,
 customer_no = 401703040743530784,
 ordering_login_name = 'admin',
 total_amount = 2540.00,
 discount_amount = 0.00,
 receivable = 2540.00,
 received = 2540.00,
 contacts = 'tudou123',
 mobile = '18923880699',
 pay_status = 3,
 create_time = '2019-09-25 10:49:18',
 modifier = 'admin',
 valid = 1
WHERE
	TRANSATION_ORDER_NO = 1176690110263992320
 Time：4 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.selectById
 Execute SQL：SELECT TRANSATION_ORDER_NO AS transationOrderNo,external_number AS externalNumber,owner AS owner,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,total_amount AS totalAmount,discount_amount AS discountAmount,receivable AS receivable,received AS received,contacts AS contacts,mobile AS mobile,pay_status AS payStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,valid AS valid FROM OS_TRANSATIONORDER WHERE TRANSATION_ORDER_NO=1176690110263992320

- 修改业务单扩展表的相关信息。。。。。。 
 Time：3 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryActualAmountByRecordNo
 Execute SQL：( SELECT A.ID, A.OWNER, A.RECORD_NO AS recordNo, A.CERTIFICATE_NO AS certificateNo, A.BUSINESS_TYPE AS businessType, A.INCOME_EXPENSE_TYPE AS incomeExpenseType, A.GOODS_TYPE AS goodsType, A.PAY_TYPE AS payType, A.GOODS_SUB_TYPE AS goodsSubType, A.GOODS_NAME AS goodsName, A.ACTUAL_AMOUNT AS actualAmount, A.AUDIT_STATUS AS auditStatus, A.ACTUAL_STATUS AS actualStatus, A.MOVING_REASON AS movingReason, A.SETTLEMENT_NO AS settlementNo, A.PAY_NO AS payNo, A.SETTLEMENT_STATUS AS settlementStatus, A.REFUND_AMOUNT AS refundAmount, A.MODIFIER, A.CREATE_TIME AS createTime, A.MODIFY_TIME AS modifyTime, A.ARRIVE_ACCOUNT_TIME AS arriveAccountTime, A.VALID, C.PAY_WAY AS payWay, C.CAPITAL_ACCOUNT_NO AS capitalAccountNo, P.NAME AS payWayName FROM OS_ACTUALAMOUNTRECORD A LEFT JOIN OS_CERTIFICATE C ON A.CERTIFICATE_NO = C.CERTIFICATE_NO LEFT JOIN PS_PAY_WAY P ON P.CODE = C.PAY_WAY WHERE A.VALID=1 AND A.RECORD_NO=1176690110968635392 AND A.BUSINESS_TYPE=2 ORDER BY A.CREATE_TIME DESC) UNION ( SELECT A.ID, A.OWNER, A.RECORD_NO AS recordNo, A.CERTIFICATE_NO AS certificateNo, A.BUSINESS_TYPE AS businessType, A.INCOME_EXPENSE_TYPE AS incomeExpenseType, A.GOODS_TYPE AS goodsType, A.PAY_TYPE AS payType, A.GOODS_SUB_TYPE AS goodsSubType, A.GOODS_NAME AS goodsName, A.ACTUAL_AMOUNT AS actualAmount, A.AUDIT_STATUS AS auditStatus, A.ACTUAL_STATUS AS actualStatus, A.MOVING_REASON AS movingReason, A.SETTLEMENT_NO AS settlementNo, A.PAY_NO AS payNo, A.SETTLEMENT_STATUS AS settlementStatus, A.REFUND_AMOUNT AS refundAmount, A.MODIFIER, A.CREATE_TIME AS createTime, A.MODIFY_TIME AS modifyTime, A.ARRIVE_ACCOUNT_TIME AS arriveAccountTime, A.VALID, C.PAY_WAY AS payWay, C.CAPITAL_ACCOUNT_NO AS capitalAccountNo, P.NAME AS payWayName FROM OS_ACTUALAMOUNTRECORD A LEFT JOIN OS_CERTIFICATE C ON A.CERTIFICATE_NO = C.CERTIFICATE_NO LEFT JOIN PS_PAY_WAY P ON P.CODE = C.PAY_WAY LEFT JOIN OS_DIFFERENCE_ORDER D on D.BUSINESS_ORDER_NO=A.RECORD_NO WHERE A.VALID=1 AND D.BUSINESS_ORDER_NO =1176690110968635392 AND A.BUSINESS_TYPE=2 ORDER BY A.CREATE_TIME DESC )

 - 调用收付款单查询服务开始--->收付款单号为：1176690561931870208 
 Time：4 ms - ID：com.tempus.gss.order.dao.CertificateMapper.selectByCertificateNo
 Execute SQL：SELECT C.* FROM ( SELECT T.OWNER, T.CERTIFICATE_NO, T.BUSINESS_TYPE, T.INCOME_EXPENSE_TYPE, T.SUB_BUSINESS_TYPE, T.PAY_TYPE, T.PAY_WAY, T.CUSTOMER_TYPE_NO, T.CUSTOMER_NO, T.CAPITAL_ACCOUNT_NO, T.AMOUNT, T.AUDIT_STATUS, T.REASON, T.SETTLEMENT_NO, T.SETTLEMENT_STATUS, T.PAY_NO, T.THIRD_PAY_NO, T.THIRD_BUS_NO, T.MODIFIER, T.MODIFY_TIME, T.CREATE_TIME, T.ACTUAL_STATUS, T.SPECIAL_TYPE, T.VALID, S.ID, S.OWNER as AAR_OWNER, S.RECORD_NO, S.CERTIFICATE_NO AS AAR_CERTIFICATE_NO, S.BUSINESS_TYPE AS AAR_BUSINESS_TYPE, S.INCOME_EXPENSE_TYPE AS AAR_INCOME_EXPENSE_TYPE, S.GOODS_TYPE AS AAR_GOODS_TYPE, S.GOODS_SUB_TYPE AS AAR_GOODS_SUB_TYPE, S.GOODS_NAME AS AAR_GOODS_NAME, S.ACTUAL_AMOUNT, S.ACTUAL_STATUS AS AAR_ACTUAL_STATUS, S.AUDIT_STATUS AS AAR_AUDIT_STATUS, S.MOVING_REASON, S.SETTLEMENT_STATUS AS AAR_SETTLEMENT_STATUS, S.SETTLEMENT_NO AS AAR_SETTLEMENT_NO, S.PAY_NO AS AAR_PAY_NO, S.MODIFIER AS AAR_MODIFIER, S.ARRIVE_ACCOUNT_TIME, S.VALID AS AAR_VALID, S.CREATE_TIME AS AAR_CREATE_TIME, S.MODIFY_TIME AS AAR_MODIFY_TIME FROM OS_CERTIFICATE T LEFT JOIN OS_ACTUALAMOUNTRECORD S ON S.CERTIFICATE_NO = T.CERTIFICATE_NO ) C WHERE VALID=1 AND CERTIFICATE_NO = 1176690561931870208

 Time：1 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,customer_no_name AS customerNoName,customer_type_name AS customerTypeName,TICKETNOS AS ticketNos FROM OS_SALEORDER_EXTEND WHERE SALE_ORDER_NO=1176690110968635392

 Time：2 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_SALEORDER_EXTEND
SET settlement_status = 1,
 match_status = 1,
 check_result = 0,
 clearance_status = 1,
 certificate_no = '1176690561931870208',
 pay_way = '2000001',
 third_pay_no = '',
 third_bus_no = '',
 customer_no_name = '18923880699',
 customer_type_name = '分销商'
WHERE
	SALE_ORDER_NO = 1176690110968635392

 Time：2 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE SALE_ORDER_NO=1176690110968635392

 Time：2 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,customer_no_name AS customerNoName,customer_type_name AS customerTypeName,TICKETNOS AS ticketNos FROM OS_SALEORDER_EXTEND WHERE SALE_ORDER_NO=1176690110968635392

- SaleOrder [saleOrderNo=1176690110968635392, externalNumber=null, owner=8755, transationOrderNo=1176690110263992320, businessSignNo=1176690110968635393, deptCode=69, orderType=1, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, mainOrderNo=null, attachedType=null, orderChangeType=0:0:0, goodsType=2, goodsSubType=1, goodsName=EWR-DTW-LAX, pcount=null, amount=0.00, discountAmount=0.00, receivable=2540.00, received=2540.00, buyorderPrice=null, orderingTime=Wed Sep 25 10:49:18 CST 2019, payStatus=4, orderStatus=5, orderChildStatus=2, modifyTime=null, actorUser=null, modifier=admin, valid=1, contacts=null, mobile=null, bsignType=1, haveDifference=null, differenceTotalAmount=null] 
- 支付结果通知接收--->发送MQ消息：com.tempus.gss.order.entity.vo.PayNoticeVO@718d1220[owner=8755,goodsType=2,businessNo=1176690110968635392,traNo=1176690110263992320,businessType=2,changeType=0,payWay=2000001,incomeExpenseType=1,payStatus=1,reason=<null>,actualAmount=2540.00,agent={owner=8755, enterpriseNo=null, num=401703040743530784, ip=172.16.51.69, id=1, type=301, device=OP, account=admin, token=}] 
 监听到支付消息队列{"actualAmount":2540.00,"agent":{"account":"admin","device":"OP","id":1,"ip":"172.16.51.69","num":401703040743530784,"owner":8755,"token":"","type":301},"businessNo":1176690110968635392,"businessType":2,"changeType":0,"goodsType":2,"incomeExpenseType":1,"owner":8755,"payStatus":1,"payWay":2000001,"traNo":1176690110263992320}, dubbo version: 2.8.4, current host: 169.254.69.129 
[DUBBO] 修改采购单操作是否成功,销售单号:1176690110968635392->true, dubbo version: 2.8.4, current host: 169.254.69.129 
 Time：118 ms - ID：com.tempus.gss.pay.dao.AllPayInfoMapper.selectOne
 Execute SQL：SELECT id,all_pay_info_no AS allPayInfoNo,cust_user_no AS custUserNo,cust_user_account_no AS custUserAccountNo,cust_channel AS custChannel,service_line AS serviceLine,order_no AS orderNo,order_type AS orderType,pay_category_code AS payCategoryCode,pay_way_code AS payWayCode,three_interface_set_no AS threeInterfaceSetNo,amount AS amount,real_amount AS realAmount,plat_rate AS platRate,three_rate AS threeRate,plat_fare AS platFare,three_fare AS threeFare,three_trade_no AS threeTradeNo,old_all_pay_info_no AS oldAllPayInfoNo,old_three_trade_no AS oldThreeTradeNo,trade_type AS tradeType,trade_status AS tradeStatus,audit_status AS auditStatus,mark AS mark,submit_info AS submitInfo,calback_info AS calbackInfo,payment_account AS paymentAccount,payment_account_name AS paymentAccountName,receivable_account AS receivableAccount,receivable_account_name AS receivableAccountName,before_balance AS beforeBalance,after_balance AS afterBalance,cust_remark AS custRemark,audit_remark AS auditRemark,payment_ip AS paymentIp,payment_address AS paymentAddress,payment_time AS paymentTime,creator AS creator,create_time AS createTime,auditor AS auditor,audit_time AS auditTime,completer AS completer,complete_time AS completeTime,owner AS owner,operator AS operator,operator_tel AS operatorTel,call_back_url AS callBackUrl,transation_order_no AS transationOrderNo,sale_order_no AS saleOrderNo,pnr AS pnr,notify_time AS notifyTime,transation_certificate_url AS transationCertificateUrl,payment_type AS paymentType,payback_amount AS paybackAmount,receive_time AS receiveTime,product_type AS productType,pay_way AS payWay FROM PS_ALL_PAY_INFO WHERE trade_status=1 AND owner=8755 AND transation_order_no='1176690110263992320'

 - allPayInfo====AllPayInfo [id=210303, allPayInfoNo=1176690563471179776, custUserNo=401703040743530784, custUserName=null, custUserAccountNo=838648777869889536, custChannel=301, serviceLine=1, orderNo=1176690561931870208, orderType=1, payCategoryCode=2000, payCategoryName=null, payWayCode=2000001, payWayName=null, threeInterfaceSetNo=920165217933959168, amount=2540.00, realAmount=2540.00, platRate=0.000, threeRate=0.000, platFare=0.00, threeFare=0.00, threeTradeNo=null, oldAllPayInfoNo=null, oldThreeTradeNo=null, tradeType=2, tradeStatus=1, auditStatus=0, mark=null, submitInfo=null, calbackInfo=null, paymentAccount=838648777869889536, paymentAccountName=null, receivableAccount=919103034074636288, receivableAccountName=null, beforeBalance=6257861.31, afterBalance=6255321.31, custRemark=null, auditRemark=null, paymentIp=172.16.51.69, paymentAddress=null, paymentTime=null, creator=admin, createTime=Wed Sep 25 10:51:06 CST 2019, auditor=null, auditTime=null, completer=null, completeTime=null, owner=8755, operator=null, operatorTel=null, callBackUrl=null, transationOrderNo=1176690110263992320, saleOrderNo=1176690110968635392, pnr=, notifyTime=null, transationCertificateUrl=null, paymentType=null, paybackAmount=null, receiveTime=null, productType=null, payWay=null] 
 - 调用审核收付款单服务开始--->审核状态为：1 ,收付款单号为： 
 Time：4 ms - ID：com.tempus.gss.order.dao.CertificateMapper.selectByCertificateNo
 Execute SQL：SELECT C.* FROM ( SELECT T.OWNER, T.CERTIFICATE_NO, T.BUSINESS_TYPE, T.INCOME_EXPENSE_TYPE, T.SUB_BUSINESS_TYPE, T.PAY_TYPE, T.PAY_WAY, T.CUSTOMER_TYPE_NO, T.CUSTOMER_NO, T.CAPITAL_ACCOUNT_NO, T.AMOUNT, T.AUDIT_STATUS, T.REASON, T.SETTLEMENT_NO, T.SETTLEMENT_STATUS, T.PAY_NO, T.THIRD_PAY_NO, T.THIRD_BUS_NO, T.MODIFIER, T.MODIFY_TIME, T.CREATE_TIME, T.ACTUAL_STATUS, T.SPECIAL_TYPE, T.VALID, S.ID, S.OWNER as AAR_OWNER, S.RECORD_NO, S.CERTIFICATE_NO AS AAR_CERTIFICATE_NO, S.BUSINESS_TYPE AS AAR_BUSINESS_TYPE, S.INCOME_EXPENSE_TYPE AS AAR_INCOME_EXPENSE_TYPE, S.GOODS_TYPE AS AAR_GOODS_TYPE, S.GOODS_SUB_TYPE AS AAR_GOODS_SUB_TYPE, S.GOODS_NAME AS AAR_GOODS_NAME, S.ACTUAL_AMOUNT, S.ACTUAL_STATUS AS AAR_ACTUAL_STATUS, S.AUDIT_STATUS AS AAR_AUDIT_STATUS, S.MOVING_REASON, S.SETTLEMENT_STATUS AS AAR_SETTLEMENT_STATUS, S.SETTLEMENT_NO AS AAR_SETTLEMENT_NO, S.PAY_NO AS AAR_PAY_NO, S.MODIFIER AS AAR_MODIFIER, S.ARRIVE_ACCOUNT_TIME, S.VALID AS AAR_VALID, S.CREATE_TIME AS AAR_CREATE_TIME, S.MODIFY_TIME AS AAR_MODIFY_TIME FROM OS_CERTIFICATE T LEFT JOIN OS_ACTUALAMOUNTRECORD S ON S.CERTIFICATE_NO = T.CERTIFICATE_NO ) C WHERE VALID=1 AND CERTIFICATE_NO = 1176690561931870208

 Time：2 ms - ID：com.tempus.gss.order.dao.CertificateMapper.updateByPrimaryKeySelective
EXECUTE SQL：update OS_CERTIFICATE
SET AUDIT_STATUS = 2
WHERE
	CERTIFICATE_NO = 1176690561931870208
[2019-09-25 10:51:07.428][INFO ][http-nio-8479-exec-10][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 审核收付款单--->更新c表：Certificate:{ "certificateNo":"1176690561931870208","owner":null,"businessType":null,"incomeExpenseType":null,"subBusinessType":null,"payType":null,"payWay":null,"customerTypeNo":null,"customerNo":null,"capitalAccountNo":"","amount":null,"auditStatus":"2","reason":"","settlementNo":"","settlementStatus":null,"payNo":"","thirdPayNo":"","thirdBusNo":"","payAmount":null,"billsNumber":"","modifier":"","createTime":null,"modifyTime":null,"actualStatus":null,"valid":null,"ticketnos":"","specialType":null,"pnr":"","transationOrderNo":"","saleOrderNo":"","actualAmountRecordList":"[]"} 
 Time：3 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.updateActualAmountRecord
EXECUTE SQL：UPDATE OS_ACTUALAMOUNTRECORD
SET AUDIT_STATUS = 2
WHERE
	CERTIFICATE_NO = 1176690561931870208
[2019-09-25 10:51:07.431][INFO ][http-nio-8479-exec-10][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 审核收付款单--->更新a表：ActualAmountRecord [id=null, owner=null, recordNo=null, certificateNo=null, businessType=null, payType=null, incomeExpenseType=null, goodsType=null, goodsSubType=null, goodsName=null, actualAmount=null, auditStatus=2, actualStatus=null, movingReason=null, settlementNo=null, payNo=null, settlementStatus=null, modifier=null, createTime=null, modifyTime=null, arriveAccountTime=null, valid=null, refundAmount=null, payWay=null, capitalAccountNo=null，payWayName=null] 
 Time：4 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryListBycertificateNo
 Execute SQL：SELECT ID,OWNER,RECORD_NO as recordNo,CERTIFICATE_NO as certificateNo,BUSINESS_TYPE as businessType, INCOME_EXPENSE_TYPE as incomeExpenseType,GOODS_TYPE as goodsType,PAY_TYPE as payType, GOODS_SUB_TYPE as goodsSubType,GOODS_NAME as goodsName,ACTUAL_AMOUNT as actualAmount, AUDIT_STATUS as auditStatus,ACTUAL_STATUS as actualStatus,MOVING_REASON as movingReason, SETTLEMENT_NO as settlementNo,PAY_NO as payNo,SETTLEMENT_STATUS as settlementStatus, REFUND_AMOUNT as refundAmount,MODIFIER, CREATE_TIME as createTime,MODIFY_TIME as modifyTime,ARRIVE_ACCOUNT_TIME as arriveAccountTime,VALID FROM OS_ACTUALAMOUNTRECORD WHERE VALID=1 AND CERTIFICATE_NO = 1176690561931870208

 Time：2 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_SALEORDER_EXTEND
SET clearance_status = 2,
 clearance_amount = 2540.0
WHERE
	SALE_ORDER_NO = 1176690110968635392
 - SALE-【A、C、PAY】结束，耗时(ms):1096  result:OSResultType:{ "message":"交易成功","payNo":"1176690563471179776","result":"0"}--->参数为：CertificateCreateVO:{ "orderInfoList":"[BusinessOrderInfo [recordNo=1176690110263992320, businessType=1, actualAmount=null]]","payWay":"2000001","payType":"2","accoutNo":"838648777869889536","serviceLine":"1","channel":"301","ticketNos":"","customerTypeNo":"301","incomeExpenseType":"1","customerNo":"401703040743530784","subBusinessType":"1","reason":"","thirdPayNo":"","thirdBusNo":"","amount":null,"settlementNo":"","paymentAccount":"","receivableAccount":"","isWithHold":"false","payNo":"","pnr":"","transationOrderNo":"1176690110263992320","saleOrderNo":"1176690110968635392","specialType":null} 
