	# gss-iftTicket-pay
	#处理参数 获取所有跟参数有关的业务单号

	[2019-09-23 14:00:46.757][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - SALE-【A、C、PAY】开始--->参数为：CertificateCreateVO:{ "orderInfoList":"[BusinessOrderInfo [recordNo=1175949889989840896, businessType=1, actualAmount=null]]","payWay":"2000001","payType":"2","accoutNo":"838648777869889536","serviceLine":"1","channel":"301","ticketNos":"","customerTypeNo":"301","incomeExpenseType":"1","customerNo":"401703040743530784","subBusinessType":"1","reason":"","thirdPayNo":"","thirdBusNo":"","amount":null,"settlementNo":"","paymentAccount":"","receivableAccount":"","isWithHold":"false","payNo":"","pnr":"","transationOrderNo":"1175949889989840896","saleOrderNo":"1175949822646038528","specialType":null} 
	[2019-09-23 14:00:46.757][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - generated Key : 1175949889989840896_1:2:1 
	[2019-09-23 14:00:46.757][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - generated value : admin@172.16.51.69_no_type:1175949889989840896_1:2:1&size:1 
	[2019-09-23 14:00:46.767][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.util.OrderRedisUtils][?.()] - OS_Redis : set[1175949889989840896_1:2:1--admin@172.16.51.69_no_type:1175949889989840896_1:2:1&size:1] 
	[2019-09-23 14:00:46.767][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 处理业务单列表获得创建 A、C的参数 开始 
	[2019-09-23 14:00:46.768][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 转换业务单信息。。。。。。 
	 Time：37 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectList
EXECUTE SQL：SELECT SALE_ORDER_NO AS saleOrderNo,
*
FROM
	OS_SALEORDER 
WHERE
	transation_order_no = 1175949889989840896 
	AND valid = 1 
ORDER BY
	ORDERING_TIME DESC

	 Time：10 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.selectList
EXECUTE SQL：SELECT SALE_CHANGE_NO AS saleChangeNo,
*
FROM
	OS_SALECHANGE 
WHERE
	sale_order_no = 1175949822646038528 
	AND valid = 1 
ORDER BY
	CREATE_TIME DESC

	[2019-09-23 14:00:46.842][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 根据单号获取应收付减实收付后的金额。。。。。。 
	 Time：5 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
EXECUTE SQL：SELECT SALE_ORDER_NO AS saleOrderNo,
* 
FROM
	OS_SALEORDER 
WHERE
	SALE_ORDER_NO = 1175949822646038528

	 Time：4 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
EXECUTE SQL：SELECT SALE_ORDER_NO AS saleOrderNo,
*
FROM
	OS_SALEORDER_EXTEND 
WHERE
	SALE_ORDER_NO = 1175949822646038528

	 
	[2019-09-23 14:00:46.854][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 判断是否存在【已支付】的收付款单和实收单。。。。。。 
	[2019-09-23 14:00:46.854][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号查询应收付记录总和开始------> 
	 Time：61 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.queryPlanAmountByRecordNo
EXECUTE SQL：SELECT ID,
*
FROM
	OS_PLANAMOUNTRECORD 
WHERE
	VALID = 1 
	AND RECORD_NO = 1175949822646038528 
	AND BUSINESS_TYPE =2

	[2019-09-23 14:00:46.914][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号查询应收付记录总和结束------>recordNo:1175949822646038528  businessType:2  金额:2787.00 
	 Time：8 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryActualAmountByRecordNo
EXECUTE SQL： (
SELECT
	*
FROM
	OS_ACTUALAMOUNTRECORD A
	LEFT JOIN OS_CERTIFICATE C ON A.CERTIFICATE_NO = C.CERTIFICATE_NO
	LEFT JOIN PS_PAY_WAY P ON P.CODE = C.PAY_WAY 
WHERE
	A.VALID = 1 
	AND A.RECORD_NO = 1175949822646038528 
	AND A.BUSINESS_TYPE = 2 
ORDER BY
	A.CREATE_TIME DESC 
	) UNION
	(
SELECT
	*
FROM
	OS_ACTUALAMOUNTRECORD A
	LEFT JOIN OS_CERTIFICATE C ON A.CERTIFICATE_NO = C.CERTIFICATE_NO
	LEFT JOIN PS_PAY_WAY P ON P.CODE = C.PAY_WAY
	LEFT JOIN OS_DIFFERENCE_ORDER D ON D.BUSINESS_ORDER_NO = A.RECORD_NO 
WHERE
	A.VALID = 1 
	AND D.BUSINESS_ORDER_NO = 1175949822646038528 
	AND A.BUSINESS_TYPE = 2 
ORDER BY
	A.CREATE_TIME DESC 
	)
	[2019-09-23 14:00:46.923][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 调用收付款单查询服务开始--->收付款单号为：1176010526094864384 
	 Time：11 ms - ID：com.tempus.gss.order.dao.CertificateMapper.selectByCertificateNo
EXECUTE SQL：SELECT C.* 
FROM
	(
SELECT
	*
FROM
	OS_CERTIFICATE T
	LEFT JOIN OS_ACTUALAMOUNTRECORD S ON S.CERTIFICATE_NO = T.CERTIFICATE_NO 
	) C 
WHERE
	VALID = 1 
	AND CERTIFICATE_NO = 1176010526094864384

	 Time：105 ms - ID：com.tempus.gss.pay.dao.AllPayInfoMapper.selectOne
EXECUTE SQL：SELECT id,
	*
FROM
	PS_ALL_PAY_INFO 
WHERE
	order_no = 1176010526094864384 
	AND trade_status = 1 
	AND OWNER = 8755

	[2019-09-23 14:00:47.051][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 调用删除收付款单服务开始--->收付款单号为：1176010526094864384 
	 Time：8 ms - ID：com.tempus.gss.order.dao.CertificateMapper.selectByCertificateNoAll
	 Execute SQL：SELECT * FROM OS_CERTIFICATE WHERE CERTIFICATE_NO = 1176010526094864384

	 Time：8 ms - ID：com.tempus.gss.order.dao.CertificateMapper.updateByPrimaryKeySelective
	 Execute SQL：update OS_CERTIFICATE SET VALID = 0 where CERTIFICATE_NO = 1176010526094864384

	 Time：2 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryListBycertificateNo
EXECUTE SQL：SELECT ID,
	*
FROM
	OS_ACTUALAMOUNTRECORD 
WHERE
	VALID = 1 
	AND CERTIFICATE_NO = 1176010526094864384
	 Time：1 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_ACTUALAMOUNTRECORD 
SET OWNER = 8755,
record_no = 1175949822646038528,
certificate_no = 1176010526094864384,
business_type = 2,
pay_type = 2,
income_expense_type = 1,
goods_type = 2,
goods_sub_type = 1,
goods_name = 'EWR-DEN-LAX',
actual_amount = 2787.00,
audit_status = 1,
actual_status = 0,
settlement_status = 0,
modifier = 'admin',
create_time = '2019-09-23 13:49:40',
valid = 0,
refund_amount = 0.00 
WHERE
	id = 2084815
	
	[2019-09-23 14:00:47.101][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 修改业务单的实收、状态。。。。。。 
	 Time：8 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryActualAmountByRecordNo
EXECUTE SQL： (
SELECT
	*
FROM
	OS_ACTUALAMOUNTRECORD A
	LEFT JOIN OS_CERTIFICATE C ON A.CERTIFICATE_NO = C.CERTIFICATE_NO
	LEFT JOIN PS_PAY_WAY P ON P.CODE = C.PAY_WAY 
WHERE
	A.VALID = 1 
	AND A.RECORD_NO = 1175949822646038528 
	AND A.BUSINESS_TYPE = 2 
ORDER BY
	A.CREATE_TIME DESC 
	) UNION
	(
SELECT
	*
FROM
	OS_ACTUALAMOUNTRECORD A
	LEFT JOIN OS_CERTIFICATE C ON A.CERTIFICATE_NO = C.CERTIFICATE_NO
	LEFT JOIN PS_PAY_WAY P ON P.CODE = C.PAY_WAY
	LEFT JOIN OS_DIFFERENCE_ORDER D ON D.BUSINESS_ORDER_NO = A.RECORD_NO 
WHERE
	A.VALID = 1 
	AND D.BUSINESS_ORDER_NO = 1175949822646038528 
	AND A.BUSINESS_TYPE = 2 
ORDER BY
	A.CREATE_TIME DESC 
	)

	 Time：5 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
EXECUTE SQL：SELECT SALE_ORDER_NO AS saleOrderNo,
*
FROM
	OS_SALEORDER 
WHERE
	SALE_ORDER_NO = 1175949822646038528
	
	 Time：3 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
EXECUTE SQL：SELECT SALE_ORDER_NO AS saleOrderNo,
 *
FROM
	OS_SALEORDER_EXTEND
WHERE
	SALE_ORDER_NO = 1175949822646038528

	[2019-09-23 14:00:47.114][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 修改业务单的实收、状态, 
	[2019-09-23 14:00:47.116][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - 销售单update()更新参数为-->
	 Time：6 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.updateSelectiveById
	EXECUTE SQL：UPDATE OS_SALEORDER
	SET OWNER = 8755,
	 transation_order_no = 1175949889989840896,
	 business_sign_no = 1175949890103087104,
	 dept_code = '69',
	 order_type = 1,
	 source_channel_no = 'OP',
	 customer_type_no = 301,
	 customer_no = 401703040743530784,
	 ordering_login_name = 'admin',
	 order_change_type = '0:0:0',
	 goods_type = 2,
	 goods_sub_type = 1,
	 goods_name = 'EWR-DEN-LAX',
	 amount = 0.00,
	 discount_amount = 0.00,
	 receivable = 2787.00,
	 received = 0,
	 ordering_time = '2019-09-23 09:47:56',
	 pay_status = 1,
	 order_status = 5,
	 order_child_status = 2,
	 modifier = 'admin',
	 valid = 1,
	 bsign_type = 1
	WHERE
		SALE_ORDER_NO = 1175949822646038528
	
	[2019-09-23 14:00:47.151][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.TransationOrderServiceImpl][?.()] - 根据交易单单号修改交易单信息:1175949889989840896, 4, true 


	
	[2019-09-23 14:00:47.355][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.TransationOrderServiceImpl][?.()] - 根据交易单单号-->1175949889989840896修改交易单信息。修改类型:4应收:2787.00实收:0.00金额差:2787.00 
	 Time：10 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.updateSelectiveById
	EXECUTE SQL：UPDATE OS_TRANSATIONORDER
	SET OWNER = 8755,
	 source_channel_no = 'OP',
	 customer_type_no = 301,
	 customer_no = 401703040743530784,
	 ordering_login_name = 'admin',
	 total_amount = 2787.00,
	 discount_amount = 0.00,
	 receivable = 2787.00,
	 received = 0.00,
	 contacts = 'tudou123',
	 mobile = '18923880699',
	 pay_status = 1,
	 create_time = '2019-09-23 09:47:56',
	 modifier = 'admin',
	 valid = 1
	WHERE
		TRANSATION_ORDER_NO = 1175949889989840896
	
	[2019-09-23 14:00:47.377][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - toPayAmount:2787.00,paidAmount:0,antiAmount:0 
	[2019-09-23 14:00:47.377][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 业务单:1175949822646038528 最终需要支付：2787.00 
	[2019-09-23 14:00:47.377][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 创建A、C并调用支付 recordNo:1175949822646038528  OK 
	[2019-09-23 14:00:47.377][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 处理业务单列表  决定是否创建 A、C并调用支付 结束  Size=1 
	[2019-09-23 14:00:47.377][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 总金额：amount----2787.00 
	[2019-09-23 14:00:47.377][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 创建c、a、修改业务单信息和状态、修改扩展表  setCertificate 开始,参数： 
	[2019-09-23 14:00:47.377][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - setCertificate 保存certificate：
# 创建收付款单 
 Time：188 ms - ID：com.tempus.gss.order.dao.CertificateMapper.insertSelective
 Execute SQL：INSERT INTO OS_CERTIFICATE ( certificate_no, owner, business_type, income_expense_type, sub_business_type, pay_type, pay_way, customer_type_no, customer_no, capital_account_no, amount, audit_status, settlement_no, settlement_status, modifier, create_time, actual_status, valid, special_type ) VALUES ( 1176304325958340608, 8755, 1, 1, 1, 2, 2000001, 301, 401703040743530784, '838648777869889536', 4626.00, 1, '', 0, 'admin', '2019-09-24 09:16:34', 0, 1, 0 )

	 Time：13 ms - ID：com.tempus.gss.order.dao.CertificateMapper.insertSelective
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
	1176013521163464704,
	8755,
	1,
	1,
	1,
	2,
	2000001,
	301,
	401703040743530784,
	'838648777869889536',
	2787.00,
	1,
	'',
	0,
	'admin',
	'2019-09-23 14:00:47',
	0,
	1,
	0 
	)

	[2019-09-23 14:00:47.391][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 创建实收(付)记录--->参数为：ActualAmountRecord
# 创建实收记录

Time：194 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.insert
 Execute SQL：INSERT INTO OS_ACTUALAMOUNTRECORD ( owner,record_no,certificate_no,business_type,pay_type,income_expense_type,goods_type,goods_sub_type,goods_name,actual_amount,audit_status,actual_status,moving_reason,settlement_no,pay_no,settlement_status,modifier,create_time,modify_time,arrive_account_time,valid,refund_amount ) VALUES ( 8755,1176295422738575360,1176304325958340608,2,2,1,2,1,'EWR-DEN-LAX',4626.00,1,0,null,null,null,0,'admin','2019-09-24 09:20:17',null,null,1,0 )
	
 Time：11 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.insert
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
	1175949822646038528,
	1176013521163464704,
	2,
	2,
	1,
	2,
	1,
	'EWR-DEN-LAX',
	2787.00,
	1,
	0,
	NULL,
	NULL,
	NULL,
	0,
	'admin',
	'2019-09-23 14:00:47',
	NULL,
	NULL,
	1,
	0 
	)

	[2019-09-23 14:00:47.403][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 开始调用balancePayByAccount。。。。。。 
	[2019-09-23 14:00:47.403][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - com.tempus.gss.pay.entity.vo.BalancePayRequest@70f3faf[payWayCode=2000001,channel=301,serviceLine=1,cusId=401703040743530784,orderNo=1176013521163464704,balance=2787.00,AccoutNo=838648777869889536,custRemark=<null>,transationOrderNo=1175949889989840896,saleOrderNo=1175949822646038528,pnr=,productType=<null>,payWay=<null>] 
	[2019-09-23 14:00:47.409][INFO ][http-nio-8479-exec-3][com.tempus.gss.pay.service.facade.PayRestService][?.()] - 额度支付请求：BalancePayRequest [payWayCode=2000001, channel=301, serviceLine=1, cusId=401703040743530784, orderNo=1176013521163464704, balance=2787.00, AccoutNo=838648777869889536, custRemark=null, transationOrderNo=1175949889989840896, saleOrderNo=1175949822646038528, pnr=, productType=null, payWay=null], com.tempus.gss.vo.Agent@699903f3[owner=8755,type=301,num=401703040743530784,id=1,account=admin,token=,ip=172.16.51.69,device=OP,enterpriseNo=<null>,telephone=<null>,seat=<null>] 
	
	 Time：116 ms - ID：com.tempus.gss.pay.dao.AllPayInfoMapper.selectOne
	 Execute SQL：
SELECT
	*
FROM
	PS_ALL_PAY_INFO 
WHERE
	order_no = 1176013521163464704 
	AND trade_status = 1 
	AND OWNER = 8755

	 Time：39 ms - ID：com.tempus.gss.pay.dao.CapitalAccountScopeMapper.selectOne
EXECUTE SQL：SELECT id,
*
FROM
	PS_CAPITAL_ACCOUNT_SCOPE 
WHERE
	pay_way_code = 2000006 
	AND pay_category_code = 2000 
	AND channel = 'B2B' 
	AND valid = TRUE 
	AND OWNER = 8755
	 Time：25 ms - ID：com.tempus.gss.pay.dao.ThreeInterfaceSetMapper.selectOne
EXECUTE SQL：SELECT id,
three_interface_set_no AS threeInterfaceSetNo,
NAME AS NAME,
merchant_name AS merchantName,
merchant_no AS merchantNo,
op_password AS opPassword,
capital_account_no AS capitalAccountNo,
secret_key AS secretKey,
rate AS rate,
merchant_certificate AS merchantCertificate,
ca_certificate AS caCertificate,
STATUS AS STATUS,
valid AS valid,
butt_code AS buttCode,
create_time AS createTime,
creator AS creator,
modifier AS modifier,
modify_time AS modifyTime,
OWNER AS OWNER,
income_type AS incomeType 
FROM
	PS_THREE_INTERFACE_SET 
WHERE
	capital_account_no = 918442969000312832 
	AND valid = TRUE 
	AND OWNER = 8755

	 Time：23 ms - ID：com.tempus.gss.pay.dao.CapitalAccountMapper.selectOne
EXECUTE SQL：SELECT id,
capital_account_no AS capitalAccountNo,
account AS account,
account_name AS accountName,
account_type AS accountType,
pay_way_code AS payWayCode,
pay_category_code AS payCategoryCode,
is_payment_account AS isPaymentAccount,
is_receivable_account AS isReceivableAccount,
valid AS valid,
creator AS creator,
create_time AS createTime,
modifier AS modifier,
modify_time AS modifyTime,
remark AS remark,
OWNER AS OWNER,
rate AS rate 
FROM
	PS_CAPITAL_ACCOUNT 
WHERE
	capital_account_no = 918442969000312832 
	AND valid = TRUE 
	AND OWNER = 8755
	[2019-09-23 14:00:47.631][INFO ][http-nio-8479-exec-3][com.tempus.gss.pay.service.three.BalancePayService][?.()] - 调用客商接口查询客户账号余额请求:838648777869889536 
	[2019-09-23 14:00:47.652][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 根据账户Id查询账户余额-------------------------838648777869889536 
	 Time：19 ms - ID：com.tempus.gss.cps.dao.AccountMapper.getAccountBalanceByAccountNo
	 Execute SQL：SELECT T.BALANCE FROM CPS_ACCOUNT T WHERE T.ACCOUNT_NO = 838648777869889536

	[2019-09-23 14:00:47.668][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 根据账户Id查询账户余额成功------------------------- 
	[2019-09-23 14:00:47.668][INFO ][http-nio-8479-exec-3][com.tempus.gss.pay.service.three.BalancePayService][?.()] - 调用客商接口查询客户账号余额响应:6315098.31 
	[2019-09-23 14:00:47.668][INFO ][http-nio-8479-exec-3][com.tempus.gss.pay.service.three.BalancePayService][?.()] - 调用客商接口更新余额请求:{owner=8755, enterpriseNo=null, num=401703040743530784, ip=172.16.51.69, id=1, type=301, device=OP, account=admin, token=}, 838648777869889536, 919103034074636288, 2787.00, 1, 1176013521859719168, null, 1176013521163464704 
	[2019-09-23 14:00:47.690][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 付款/退款开始------------------ 
	 Time：24 ms - ID：com.tempus.gss.cps.dao.AccountMapper.getAccountByAccountNo
EXECUTE SQL：SELECT c.NAME AS customerName,
*
FROM
	CPS_ACCOUNT a
	LEFT JOIN CPS_CUSTOMER c ON a.CUSTOMER_NO = c.CUSTOMER_NO 
WHERE
	a.ACCOUNT_NO = 919103034074636288

	 Time：27 ms - ID：com.tempus.gss.cps.dao.AccountMapper.getAccountByAccountNo
EXECUTE SQL：SELECT c.NAME AS customerName,
*
FROM
	CPS_ACCOUNT a
	LEFT JOIN CPS_CUSTOMER c ON a.CUSTOMER_NO = c.CUSTOMER_NO 
WHERE
	a.ACCOUNT_NO = 838648777869889536
	[2019-09-23 14:00:47.714][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 根据账户编号，金额，类型余额更新-------------------------进入 
	[2019-09-23 14:00:47.715][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - payNo==1176013521859719168, tradeNo===1176013521163464704, payType==1 
	[2019-09-23 14:00:47.715][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 更新流水列表开始======== 
	 Time：24 ms - ID：com.tempus.gss.cps.dao.AccountBillMapper.insertSelective
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
		1176013522690191360,
		838648777869889536,
		401703040743530784,
		6315098.31,
		1,
		2787.00,
		6312311.31,
		1176013521163464704,
		1,
		'2019-09-23 14:00:47',
		1176013521859719168,
		0,
		0,
		8755,
		1,
		'1000001,1000004,1000002,1000003,1000006,1000010',
		'admin',
		'2019-09-23 14:00:47',
		'admin',
		'2019-09-23 14:00:47'
	)
	[2019-09-23 14:00:47.765][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 流水表(AccountBill)增加成功--------------1176013522690191360 
	[2019-09-23 14:00:47.849][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 流水表日志新增成功--------------账户:838648777869889536, 本次交易金额：2787.00, 流水ID号：1176013522690191360, 收支类型：支出, 交易流水号：1176013521859719168, 收付款单号：1176013521163464704, 操作人：admin 
	 Time：25 ms - ID：com.tempus.gss.cps.dao.AccountMapper.updateAccountBalanceByAccountNo
	 Execute SQL：UPDATE CPS_ACCOUNT T SET T.BALANCE = 6312311.31, T.MODIFIER = 'admin', T.MODIFY_TIME = SYSDATE() WHERE T.ACCOUNT_NO = 838648777869889536 AND T.OWNER = 8755

	[2019-09-23 14:00:47.869][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 根据账户编号，金额，类型余额更新成功-------------- 
	[2019-09-23 14:00:47.896][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 账户838648777869889536余额更新日志记录成功--------------账户金额为：6315098.31, 本次交易金额为：-2787.00, 更新后为：6312311.31 
	[2019-09-23 14:00:47.896][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 充值还款进入 payType==1 
	[2019-09-23 14:00:47.896][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 更新流水列表结束======== 
	[2019-09-23 14:00:47.896][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 根据账户编号，金额，类型余额更新-------------------------进入 
	[2019-09-23 14:00:47.896][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - payNo==1176013521859719168, tradeNo===1176013521163464704, payType==1 
	[2019-09-23 14:00:47.896][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 更新流水列表开始======== 
	 Time：20 ms - ID：com.tempus.gss.cps.dao.AccountMapper.getAccountByAccountNo
EXECUTE SQL：SELECT c.NAME AS customerName,
*
FROM
	CPS_ACCOUNT a
	LEFT JOIN CPS_CUSTOMER c ON a.CUSTOMER_NO = c.CUSTOMER_NO 
WHERE
	a.ACCOUNT_NO = 919103034074636288

	 Time：19 ms - ID：com.tempus.gss.cps.dao.AccountBillMapper.insertSelective
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
	1176013523411611648,
	919103034074636288,
	401611181218200133,
	39133777.71,
	2,
	2787.00,
	39136564.71,
	1176013521163464704,
	2,
	'2019-09-23 14:00:47',
	1176013521859719168,
	0,
	2787.00,
	8755,
	1,
	'1000001',
	'admin',
	'2019-09-23 14:00:47',
	'admin',
	'2019-09-23 14:00:47' 
	)
	[2019-09-23 14:00:47.933][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 流水表(AccountBill)增加成功--------------1176013523411611648 
	[2019-09-23 14:00:47.944][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 流水表日志新增成功--------------账户:919103034074636288, 本次交易金额：2787.00, 流水ID号：1176013523411611648, 收支类型：收入, 交易流水号：1176013521859719168, 收付款单号：1176013521163464704, 操作人：admin 
	 Time：12 ms - ID：com.tempus.gss.cps.dao.AccountMapper.updateAccountBalanceByAccountNo
	 Execute SQL：UPDATE CPS_ACCOUNT T SET T.BALANCE = 39136564.71, T.MODIFIER = 'admin', T.MODIFY_TIME = SYSDATE() WHERE T.ACCOUNT_NO = 919103034074636288 AND T.OWNER = 8755

	[2019-09-23 14:00:47.956][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 根据账户编号，金额，类型余额更新成功-------------- 
	[2019-09-23 14:00:47.977][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 账户919103034074636288余额更新日志记录成功--------------账户金额为：39133777.71, 本次交易金额为：2787.00, 更新后为：39136564.71 
	[2019-09-23 14:00:47.977][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 充值还款进入 payType==1 
	[2019-09-23 14:00:47.977][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 更新流水列表结束======== 
	[2019-09-23 14:00:47.977][INFO ][http-nio-8479-exec-7][com.tempus.gss.cps.service.CpsAccountServiceImpl][?.()] - 付款/退款成功------838648777869889536-----919103034074636288-----2787.00 
	[2019-09-23 14:00:48.016][INFO ][http-nio-8479-exec-3][com.tempus.gss.pay.service.three.BalancePayService][?.()] - 调用客商接口更新余额响应:1 
	 Time：17 ms - ID：com.tempus.gss.system.dao.ParamMapper.getValueByKey
	 Execute SQL：select PARAM_VALUE from SM_PARAM WHERE PARAM_KEY = 'is_Tqb_sgsh'

	 Time：15 ms - ID：com.tempus.gss.system.dao.ParamMapper.getValueByKey
	 Execute SQL：select PARAM_VALUE from SM_PARAM WHERE PARAM_KEY = 'is_Tqb_sgsh'

	[2019-09-23 14:00:48.247][INFO ][http-nio-8479-exec-3][com.tempus.gss.pay.service.three.BalancePayService][?.()] - T钱包账户赎回失败，赎回流水号：1176013521859719168, 失败原因：签名错误 
	 Time：14 ms - ID：com.tempus.gss.pay.dao.AllPayInfoMapper.insert
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
	1176013521859719168,
	401703040743530784,
	838648777869889536,
	'301',
	'1',
	1176013521163464704,
	1,
	2000,
	2000001,
	920165217933959168,
	2787.00,
	2787.00,
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
	6315098.31,
	6312311.31,
	NULL,
	NULL,
	'172.16.51.69',
	NULL,
	NULL,
	'admin',
	'2019-09-23 14:00:47',
	NULL,
	NULL,
	NULL,
	NULL,
	8755,
	NULL,
	NULL,
	NULL,
	'1175949889989840896',
	'1175949822646038528',
	'',
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
NULL 
	)
	[2019-09-23 14:00:48.264][INFO ][http-nio-8479-exec-3][com.tempus.gss.pay.service.facade.PayRestService][?.()] - 额度支付响应：BalancePayResponse [code=0000, message=交易成功, payStatus=1, paymentAccount=838648777869889536, receivableAccount=919103034074636288, payNo=1176013521859719168] 
	[2019-09-23 14:00:48.266][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 创建收付款单并支付--->调用额度支付服务结果：com.tempus.gss.pay.entity.vo.BalancePayResponse@475415dc[code=0000,message=交易成功,payStatus=1,paymentAccount=838648777869889536,receivableAccount=919103034074636288,payNo=1176013521859719168] 
	[2019-09-23 14:00:48.266][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 同步通知开始PayReceiveVO [certificateNo=1176013521163464704, payStatus=1, amount=2787.00, payWay=2000001, payNo=1176013521859719168, thirdPayNo=null, paymentAccount=838648777869889536, receivableAccount=919103034074636288, reason=null] 
	[2019-09-23 14:00:48.266][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 调用支付结果通知服务payReceive开始--->参数为：PayReceiveVO [certificateNo=1176013521163464704, payStatus=1, amount=2787.00, payWay=2000001, payNo=1176013521859719168, thirdPayNo=null, paymentAccount=838648777869889536, receivableAccount=919103034074636288, reason=null] 
	 Time：14 ms - ID：com.tempus.gss.order.dao.CertificateMapper.selectByCertificateNoAll
	 Execute SQL：SELECT * FROM OS_CERTIFICATE WHERE CERTIFICATE_NO = 1176013521163464704

	 Time：20 ms - ID：com.tempus.gss.order.dao.CertificateMapper.updateByPrimaryKeySelective
	 Execute SQL：update OS_CERTIFICATE SET PAY_WAY = 2000001, CAPITAL_ACCOUNT_NO = '838648777869889536', PAY_NO = '1176013521859719168', PAY_AMOUNT = 2787.00, ACTUAL_STATUS = 1, VALID = 1 where CERTIFICATE_NO = 1176013521163464704

	[2019-09-23 14:00:48.310][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 发送通知--更新收付款单：为Certificate:{ "certificateNo":"1176013521163464704","owner":null,"businessType":null,"incomeExpenseType":null,"subBusinessType":null,"payType":null,"payWay":"2000001","customerTypeNo":null,"customerNo":null,"capitalAccountNo":"838648777869889536","amount":null,"auditStatus":null,"reason":"","settlementNo":"","settlementStatus":null,"payNo":"1176013521859719168","thirdPayNo":"","thirdBusNo":"","payAmount":"2787.00","billsNumber":"","modifier":"","createTime":null,"modifyTime":null,"actualStatus":"1","valid":"1","ticketnos":"","specialType":null,"pnr":"","transationOrderNo":"","saleOrderNo":"","actualAmountRecordList":"[]"} 
	 Time：30 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.updateActualAmountRecord
EXECUTE SQL：
UPDATE OS_ACTUALAMOUNTRECORD 
SET ACTUAL_STATUS = 1,
PAY_NO = '1176013521859719168',
MODIFY_TIME = '2019-09-23 14:00:48',
VALID = 1 
WHERE
	CERTIFICATE_NO = 1176013521163464704
	
	 Time：12 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryListBycertificateNo
EXECUTE SQL：SELECT ID,
*
FROM
	OS_ACTUALAMOUNTRECORD 
WHERE
	VALID = 1 
	AND CERTIFICATE_NO = 1176013521163464704
	
	
	[2019-09-23 14:00:48.352][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 修改业务单的实收、状态。。。。。。 
	 Time：11 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryActualAmountByRecordNo
EXECUTE SQL： (
SELECT
	A.ID,
	A.OWNER,
	A.RECORD_NO AS recordNo,
	A.CERTIFICATE_NO AS certificateNo,
	A.BUSINESS_TYPE AS businessType,
	A.INCOME_EXPENSE_TYPE AS incomeExpenseType,
	A.GOODS_TYPE AS goodsType,
	A.PAY_TYPE AS payType,
	A.GOODS_SUB_TYPE AS goodsSubType,
	A.GOODS_NAME AS goodsName,
	A.ACTUAL_AMOUNT AS actualAmount,
	A.AUDIT_STATUS AS auditStatus,
	A.ACTUAL_STATUS AS actualStatus,
	A.MOVING_REASON AS movingReason,
	A.SETTLEMENT_NO AS settlementNo,
	A.PAY_NO AS payNo,
	A.SETTLEMENT_STATUS AS settlementStatus,
	A.REFUND_AMOUNT AS refundAmount,
	A.MODIFIER,
	A.CREATE_TIME AS createTime,
	A.MODIFY_TIME AS modifyTime,
	A.ARRIVE_ACCOUNT_TIME AS arriveAccountTime,
	A.VALID,
	C.PAY_WAY AS payWay,
	C.CAPITAL_ACCOUNT_NO AS capitalAccountNo,
	P.NAME AS payWayName 
FROM
	OS_ACTUALAMOUNTRECORD A
	LEFT JOIN OS_CERTIFICATE C ON A.CERTIFICATE_NO = C.CERTIFICATE_NO
	LEFT JOIN PS_PAY_WAY P ON P.CODE = C.PAY_WAY 
WHERE
	A.VALID = 1 
	AND A.RECORD_NO = 1175949822646038528 
	AND A.BUSINESS_TYPE = 2 
ORDER BY
	A.CREATE_TIME DESC 
	) UNION
	(
SELECT
	A.ID,
	A.OWNER,
	A.RECORD_NO AS recordNo,
	A.CERTIFICATE_NO AS certificateNo,
	A.BUSINESS_TYPE AS businessType,
	A.INCOME_EXPENSE_TYPE AS incomeExpenseType,
	A.GOODS_TYPE AS goodsType,
	A.PAY_TYPE AS payType,
	A.GOODS_SUB_TYPE AS goodsSubType,
	A.GOODS_NAME AS goodsName,
	A.ACTUAL_AMOUNT AS actualAmount,
	A.AUDIT_STATUS AS auditStatus,
	A.ACTUAL_STATUS AS actualStatus,
	A.MOVING_REASON AS movingReason,
	A.SETTLEMENT_NO AS settlementNo,
	A.PAY_NO AS payNo,
	A.SETTLEMENT_STATUS AS settlementStatus,
	A.REFUND_AMOUNT AS refundAmount,
	A.MODIFIER,
	A.CREATE_TIME AS createTime,
	A.MODIFY_TIME AS modifyTime,
	A.ARRIVE_ACCOUNT_TIME AS arriveAccountTime,
	A.VALID,
	C.PAY_WAY AS payWay,
	C.CAPITAL_ACCOUNT_NO AS capitalAccountNo,
	P.NAME AS payWayName 
FROM
	OS_ACTUALAMOUNTRECORD A
	LEFT JOIN OS_CERTIFICATE C ON A.CERTIFICATE_NO = C.CERTIFICATE_NO
	LEFT JOIN PS_PAY_WAY P ON P.CODE = C.PAY_WAY
	LEFT JOIN OS_DIFFERENCE_ORDER D ON D.BUSINESS_ORDER_NO = A.RECORD_NO 
WHERE
	A.VALID = 1 
	AND D.BUSINESS_ORDER_NO = 1175949822646038528 
	AND A.BUSINESS_TYPE = 2 
ORDER BY
	A.CREATE_TIME DESC 
	)

	 Time：3 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
EXECUTE SQL：SELECT SALE_ORDER_NO AS saleOrderNo,
*
FROM
	OS_SALEORDER 
WHERE
	SALE_ORDER_NO = 1175949822646038528
	
	 Time：10 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
	 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,customer_no_name AS customerNoName,customer_type_name AS customerTypeName,TICKETNOS AS ticketNos FROM OS_SALEORDER_EXTEND WHERE SALE_ORDER_NO=1175949822646038528

	[2019-09-23 14:00:48.381][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - 
	[2019-09-23 14:00:48.381][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 修改业务单的实收、状态, 销售单参数为：
	[2019-09-23 14:00:48.388][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - 销售单update()更新参数为-->SaleOrder
	 Time：11 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_SALEORDER 
SET OWNER = 8755,
transation_order_no = 1175949889989840896,
business_sign_no = 1175949890103087104,
dept_code = '69',
order_type = 1,
source_channel_no = 'OP',
customer_type_no = 301,
customer_no = 401703040743530784,
ordering_login_name = 'admin',
order_change_type = '0:0:0',
goods_type = 2,
goods_sub_type = 1,
goods_name = 'EWR-DEN-LAX',
amount = 0.00,
discount_amount = 0.00,
receivable = 2787.00,
received = 2787.00,
ordering_time = '2019-09-23 09:47:56',
pay_status = 4,
order_status = 5,
order_child_status = 2,
modifier = 'admin',
valid = 1,
bsign_type = 1 
WHERE
	SALE_ORDER_NO = 1175949822646038528

	 Time：5 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
	 

	[2019-09-23 14:00:48.408][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.TransationOrderServiceImpl][?.()] - 根据交易单单号修改交易单信息:1175949889989840896, 2, true 
	 Time：3 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.selectById
	
	[2019-09-23 14:00:48.412][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.TransationOrderServiceImpl][?.()] - 交易单单号:TransationOrder [transationOrderNo=1175949889989840896, externalNumber=null, owner=8755, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, totalAmount=2787.00, discountAmount=0.00, receivable=2787.00, received=0.00, contacts=tudou123, mobile=18923880699, payStatus=1, createTime=Mon Sep 23 09:47:56 CST 2019, modifyTime=null, modifier=admin, valid=1] 
	 Time：21 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectList
	

	 Time：3 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.selectByMap
	

	[2019-09-23 14:00:48.466][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.TransationOrderServiceImpl][?.()] - 根据交易单单号-->1175949889989840896修改交易单信息。修改类型:2应收:2787.00实收:2787.00金额差:0.00 
	 Time：4 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_TRANSATIONORDER 
SET OWNER = 8755,
source_channel_no = 'OP',
customer_type_no = 301,
customer_no = 401703040743530784,
ordering_login_name = 'admin',
total_amount = 2787.00,
discount_amount = 0.00,
receivable = 2787.00,
received = 2787.00,
contacts = 'tudou123',
mobile = '18923880699',
pay_status = 3,
create_time = '2019-09-23 09:47:56',
modifier = 'admin',
valid = 1 
WHERE
	TRANSATION_ORDER_NO = 1175949889989840896
	
	 Time：4 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.selectById
	 

	[2019-09-23 14:00:48.474][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 修改业务单扩展表的相关信息。。。。。。 
	 Time：5 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryActualAmountByRecordNo
	

	[2019-09-23 14:00:48.479][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 调用收付款单查询服务开始--->收付款单号为：1176013521163464704 
	 Time：3 ms - ID：com.tempus.gss.order.dao.CertificateMapper.selectByCertificateNo
	
	 Time：0 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
	 

	 Time：18 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_SALEORDER_EXTEND 
SET settlement_status = 1,
match_status = 1,
check_result = 0,
clearance_status = 1,
certificate_no = '1176013521163464704',
pay_way = '2000001',
third_pay_no = '',
third_bus_no = '',
customer_no_name = '18923880699',
customer_type_name = '分销商' 
WHERE
	SALE_ORDER_NO = 1175949822646038528

	[2019-09-23 14:00:48.518][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - t。。。。。。 
	 Time：6 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
	 

	 Time：3 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
	

	[2019-09-23 14:00:48.526][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - SaleOrder [saleOrderNo=
	
	[2019-09-23 14:00:48.527][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 支付结果通知接收--->发送MQ消息：com.tempus.gss.order.entity.vo.PayNoticeVO@4274739e[owner=8755,goodsType=2,businessNo=1175949822646038528,traNo=1175949889989840896,businessType=2,changeType=0,payWay=2000001,incomeExpenseType=1,payStatus=1,reason=<null>,actualAmount=2787.00,agent={owner=8755, enterpriseNo=null, num=401703040743530784, ip=172.16.51.69, id=1, type=301, device=OP, account=admin, token=}] 
	 Time：115 ms - ID：com.tempus.gss.pay.dao.AllPayInfoMapper.selectOne
	
	[2019-09-23 14:00:48.693][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - allPayInfo====AllPayInfo [id=210261, allPayInfoNo=1176013521859719168, custUserNo=401703040743530784, custUserName=null, custUserAccountNo=838648777869889536, custChannel=301, serviceLine=1, orderNo=1176013521163464704, orderType=1, payCategoryCode=2000, payCategoryName=null, payWayCode=2000001, payWayName=null, threeInterfaceSetNo=920165217933959168, amount=2787.00, realAmount=2787.00, platRate=0.000, threeRate=0.000, platFare=0.00, threeFare=0.00, threeTradeNo=null, oldAllPayInfoNo=null, oldThreeTradeNo=null, tradeType=2, tradeStatus=1, auditStatus=0, mark=null, submitInfo=null, calbackInfo=null, paymentAccount=838648777869889536, paymentAccountName=null, receivableAccount=919103034074636288, receivableAccountName=null, beforeBalance=6315098.31, afterBalance=6312311.31, custRemark=null, auditRemark=null, paymentIp=172.16.51.69, paymentAddress=null, paymentTime=null, creator=admin, createTime=Mon Sep 23 14:00:47 CST 2019, auditor=null, auditTime=null, completer=null, completeTime=null, owner=8755, operator=null, operatorTel=null, callBackUrl=null, transationOrderNo=1175949889989840896, saleOrderNo=1175949822646038528, pnr=, notifyTime=null, transationCertificateUrl=null, paymentType=null, paybackAmount=null, receiveTime=null, productType=null, payWay=null] 
	[2019-09-23 14:00:48.693][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 调用审核收付款单服务开始--->审核状态为：1 ,收付款单号为： 
	 Time：4 ms - ID：com.tempus.gss.order.dao.CertificateMapper.selectByCertificateNo
	

	 Time：4 ms - ID：com.tempus.gss.order.dao.CertificateMapper.updateByPrimaryKeySelective
	 Execute SQL：update OS_CERTIFICATE SET AUDIT_STATUS = 2 where CERTIFICATE_NO = 1176013521163464704

	[2019-09-23 14:00:48.701][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 审核收付款单--->更新c表：Certificate:{ "certificateNo":"1176013521163464704","owner":null,"businessType":null,"incomeExpenseType":null,"subBusinessType":null,"payType":null,"payWay":null,"customerTypeNo":null,"customerNo":null,"capitalAccountNo":"","amount":null,"auditStatus":"2","reason":"","settlementNo":"","settlementStatus":null,"payNo":"","thirdPayNo":"","thirdBusNo":"","payAmount":null,"billsNumber":"","modifier":"","createTime":null,"modifyTime":null,"actualStatus":null,"valid":null,"ticketnos":"","specialType":null,"pnr":"","transationOrderNo":"","saleOrderNo":"","actualAmountRecordList":"[]"} 
	[2019-09-23 14:00:48.705][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - 审核收付款单--->更新a表：ActualAmountRecord [id=null, owner=null, recordNo=null, certificateNo=null, businessType=null, payType=null, incomeExpenseType=null, goodsType=null, goodsSubType=null, goodsName=null, actualAmount=null, auditStatus=2, actualStatus=null, movingReason=null, settlementNo=null, payNo=null, settlementStatus=null, modifier=null, createTime=null, modifyTime=null, arriveAccountTime=null, valid=null, refundAmount=null, payWay=null, capitalAccountNo=null，payWayName=null] 
	 Time：2 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.updateActualAmountRecord
	 Execute SQL：UPDATE OS_ACTUALAMOUNTRECORD SET AUDIT_STATUS = 2 WHERE CERTIFICATE_NO = 1176013521163464704

	 Time：4 ms - ID：com.tempus.gss.order.dao.ActualAmountRecorMapper.queryListBycertificateNo
	

	 Time：2 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.updateSelectiveById
	 Execute SQL：UPDATE OS_SALEORDER_EXTEND SET clearance_status=2, clearance_amount=2787.0 WHERE SALE_ORDER_NO=1175949822646038528

	[2019-09-23 14:00:48.714][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.CertificateServiceImpl][?.()] - SALE-【A、C、PAY】结束，耗时(ms):1957  result:OSResultType:{ "message":"交易成功","payNo":"1176013521859719168","result":"0"}--->参数为：CertificateCreateVO:{ "orderInfoList":"[BusinessOrderInfo [recordNo=1175949889989840896, businessType=1, actualAmount=null]]","payWay":"2000001","payType":"2","accoutNo":"838648777869889536","serviceLine":"1","channel":"301","ticketNos":"","customerTypeNo":"301","incomeExpenseType":"1","customerNo":"401703040743530784","subBusinessType":"1","reason":"","thirdPayNo":"","thirdBusNo":"","amount":null,"settlementNo":"","paymentAccount":"","receivableAccount":"","isWithHold":"false","payNo":"","pnr":"","transationOrderNo":"1175949889989840896","saleOrderNo":"1175949822646038528","specialType":null} 
