 # gss 呼叫中心白屏预订 -- 往返
#根据交易单号查询是否存在 OS_TRANSATIONORDER
Time：3 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.selectById
EXECUTE SQL：SELECT TRANSATION_ORDER_NO AS transationOrderNo,
 external_number AS externalNumber,
 OWNER AS OWNER,
 source_channel_no AS sourceChannelNo,
 customer_type_no AS customerTypeNo,
 customer_no AS customerNo,
 ordering_login_name AS orderingLoginName,
 total_amount AS totalAmount,
 discount_amount AS discountAmount,
 receivable AS receivable,
 received AS received,
 contacts AS contacts,
 mobile AS mobile,
 pay_status AS payStatus,
 create_time AS createTime,
 modify_time AS modifyTime,
 modifier AS modifier,
 valid AS valid
FROM
	OS_TRANSATIONORDER
WHERE
	TRANSATION_ORDER_NO = 1175948922846253056

# 生成交易单 OS_TRANSATIONORDER
[2019-09-23 09:44:05.947][INFO ][http-nio-8479-exec-10][com.tempus.gss.order.service.TransationOrderServiceImpl][?.()] - 插入标志:1 
 Time：2 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.insert
EXECUTE SQL：INSERT INTO OS_TRANSATIONORDER (
	TRANSATION_ORDER_NO,
	external_number,
	OWNER,
	source_channel_no,
	customer_type_no,
	customer_no,
	ordering_login_name,
	total_amount,
	discount_amount,
	receivable,
	received,
	contacts,
	mobile,
	pay_status,
	create_time,
	modify_time,
	modifier,
	valid
)
VALUES
	(
		1175948922846253056,
		NULL,
		8755,
		'OP',
		301,
		401703040743530784,
		'admin',
		0,
		0,
		0,
		0,
		'tudou123',
		'18923880699',
		1,
		'2019-09-23 09:44:05',
		NULL,
		'admin',
		1
	)

# 生成航段信息 IFT_LEG （多条，国际机票一般需要中转）
#[2019-09-23 09:44:05.952][INFO ][http-nio-8479-exec-1][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 创建订单开始========
/*
{
    "agent": {
        "account": "admin",
        "device": "OP",
        "id": 1,
        "ip": "172.16.51.69",
        "num": 401703040743530750,
        "owner": 8755,
        "token": "",
        "type": 301
    },
    "entity": {
        "bookPersonerName": "",
        "outBookOrderNo": "",
        "saleOrderExt": {
            "apprvStatus": 0,
            "contactMobile": "18923880699",
            "contactName": "tudou123",
            "contactPhone": "",
            "createType": 2,
            "exchangeRate": 1,
            "isCivilOrder": 0,
            "legList": [
                {
                    "airline": "UA",
                    "airportModel": "739",
                    "arrAirport": "DEN",
                    "arrTime": "2019-09-26 07:08:00",
                    "cabin": "E",
                    "depAirport": "EWR",
                    "depTime": "2019-09-26 05:00:00",
                    "flightNo": "1801",
                    "goBack": 1,
                    "stopAirport": "",
                    "terminal": "C"
                },
                {
                    "airline": "UA",
                    "airportModel": "739",
                    "arrAirport": "LAX",
                    "arrTime": "2019-09-26 09:19:00",
                    "cabin": "E",
                    "depAirport": "DEN",
                    "depTime": "2019-09-26 07:50:00",
                    "flightNo": "1093",
                    "goBack": 1,
                    "stopAirport": "",
                    "terminal": ""
                },
                {
                    "airline": "UA",
                    "airportModel": "752",
                    "arrAirport": "EWR",
                    "arrTime": "2019-10-02 23:31:00",
                    "cabin": "T",
                    "depAirport": "LAX",
                    "depTime": "2019-10-02 15:15:00",
                    "flightNo": "378",
                    "goBack": 2,
                    "stopAirport": "",
                    "terminal": "7"
                }
            ],
            "legType": 2,
            "orderType": 1,
            "passengerList": [
                {
                    "buyAgencyFee": 0,
                    "buyAwardPrice": 5740,
                    "buyBrokerage": 0,
                    "buyCurrency": "CNY",
                    "buyExchangeRate": 1,
                    "buyFare": 5740,
                    "buyPrice": 6437,
                    "buyRebate": 0,
                    "buyTax": 697,
                    "certNo": "441521199609126547",
                    "certType": "PP",
                    "certValid": "2023-09-28 00:00:00",
                    "deptProfit": 0,
                    "gender": "1",
                    "historyPassenger": "1",
                    "name": "YUCHENG",
                    "nationality": "",
                    "passengerBirth": "1998-06-09 00:00:00",
                    "passengerType": "ADT",
                    "phone": "15302887558",
                    "policyNo": 0,
                    "profit": 0,
                    "saleAgencyFee": 0,
                    "saleAwardPrice": 5740,
                    "saleBrokerage": 0,
                    "saleFare": 5740,
                    "salePrice": 6437,
                    "saleRebate": 0,
                    "saleTax": 697,
                    "surname": "CHEN",
                    "ticketAirline": "UA"
                }
            ],
            "saleCurrency": "CNY",
            "saleOrder": {
                "customerNo": 401703040743530750,
                "customerTypeNo": 301,
                "orderType": 1,
                "orderingLoginName": "admin",
                "sourceChannelNo": "OP",
                "transationOrderNo": 1175948922846253000
            },
            "saleRemark": "",
            "version": 1
        }
    }
}
*/
 Time：8 ms - ID：com.tempus.gss.product.ift.dao.LegDao.insertSelective
EXECUTE SQL：insert INTO IFT_LEG (
	LEG_NO,
	OWNER,
	SALE_ORDER_NO,
	AIRLINE,
	FLIGHT_NO,
	DEP_AIRPORT,
	STOP_AIRPORT,
	ARR_AIRPORT,
	DEP_TIME,
	ARR_TIME,
	PARENT_SECTION,
	CHILD_SECTION,
	TERMINAL,
	AIRPORT_MODEL,
	GO_BACK,
	VALID,
	STATUS,
	CREATOR,
	CREATE_TIME,
	CABIN
)
VALUES
	(
		1175948855536005120,
		8755,
		1175948855523422208,
		'UA',
		'1801',
		'EWR',
		'',
		'DEN',
		'2019-09-26 05:00:00',
		'2019-09-26 07:08:00',
		0,
		0,
		'C',
		'739',
		1,
		1,
		'1',
		'admin',
		'2019-09-23 09:44:05',
		'E'
	)
# 生成航段信息2 IFT_LEG
 Time：3 ms - ID：com.tempus.gss.product.ift.dao.LegDao.insertSelective
EXECUTE SQL：insert INTO IFT_LEG (
	LEG_NO,
	OWNER,
	SALE_ORDER_NO,
	AIRLINE,
	FLIGHT_NO,
	DEP_AIRPORT,
	STOP_AIRPORT,
	ARR_AIRPORT,
	DEP_TIME,
	ARR_TIME,
	PARENT_SECTION,
	CHILD_SECTION,
	TERMINAL,
	AIRPORT_MODEL,
	GO_BACK,
	VALID,
	STATUS,
	CREATOR,
	CREATE_TIME,
	CABIN
)
VALUES
	(
		1175948855573753856,
		8755,
		1175948855523422208,
		'UA',
		'1093',
		'DEN',
		'',
		'LAX',
		'2019-09-26 07:50:00',
		'2019-09-26 09:19:00',
		1,
		0,
		'',
		'739',
		1,
		1,
		'1',
		'admin',
		'2019-09-23 09:44:05',
		'E'
	)
# 生成航段信息3 IFT_LEG
 Time：3 ms - ID：com.tempus.gss.product.ift.dao.LegDao.insertSelective
EXECUTE SQL：insert INTO IFT_LEG (
	LEG_NO,
	OWNER,
	SALE_ORDER_NO,
	AIRLINE,
	FLIGHT_NO,
	DEP_AIRPORT,
	STOP_AIRPORT,
	ARR_AIRPORT,
	DEP_TIME,
	ARR_TIME,
	PARENT_SECTION,
	CHILD_SECTION,
	TERMINAL,
	AIRPORT_MODEL,
	GO_BACK,
	VALID,
	STATUS,
	CREATOR,
	CREATE_TIME,
	CABIN
)
VALUES
	(
		1175948855598919680,
		8755,
		1175948855523422208,
		'UA',
		'378',
		'LAX',
		'',
		'EWR',
		'2019-10-02 15:15:00',
		'2019-10-02 23:31:00',
		2,
		0,
		'7',
		'752',
		2,
		1,
		'1',
		'admin',
		'2019-09-23 09:44:05',
		'T'
	)
# 插入乘客信息 
 Time：3 ms - ID：com.tempus.gss.product.ift.dao.PassengerDao.insertSelective
EXECUTE SQL：insert INTO IFT_PASSENGER (
	PASSENGER_NO,
	OWNER,
	SALE_ORDER_NO,
	PASSENGER_TYPE,
	SURNAME,
	NAME,
	CERT_TYPE,
	CERT_NO,
	CERT_VALID,
	PASSENGER_BIRTH,
	NATIONALITY,
	GENDER,
	TICKET_AIRLINE,
	TICKET_TYPE,
	BUY_FARE,
	BUY_TAX,
	BUY_BROKERAGE,
	BUY_AGENCY_FEE,
	BUY_REBATE,
	BUY_AWARD_PRICE,
	BUY_PRICE,
	SALE_FARE,
	SALE_TAX,
	SALE_BROKERAGE,
	SALE_AGENCY_FEE,
	SALE_REBATE,
	SALE_AWARD_PRICE,
	SALE_PRICE,
	STATUS,
	VALID,
	CREATE_TIME,
	CREATOR,
	PHONE,
	POLICY_NO,
	DEPT_PROFIT,
	PROFIT,
	BUY_CURRENCY,
	BUY_EXCHANGE_RATE
)
VALUES
(
	1175948855670222848,
	8755,
	1175948855523422208,
	'ADT',
	'CHEN',
	'YUCHENG',
	'PP',
	'441521199609126547',
	'2023-09-28 00:00:00',
	'1998-06-09 00:00:00',
	'',
	'1',
	'UA',
	'BSP',#TICKET_TYPE,
	5740.00,#BUY_FARE,
	697.00,	#BUY_TAX,
	0.00,#BUY_BROKERAGE,
	0.00,#BUY_AGENCY_FEE,
	0.00,#BUY_REBATE,
	5740.00,#BUY_AWARD_PRICE,
	6437.00,#BUY_PRICE,
	5740.00,#SALE_FARE,
	697.00,#SALE_TAX,
	0.00,#SALE_BROKERAGE,
	0.00,#SALE_AGENCY_FEE,
	0.00,#SALE_REBATE,
	5740.00,#SALE_AWARD_PRICE,
	6437,#SALE_PRICE,
	'1',
	1,
	'2019-09-23 09:44:05',
	'admin',
	'15302887558',
	0,
	0.00,
	0.00,
	'CNY',
	1.00
	)
[2019-09-23 09:44:06.014][INFO ][http-nio-8479-exec-6][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - 销售单create()参数为--> SaleOrder [saleOrderNo=1175948855523422208, externalNumber=null, owner=8755, transationOrderNo=1175948922846253056, businessSignNo=1175948922921750528, deptCode=null, orderType=1, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, mainOrderNo=null, attachedType=null, orderChangeType=null, goodsType=2, goodsSubType=1, goodsName=EWR-DEN-LAX-EWR, pcount=null, amount=null, discountAmount=null, receivable=null, received=null, buyorderPrice=null, orderingTime=Mon Sep 23 09:44:05 CST 2019, payStatus=1, orderStatus=null, orderChildStatus=1, modifyTime=null, actorUser=null, modifier=null, valid=1, contacts=null, mobile=null, bsignType=1, haveDifference=null, differenceTotalAmount=null] 
 Time：3 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
EXECUTE SQL：SELECT SALE_ORDER_NO AS saleOrderNo,
 external_number AS externalNumber,
 OWNER AS OWNER,
 transation_order_no AS transationOrderNo,
 business_sign_no AS businessSignNo,
 dept_code AS deptCode,
 order_type AS orderType,
 source_channel_no AS sourceChannelNo,
 customer_type_no AS customerTypeNo,
 customer_no AS customerNo,
 ordering_login_name AS orderingLoginName,
 main_order_no AS mainOrderNo,
 attached_type AS attachedType,
 order_change_type AS orderChangeType,
 goods_type AS goodsType,
 goods_sub_type AS goodsSubType,
 goods_name AS goodsName,
 pcount AS pcount,
 amount AS amount,
 discount_amount AS discountAmount,
 receivable AS receivable,
 received AS received,
 buyorder_price AS buyorderPrice,
 ordering_time AS orderingTime,
 pay_status AS payStatus,
 order_status AS orderStatus,
 order_child_status AS orderChildStatus,
 modify_time AS modifyTime,
 actor_user AS actorUser,
 modifier AS modifier,
 valid AS valid,
 bsign_type AS bsignType,
 have_difference AS haveDifference,
 difference_total_amount AS differenceTotalAmount,
 isviolation AS isviolation,
 violation AS violation
FROM
	OS_SALEORDER
WHERE
	SALE_ORDER_NO = 1175948855523422208
# 创建销售单  OS_SALEORDER
[2019-09-23 09:44:06.023][INFO ][http-nio-8479-exec-6][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - 销售单create() 创建销售单.... 
 Time：3 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.insertSelective
EXECUTE SQL：INSERT INTO OS_SALEORDER (
	SALE_ORDER_NO,
	OWNER,
	transation_order_no,
	business_sign_no,
	order_type,
	source_channel_no,
	customer_type_no,
	customer_no,
	ordering_login_name,
	goods_type,
	goods_sub_type,
	goods_name,
	receivable,
	received,
	ordering_time,
	pay_status,
	order_child_status,
	modifier,
	valid,
	bsign_type
)
VALUES
	(
		1175948855523422208,
		8755,
		1175948922846253056,
		1175948922921750528,
		1,
		'OP',
		301,
		401703040743530784,
		'admin',
		2,
		1,
		'EWR-DEN-LAX-EWR',
		0,
		0,
		'2019-09-23 09:44:05',
		1,
		1,
		'admin',
		1,
		1
	)

# 创建销售扩展单 OS_SALEORDER_EXTEND

[2019-09-23 09:44:06.035][INFO ][http-nio-8479-exec-6][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - 销售单create() 入库销售单扩展信息.... 
 Time：5 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.insertSelective
EXECUTE SQL：INSERT INTO OS_SALEORDER_EXTEND (
	SALE_ORDER_NO,
	settlement_status,
	match_status,
	clearance_status,
	customer_no_name,
	customer_type_name
)
VALUES
	(
		1175948855523422208,
		1,
		1,
		1,
		'18923880699',
		'分销商'
	)
[2019-09-23 09:44:06.070][INFO ][http-nio-8479-exec-3][com.tempus.gss.order.service.BuyOrderServiceImpl][?.()] - 采购单create()-->BuyOrder [buyOrderNo=1175948855699582976, owner=8755, saleOrderNo=1175948855523422208, bsignType=1, businessSignNo=1175948922921750528, buyChannelNo=OP, deptCode=null, supplierTypeNo=104, supplierNo=411805170138410133, supplierName=null, buyChangeType=null, goodsType=2, goodsSubType=2, goodsName=EWR-DEN-LAX-EWR, buyer=null, pcount=null, payable=null, payment=null, saleorderPrice=null, buyingTime=null, payStatus=null, buyStatus=null, buyChildStatus=1, modifyTime=null, modifier=null, valid=null, haveDifference=null, differenceTotalAmount=null, transationOrderNo=null, ticketNos=null] 
 Time：3 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE SALE_ORDER_NO=1175948855523422208

 Time：2 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,customer_no_name AS customerNoName,customer_type_name AS customerTypeName,TICKETNOS AS ticketNos FROM OS_SALEORDER_EXTEND WHERE SALE_ORDER_NO=1175948855523422208

[2019-09-23 09:44:06.077][INFO ][http-nio-8479-exec-3][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - SaleOrder [saleOrderNo=1175948855523422208, externalNumber=null, owner=8755, transationOrderNo=1175948922846253056, businessSignNo=1175948922921750528, deptCode=null, orderType=1, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, mainOrderNo=null, attachedType=null, orderChangeType=0:0:0, goodsType=2, goodsSubType=1, goodsName=EWR-DEN-LAX-EWR, pcount=null, amount=0.00, discountAmount=0.00, receivable=0.00, received=0.00, buyorderPrice=null, orderingTime=Mon Sep 23 09:44:05 CST 2019, payStatus=1, orderStatus=3, orderChildStatus=1, modifyTime=null, actorUser=null, modifier=admin, valid=1, contacts=null, mobile=null, bsignType=1, haveDifference=null, differenceTotalAmount=null] 
 # 创建采购单 OS_BUYORDER
[2019-09-23 09:44:06.077][INFO ][http-nio-8479-exec-3][com.tempus.gss.order.service.BuyOrderServiceImpl][?.()] - 采购单create()-->开始创建采购单 
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyOrderMapper.insertSelective
EXECUTE SQL：INSERT INTO OS_BUYORDER (
	BUY_ORDER_NO,
	OWNER,
	sale_order_no,
	bsign_type,
	business_sign_no,
	buy_channel_no,
	supplier_type_no,
	supplier_no,
	goods_type,
	goods_sub_type,
	goods_name,
	payable,
	payment,
	buy_child_status,
	modifier,
	transation_order_no
)
VALUES
	(
		1175948855699582976,
		8755,
		1175948855523422208,
		1,
		1175948922921750528,
		'OP',
		104,
		411805170138410133,
		2,
		2,
		'EWR-DEN-LAX-EWR',
		0,
		0,
		1,
		'admin',
		1175948922846253056
	)

# 创建采购扩展 OS_BUYORDER_EXTEND

[2019-09-23 09:44:06.092][INFO ][http-nio-8479-exec-3][com.tempus.gss.order.service.BuyOrderServiceImpl][?.()] - 采购单create()-->创建采购单后，入库信息到采购单扩展表里 
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyOrderExtendMapper.insertSelective
EXECUTE SQL：INSERT INTO OS_BUYORDER_EXTEND (
	BUY_ORDER_NO,
	settlement_status,
	match_status,
	clearance_status,
	supplier_type_name,
	supplier_no_name
)
VALUES
	(
		1175948855699582976,
		1,
		1,
		1,
		'平台B2B',
		'非系统对接'
	)

 Time：3 ms - ID：com.tempus.gss.order.dao.BuyOrderMapper.selectById
 Execute SQL：SELECT BUY_ORDER_NO AS buyOrderNo,owner AS owner,sale_order_no AS saleOrderNo,bsign_type AS bsignType,business_sign_no AS businessSignNo,buy_channel_no AS buyChannelNo,dept_code AS deptCode,supplier_type_no AS supplierTypeNo,supplier_no AS supplierNo,buy_change_type AS buyChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,buyer AS buyer,pcount AS pcount,payable AS payable,payment AS payment,saleorder_price AS saleorderPrice,buying_time AS buyingTime,pay_status AS payStatus,buy_status AS buyStatus,buy_child_status AS buyChildStatus,modify_time AS modifyTime,modifier AS modifier,valid AS valid,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,transation_order_no AS transationOrderNo FROM OS_BUYORDER WHERE BUY_ORDER_NO=1175948855699582976


# 创建销售详情单 IFT_SALE_ORDER_DETAIL
 Time：3 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderDetailDao.insertSelective
EXECUTE SQL：insert INTO IFT_SALE_ORDER_DETAIL (
	SALE_ORDER_DETAIL_NO,
	OWNER,
	SALE_ORDER_NO,
	PASSENGER_NO,
	LEG_NO,
	CABIN,
	FARE,
	TAX,
	BROKERAGE,
	AGENCY_FEE,
	REBATE,
	AWARD_PRICE,
	IS_CHANGE,
	CREATOR,
	CREATE_TIME,
	STATUS,
	VALID,
	DEPT_PROFIT,
	PROFIT
)
VALUES
	(
		1175948856131596288,
		8755,
		1175948855523422208,
		1175948855670222848,
		1175948855536005120,
		'E',
		5740.00,
		697.00,
		0.00,
		0.00,
		0.00,
		5740.00,
		FALSE,
		'admin',
		'2019-09-23 09:44:05',
		'1',
		1,
		0.00,
		0.00
	) 
# 创建销售详情单2 IFT_SALE_ORDER_DETAIL
 Time：3 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderDetailDao.insertSelective
EXECUTE SQL：insert INTO IFT_SALE_ORDER_DETAIL (
	SALE_ORDER_DETAIL_NO,
	OWNER,
	SALE_ORDER_NO,
	PASSENGER_NO,
	LEG_NO,
	CABIN,
	FARE,
	TAX,
	BROKERAGE,
	AGENCY_FEE,
	REBATE,
	AWARD_PRICE,
	IS_CHANGE,
	CREATOR,
	CREATE_TIME,
	STATUS,
	VALID,
	DEPT_PROFIT,
	PROFIT
)
VALUES
	(
		1175948856169345024,
		8755,
		1175948855523422208,
		1175948855670222848,
		1175948855573753856,
		'E',
		5740.00,
		697.00,
		0.00,
		0.00,
		0.00,
		5740.00,
		FALSE,
		'admin',
		'2019-09-23 09:44:05',
		'1',
		1,
		0.00,
		0.00
	)
 # 创建销售详情单3 IFT_SALE_ORDER_DETAIL
 Time：6 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderDetailDao.insertSelective
EXECUTE SQL：insert INTO IFT_SALE_ORDER_DETAIL (
	SALE_ORDER_DETAIL_NO,
	OWNER,
	SALE_ORDER_NO,
	PASSENGER_NO,
	LEG_NO,
	CABIN,
	FARE,
	TAX,
	BROKERAGE,
	AGENCY_FEE,
	REBATE,
	AWARD_PRICE,
	IS_CHANGE,
	CREATOR,
	CREATE_TIME,
	STATUS,
	VALID,
	DEPT_PROFIT,
	PROFIT
)
VALUES
	(
		1175948856194510848,
		8755,
		1175948855523422208,
		1175948855670222848,
		1175948855598919680,
		'T',
		5740.00,
		697.00,
		0.00,
		0.00,
		0.00,
		5740.00,
		FALSE,
		'admin',
		'2019-09-23 09:44:05',
		'1',
		1,
		0.00,
		0.00
	) 
# 创建采购详情单 IFT_BUY_ORDER_DETAIL
 Time：2 ms - ID：com.tempus.gss.product.ift.dao.BuyOrderDetailDao.insertSelective
EXECUTE SQL：insert INTO IFT_BUY_ORDER_DETAIL (
	BUY_ORDER_DETAIL_NO,
	OWNER,
	BUY_ORDER_NO,
	SALE_ORDER_DETAIL_NO,
	CREATOR,
	CREATE_TIME,
	VALID
)
VALUES
	(
		1175948856232259584,
		8755,
		1175948855699582976,
		1175948856131596288,
		'admin',
		'2019-09-23 09:44:05',
		1
	)
 # 创建采购详情单 IFT_BUY_ORDER_DETAIL
 Time：2 ms - ID：com.tempus.gss.product.ift.dao.BuyOrderDetailDao.insertSelective
EXECUTE SQL：insert INTO IFT_BUY_ORDER_DETAIL (
	BUY_ORDER_DETAIL_NO,
	OWNER,
	BUY_ORDER_NO,
	SALE_ORDER_DETAIL_NO,
	CREATOR,
	CREATE_TIME,
	VALID
)
VALUES
	(
		1175948856257425408,
		8755,
		1175948855699582976,
		1175948856169345024,
		'admin',
		'2019-09-23 09:44:05',
		1
	)
 # 创建采购详情单 IFT_BUY_ORDER_DETAIL
 Time：3 ms - ID：com.tempus.gss.product.ift.dao.BuyOrderDetailDao.insertSelective
EXECUTE SQL：insert INTO IFT_BUY_ORDER_DETAIL (
	BUY_ORDER_DETAIL_NO,
	OWNER,
	BUY_ORDER_NO,
	SALE_ORDER_DETAIL_NO,
	CREATOR,
	CREATE_TIME,
	VALID
)
VALUES
	(
		1175948856274202624,
		8755,
		1175948855699582976,
		1175948856194510848,
		'admin',
		'2019-09-23 09:44:05',
		1
	) 
# 创建国际销售扩展单 IFT_SALE_ORDER_EXT
[2019-09-23 09:44:06.139][INFO ][http-nio-8479-exec-1][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 国际保存的订单扩展表信息:SaleOrderExt{isAutoDistribute=nullaloneLocker=null, saleOrderNo=1175948855523422208, saleOrder=SaleOrder [saleOrderNo=1175948855523422208, externalNumber=null, owner=8755, transationOrderNo=1175948922846253056, businessSignNo=1175948922921750528, deptCode=null, orderType=1, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, mainOrderNo=null, attachedType=null, orderChangeType=null, goodsType=2, goodsSubType=1, goodsName=EWR-DEN-LAX-EWR, pcount=null, amount=null, discountAmount=null, receivable=null, received=null, buyorderPrice=null, orderingTime=Mon Sep 23 09:44:05 CST 2019, payStatus=1, orderStatus=null, orderChildStatus=1, modifyTime=null, actorUser=null, modifier=null, valid=1, contacts=null, mobile=null, bsignType=1, haveDifference=null, differenceTotalAmount=null], id=null, owner=8755, demandNo=null, teamNo=null, legType=2, contactName='tudou123', contactPhone='', contactMobile='18923880699', contactMail='null', saleRemark='', valid=1, version=1, locker=0, buyLocker=null, lockTime=null, createType=2, pnrNo=null, importPnr=null, createTime=Mon Sep 23 09:44:05 CST 2019, modifyTime=null, creator='admin', modifier='null', issueTime=null, originalOrderNo=null, status='null', linkType=null, linkNo='null', currency='null', saleCurrency='CNY', exchangeRate=1.00, handlers='null', drawerLoginName='null', customerName='null', isCivilOrder=0, office='null', bookPersonerName='admin', outBookOrderNo='', differenceOrderList=null,bookedByTicketMan=null} 
 Time：3 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderExtDao.insertSelective
EXECUTE SQL：insert INTO IFT_SALE_ORDER_EXT (
	SALE_ORDER_NO,
	OWNER,
	LEG_TYPE,
	CONTACT_NAME,
	CONTACT_PHONE,
	CONTACT_MOBILE,
	SALE_REMARK,
	VALID,
	VERSION,
	LOCKER,
	CREATE_TYPE,
	CREATE_TIME,
	CREATOR,
	SALE_CURRENCY,
	EXCHANGE_RATE,
	IS_CIVIL_ORDER,
	BOOK_PERSONER_NAME,
	OUT_BOOK_ORDER_NO,
	ORDER_TYPE
)
VALUES
	(
		1175948855523422208,
		8755,
		2,
		'tudou123',
		'',
		'18923880699',
		'',
		1,
		1,
		0,
		2,
		'2019-09-23 09:44:05',
		'admin',
		'CNY',
		1.00,
		0,
		'admin',
		'',
		1
	) 
# 创建国际采购扩展单 IFT_SALE_ORDER_EXT
 Time：2 ms - ID：com.tempus.gss.product.ift.dao.BuyOrderExtDao.insertSelective
EXECUTE SQL：insert INTO IFT_BUY_ORDER_EXT (
	BUY_ORDER_NO,
	OWNER,
	AIRLINE,
	TICKET_TYPE,
	CREATOR,
	CREATE_TIME,
	VALID
)
VALUES
	(
		1175948855699582976,
		8755,
		'UA',
		'BSP',
		'admin',
		'2019-09-23 09:44:05',
		1
	)
[2019-09-23 09:44:06.153][INFO ][http-nio-8479-exec-1][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 创建国际订单成功,BuyOrderExt{buyOrderNo=1175948855699582976, buyOrder=BuyOrder [buyOrderNo=1175948855699582976, owner=8755, saleOrderNo=1175948855523422208, bsignType=1, businessSignNo=1175948922921750528, buyChannelNo=OP, deptCode=null, supplierTypeNo=104, supplierNo=411805170138410133, supplierName=null, buyChangeType=null, goodsType=2, goodsSubType=2, goodsName=EWR-DEN-LAX-EWR, buyer=null, pcount=null, payable=null, payment=null, saleorderPrice=null, buyingTime=null, payStatus=null, buyStatus=null, buyChildStatus=1, modifyTime=null, modifier=null, valid=null, haveDifference=null, differenceTotalAmount=null, transationOrderNo=null, ticketNos=null], id=null, owner=8755, airline='UA', ticketType='BSP', creator='admin', createTime=Mon Sep 23 09:44:05 CST 2019, modifier='null', modifyTime=null, valid=1, status='null', policyNo=null, priceSpecNo=null, pnrNo=null, supplierNo=null, supplierTypeNo=null, importPnr=null, buyOrderDetailList=null, saleOrderNo=null, changeOrderNo=null, office='null', buyRemarke='null'} 
[2019-09-23 09:44:06.161][INFO ][http-nio-8479-exec-1][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 创建订单结束======== 
[2019-09-23 09:44:06.181][INFO ][http-nio-8479-exec-1][com.tempus.gss.mss.service.MssReserveServiceImpl][?.()] - saleOrderExt:{"apprvStatus":0,"bookPersonerName":"admin","buyOrderNo":1175948855699582976,"contactMobile":"18923880699","contactName":"tudou123","contactPhone":"","createTime":"2019-09-23 09:44:05","createType":2,"creator":"admin","exchangeRate":1.00,"isCivilOrder":0,"legList":[{"airline":"UA","airportModel":"739","arrAirport":"DEN","arrTime":"2019-09-26 07:08:00","cabin":"E","childSection":0,"createTime":"2019-09-23 09:44:05","creator":"admin","depAirport":"EWR","depTime":"2019-09-26 05:00:00","flightNo":"1801","goBack":1,"legNo":1175948855536005120,"owner":8755,"parentSection":0,"saleOrderNo":1175948855523422208,"status":"1","stopAirport":"","terminal":"C","valid":1},{"airline":"UA","airportModel":"739","arrAirport":"LAX","arrTime":"2019-09-26 09:19:00","cabin":"E","childSection":0,"createTime":"2019-09-23 09:44:05","creator":"admin","depAirport":"DEN","depTime":"2019-09-26 07:50:00","flightNo":"1093","goBack":1,"legNo":1175948855573753856,"owner":8755,"parentSection":1,"saleOrderNo":1175948855523422208,"status":"1","stopAirport":"","terminal":"","valid":1},{"airline":"UA","airportModel":"752","arrAirport":"EWR","arrTime":"2019-10-02 23:31:00","cabin":"T","childSection":0,"createTime":"2019-09-23 09:44:05","creator":"admin","depAirport":"LAX","depTime":"2019-10-02 15:15:00","flightNo":"378","goBack":2,"legNo":1175948855598919680,"owner":8755,"parentSection":2,"saleOrderNo":1175948855523422208,"status":"1","stopAirport":"","terminal":"7","valid":1}],"legType":2,"locker":0,"orderType":1,"outBookOrderNo":"","owner":8755,"passengerList":[{"buyAgencyFee":0.00,"buyAwardPrice":5740.00,"buyBrokerage":0.00,"buyCurrency":"CNY","buyExchangeRate":1.00,"buyFare":5740.00,"buyPrice":6437.00,"buyRebate":0.00,"buyTax":697.00,"certNo":"441521199609126547","certType":"PP","certValid":1695830400000,"createTime":1569203045956,"creator":"admin","deptProfit":0.00,"gender":"1","historyPassenger":"1","name":"YUCHENG","nationality":"","owner":8755,"passengerBirth":897321600000,"passengerNo":1175948855670222848,"passengerType":"ADT","phone":"15302887558","policyNo":0,"profit":0.00,"saleAgencyFee":0.00,"saleAwardPrice":5740.00,"saleBrokerage":0.00,"saleFare":5740.00,"saleOrderNo":1175948855523422208,"salePrice":6437,"saleRebate":0.00,"saleTax":697.00,"status":"1","surname":"CHEN","ticketAirline":"UA","ticketType":"BSP","valid":1}],"saleCurrency":"CNY","saleOrder":{"bsignType":1,"businessSignNo":1175948922921750528,"customerNo":401703040743530784,"customerTypeNo":301,"goodsName":"EWR-DEN-LAX-EWR","goodsSubType":1,"goodsType":2,"orderChildStatus":1,"orderType":1,"orderingLoginName":"admin","orderingTime":1569203045956,"owner":8755,"payStatus":1,"saleOrderNo":1175948855523422208,"sourceChannelNo":"OP","transationOrderNo":1175948922846253056,"valid":1},"saleOrderDetailList":[{"agencyFee":0.00,"awardPrice":5740.00,"brokerage":0.00,"cabin":"E","change":false,"createTime":1569203045956,"creator":"admin","deptProfit":0.00,"fare":5740.00,"isChange":false,"legNo":1175948855536005120,"owner":8755,"passenger":{"$ref":"$.passengerList[0]"},"passengerNo":1175948855670222848,"profit":0.00,"rebate":0.00,"saleOrderDetailNo":1175948856131596288,"saleOrderNo":1175948855523422208,"status":"1","tax":697.00,"valid":1},{"agencyFee":0.00,"awardPrice":5740.00,"brokerage":0.00,"cabin":"E","change":false,"createTime":1569203045956,"creator":"admin","deptProfit":0.00,"fare":5740.00,"isChange":false,"legNo":1175948855573753856,"owner":8755,"passenger":{"$ref":"$.passengerList[0]"},"passengerNo":1175948855670222848,"profit":0.00,"rebate":0.00,"saleOrderDetailNo":1175948856169345024,"saleOrderNo":1175948855523422208,"status":"1","tax":697.00,"valid":1},{"agencyFee":0.00,"awardPrice":5740.00,"brokerage":0.00,"cabin":"T","change":false,"createTime":1569203045956,"creator":"admin","deptProfit":0.00,"fare":5740.00,"isChange":false,"legNo":1175948855598919680,"owner":8755,"passenger":{"$ref":"$.passengerList[0]"},"passengerNo":1175948855670222848,"profit":0.00,"rebate":0.00,"saleOrderDetailNo":1175948856194510848,"saleOrderNo":1175948855523422208,"status":"1","tax":697.00,"valid":1}],"saleOrderNo":1175948855523422208,"saleRemark":"","valid":1,"version":1} 
[2019-09-23 09:44:06.181][INFO ][http-nio-8479-exec-1][com.tempus.gss.mss.service.MssReserveServiceImpl][?.()] - ==============国际机票预订完成================== 
 Time：19 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectList
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE transation_order_no=1175948922846253056 AND valid=1 ORDER BY ORDERING_TIME DESC

[2019-09-23 09:44:06.255][INFO ][http-nio-8479-exec-9][com.tempus.gss.product.ift.service.SaleOrderExtServiceImpl][?.()] - 获取销售单拓展开始== 
 Time：31 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderExtDao.selectByPrimaryKey
 Execute SQL：select SALE_ORDER_NO, ID, OWNER, DEMAND_NO, LEG_TYPE, CONTACT_NAME, CONTACT_PHONE, CONTACT_MOBILE, CONTACT_MAIL, SALE_REMARK,CUSTOMER_REMARK, VALID, VERSION, LOCKER, LOCK_TIME, CREATE_TYPE, CREATE_TIME, MODIFY_TIME, CREATOR, MODIFIER, ISSUE_TIME, ORIGINAL_ORDER_NO, LINKNO, LINKTYPE, CURRENCY, SALE_CURRENCY,EXCHANGE_RATE,DRAWER_LOGIN_NAME,OFFICE,ALONE_LOCKER,IS_CIVIL_ORDER,BOOK_PERSONER_NAME, OUT_BOOK_ORDER_NO,ORDER_TYPE,IFNULL(`IS_AUTO_DISTRIBUTE`,0) as IS_AUTO_DISTRIBUTE,TEAM_ORDER_NO from IFT_SALE_ORDER_EXT where SALE_ORDER_NO = 1175948855523422208 AND VALID=1

[2019-09-23 09:44:06.297][INFO ][http-nio-8479-exec-9][com.tempus.gss.product.ift.service.SaleOrderExtServiceImpl][?.()] - 获取销售单拓展结束== 
# 更新 国际销售扩展  IFT_SALE_ORDER_EXT
Time：8 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderExtDao.updateByPrimaryKeySelective
EXECUTE SQL：update IFT_SALE_ORDER_EXT
SET ID = 8342,
 OWNER = 8755,
 LEG_TYPE = 2,
 CONTACT_NAME = 'tudou123',
 CONTACT_PHONE = '',
 CONTACT_MOBILE = '18923880699',
 SALE_REMARK = '',
 VALID = 1,
 VERSION = 1,
 LOCKER = 1,
 CREATE_TYPE = 2,
 CREATE_TIME = '2019-09-23 09:44:05',
 CREATOR = 'admin',
 LINKTYPE = 1,
 SALE_CURRENCY = 'CNY',
 EXCHANGE_RATE = 1.00,
 ALONE_LOCKER = 1
WHERE
	SALE_ORDER_NO = 1175948855523422208

[2019-09-23 09:44:06.325][INFO ][http-nio-8479-exec-4][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 订单核价开始 
 Time：30 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderExtDao.selectByPrimaryKey
 Execute SQL：select SALE_ORDER_NO, ID, OWNER, DEMAND_NO, LEG_TYPE, CONTACT_NAME, CONTACT_PHONE, CONTACT_MOBILE, CONTACT_MAIL, SALE_REMARK,CUSTOMER_REMARK, VALID, VERSION, LOCKER, LOCK_TIME, CREATE_TYPE, CREATE_TIME, MODIFY_TIME, CREATOR, MODIFIER, ISSUE_TIME, ORIGINAL_ORDER_NO, LINKNO, LINKTYPE, CURRENCY, SALE_CURRENCY,EXCHANGE_RATE,DRAWER_LOGIN_NAME,OFFICE,ALONE_LOCKER,IS_CIVIL_ORDER,BOOK_PERSONER_NAME, OUT_BOOK_ORDER_NO,ORDER_TYPE,IFNULL(`IS_AUTO_DISTRIBUTE`,0) as IS_AUTO_DISTRIBUTE,TEAM_ORDER_NO from IFT_SALE_ORDER_EXT where SALE_ORDER_NO = 1175948855523422208 AND VALID=1

 Time：7 ms - ID：com.tempus.gss.product.ift.dao.BuyOrderExtDao.selectBuyOrderBySaleOrderNo
 Execute SQL：SELECT i.BUY_ORDER_NO, i.ID, i.OWNER, i.PNR_NO, i.AIRLINE, i.TICKET_TYPE, i.CREATOR, i.CREATE_TIME, i.MODIFIER, i.MODIFY_TIME, i.VALID, i.STATUS, i.SUPPLIER_TYPE_NO, i.SUPPLIER_NO, i.BUY_REMARKE, i.BUY_LOCKER FROM IFT_BUY_ORDER_EXT i, OS_BUYORDER o WHERE i.BUY_ORDER_NO = o.BUY_ORDER_NO AND o.SALE_ORDER_NO = 1175948855523422208 order by i.CREATE_TIME

[2019-09-23 09:44:06.378][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - generated Key : 1175948855523422208-2-2-6437.0000 
[2019-09-23 09:44:06.378][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - generated Key : 1175948855523422208-2-2-6437.0000 
[2019-09-23 09:44:06.471][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.util.OrderRedisUtils][?.()] - OS_Redis : set[1175948855523422208-2-2-6437.0000--value:1175948855523422208-2-2-6437.0000] 
[2019-09-23 09:44:06.472][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 应收(付)记录创建开始--->参数为：CreatePlanAmountVO [recordNo=1175948855523422208, businessType=2, goodsType=2, recordMovingType=1, incomeExpenseType=1, movingReason=null, planAmount=6437.0000] 
[2019-09-23 09:44:06.472][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号查询应收付记录总和开始------> 
 Time：58 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.queryPlanAmountByRecordNo
 Execute SQL：SELECT ID,OWNER,RECORD_NO as recordNo,BUSINESS_TYPE as businessType,INCOME_EXPENSE_TYPE as incomeExpenseType, GOODS_TYPE as goodsType,RECORD_MOVING_TYPE as recordMovingType,SETTLEMENT_NO as settlementNo, PLAN_AMOUNT as planAmount,MOVING_REASON as movingReason, SETTLEMENT_STATUS as settlementStatus,MODIFIER,CREATE_TIME as createTime,MODIFY_TIME as modifyTime,VALID FROM OS_PLANAMOUNTRECORD WHERE VALID=1 AND RECORD_NO=1175948855523422208 AND BUSINESS_TYPE=2

[2019-09-23 09:44:06.530][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号无应收付记录------>1175948855523422208 
[2019-09-23 09:44:06.530][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 开始创建应收付记录----> 业务单号:1175948855523422208  创建总金额:6437.00   本次金额:6437.0000 
[2019-09-23 09:44:06.530][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收(付)记录--->验证类型为:2的业务单:1175948855523422208的结算状态是否为未结算。。。。。。 
 Time：2 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,customer_no_name AS customerNoName,customer_type_name AS customerTypeName,TICKETNOS AS ticketNos FROM OS_SALEORDER_EXTEND WHERE SALE_ORDER_NO=1175948855523422208

[2019-09-23 09:44:06.533][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收(付)记录--->验证应收(付)金额是否满足条件,amountCount:6437.00,recordNo:1175948855523422208 
 Time：4 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE SALE_ORDER_NO=1175948855523422208

 Time：0 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,customer_no_name AS customerNoName,customer_type_name AS customerTypeName,TICKETNOS AS ticketNos FROM OS_SALEORDER_EXTEND WHERE SALE_ORDER_NO=1175948855523422208
#创建 销售应收 OS_PLANAMOUNTRECORD 
[2019-09-23 09:44:06.537][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - SaleOrder [saleOrderNo=1175948855523422208, externalNumber=null, owner=8755, transationOrderNo=1175948922846253056, businessSignNo=1175948922921750528, deptCode=null, orderType=1, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, mainOrderNo=null, attachedType=null, orderChangeType=0:0:0, goodsType=2, goodsSubType=1, goodsName=EWR-DEN-LAX-EWR, pcount=null, amount=0.00, discountAmount=0.00, receivable=0.00, received=0.00, buyorderPrice=null, orderingTime=Mon Sep 23 09:44:05 CST 2019, payStatus=1, orderStatus=3, orderChildStatus=1, modifyTime=null, actorUser=null, modifier=admin, valid=1, contacts=null, mobile=null, bsignType=1, haveDifference=null, differenceTotalAmount=null] 
 Time：11 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.insert
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
		1175948855523422208,
		2,
		1,
		2,
		1,
		NULL,
		6437.0000,
		NULL,
		0,
		'admin',
		'2019-09-23 09:44:06',
		NULL,
		1
	)
 Time：3 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.selectById
 Execute SQL：SELECT id,owner AS owner,record_no AS recordNo,business_type AS businessType,income_expense_type AS incomeExpenseType,goods_type AS goodsType,record_moving_type AS recordMovingType,settlement_no AS settlementNo,plan_amount AS planAmount,moving_reason AS movingReason,settlement_status AS settlementStatus,modifier AS modifier,create_time AS createTime,modify_time AS modifyTime,valid AS valid FROM OS_PLANAMOUNTRECORD WHERE id=136054

[2019-09-23 09:44:06.550][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收付记录完成----> PlanAmountRecord [id=136054, owner=8755, recordNo=1175948855523422208, businessType=2, incomeExpenseType=1, goodsType=2, recordMovingType=1, settlementNo=null, planAmount=6437.00, movingReason=null, settlementStatus=0, modifier=admin, createTime=Mon Sep 23 09:44:06 CST 2019, modifyTime=null, valid=1] 
[2019-09-23 09:44:06.550][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收(付)记录--->修改业务单信息。。。。。。 
[2019-09-23 09:44:06.550][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号查询应收付记录总和开始------> 
 Time：56 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.queryPlanAmountByRecordNo
 Execute SQL：SELECT ID,OWNER,RECORD_NO as recordNo,BUSINESS_TYPE as businessType,INCOME_EXPENSE_TYPE as incomeExpenseType, GOODS_TYPE as goodsType,RECORD_MOVING_TYPE as recordMovingType,SETTLEMENT_NO as settlementNo, PLAN_AMOUNT as planAmount,MOVING_REASON as movingReason, SETTLEMENT_STATUS as settlementStatus,MODIFIER,CREATE_TIME as createTime,MODIFY_TIME as modifyTime,VALID FROM OS_PLANAMOUNTRECORD WHERE VALID=1 AND RECORD_NO=1175948855523422208 AND BUSINESS_TYPE=2

[2019-09-23 09:44:06.606][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号查询应收付记录总和结束------>recordNo:1175948855523422208  businessType:2  金额:6437.00 
 Time：3 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE SALE_ORDER_NO=1175948855523422208

 Time：3 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,customer_no_name AS customerNoName,customer_type_name AS customerTypeName,TICKETNOS AS ticketNos FROM OS_SALEORDER_EXTEND WHERE SALE_ORDER_NO=1175948855523422208

[2019-09-23 09:44:06.613][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - SaleOrder [saleOrderNo=1175948855523422208, externalNumber=null, owner=8755, transationOrderNo=1175948922846253056, businessSignNo=1175948922921750528, deptCode=null, orderType=1, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, mainOrderNo=null, attachedType=null, orderChangeType=0:0:0, goodsType=2, goodsSubType=1, goodsName=EWR-DEN-LAX-EWR, pcount=null, amount=0.00, discountAmount=0.00, receivable=0.00, received=0.00, buyorderPrice=null, orderingTime=Mon Sep 23 09:44:05 CST 2019, payStatus=1, orderStatus=3, orderChildStatus=1, modifyTime=null, actorUser=null, modifier=admin, valid=1, contacts=null, mobile=null, bsignType=1, haveDifference=null, differenceTotalAmount=null] 
[2019-09-23 09:44:06.613][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - 销售单update()更新参数为-->SaleOrder [saleOrderNo=1175948855523422208, externalNumber=null, owner=8755, transationOrderNo=1175948922846253056, businessSignNo=1175948922921750528, deptCode=null, orderType=1, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, mainOrderNo=null, attachedType=null, orderChangeType=0:0:0, goodsType=2, goodsSubType=1, goodsName=EWR-DEN-LAX-EWR, pcount=null, amount=0.00, discountAmount=0.00, receivable=6437.00, received=0.00, buyorderPrice=null, orderingTime=Mon Sep 23 09:44:05 CST 2019, payStatus=1, orderStatus=3, orderChildStatus=1, modifyTime=null, actorUser=null, modifier=admin, valid=1, contacts=null, mobile=null, bsignType=1, haveDifference=null, differenceTotalAmount=null] 
 # 更新 销售单  OS_SALEORDER
Time：2 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_SALEORDER
SET OWNER = 8755,
 transation_order_no = 1175948922846253056,
 business_sign_no = 1175948922921750528,
 order_type = 1,
 source_channel_no = 'OP',
 customer_type_no = 301,
 customer_no = 401703040743530784,
 ordering_login_name = 'admin',
 order_change_type = '0:0:0',
 goods_type = 2,
 goods_sub_type = 1,
 goods_name = 'EWR-DEN-LAX-EWR',
 amount = 0.00,
 discount_amount = 0.00,
 receivable = 6437.00,
 received = 0.00,
 ordering_time = '2019-09-23 09:44:05',
 pay_status = 1,
 order_status = 3,
 order_child_status = 1,
 modifier = 'admin',
 valid = 1,
 bsign_type = 1
WHERE
	SALE_ORDER_NO = 1175948855523422208


 Time：4 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE SALE_ORDER_NO=1175948855523422208

[2019-09-23 09:44:06.631][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收(付)记录--->修改交易单信息。。。。。。 
[2019-09-23 09:44:06.631][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.TransationOrderServiceImpl][?.()] - 根据交易单单号修改交易单信息:1175948922846253056, 3, true 
 Time：3 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.selectById
 Execute SQL：SELECT TRANSATION_ORDER_NO AS transationOrderNo,external_number AS externalNumber,owner AS owner,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,total_amount AS totalAmount,discount_amount AS discountAmount,receivable AS receivable,received AS received,contacts AS contacts,mobile AS mobile,pay_status AS payStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,valid AS valid FROM OS_TRANSATIONORDER WHERE TRANSATION_ORDER_NO=1175948922846253056

[2019-09-23 09:44:06.634][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.TransationOrderServiceImpl][?.()] - 交易单单号:TransationOrder [transationOrderNo=1175948922846253056, externalNumber=null, owner=8755, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, totalAmount=0.00, discountAmount=0.00, receivable=0.00, received=0.00, contacts=tudou123, mobile=18923880699, payStatus=1, createTime=Mon Sep 23 09:44:05 CST 2019, modifyTime=null, modifier=admin, valid=1] 
 Time：18 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectList
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE transation_order_no=1175948922846253056 AND valid=1 ORDER BY ORDERING_TIME DESC

 Time：3 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.selectByMap
 Execute SQL：SELECT SALE_CHANGE_NO AS saleChangeNo,owner AS owner,business_sign_no AS businessSignNo,transation_order_no AS transationOrderNo,sale_order_no AS saleOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,amount AS amount,discount_amount AS discountAmount,plan_amount AS planAmount,actual_amount AS actualAmount,pay_status AS payStatus,status AS status,child_status AS childStatus,change_reason AS changeReason,keep_seat AS keepSeat,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_SALECHANGE WHERE TRANSATION_ORDER_NO=1175948922846253056
 # 更新交易单 OS_TRANSATIONORDER
[2019-09-23 09:44:06.665][INFO ][http-nio-8479-exec-2][com.tempus.gss.order.service.TransationOrderServiceImpl][?.()] - 根据交易单单号-->1175948922846253056修改交易单信息。修改类型:3应收:6437.00实收:0.00金额差:6437.00 
 Time：4 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_TRANSATIONORDER
SET OWNER = 8755,
 source_channel_no = 'OP',
 customer_type_no = 301,
 customer_no = 401703040743530784,
 ordering_login_name = 'admin',
 total_amount = 6437.00,
 discount_amount = 0.00,
 receivable = 6437.00,
 received = 0.00,
 contacts = 'tudou123',
 mobile = '18923880699',
 pay_status = 1,
 create_time = '2019-09-23 09:44:05',
 modifier = 'admin',
 valid = 1
WHERE
	TRANSATION_ORDER_NO = 1175948922846253056

 Time：2 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.selectById
 Execute SQL：SELECT TRANSATION_ORDER_NO AS transationOrderNo,external_number AS externalNumber,owner AS owner,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,total_amount AS totalAmount,discount_amount AS discountAmount,receivable AS receivable,received AS received,contacts AS contacts,mobile AS mobile,pay_status AS payStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,valid AS valid FROM OS_TRANSATIONORDER WHERE TRANSATION_ORDER_NO=1175948922846253056

[2019-09-23 09:44:06.682][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - generated Key : 1175948855699582976-2-3-6437.0000 
[2019-09-23 09:44:06.682][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - generated Key : 1175948855699582976-2-3-6437.0000 
[2019-09-23 09:44:06.691][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.util.OrderRedisUtils][?.()] - OS_Redis : set[1175948855699582976-2-3-6437.0000--value:1175948855699582976-2-3-6437.0000] 
[2019-09-23 09:44:06.694][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 应收(付)记录创建开始--->参数为：CreatePlanAmountVO [recordNo=1175948855699582976, businessType=3, goodsType=2, recordMovingType=1, incomeExpenseType=2, movingReason=null, planAmount=6437.0000] 
[2019-09-23 09:44:06.694][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号查询应收付记录总和开始------> 
 Time：59 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.queryPlanAmountByRecordNo
 Execute SQL：SELECT ID,OWNER,RECORD_NO as recordNo,BUSINESS_TYPE as businessType,INCOME_EXPENSE_TYPE as incomeExpenseType, GOODS_TYPE as goodsType,RECORD_MOVING_TYPE as recordMovingType,SETTLEMENT_NO as settlementNo, PLAN_AMOUNT as planAmount,MOVING_REASON as movingReason, SETTLEMENT_STATUS as settlementStatus,MODIFIER,CREATE_TIME as createTime,MODIFY_TIME as modifyTime,VALID FROM OS_PLANAMOUNTRECORD WHERE VALID=1 AND RECORD_NO=1175948855699582976 AND BUSINESS_TYPE=3

[2019-09-23 09:44:06.750][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号无应收付记录------>1175948855699582976 
[2019-09-23 09:44:06.750][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 开始创建应收付记录----> 业务单号:1175948855699582976  创建总金额:-6437.00   本次金额:6437.0000 
[2019-09-23 09:44:06.750][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收(付)记录--->验证类型为:3的业务单:1175948855699582976的结算状态是否为未结算。。。。。。 
 Time：3 ms - ID：com.tempus.gss.order.dao.BuyOrderExtendMapper.selectById
 Execute SQL：SELECT BUY_ORDER_NO AS buyOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,supplier_type_name AS supplierTypeName,supplier_no_name AS supplierNoName,TICKETNOS AS ticketNos FROM OS_BUYORDER_EXTEND WHERE BUY_ORDER_NO=1175948855699582976

[2019-09-23 09:44:06.753][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收(付)记录--->验证应收(付)金额是否满足条件,amountCount:-6437.00,recordNo:1175948855699582976 
[2019-09-23 09:44:06.763][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.BuyOrderServiceImpl][?.()] - 采购单getBOrderByBONo()-->buyOrderNo:1175948855699582976 
 Time：4 ms - ID：com.tempus.gss.order.dao.BuyOrderMapper.selectOne
 Execute SQL：SELECT BUY_ORDER_NO AS buyOrderNo,owner AS owner,sale_order_no AS saleOrderNo,bsign_type AS bsignType,business_sign_no AS businessSignNo,buy_channel_no AS buyChannelNo,dept_code AS deptCode,supplier_type_no AS supplierTypeNo,supplier_no AS supplierNo,buy_change_type AS buyChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,buyer AS buyer,pcount AS pcount,payable AS payable,payment AS payment,saleorder_price AS saleorderPrice,buying_time AS buyingTime,pay_status AS payStatus,buy_status AS buyStatus,buy_child_status AS buyChildStatus,modify_time AS modifyTime,modifier AS modifier,valid AS valid,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,transation_order_no AS transationOrderNo FROM OS_BUYORDER WHERE BUY_ORDER_NO=1175948855699582976
# 创建采购应付
 Time：45 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.insert
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
		1175948855699582976,
		3,
		2,
		2,
		1,
		NULL,
		6437.0000,
		NULL,
		0,
		'admin',
		'2019-09-23 09:44:06',
		NULL,
		1
	)

 Time：2 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.selectById
 Execute SQL：SELECT id,owner AS owner,record_no AS recordNo,business_type AS businessType,income_expense_type AS incomeExpenseType,goods_type AS goodsType,record_moving_type AS recordMovingType,settlement_no AS settlementNo,plan_amount AS planAmount,moving_reason AS movingReason,settlement_status AS settlementStatus,modifier AS modifier,create_time AS createTime,modify_time AS modifyTime,valid AS valid FROM OS_PLANAMOUNTRECORD WHERE id=136055

[2019-09-23 09:44:06.822][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收付记录完成----> PlanAmountRecord [id=136055, owner=8755, recordNo=1175948855699582976, businessType=3, incomeExpenseType=2, goodsType=2, recordMovingType=1, settlementNo=null, planAmount=6437.00, movingReason=null, settlementStatus=0, modifier=admin, createTime=Mon Sep 23 09:44:06 CST 2019, modifyTime=null, valid=1] 
[2019-09-23 09:44:06.822][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收(付)记录--->修改业务单信息。。。。。。 
[2019-09-23 09:44:06.822][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号查询应收付记录总和开始------> 
 Time：57 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.queryPlanAmountByRecordNo
 Execute SQL：SELECT ID,OWNER,RECORD_NO as recordNo,BUSINESS_TYPE as businessType,INCOME_EXPENSE_TYPE as incomeExpenseType, GOODS_TYPE as goodsType,RECORD_MOVING_TYPE as recordMovingType,SETTLEMENT_NO as settlementNo, PLAN_AMOUNT as planAmount,MOVING_REASON as movingReason, SETTLEMENT_STATUS as settlementStatus,MODIFIER,CREATE_TIME as createTime,MODIFY_TIME as modifyTime,VALID FROM OS_PLANAMOUNTRECORD WHERE VALID=1 AND RECORD_NO=1175948855699582976 AND BUSINESS_TYPE=3

[2019-09-23 09:44:06.879][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号查询应收付记录总和结束------>recordNo:1175948855699582976  businessType:3  金额:-6437.00 
[2019-09-23 09:44:06.879][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.BuyOrderServiceImpl][?.()] - 采购单getBOrderByBONo()-->buyOrderNo:1175948855699582976 
 Time：3 ms - ID：com.tempus.gss.order.dao.BuyOrderMapper.selectOne
 Execute SQL：SELECT BUY_ORDER_NO AS buyOrderNo,owner AS owner,sale_order_no AS saleOrderNo,bsign_type AS bsignType,business_sign_no AS businessSignNo,buy_channel_no AS buyChannelNo,dept_code AS deptCode,supplier_type_no AS supplierTypeNo,supplier_no AS supplierNo,buy_change_type AS buyChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,buyer AS buyer,pcount AS pcount,payable AS payable,payment AS payment,saleorder_price AS saleorderPrice,buying_time AS buyingTime,pay_status AS payStatus,buy_status AS buyStatus,buy_child_status AS buyChildStatus,modify_time AS modifyTime,modifier AS modifier,valid AS valid,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,transation_order_no AS transationOrderNo FROM OS_BUYORDER WHERE BUY_ORDER_NO=1175948855699582976

[2019-09-23 09:44:06.882][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.BuyOrderServiceImpl][?.()] - 采购单update() 参数：BuyOrder [buyOrderNo=1175948855699582976, owner=8755, saleOrderNo=1175948855523422208, bsignType=1, businessSignNo=1175948922921750528, buyChannelNo=OP, deptCode=null, supplierTypeNo=104, supplierNo=411805170138410133, supplierName=null, buyChangeType=0:0:0, goodsType=2, goodsSubType=2, goodsName=EWR-DEN-LAX-EWR, buyer=sys, pcount=null, payable=6437.00, payment=0.00, saleorderPrice=0.00, buyingTime=Mon Sep 23 09:44:05 CST 2019, payStatus=1, buyStatus=null, buyChildStatus=1, modifyTime=null, modifier=admin, valid=1, haveDifference=null, differenceTotalAmount=null, transationOrderNo=1175948922846253056, ticketNos=null] 
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyOrderExtendMapper.selectOne
 Execute SQL：SELECT BUY_ORDER_NO AS buyOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,supplier_type_name AS supplierTypeName,supplier_no_name AS supplierNoName,TICKETNOS AS ticketNos FROM OS_BUYORDER_EXTEND WHERE BUY_ORDER_NO=1175948855699582976
#更新采购单 OS_BUYORDER
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyOrderMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_BUYORDER
SET OWNER = 8755,
 sale_order_no = 1175948855523422208,
 bsign_type = 1,
 business_sign_no = 1175948922921750528,
 buy_channel_no = 'OP',
 supplier_type_no = 104,
 supplier_no = 411805170138410133,
 buy_change_type = '0:0:0',
 goods_type = 2,
 goods_sub_type = 2,
 goods_name = 'EWR-DEN-LAX-EWR',
 buyer = 'sys',
 payable = 6437.00,
 payment = 0.00,
 saleorder_price = 0.00,
 buying_time = '2019-09-23 09:44:05',
 pay_status = 1,
 buy_status = 4,
 buy_child_status = 1,
 modifier = 'admin',
 valid = 1,
 transation_order_no = 1175948922846253056
WHERE
	BUY_ORDER_NO = 1175948855699582976

 Time：3 ms - ID：com.tempus.gss.order.dao.BuyOrderMapper.selectById
 Execute SQL：SELECT BUY_ORDER_NO AS buyOrderNo,owner AS owner,sale_order_no AS saleOrderNo,bsign_type AS bsignType,business_sign_no AS businessSignNo,buy_channel_no AS buyChannelNo,dept_code AS deptCode,supplier_type_no AS supplierTypeNo,supplier_no AS supplierNo,buy_change_type AS buyChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,buyer AS buyer,pcount AS pcount,payable AS payable,payment AS payment,saleorder_price AS saleorderPrice,buying_time AS buyingTime,pay_status AS payStatus,buy_status AS buyStatus,buy_child_status AS buyChildStatus,modify_time AS modifyTime,modifier AS modifier,valid AS valid,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,transation_order_no AS transationOrderNo FROM OS_BUYORDER WHERE BUY_ORDER_NO=1175948855699582976
# 更新国际销售扩展 IFT_SALE_ORDER_EXT
[2019-09-23 09:44:07.307][INFO ][http-nio-8479-exec-4][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 订单核价，更新saleOrderExt信息SaleOrderExt{isAutoDistribute=1aloneLocker=1, saleOrderNo=1175948855523422208, saleOrder=SaleOrder [saleOrderNo=1175948855523422208, externalNumber=null, owner=8755, transationOrderNo=1175948922846253056, businessSignNo=1175948922921750528, deptCode=null, orderType=1, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, mainOrderNo=null, attachedType=null, orderChangeType=0:0:0, goodsType=2, goodsSubType=1, goodsName=EWR-DEN-LAX-EWR, pcount=null, amount=0.00, discountAmount=0.00, receivable=0.00, received=0.00, buyorderPrice=null, orderingTime=Mon Sep 23 09:44:05 CST 2019, payStatus=1, orderStatus=3, orderChildStatus=1, modifyTime=null, actorUser=null, modifier=admin, valid=1, contacts=null, mobile=null, bsignType=null, haveDifference=null, differenceTotalAmount=null], id=8342, owner=8755, demandNo=null, teamNo=null, legType=2, contactName='tudou123', contactPhone='', contactMobile='18923880699', contactMail='null', saleRemark='', valid=1, version=1, locker=1, buyLocker=null, lockTime=null, createType=2, pnrNo=null, importPnr=null, createTime=Mon Sep 23 09:44:05 CST 2019, modifyTime=null, creator='admin', modifier='admin', issueTime=null, originalOrderNo=null, status='null', linkType=1, linkNo='null', currency='null', saleCurrency='CNY', exchangeRate=1.00, handlers='null', drawerLoginName='null', customerName='null', isCivilOrder=0, office='null', bookPersonerName='admin', outBookOrderNo='', differenceOrderList=null,bookedByTicketMan=null} 
 Time：1 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderExtDao.updateByPrimaryKey
 Execute SQL：UPDATE IFT_SALE_ORDER_EXT SET ID = 8342, OWNER = 8755, DEMAND_NO = null, PNR_NO = null, LEG_TYPE = 2, CONTACT_NAME = 'tudou123', CONTACT_PHONE = '', CONTACT_MOBILE = '18923880699', CONTACT_MAIL = null, SALE_REMARK = '', CUSTOMER_REMARK= '', VALID = 1, VERSION = 1, LOCKER = 1, LOCK_TIME = null, CREATE_TYPE = 2, CREATE_TIME = '2019-09-23 09:44:05', MODIFY_TIME = null, CREATOR = 'admin', ISSUE_TIME = null, MODIFIER = 'admin', OFFICE = null, ALONE_LOCKER = 1 WHERE SALE_ORDER_NO = 1175948855523422208
# 更新国际销售详情 IFT_SALE_ORDER_DETAIL
 Time：1 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderDetailDao.updateByOrderNo
 Execute SQL：update IFT_SALE_ORDER_DETAIL SET STATUS = '2' where SALE_ORDER_NO = 1175948855523422208

[2019-09-23 09:44:07.311][INFO ][http-nio-8479-exec-4][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 订单核价结束 
[2019-09-23 09:44:07.316][INFO ][http-nio-8479-exec-10][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - 销售单updateStatus()参数--> saleOrderNo:1175948855523422208,childStatus:2 
 Time：3 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE SALE_ORDER_NO=1175948855523422208
# 更新销售单 OS_SALEORDER
 Time：3 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.updateSelectiveById
 Execute SQL：UPDATE OS_SALEORDER SET owner=8755, dept_code='69', order_status=5, order_child_status=2, modifier='admin' WHERE SALE_ORDER_NO=1175948855523422208

 Time：3 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE SALE_ORDER_NO=1175948855523422208

[2019-09-23 09:44:11.100][INFO ][http-nio-8479-exec-6][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 订单查询参数{"agent":{"account":"admin","device":"OP","id":1,"ip":"172.16.51.69","owner":8755,"token":""},"entity":{"bookEndDate":"2019-09-23","bookStartDate":"2019-09-16","buyLocker":0,"cabin":"","createTypeStatusArray":[1,2,3,4,6],"customerCount":false,"customerNo":"","isAutoDistribute":1,"linkType":1,"operator":"","orderStatusArray":[1,2],"passenger":"","payStatuss":"3,4","pnr":"","queryType":2,"saleOrderNo":1175001176903528448,"ticketAirline":"","ticketNo":"","valid":0}} 
[2019-09-23 09:44:11.100][INFO ][http-nio-8479-exec-6][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 查询订单接口开始===== 
 Time：8 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderExtDao.queryFromSaleQueryOrderVo
 Execute SQL：select DISTINCT at.STATUS AS APPRV_STATUS,at.TRAVEL_NO, f.SALE_ORDER_NO, f.ID, f.OWNER, f.DEMAND_NO, f.LEG_TYPE, f.CONTACT_NAME, f.CONTACT_PHONE, f.CONTACT_MOBILE, f.CONTACT_MAIL, f.SALE_REMARK,f.CUSTOMER_REMARK, f.VALID, f.VERSION, f.LOCKER, f.LOCK_TIME, f.CREATE_TYPE, f.CREATE_TIME, f.MODIFY_TIME, (select NAME from SM_USER where LOGIN_NAME =f.CREATOR) as CREATOR ,f.ALONE_LOCKER,f.ORDER_TYPE, CC.`NAME` CUSTOMER_NAME,ab.BUY_LOCKER ,(select NAME from SM_USER where LOGIN_NAME =f.CREATOR) as MODIFIER ,o.ORDER_CHILD_STATUS,f.LINKTYPE ,(SELECT NAME FROM SM_USER where ID = ab.BUY_LOCKER) as HANDLERS ,f.ORIGINAL_ORDER_NO FROM IFT_SALE_ORDER_EXT f left join OS_SALEORDER o on f.SALE_ORDER_NO = o.SALE_ORDER_NO left join IFT_SALE_ORDER_DETAIL d on d.SALE_ORDER_NO = f.SALE_ORDER_NO left join OS_BUYORDER aa ON f.SALE_ORDER_NO=aa.SALE_ORDER_NO left join IFT_BUY_ORDER_EXT ab ON aa.BUY_ORDER_NO=ab.BUY_ORDER_NO left join CPS_CUSTOMER CC ON CC.CUSTOMER_NO=o.CUSTOMER_NO LEFT JOIN TMS_APPLY_VEHICLE av ON av.ORDER_ID = f.SALE_ORDER_NO LEFT JOIN IFT_PASSENGER ip ON ip.SALE_ORDER_NO = f.SALE_ORDER_NO LEFT JOIN TMS_APPRV_TASK at ON at.LINK_ID = av.LINK_ID where f.VALID = 1 and DATE_FORMAT(o.ORDERING_TIME, '%Y-%m-%d') >= DATE_FORMAT('2019-09-16','%Y-%m-%d') AND DATE_FORMAT(o.ORDERING_TIME, '%Y-%m-%d') <= DATE_FORMAT('2019-09-23','%Y-%m-%d') AND aa.BUY_CHILD_STATUS in ( 1 , 2 ) AND f.IS_AUTO_DISTRIBUTE=1 AND f.SALE_ORDER_NO = 1175001176903528448 AND ab.BUY_LOCKER = 0 AND f.CREATE_TYPE in ( 1 , 2 , 3 , 4 , 6 ) AND o.PAY_STATUS in (3,4) order by f.CREATE_TIME desc

