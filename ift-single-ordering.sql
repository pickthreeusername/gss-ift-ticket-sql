# gss 呼叫中心白屏预订 -- 单程

-- [2019-09-23 09:47:56.528][INFO ][http-nio-8479-exec-6][com.tempus.gss.order.service.TransationOrderServiceImpl][?.()] - com.tempus.gss.order.service.TransationOrderServiceImpl----> 创建交易单，创建参数为：TransationOrder [transationOrderNo=1175949889989840896, externalNumber=null, owner=8755, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, totalAmount=null, discountAmount=null, receivable=null, received=null, contacts=tudou123, mobile=18923880699, payStatus=1, createTime=Mon Sep 23 09:47:56 CST 2019, modifyTime=null, modifier=null, valid=1] 


# 根据交易单号查询是否存在 OS_TRANSATIONORDER
Time：1 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.selectById
EXECUTE SQL：SELECT TRANSATION_ORDER_NO AS transationOrderNo,
*
FROM
	OS_TRANSATIONORDER 
WHERE
	TRANSATION_ORDER_NO = 1175949889989840896

# 生成交易单 OS_TRANSATIONORDER
 Time：12 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.insert
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
		1175949889989840896,
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
		'2019-09-23 09:47:56',
		NULL,
		'admin',
		1
	)
# 生成航段信息 IFT_LEG （多条，国际机票一般需要中转）
/*[2019-09-23 09:47:56.546][INFO ][http-nio-8479-exec-1][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 创建订单开始========
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
                    "cabin": "V",
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
                    "arrTime": "2019-09-26 10:58:00",
                    "cabin": "V",
                    "depAirport": "DEN",
                    "depTime": "2019-09-26 09:25:00",
                    "flightNo": "1189",
                    "goBack": 1,
                    "stopAirport": "",
                    "terminal": ""
                }
            ],
            "legType": 1,
            "orderType": 1,
            "passengerList": [
                {
                    "buyAgencyFee": 0,
                    "buyAwardPrice": 2440,
                    "buyBrokerage": 0,
                    "buyCurrency": "CNY",
                    "buyExchangeRate": 1,
                    "buyFare": 2440,
                    "buyPrice": 2787,
                    "buyRebate": 0,
                    "buyTax": 347,
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
                    "saleAwardPrice": 2440,
                    "saleBrokerage": 0,
                    "saleFare": 2440,
                    "salePrice": 2787,
                    "saleRebate": 0,
                    "saleTax": 347,
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
                "transationOrderNo": 1175949889989841000
            },
            "saleRemark": "",
            "version": 1
        }
    }
}
*/
 Time：10 ms - ID：com.tempus.gss.product.ift.dao.LegDao.insertSelective
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
		1175949822654427136,
		8755,
		1175949822646038528,
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
		'2019-09-23 09:47:56',
		'V'
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
		1175949822713147392,
		8755,
		1175949822646038528,
		'UA',
		'1189',
		'DEN',
		'',
		'LAX',
		'2019-09-26 09:25:00',
		'2019-09-26 10:58:00',
		1,
		0,
		'',
		'739',
		1,
		1,
		'1',
		'admin',
		'2019-09-23 09:47:56',
		'V'
	)
# 插入乘客信息  IFT_PASSENGER SALE_ORDER_NO
 Time：8 ms - ID：com.tempus.gss.product.ift.dao.PassengerDao.insertSelective
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
		1175949822755090432,
		8755,
		1175949822646038528,
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
		'BSP',
		2440.00,
		347.00,
		0.00,
		0.00,
		0.00,
		2440.00,
		2787.00,
		2440.00,
		347.00,
		0.00,
		0.00,
		0.00,
		2440.00,
		2787,
		'1',
		1,
		'2019-09-23 09:47:56',
		'admin',
		'15302887558',
		0,
		0.00,
		0.00,
		'CNY',
		1.00
	)

-- [2019-09-23 09:47:56.593][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - 销售单create()参数为--> SaleOrder [saleOrderNo=1175949822646038528, externalNumber=null, owner=8755, transationOrderNo=1175949889989840896, businessSignNo=1175949890103087104, deptCode=null, orderType=1, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, mainOrderNo=null, attachedType=null, orderChangeType=null, goodsType=2, goodsSubType=1, goodsName=EWR-DEN-LAX, pcount=null, amount=null, discountAmount=null, receivable=null, received=null, buyorderPrice=null, orderingTime=Mon Sep 23 09:47:56 CST 2019, payStatus=1, orderStatus=null, orderChildStatus=1, modifyTime=null, actorUser=null, modifier=null, valid=1, contacts=null, mobile=null, bsignType=1, haveDifference=null, differenceTotalAmount=null] 
 
 Time：3 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
EXECUTE SQL：SELECT SALE_ORDER_NO AS saleOrderNo,
	*
FROM
	OS_SALEORDER 
WHERE
	SALE_ORDER_NO = 1175949822646038528

# 创建销售单  OS_SALEORDER  SALE_ORDER_NO, transation_order_no,business_sign_no,
[2019-09-23 09:47:56.601][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - 销售单create() 创建销售单.... 
 Time：4 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.insertSelective
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
		1175949822646038528,
		8755,
		1175949889989840896,
		1175949890103087104,
		1,
		'OP',
		301,
		401703040743530784,
		'admin',
		2,
		1,
		'EWR-DEN-LAX',
		0,
		0,
		'2019-09-23 09:47:56',
		1,
		1,
		'admin',
		1,
		1
	)

# 创建销售扩展单 OS_SALEORDER_EXTEND SALE_ORDER_NO,
[2019-09-23 09:47:56.607][INFO ][http-nio-8479-exec-8][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - 销售单create() 入库销售单扩展信息.... 
 Time：2 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.insertSelective
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
		1175949822646038528,
		1,
		1,
		1,
		'18923880699',
		'分销商'
	)
-- [2019-09-23 09:47:56.628][INFO ][http-nio-8479-exec-10][com.tempus.gss.order.service.BuyOrderServiceImpl][?.()] - 采购单create()-->BuyOrder [buyOrderNo=1175949822797033472, owner=8755, saleOrderNo=1175949822646038528, bsignType=1, businessSignNo=1175949890103087104, buyChannelNo=OP, deptCode=null, supplierTypeNo=104, supplierNo=411805170138410133, supplierName=null, buyChangeType=null, goodsType=2, goodsSubType=2, goodsName=EWR-DEN-LAX, buyer=null, pcount=null, payable=null, payment=null, saleorderPrice=null, buyingTime=null, payStatus=null, buyStatus=null, buyChildStatus=1, modifyTime=null, modifier=null, valid=null, haveDifference=null, differenceTotalAmount=null, transationOrderNo=null, ticketNos=null] 


Time：5 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
EXECUTE SQL：SELECT SALE_ORDER_NO AS saleOrderNo,
	*
FROM
	OS_SALEORDER 
WHERE
	SALE_ORDER_NO = 1175949822646038528

-- [2019-09-23 09:47:56.635][INFO ][http-nio-8479-exec-10][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - 
-- [2019-09-23 09:47:56.635][INFO ][http-nio-8479-exec-10][com.tempus.gss.order.service.BuyOrderServiceImpl][?.()] - 采购单create()-->开始创建采购单 
 Time：3 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
EXECUTE SQL：SELECT SALE_ORDER_NO AS saleOrderNo,
* 
FROM
	OS_SALEORDER_EXTEND 
WHERE
	SALE_ORDER_NO = 1175949822646038528
# 创建采购单 OS_BUYORDER  BUY_ORDER_NO,sale_order_no,business_sign_no,
 Time：21 ms - ID：com.tempus.gss.order.dao.BuyOrderMapper.insertSelective
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
		1175949822797033472,
		8755,
		1175949822646038528,
		1,
		1175949890103087104,
		'OP',
		104,
		411805170138410133,
		2,
		2,
		'EWR-DEN-LAX',
		0,
		0,
		1,
		'admin',
		1175949889989840896
	)

# 创建采购扩展 OS_BUYORDER_EXTEND
-- [2019-09-23 09:47:56.667][INFO ][http-nio-8479-exec-10][com.tempus.gss.order.service.BuyOrderServiceImpl][?.()] - 采购单create()-->创建采购单后，入库信息到采购单扩展表里 
 Time：0 ms - ID：com.tempus.gss.order.dao.BuyOrderExtendMapper.insertSelective
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
		1175949822797033472,
		1,
		1,
		1,
		'平台B2B',
		'非系统对接'
	)

Time：5 ms - ID：com.tempus.gss.order.dao.BuyOrderMapper.selectById
EXECUTE SQL：SELECT BUY_ORDER_NO AS buyOrderNo,
	*
FROM
	OS_BUYORDER 
WHERE
	BUY_ORDER_NO = 1175949822797033472
# 创建国际销售详情单 IFT_SALE_ORDER_DETAIL
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
		1175949823170326528,
		8755,
		1175949822646038528,
		1175949822755090432,
		1175949822654427136,
		'V',
		2440.00,
		347.00,
		0.00,
		0.00,
		0.00,
		2440.00,
		FALSE,
		'admin',
		'2019-09-23 09:47:56',
		'1',
		1,
		0.00,
		0.00
	)

# 创建销售详情单2 IFT_SALE_ORDER_DETAIL
 Time：2 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderDetailDao.insertSelective
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
		1175949823199686656,
		8755,
		1175949822646038528,
		1175949822755090432,
		1175949822713147392,
		'V',
		2440.00,
		347.00,
		0.00,
		0.00,
		0.00,
		2440.00,
		FALSE,
		'admin',
		'2019-09-23 09:47:56',
		'1',
		1,
		0.00,
		0.00
	)

 # 创建国际采购详情单 IFT_BUY_ORDER_DETAIL  SALE_ORDER_DETAIL_NO,BUY_ORDER_NO,
 Time：13 ms - ID：com.tempus.gss.product.ift.dao.BuyOrderDetailDao.insertSelective
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
		1175949823220658176,
		8755,
		1175949822797033472,
		1175949823170326528,
		'admin',
		'2019-09-23 09:47:56',
		1
	)

# 创建采购详情单2 IFT_BUY_ORDER_DETAIL
 Time：3 ms - ID：com.tempus.gss.product.ift.dao.BuyOrderDetailDao.insertSelective
EXECUTE SQL：INSERT INTO IFT_BUY_ORDER_DETAIL 
	( BUY_ORDER_DETAIL_NO, OWNER, BUY_ORDER_NO, SALE_ORDER_DETAIL_NO, CREATOR, CREATE_TIME, VALID )
VALUES
	( 1175949823367458816, 8755, 1175949822797033472, 1175949823199686656, 'admin', '2019-09-23 09:47:56', 1 )

# 创建国际销售扩展单 IFT_SALE_ORDER_EXT SALE_ORDER_NO,
 
 Time：7 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderExtDao.insertSelective
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
		1175949822646038528,
		8755,
		1,
		'tudou123',
		'',
		'18923880699',
		'',
		1,
		1,
		0,
		2,
		'2019-09-23 09:47:56',
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
		1175949822797033472,
		8755,
		'UA',
		'BSP',
		'admin',
		'2019-09-23 09:47:56',
		1
	)
-- [2019-09-23 09:47:56.731][INFO ][http-nio-8479-exec-1][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 创建国际订单成功

-- [2019-09-23 09:47:56.735][INFO ][http-nio-8479-exec-1][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 创建订单结束======== 
-- 
/*saleOrderExt:
{
    "apprvStatus": 0,
    "bookPersonerName": "admin",
    "buyOrderNo": 1175949822797033500,
    "contactMobile": "18923880699",
    "contactName": "tudou123",
    "contactPhone": "",
    "createTime": "2019-09-23 09:47:56",
    "createType": 2,
    "creator": "admin",
    "exchangeRate": 1,
    "isCivilOrder": 0,
    "legList": [
        {
            "airline": "UA",
            "airportModel": "739",
            "arrAirport": "DEN",
            "arrTime": "2019-09-26 07:08:00",
            "cabin": "V",
            "childSection": 0,
            "createTime": "2019-09-23 09:47:56",
            "creator": "admin",
            "depAirport": "EWR",
            "depTime": "2019-09-26 05:00:00",
            "flightNo": "1801",
            "goBack": 1,
            "legNo": 1175949822654427100,
            "owner": 8755,
            "parentSection": 0,
            "saleOrderNo": 1175949822646038500,
            "status": "1",
            "stopAirport": "",
            "terminal": "C",
            "valid": 1
        },
        {
            "airline": "UA",
            "airportModel": "739",
            "arrAirport": "LAX",
            "arrTime": "2019-09-26 10:58:00",
            "cabin": "V",
            "childSection": 0,
            "createTime": "2019-09-23 09:47:56",
            "creator": "admin",
            "depAirport": "DEN",
            "depTime": "2019-09-26 09:25:00",
            "flightNo": "1189",
            "goBack": 1,
            "legNo": 1175949822713147400,
            "owner": 8755,
            "parentSection": 1,
            "saleOrderNo": 1175949822646038500,
            "status": "1",
            "stopAirport": "",
            "terminal": "",
            "valid": 1
        }
    ],
    "legType": 1,
    "locker": 0,
    "orderType": 1,
    "outBookOrderNo": "",
    "owner": 8755,
    "passengerList": [
        {
            "buyAgencyFee": 0,
            "buyAwardPrice": 2440,
            "buyBrokerage": 0,
            "buyCurrency": "CNY",
            "buyExchangeRate": 1,
            "buyFare": 2440,
            "buyPrice": 2787,
            "buyRebate": 0,
            "buyTax": 347,
            "certNo": "441521199609126547",
            "certType": "PP",
            "certValid": 1695830400000,
            "createTime": 1569203276550,
            "creator": "admin",
            "deptProfit": 0,
            "gender": "1",
            "historyPassenger": "1",
            "name": "YUCHENG",
            "nationality": "",
            "owner": 8755,
            "passengerBirth": 897321600000,
            "passengerNo": 1175949822755090400,
            "passengerType": "ADT",
            "phone": "15302887558",
            "policyNo": 0,
            "profit": 0,
            "saleAgencyFee": 0,
            "saleAwardPrice": 2440,
            "saleBrokerage": 0,
            "saleFare": 2440,
            "saleOrderNo": 1175949822646038500,
            "salePrice": 2787,
            "saleRebate": 0,
            "saleTax": 347,
            "status": "1",
            "surname": "CHEN",
            "ticketAirline": "UA",
            "ticketType": "BSP",
            "valid": 1
        }
    ],
    "saleCurrency": "CNY",
    "saleOrder": {
        "bsignType": 1,
        "businessSignNo": 1175949890103087000,
        "customerNo": 401703040743530750,
        "customerTypeNo": 301,
        "goodsName": "EWR-DEN-LAX",
        "goodsSubType": 1,
        "goodsType": 2,
        "orderChildStatus": 1,
        "orderType": 1,
        "orderingLoginName": "admin",
        "orderingTime": 1569203276550,
        "owner": 8755,
        "payStatus": 1,
        "saleOrderNo": 1175949822646038500,
        "sourceChannelNo": "OP",
        "transationOrderNo": 1175949889989841000,
        "valid": 1
    },
    "saleOrderDetailList": [
        {
            "agencyFee": 0,
            "awardPrice": 2440,
            "brokerage": 0,
            "cabin": "V",
            "change": false,
            "createTime": 1569203276550,
            "creator": "admin",
            "deptProfit": 0,
            "fare": 2440,
            "isChange": false,
            "legNo": 1175949822654427100,
            "owner": 8755,
            "passenger": {
                "$ref": "$.passengerList[0]"
            },
            "passengerNo": 1175949822755090400,
            "profit": 0,
            "rebate": 0,
            "saleOrderDetailNo": 1175949823170326500,
            "saleOrderNo": 1175949822646038500,
            "status": "1",
            "tax": 347,
            "valid": 1
        },
        {
            "agencyFee": 0,
            "awardPrice": 2440,
            "brokerage": 0,
            "cabin": "V",
            "change": false,
            "createTime": 1569203276550,
            "creator": "admin",
            "deptProfit": 0,
            "fare": 2440,
            "isChange": false,
            "legNo": 1175949822713147400,
            "owner": 8755,
            "passenger": {
                "$ref": "$.passengerList[0]"
            },
            "passengerNo": 1175949822755090400,
            "profit": 0,
            "rebate": 0,
            "saleOrderDetailNo": 1175949823199686700,
            "saleOrderNo": 1175949822646038500,
            "status": "1",
            "tax": 347,
            "valid": 1
        }
    ],
    "saleOrderNo": 1175949822646038500,
    "saleRemark": "",
    "valid": 1,
    "version": 1
}

*/
-- [2019-09-23 09:47:56.736][INFO ][http-nio-8479-exec-1][com.tempus.gss.mss.service.MssReserveServiceImpl][?.()] - ==============国际机票预订完成================== 
-- 
Time：18 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectList
EXECUTE SQL：SELECT SALE_ORDER_NO AS saleOrderNo,
	*
FROM
	OS_SALEORDER 
WHERE
	transation_order_no = 1175949889989840896 
	AND valid = 1 
ORDER BY
	ORDERING_TIME DESC

[2019-09-23 09:47:56.780][INFO ][http-nio-8479-exec-9][com.tempus.gss.product.ift.service.SaleOrderExtServiceImpl][?.()] - 获取销售单拓展开始== 
 Time：23 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderExtDao.selectByPrimaryKey
EXECUTE SQL：SELECT 
*
FROM
	IFT_SALE_ORDER_EXT 
WHERE
	SALE_ORDER_NO = 1175949822646038528 
	AND VALID =1
# 更新 国际销售扩展  IFT_SALE_ORDER_EXT 设置下单的业务员ID，Locker，aloneLocker
[2019-09-23 09:47:56.814][INFO ][http-nio-8479-exec-9][com.tempus.gss.product.ift.service.SaleOrderExtServiceImpl][?.()] - 获取销售单拓展结束== 
 Time：14 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderExtDao.updateByPrimaryKeySelective
EXECUTE SQL：UPDATE IFT_SALE_ORDER_EXT 
	SET ID = 8343,
	OWNER = 8755,
	LEG_TYPE = 1,
	CONTACT_NAME = 'tudou123',
	CONTACT_PHONE = '',
	CONTACT_MOBILE = '18923880699',
	SALE_REMARK = '',
	VALID = 1,
	VERSION = 1,
	LOCKER = 1,
	CREATE_TYPE = 2,
	CREATE_TIME = '2019-09-23 09:47:56',
	CREATOR = 'admin',
	LINKTYPE = 1,
	SALE_CURRENCY = 'CNY',
	EXCHANGE_RATE = 1.00,
	ALONE_LOCKER = 1 
WHERE
	SALE_ORDER_NO = 1175949822646038528

[2019-09-23 09:47:56.835][INFO ][http-nio-8479-exec-2][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 订单核价开始 
 Time：25 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderExtDao.selectByPrimaryKey
EXECUTE SQL：
SELECT
	*
FROM
	IFT_SALE_ORDER_EXT 
WHERE
	SALE_ORDER_NO = 1175949822646038528 
	AND VALID =1

 Time：5 ms - ID：com.tempus.gss.product.ift.dao.BuyOrderExtDao.selectBuyOrderBySaleOrderNo
EXECUTE SQL：SELECT 
	*
FROM
	IFT_BUY_ORDER_EXT i,
	OS_BUYORDER o 
WHERE
	i.BUY_ORDER_NO = o.BUY_ORDER_NO 
	AND o.SALE_ORDER_NO = 1175949822646038528 
ORDER BY
	i.CREATE_TIME

[2019-09-23 09:47:56.868][INFO ][http-nio-8479-exec-7][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - generated Key : 1175949822646038528-2-2-2787.0000 
[2019-09-23 09:47:56.868][INFO ][http-nio-8479-exec-7][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - generated Key : 1175949822646038528-2-2-2787.0000 
[2019-09-23 09:47:56.876][INFO ][http-nio-8479-exec-7][com.tempus.gss.order.util.OrderRedisUtils][?.()] - OS_Redis : set[1175949822646038528-2-2-2787.0000--value:1175949822646038528-2-2-2787.0000] 


[2019-09-23 09:47:56.876][INFO ][http-nio-8479-exec-7][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 应收(付)记录创建开始--->参数为：CreatePlanAmountVO [recordNo=1175949822646038528, businessType=2, goodsType=2, recordMovingType=1, incomeExpenseType=1, movingReason=null, planAmount=2787.0000] 
[2019-09-23 09:47:56.876][INFO ][http-nio-8479-exec-7][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号查询应收付记录总和开始------> 
 Time：57 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.queryPlanAmountByRecordNo
EXECUTE SQL：
SELECT
*
FROM
	OS_PLANAMOUNTRECORD 
WHERE
	VALID = 1 
	AND RECORD_NO = 1175949822646038528 
	AND BUSINESS_TYPE =2

[2019-09-23 09:47:56.935][INFO ][http-nio-8479-exec-7][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号无应收付记录------>1175949822646038528 
[2019-09-23 09:47:56.935][INFO ][http-nio-8479-exec-7][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 开始创建应收付记录----> 业务单号:1175949822646038528  创建总金额:2787.00   本次金额:2787.0000 
[2019-09-23 09:47:56.935][INFO ][http-nio-8479-exec-7][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收(付)记录--->验证类型为:2的业务单:1175949822646038528的结算状态是否为未结算。。。。。。

 Time：2 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
EXECUTE SQL：
SELECT
	*
FROM
	OS_SALEORDER_EXTEND 
WHERE
	SALE_ORDER_NO = 1175949822646038528

[2019-09-23 09:47:56.937][INFO ][http-nio-8479-exec-7][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收(付)记录--->验证应收(付)金额是否满足条件,amountCount:2787.00,recordNo:1175949822646038528 
 Time：3 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
 Execute SQL：
SELECT
	*
FROM
	OS_SALEORDER 
WHERE
	SALE_ORDER_NO = 1175949822646038528

 Time：0 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
 
 Execute SQL：
SELECT
	*
FROM
	OS_SALEORDER_EXTEND 
WHERE
	SALE_ORDER_NO = 1175949822646038528
#创建 销售应收 OS_PLANAMOUNTRECORD 

 Time：68 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.insert
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
		1175949822646038528,
		2,
		1,
		2,
		1,
		NULL,
		2787.0000,
		NULL,
		0,
		'admin',
		'2019-09-23 09:47:56',
		NULL,
		1
	)
 Time：2 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.selectById
EXECUTE SQL：SELECT id,
*
FROM
	OS_PLANAMOUNTRECORD 
WHERE
	id = 136056
	
[2019-09-23 09:47:57.011][INFO ][http-nio-8479-exec-7][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收付记录完成----> 
[2019-09-23 09:47:57.011][INFO ][http-nio-8479-exec-7][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收(付)记录--->修改业务单信息。。。。。。 
[2019-09-23 09:47:57.011][INFO ][http-nio-8479-exec-7][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号查询应收付记录总和开始------> 
 Time：56 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.queryPlanAmountByRecordNo
 Execute SQL：SELECT ID,OWNER,RECORD_NO as recordNo,BUSINESS_TYPE as businessType,INCOME_EXPENSE_TYPE as incomeExpenseType, GOODS_TYPE as goodsType,RECORD_MOVING_TYPE as recordMovingType,SETTLEMENT_NO as settlementNo, PLAN_AMOUNT as planAmount,MOVING_REASON as movingReason, SETTLEMENT_STATUS as settlementStatus,MODIFIER,CREATE_TIME as createTime,MODIFY_TIME as modifyTime,VALID FROM OS_PLANAMOUNTRECORD WHERE VALID=1 AND RECORD_NO=1175949822646038528 AND BUSINESS_TYPE=2

[2019-09-23 09:47:57.067][INFO ][http-nio-8479-exec-7][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号查询应收付记录总和结束------>recordNo:1175949822646038528  businessType:2  金额:2787.00 

 # 更新 销售单  OS_SALEORDER Receivable，paystatus

 Time：3 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_SALEORDER
SET OWNER = 8755,
 transation_order_no = 1175949889989840896,
 business_sign_no = 1175949890103087104,
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
 received = 0.00,
 ordering_time = '2019-09-23 09:47:56',
 pay_status = 1,
 order_status = 3,
 order_child_status = 1,
 modifier = 'admin',
 valid = 1,
 bsign_type = 1
WHERE
	SALE_ORDER_NO = 1175949822646038528




[2019-09-23 09:47:57.084][INFO ][http-nio-8479-exec-7][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收(付)记录--->修改交易单信息。。。。。。 
[2019-09-23 09:47:57.084][INFO ][http-nio-8479-exec-7][com.tempus.gss.order.service.TransationOrderServiceImpl][?.()] - 根据交易单单号修改交易单信息:1175949889989840896, 3, true 

 # 更新交易单 OS_TRANSATIONORDER //修改交易单的应收，实收
[2019-09-23 09:47:57.116][INFO ][http-nio-8479-exec-7][com.tempus.gss.order.service.TransationOrderServiceImpl][?.()] - 根据交易单单号-->1175949889989840896修改交易单信息。修改类型:3应收:2787.00实收:0.00金额差:2787.00 
 Time：1 ms - ID：com.tempus.gss.order.dao.TransationOrderMapper.updateSelectiveById
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

[2019-09-23 09:47:57.128][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - generated Key : 1175949822797033472-2-3-2787.0000 
[2019-09-23 09:47:57.128][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - generated Key : 1175949822797033472-2-3-2787.0000 
[2019-09-23 09:47:57.135][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.util.OrderRedisUtils][?.()] - OS_Redis : set[1175949822797033472-2-3-2787.0000--value:1175949822797033472-2-3-2787.0000] 
[2019-09-23 09:47:57.136][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 应收(付)记录创建开始--->参数为：CreatePlanAmountVO [recordNo=1175949822797033472, businessType=3, goodsType=2, recordMovingType=1, incomeExpenseType=2, movingReason=null, planAmount=2787.0000] 
[2019-09-23 09:47:57.136][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号查询应收付记录总和开始------> 
 Time：55 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.queryPlanAmountByRecordNo
 

[2019-09-23 09:47:57.192][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号无应收付记录------>1175949822797033472 
[2019-09-23 09:47:57.192][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 开始创建应收付记录----> 业务单号:1175949822797033472  创建总金额:-2787.00   本次金额:2787.0000 
[2019-09-23 09:47:57.192][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收(付)记录--->验证类型为:3的业务单:1175949822797033472的结算状态是否为未结算。。。。。。 
 Time：3 ms - ID：com.tempus.gss.order.dao.BuyOrderExtendMapper.selectById


[2019-09-23 09:47:57.195][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收(付)记录--->验证应收(付)金额是否满足条件,amountCount:-2787.00,recordNo:1175949822797033472 
[2019-09-23 09:47:57.195][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.BuyOrderServiceImpl][?.()] - 采购单getBOrderByBONo()-->buyOrderNo:1175949822797033472 
 
# 创建采购应付
 Time：5 ms - ID：com.tempus.gss.order.dao.PlanAmountRecordMapper.insert
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
		1175949822797033472,
		3,
		2,
		2,
		1,
		NULL,
		2787.0000,
		NULL,
		0,
		'admin',
		'2019-09-23 09:47:57',
		NULL,
		1
	)
 

[2019-09-23 09:47:57.209][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收付记录完成----> PlanAmountRecord [id=136057, owner=8755, recordNo=1175949822797033472, businessType=3, incomeExpenseType=2, goodsType=2, recordMovingType=1, settlementNo=null, planAmount=2787.00, movingReason=null, settlementStatus=0, modifier=admin, createTime=Mon Sep 23 09:47:57 CST 2019, modifyTime=null, valid=1] 
[2019-09-23 09:47:57.209][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 创建应收(付)记录--->修改业务单信息。。。。。。 
[2019-09-23 09:47:57.209][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号查询应收付记录总和开始------> 
 

[2019-09-23 09:47:57.265][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.PlanAmountRecordServiceImpl][?.()] - 业务单号查询应收付记录总和结束------>recordNo:1175949822797033472  businessType:3  金额:-2787.00 
[2019-09-23 09:47:57.265][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.BuyOrderServiceImpl][?.()] - 采购单getBOrderByBONo()-->buyOrderNo:1175949822797033472 

[2019-09-23 09:47:57.269][INFO ][http-nio-8479-exec-5][com.tempus.gss.order.service.BuyOrderServiceImpl][?.()] - 采购单update() 参数：BuyOrder [
 
#更新采购单 OS_BUYORDER  Payable ,paystatus
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyOrderMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_BUYORDER
SET OWNER = 8755,
 sale_order_no = 1175949822646038528,
 bsign_type = 1,
 business_sign_no = 1175949890103087104,
 buy_channel_no = 'OP',
 supplier_type_no = 104,
 supplier_no = 411805170138410133,
 buy_change_type = '0:0:0',
 goods_type = 2,
 goods_sub_type = 2,
 goods_name = 'EWR-DEN-LAX',
 buyer = 'sys',
 payable = 2787.00,
 payment = 0.00,
 saleorder_price = 0.00,
 buying_time = '2019-09-23 09:47:55',
 pay_status = 1,
 buy_status = 4,
 buy_child_status = 1,
 modifier = 'admin',
 valid = 1,
 transation_order_no = 1175949889989840896
WHERE
	BUY_ORDER_NO = 1175949822797033472


 
# 更新国际销售扩展 IFT_SALE_ORDER_EXT  更新修改人？Modifier?

EXECUTE SQL：UPDATE IFT_SALE_ORDER_EXT
SET ID = 8343,
 OWNER = 8755,
 DEMAND_NO = NULL,
 PNR_NO = NULL,
 LEG_TYPE = 1,
 CONTACT_NAME = 'tudou123',
 CONTACT_PHONE = '',
 CONTACT_MOBILE = '18923880699',
 CONTACT_MAIL = NULL,
 SALE_REMARK = '',
 CUSTOMER_REMARK = '',
 VALID = 1,
 VERSION = 1,
 LOCKER = 1,
 LOCK_TIME = NULL,
 CREATE_TYPE = 2,
 CREATE_TIME = '2019-09-23 09:47:56',
 MODIFY_TIME = NULL,
 CREATOR = 'admin',
 ISSUE_TIME = NULL,
 MODIFIER = 'admin',
 OFFICE = NULL,
 ALONE_LOCKER = 1
WHERE
	SALE_ORDER_NO = 1175949822646038528

# 更新国际销售详情 IFT_SALE_ORDER_DETAIL Status("2");// 设置已核价
 Time：1 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderDetailDao.updateByOrderNo
EXECUTE SQL：update IFT_SALE_ORDER_DETAIL
SET STATUS = '2'
WHERE
	SALE_ORDER_NO = 1175949822646038528

[2019-09-23 09:47:57.286][INFO ][http-nio-8479-exec-2][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 订单核价结束 
[2019-09-23 09:47:57.291][INFO ][http-nio-8479-exec-6][com.tempus.gss.order.service.SaleOrderServiceImpl][?.()] - 销售单updateStatus()参数--> s
# 更新销售单 OS_SALEORDER 修改SaleOrder状态为已核价
 Time：1 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_SALEORDER
SET OWNER = 8755,
 dept_code = '69',
 order_status = 5,
 order_child_status = 2,
 modifier = 'admin'
WHERE
	SALE_ORDER_NO = 1175949822646038528

 

[2019-09-23 09:47:58.486][INFO ][http-nio-8479-exec-3][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 订单查询参数{"agent":{"account":"admin","device":"OP","id":1,"ip":"172.16.51.69","owner":8755,"token":""},"entity":{"airline":"","bookEndDate":"2019-09-23","bookStartDate":"2019-09-16","certificateName":"","createTypeStatusArray":[1,2,3,4,6],"customerCount":false,"customerNo":"","linkType":1,"locker":1,"operator":"","orderSource":"","passenger":"","payStatuss":"3,4","pnr":"","queryType":1,"saleOrderNo":1174998878001311744,"startDate":"","ticketNo":"","travelNo":"","valid":0}} 
[2019-09-23 09:47:58.486][INFO ][http-nio-8479-exec-3][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 查询订单接口开始===== 
[2019-09-23 09:47:58.486][INFO ][http-nio-8479-exec-10][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 查询订单模块（为运营平台订单管理提供服务）结束 
 Time：12 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderExtDao.queryFromSaleQueryOrderVo
 Execute SQL：
SELECT DISTINCT AT
	.STATUS AS APPRV_STATUS,
	AT.TRAVEL_NO,
	f.SALE_ORDER_NO,
	f.ID,
	f.OWNER,
	f.DEMAND_NO,
	f.LEG_TYPE,
	f.CONTACT_NAME,
	f.CONTACT_PHONE,
	f.CONTACT_MOBILE,
	f.CONTACT_MAIL,
	f.SALE_REMARK,
	f.CUSTOMER_REMARK,
	f.VALID,
	f.VERSION,
	f.LOCKER,
	f.LOCK_TIME,
	f.CREATE_TYPE,
	f.CREATE_TIME,
	f.MODIFY_TIME,
	( SELECT NAME FROM SM_USER WHERE LOGIN_NAME = f.CREATOR ) AS CREATOR,
	f.ALONE_LOCKER,
	f.ORDER_TYPE,
	CC.`NAME` CUSTOMER_NAME,
	ab.BUY_LOCKER,
	( SELECT NAME FROM SM_USER WHERE LOGIN_NAME = f.CREATOR ) AS MODIFIER,
	o.ORDER_CHILD_STATUS,
	f.LINKTYPE,
	( SELECT NAME FROM SM_USER WHERE ID = f.LOCKER ) AS HANDLERS,
	f.ORIGINAL_ORDER_NO 
FROM
	IFT_SALE_ORDER_EXT f
	LEFT JOIN OS_SALEORDER o ON f.SALE_ORDER_NO = o.SALE_ORDER_NO
	LEFT JOIN IFT_SALE_ORDER_DETAIL d ON d.SALE_ORDER_NO = f.SALE_ORDER_NO
	LEFT JOIN OS_BUYORDER aa ON f.SALE_ORDER_NO = aa.SALE_ORDER_NO
	LEFT JOIN IFT_BUY_ORDER_EXT ab ON aa.BUY_ORDER_NO = ab.BUY_ORDER_NO
	LEFT JOIN CPS_CUSTOMER CC ON CC.CUSTOMER_NO = o.CUSTOMER_NO
	LEFT JOIN TMS_APPLY_VEHICLE av ON av.ORDER_ID = f.SALE_ORDER_NO
	LEFT JOIN IFT_PASSENGER ip ON ip.SALE_ORDER_NO = f.SALE_ORDER_NO
	LEFT JOIN TMS_APPRV_TASK AT ON AT.LINK_ID = av.LINK_ID 
WHERE
	f.VALID = 1 
	AND DATE_FORMAT( o.ORDERING_TIME, '%Y-%m-%d' ) >= DATE_FORMAT( '2019-09-16', '%Y-%m-%d' ) 
	AND DATE_FORMAT( o.ORDERING_TIME, '%Y-%m-%d' ) <= DATE_FORMAT( '2019-09-23', '%Y-%m-%d' ) 
	AND f.SALE_ORDER_NO = 1174998878001311744 
	AND f.LOCKER != 0 
	AND f.CREATE_TYPE IN ( 1, 2, 3, 4, 6 ) 
	AND o.PAY_STATUS IN ( 3, 4 ) 
ORDER BY
	f.CREATE_TIME DESC

[2019-09-23 09:47:58.500][INFO ][http-nio-8479-exec-3][com.tempus.gss.product.ift.service.OrderServiceImpl][?.()] - 查询订单模块（为运营平台订单管理提供服务）结束 
