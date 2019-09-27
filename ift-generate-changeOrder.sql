# gss-ift-change 国际改签- 申请改签 生成改签单
#[14:38:02.606][INFO ] 调用国际改签接口开始:2019-09-24 14:38:02:
/*
{
    "saleOrderNo": 1175948855523422200,
    "oldPassengerNoList": [
        1175948855670222800
    ],
    "oldLegNoList": [
        1175948855536005000,
        1175948855573753900,
        1175948855598919700
    ],
    "legList": [
        {
            "flightNo": "UA1801",
            "depAirport": "EWR",
            "arrAirport": "DEN",
            "depTime": "Sep 26, 2019 5:00:00 AM",
            "arrTime": "Sep 26, 2019 7:08:00 AM",
            "goBack": 1,
            "cabin": "E"
        },
        {
            "flightNo": "UA1093",
            "depAirport": "DEN",
            "arrAirport": "LAX",
            "depTime": "Sep 26, 2019 7:50:00 AM",
            "arrTime": "Sep 26, 2019 9:19:00 AM",
            "goBack": 1,
            "cabin": "E"
        },
        {
            "flightNo": "UA378",
            "depAirport": "LAX",
            "arrAirport": "HNL",
            "depTime": "Oct 2, 2019 3:15:00 PM",
            "arrTime": "Oct 2, 2019 11:31:00 PM",
            "goBack": 2,
            "cabin": "T"
        }
    ],
    "changeReason": "test",
    "contactName": "董生升",
    "contactPhone": "18923880699",
    "outBookOrderNo": ""
}
*/

- 申请改签单开始========= 
Time：1342 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderExtDao.selectByPrimaryKey
 Execute SQL：select SALE_ORDER_NO, ID, OWNER, DEMAND_NO, LEG_TYPE, CONTACT_NAME, CONTACT_PHONE, CONTACT_MOBILE, CONTACT_MAIL, SALE_REMARK,CUSTOMER_REMARK, VALID, VERSION, LOCKER, LOCK_TIME, CREATE_TYPE, CREATE_TIME, MODIFY_TIME, CREATOR, MODIFIER, ISSUE_TIME, ORIGINAL_ORDER_NO, LINKNO, LINKTYPE, CURRENCY, SALE_CURRENCY,EXCHANGE_RATE,DRAWER_LOGIN_NAME,OFFICE,ALONE_LOCKER,IS_CIVIL_ORDER,BOOK_PERSONER_NAME, OUT_BOOK_ORDER_NO,ORDER_TYPE,IFNULL(`IS_AUTO_DISTRIBUTE`,0) as IS_AUTO_DISTRIBUTE,TEAM_ORDER_NO from IFT_SALE_ORDER_EXT where SALE_ORDER_NO = 1176075187435614208 AND VALID=1

# //查询出所有的销售变更单对应的生成的saleOrderDetail全部添加到saleOrderDetailList中
#saleOrderDetailList = saleOrderExt.getSaleOrderDetailList();

Time：28 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.selectList
 Execute SQL：SELECT SALE_CHANGE_NO AS saleChangeNo,owner AS owner,business_sign_no AS businessSignNo,transation_order_no AS transationOrderNo,sale_order_no AS saleOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,amount AS amount,discount_amount AS discountAmount,plan_amount AS planAmount,actual_amount AS actualAmount,pay_status AS payStatus,status AS status,child_status AS childStatus,change_reason AS changeReason,keep_seat AS keepSeat,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_SALECHANGE WHERE sale_order_no=1176075187435614208 AND valid=1 ORDER BY CREATE_TIME DESC

#/*修改需要改签的人+航段信息*/
# 判断详情单状态 saleOrderDetail.getStatus 是否已出票，是否已改签

#将状态修改为改签状态

Time：107 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderDetailDao.updateByPrimaryKeySelective
EXECUTE SQL：update IFT_SALE_ORDER_DETAIL
SET ID = 27361,
 OWNER = 8755,
 SALE_ORDER_NO = 1176075187435614208,
 PASSENGER_NO = 1176075187477557248,
 CABIN = 'V',
 LEG_NO = 1176075187439808512,
 FARE = 2440.0000,
 TAX = 347.0000,
 BROKERAGE = 0.0000,
 AGENCY_FEE = 0.0000,
 REBATE = 0.0000,
 AWARD_PRICE = 2440.0000,
 TICKET_NO = '969-9655254125',
 IS_CHANGE = FALSE,
 CREATOR = 'admin',
 CREATE_TIME = '2019-09-23 18:05:49',
 STATUS = '10',
 VALID = 1,
 DEPT_PROFIT = 0.00,
 PROFIT = 0.00
WHERE
	SALE_ORDER_DETAIL_NO = 1176075187762769920
# 添加旧改签单明细
Time：171 ms - ID：com.tempus.gss.product.ift.dao.SaleChangeDetailDao.insertSelective
EXECUTE SQL：insert INTO IFT_SALE_CHANGE_DETAIL (
	SALE_CHANGE_DETAIL_NO,
	OWNER,
	SALE_CHANGE_NO,
	BUY_CHANGE_NO,
	SALE_ORDER_DETAIL_NO,
	ORDER_DETAIL_TYPE,
	CREATOR,
	CREATE_TIME,
	VALID
)
VALUES
	(
		1176389138836885504,
		8755,
		1176387917585584128,
		1176387921305931776,
		1176075187762769920,
		1,#改签的销售明细类型.1:被改掉的（旧的）航段.*2:新增的航段.'
		'admin',
		'2019-09-24 14:48:46',
		1
	)
# 重复上两步骤
Time：107 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderDetailDao.updateByPrimaryKeySelective
 Execute SQL：update IFT_SALE_ORDER_DETAIL SET ID = 27362, OWNER = 8755, SALE_ORDER_NO = 1176075187435614208, PASSENGER_NO = 1176075187477557248, CABIN = 'V', LEG_NO = 1176075187460780032, FARE = 2440.0000, TAX = 347.0000, BROKERAGE = 0.0000, AGENCY_FEE = 0.0000, REBATE = 0.0000, AWARD_PRICE = 2440.0000, TICKET_NO = '969-9655254124', IS_CHANGE = false, CREATOR = 'admin', CREATE_TIME = '2019-09-23 18:05:49', STATUS = '10', VALID = 1, DEPT_PROFIT = 0.00, PROFIT = 0.00 where SALE_ORDER_DETAIL_NO = 1176075187779547136

 Time：171 ms - ID：com.tempus.gss.product.ift.dao.SaleChangeDetailDao.insertSelective
 Execute SQL：insert into IFT_SALE_CHANGE_DETAIL ( SALE_CHANGE_DETAIL_NO, OWNER, SALE_CHANGE_NO, BUY_CHANGE_NO, SALE_ORDER_DETAIL_NO, ORDER_DETAIL_TYPE, CREATOR, CREATE_TIME, VALID ) values ( 1176389299541643264, 8755, 1176387917585584128, 1176387921305931776, 1176075187779547136, 1, 'admin', '2019-09-24 14:48:46', 1 )

# /*新增改签航段*/
#leg.setChildSection(1);//改签过的航段
Time：404 ms - ID：com.tempus.gss.product.ift.dao.LegDao.insertSelective
EXECUTE SQL：insert INTO IFT_LEG (
	LEG_NO,
	OWNER,
	SALE_ORDER_NO,
	AIRLINE,
	FLIGHT_NO,
	DEP_AIRPORT,
	ARR_AIRPORT,
	DEP_TIME,
	ARR_TIME,
	PARENT_SECTION,
	CHILD_SECTION,
	GO_BACK,
	VALID,
	STATUS,
	CREATOR,
	CREATE_TIME,
	CABIN
)
VALUES
	(
		1176389454642810880,
		8755,
		1176075187435614208,
		'UA',
		'1801',
		'EWR',
		'DEN',
		'2019-09-26 05:00:00',
		'2019-09-26 07:08:00',
		0,
		1,
		1,
		1,
		'1',
		'admin',
		'2019-09-24 14:48:46',
		'V'
	)
Time：407 ms - ID：com.tempus.gss.product.ift.dao.LegDao.insertSelective
 Execute SQL：insert into IFT_LEG ( LEG_NO, OWNER, SALE_ORDER_NO, AIRLINE, FLIGHT_NO, DEP_AIRPORT, ARR_AIRPORT, DEP_TIME, ARR_TIME, PARENT_SECTION, CHILD_SECTION, GO_BACK, VALID, STATUS, CREATOR, CREATE_TIME, CABIN ) values ( 1176389607219007488, 8755, 1176075187435614208, 'UA', '1196', 'DEN', 'FRA', '2019-09-26 09:25:00', '2019-09-26 10:58:00', 1, 1, 1, 1, '1', 'admin', '2019-09-24 14:48:46', 'V' )
/*新增人+航段行程*/
# 生成国际销售明细
Time：309 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderDetailDao.insertSelective
EXECUTE SQL：insert INTO IFT_SALE_ORDER_DETAIL (
	SALE_ORDER_DETAIL_NO,
	OWNER,
	SALE_ORDER_NO,
	PASSENGER_NO,
	LEG_NO,
	CABIN,
	IS_CHANGE,
	CREATOR,
	CREATE_TIME,
	STATUS,
	VALID
)
VALUES
	(
		1176389625774608384,
		8755,
		1176387917585584128,
		1176075187477557248,
		1176389454642810880,
		'V',
		TRUE,
		'admin',
		'2019-09-24 14:48:46',
		'1',
		1
	) #//添加新改签单明细
Time：173 ms - ID：com.tempus.gss.product.ift.dao.SaleChangeDetailDao.insertSelective
EXECUTE SQL：insert INTO IFT_SALE_CHANGE_DETAIL (
	SALE_CHANGE_DETAIL_NO,
	OWNER,
	SALE_CHANGE_NO,
	BUY_CHANGE_NO,
	SALE_ORDER_DETAIL_NO,
	ORDER_DETAIL_TYPE,
	CREATOR,
	CREATE_TIME,
	VALID
)
VALUES
	(
		1176390227116167168,
		8755,
		1176387917585584128,
		1176387921305931776,
		1176389625774608384,
		2,#改签的销售明细类型.1:被改掉的（旧的）航段.*2:新增的航段.',
		'admin',
		'2019-09-24 14:48:46',
		1
	) # LOOP
 Time：308 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderDetailDao.insertSelective
 Execute SQL：insert into IFT_SALE_ORDER_DETAIL ( SALE_ORDER_DETAIL_NO, OWNER, SALE_ORDER_NO, PASSENGER_NO, LEG_NO, CABIN, IS_CHANGE, CREATOR, CREATE_TIME, STATUS, VALID ) values ( 1176390542443941888, 8755, 1176387917585584128, 1176075187477557248, 1176389607219007488, 'V', true, 'admin', '2019-09-24 14:48:46', '1', 1 )

 Time：172 ms - ID：com.tempus.gss.product.ift.dao.SaleChangeDetailDao.insertSelective
 Execute SQL：insert into IFT_SALE_CHANGE_DETAIL ( SALE_CHANGE_DETAIL_NO, OWNER, SALE_CHANGE_NO, BUY_CHANGE_NO, SALE_ORDER_DETAIL_NO, ORDER_DETAIL_TYPE, CREATOR, CREATE_TIME, VALID ) values ( 1176390570130542592, 8755, 1176387917585584128, 1176387921305931776, 1176390542443941888, 2, 'admin', '2019-09-24 14:48:46', 1 )

/*通过编号查询出销售单*/

Time：4 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE SALE_ORDER_NO=1176075187435614208

 Time：1 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,customer_no_name AS customerNoName,customer_type_name AS customerTypeName,TICKETNOS AS ticketNos FROM OS_SALEORDER_EXTEND WHERE SALE_ORDER_NO=1176075187435614208
/*创建销售改签单*/
# 获得销售单
 Time：200 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE SALE_ORDER_NO=1176075187435614208

 Time：108 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,customer_no_name AS customerNoName,customer_type_name AS customerTypeName,TICKETNOS AS ticketNos FROM OS_SALEORDER_EXTEND WHERE SALE_ORDER_NO=1176075187435614208
#销售单要存在

[2019-09-24 15:03:25.904][INFO ][http-nio-8479-exec-4][com.tempus.gss.order.service.SaleChangeServiceImpl][?.()] - 销售变更单create()参数--> 开始创建销售 变更单.... 
# 创建销售变更单 
Time：181 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.insertSelective
EXECUTE SQL：INSERT INTO OS_SALECHANGE (
	SALE_CHANGE_NO,
	OWNER,
	business_sign_no,
	transation_order_no,
	sale_order_no,
	dept_code,
	order_change_type,
	income_expense_type,
	plan_amount,
	actual_amount,
	child_status,
	change_reason,
	create_time,
	modifier,
	goods_type,
	goods_sub_type,
	goods_name,
	bsign_type
)
VALUES
	(
		1176387917585584128,
		8755,
		1176387987299192832,
		1176075187406254080,
		1176075187435614208,
		'69',
		3,
		1,
		0,
		0,
		1,
		'test',
		'2019-09-24 14:48:46',
		'admin',
		2,
		13,
		'',
		5
	)
--  根据变更单的变更类型，修改销售单的变更类型 saleOrder.getOrderChangeType 0:0:0  entity.getOrderChangeType 3--
 # 只更新saleOrder的OrderChangeType字段, 其他字段不要更新

 Time：334 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_SALEORDER
SET OWNER = 8755,
 order_change_type = '0:0:1',
 modifier = 'admin'
WHERE
	SALE_ORDER_NO = 1176075187435614208 
#销售变更单创建成功的同时，插入一条对应的数据到销售变更单扩展表里

Time：117 ms - ID：com.tempus.gss.order.dao.SaleChangeExtendMapper.insertSelective
EXECUTE SQL：INSERT INTO OS_SALECHANGE_EXTEND (
	SALE_CHANGE_NO,
	settlement_status,
	match_status,
	clearance_status,
	customer_type_no,
	customer_type_name,
	customer_no,
	customer_no_name
)
VALUES
	(
		1176387917585584128,
		1,
		1,
		1,
		301,
		'分销商',
		401703040743530784,
		'18923880699'
	)
/*创建销售改签单拓展*/
	#多次改签
	#获取上次改签的pnr 编码 以及供应商
Time：486 ms - ID：com.tempus.gss.product.ift.dao.SaleChangeExtDao.insertSelective
EXECUTE SQL：insert INTO IFT_SALE_CHANGE_EXT (
	SALE_CHANGE_NO,
	OWNER,
	STATUS,
	VALID,
	CREATE_TIME,
	CREATOR,
	LOCKER,
	CHANGE_TYPE,
	CONTACT_NAME,
	CONTACT_MOBILE,
	CUSTOMER_REMARK,
	AIRLINE_STATUS,
	CUSTOMER_NO,
	CUSTOMER_TYPE_NO,
	ALONE_LOCKER,
	OUT_BOOK_ORDER_NO
)
VALUES
	(
		1176410267735560192,
		8755,
		'1',
		1,
		'2019-09-24 16:17:36',
		'admin',
		1,
		3,
		'董生升',
		'18923880699',
		'test',
		1,
		401703040743530784,
		301,
		1,
		''
	)
#//销售改签分单（如果该单不是OP下单才会执行分单）
# 发送通知？ gss-ift-websocket-exchange
#/*创建采购改签单*/
[2019-09-24 16:27:11.268][INFO ][http-nio-8479-exec-3][com.tempus.gss.order.service.BuyChangeServiceImpl][?.()] - 采购变更单create()-->开始创建采购变更单.... 
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.insertSelective
EXECUTE SQL：INSERT INTO OS_BUYCHANGE (
	BUY_CHANGE_NO,
	OWNER,
	business_sign_no,
	buy_order_no,
	order_change_type,
	income_expense_type,
	plan_amount,
	actual_amount,
	child_status,
	create_time,
	modifier,
	goods_type,
	goods_sub_type,
	goods_name,
	bsign_type
)
VALUES
	(
		1176412094988292096,
		8755,
		1176412169634402304,
		1176409767732580352,
		3,
		2,
		0,
		0,
		1,
		'2019-09-24 16:27:11',
		'admin',
		2,
		23,
		'',
		3
	) #// 根据变更单的变更类型，修改采购单的变更类型
Time：1 ms - ID：com.tempus.gss.order.dao.BuyOrderMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_BUYORDER
SET OWNER = 8755,
 sale_order_no = 1176409767678054400,
 bsign_type = 1,
 business_sign_no = 1176409767678054401,
 buy_channel_no = 'OP',
 dept_code = '69',
 supplier_type_no = 104,
 supplier_no = 411805170138410133,
 buy_change_type = '0:0:1',
 goods_type = 2,
 goods_sub_type = 2,
 goods_name = 'LAX-ORD-LGA',
 buyer = 'sys',
 payable = 2820.00,
 payment = 0.00,
 saleorder_price = 0.00,
 buying_time = '2019-09-24 16:15:36',
 pay_status = 1,
 buy_status = 5,
 buy_child_status = 3,
 modify_time = '2019-09-24 16:15:43',
 modifier = 'admin',
 valid = 1,
 transation_order_no = 1176409767661277184
WHERE
	BUY_ORDER_NO = 1176409767732580352 # 采购变更单入库后，采购变更单扩展表也入库一条数据
Time：2 ms - ID：com.tempus.gss.order.dao.BuyChangeExtendMapper.insertSelective
EXECUTE SQL：INSERT INTO OS_BUYCHANGE_EXTEND (
	BUY_CHANGE_NO,
	settlement_status,
	match_status,
	clearance_status,
	supplier_type_no,
	supplier_no
)
VALUES
	(
		1176412094988292096,
		1,
		1,
		1,
		104,
		411805170138410133
	)
/*创建采购改签单拓展*/
Time：125 ms - ID：com.tempus.gss.product.ift.dao.BuyChangeExtDao.insertSelective
EXECUTE SQL：insert INTO IFT_BUY_CHANGE_EXT (
	BUY_CHANGE_NO,
	OWNER,
	TICKET_TYPE,
	CREATE_TIME,
	VALID
)
VALUES
	(
		1176412094988292096,
		8755,
		'BSP',
		'2019-09-24 16:24:52',
		1
	)
# log.info("申请改签单结束=========");