#国际机票 申请退票
 - 采购变更单create()-->BuyChange [buyChangeNo=1177021803365789696, owner=8755, businessSignNo=1177020422057529344, buyOrderNo=1176411751231524864, deptCode=null, orderChangeType=2, incomeExpenseType=1, planAmount=null, actualAmount=null, changeReason=null, payStatus=null, status=null, childStatus=1, createTime=Thu Sep 26 08:41:50 CST 2019, modifyTime=null, modifier=null, goodsType=2, goodsSubType=22, goodsName=, pcount=null, valid=null, bsignType=4, haveDifference=null, differenceTotalAmount=null] 
 - 采购单getBOrderByBONo()-->buyOrderNo:1176411751231524864 
 Time：3 ms - ID：com.tempus.gss.order.dao.BuyOrderMapper.selectOne
 Execute SQL：SELECT BUY_ORDER_NO AS buyOrderNo,owner AS owner,sale_order_no AS saleOrderNo,bsign_type AS bsignType,business_sign_no AS businessSignNo,buy_channel_no AS buyChannelNo,dept_code AS deptCode,supplier_type_no AS supplierTypeNo,supplier_no AS supplierNo,buy_change_type AS buyChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,buyer AS buyer,pcount AS pcount,payable AS payable,payment AS payment,saleorder_price AS saleorderPrice,buying_time AS buyingTime,pay_status AS payStatus,buy_status AS buyStatus,buy_child_status AS buyChildStatus,modify_time AS modifyTime,modifier AS modifier,valid AS valid,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,transation_order_no AS transationOrderNo FROM OS_BUYORDER WHERE BUY_ORDER_NO=1176411751231524864

 - 采购变更单create()-->开始创建采购变更单.... 
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
		1177021803365789696,
		8755,
		1177020422057529344,
		1176411751231524864,
		2,
		1,
		0,
		0,
		1,
		'2019-09-26 08:53:57',
		'admin',
		2,
		22,
		'',
		4
	)
- 采购变更单create()-->创建采购变更单后，修改采购单的变更类型.... 
- 采购单update() 参数：BuyOrder [buyOrderNo=1176411751231524864, owner=8755, saleOrderNo=1176411751164416000, bsignType=1, businessSignNo=1176411751164416001, buyChannelNo=OP, deptCode=69, supplierTypeNo=104, supplierNo=411805170138410133, supplierName=null, buyChangeType=0:1:1, goodsType=2, goodsSubType=2, goodsName=EWR-CLT-LAX, buyer=sys, pcount=null, payable=2810.00, payment=0.00, saleorderPrice=0.00, buyingTime=Tue Sep 24 16:23:29 CST 2019, payStatus=1, buyStatus=5, buyChildStatus=3, modifyTime=Tue Sep 24 16:23:43 CST 2019, modifier=admin, valid=1, haveDifference=null, differenceTotalAmount=null, transationOrderNo=1176411751139250176, ticketNos=null] 
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyOrderExtendMapper.selectOne
 Execute SQL：SELECT BUY_ORDER_NO AS buyOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,supplier_type_name AS supplierTypeName,supplier_no_name AS supplierNoName,TICKETNOS AS ticketNos FROM OS_BUYORDER_EXTEND WHERE BUY_ORDER_NO=1176411751231524864

 Time：2 ms - ID：com.tempus.gss.order.dao.BuyOrderMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_BUYORDER
SET OWNER = 8755,
 sale_order_no = 1176411751164416000,
 bsign_type = 1,
 business_sign_no = 1176411751164416001,
 buy_channel_no = 'OP',
 dept_code = '69',
 supplier_type_no = 104,
 supplier_no = 411805170138410133,
 buy_change_type = '0:1:1',
 goods_type = 2,
 goods_sub_type = 2,
 goods_name = 'EWR-CLT-LAX',
 buyer = 'sys',
 payable = 2810.00,
 payment = 0.00,
 saleorder_price = 0.00,
 buying_time = '2019-09-24 16:23:29',
 pay_status = 1,
 buy_status = 5,
 buy_child_status = 3,
 modify_time = '2019-09-24 16:23:43',
 modifier = 'admin',
 valid = 1,
 transation_order_no = 1176411751139250176
WHERE
	BUY_ORDER_NO = 1176411751231524864
 Time：3 ms - ID：com.tempus.gss.order.dao.BuyOrderMapper.selectById
 Execute SQL：SELECT BUY_ORDER_NO AS buyOrderNo,owner AS owner,sale_order_no AS saleOrderNo,bsign_type AS bsignType,business_sign_no AS businessSignNo,buy_channel_no AS buyChannelNo,dept_code AS deptCode,supplier_type_no AS supplierTypeNo,supplier_no AS supplierNo,buy_change_type AS buyChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,buyer AS buyer,pcount AS pcount,payable AS payable,payment AS payment,saleorder_price AS saleorderPrice,buying_time AS buyingTime,pay_status AS payStatus,buy_status AS buyStatus,buy_child_status AS buyChildStatus,modify_time AS modifyTime,modifier AS modifier,valid AS valid,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,transation_order_no AS transationOrderNo FROM OS_BUYORDER WHERE BUY_ORDER_NO=1176411751231524864

 - 采购变更单create()-->创建采购变更单后，入库一条采购变更单扩展信息.... 
 Time：2 ms - ID：com.tempus.gss.order.dao.BuyOrderExtendMapper.selectOne
 Execute SQL：SELECT BUY_ORDER_NO AS buyOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,supplier_type_name AS supplierTypeName,supplier_no_name AS supplierNoName,TICKETNOS AS ticketNos FROM OS_BUYORDER_EXTEND WHERE BUY_ORDER_NO=1177021803365789696

 Time：4 ms - ID：com.tempus.gss.order.dao.BuyChangeExtendMapper.insertSelective
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
		1177021803365789696,
		1,
		1,
		1,
		104,
		411805170138410133
	)
 Time：3 ms - ID：com.tempus.gss.order.dao.BuyChangeMapper.selectById
 Execute SQL：SELECT BUY_CHANGE_NO AS buyChangeNo,owner AS owner,business_sign_no AS businessSignNo,buy_order_no AS buyOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,plan_amount AS planAmount,actual_amount AS actualAmount,change_reason AS changeReason,pay_status AS payStatus,status AS status,child_status AS childStatus,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_BUYCHANGE WHERE BUY_CHANGE_NO=1177021803365789696
#创建销售废退明细
Time：164 ms - ID：com.tempus.gss.product.ift.dao.SaleChangeDetailDao.insertSelective
EXECUTE SQL：insert INTO IFT_SALE_CHANGE_DETAIL (
	SALE_CHANGE_DETAIL_NO,
	OWNER,
	SALE_CHANGE_NO,
	BUY_CHANGE_NO,
	SALE_ORDER_DETAIL_NO,
	CREATOR,
	CREATE_TIME,
	VALID
)
VALUES
	(
		1177026551812845568,
		8755,
		1177020519761965056,
		1177021803365789696,
		1176414614653505536,
		'admin',
		'2019-09-26 08:41:50',
		1
	)

# 创建销售变更
 - 销售变更单create()参数-->SaleChange{saleChangeNo=1177020519761965056, owner=8755, businessSignNo=1177020422057529344, transationOrderNo=1176411751139250176, saleOrderNo=1176411751164416000, deptCode='69', orderChangeType=2, incomeExpenseType=2, amount=null, discountAmount=null, planAmount=null, actualAmount=null, payStatus=null, status=null, childStatus=1, changeReason='客人自愿按照客规', createTime=Thu Sep 26 08:41:50 CST 2019, modifyTime=null, modifier='null', goodsType=2, goodsSubType=12, goodsName='', pcount=null, valid=null, bsignType=3, haveDifference=null, differenceTotalAmount=null, keepSeat=null} 
 Time：13 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE SALE_ORDER_NO=1176411751164416000

 Time：8 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,customer_no_name AS customerNoName,customer_type_name AS customerTypeName,TICKETNOS AS ticketNos FROM OS_SALEORDER_EXTEND WHERE SALE_ORDER_NO=1176411751164416000

 - SaleOrder [saleOrderNo=1176411751164416000, externalNumber=null, owner=8755, transationOrderNo=1176411751139250176, businessSignNo=1176411751164416001, deptCode=69, orderType=1, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, mainOrderNo=null, attachedType=null, orderChangeType=0:0:1, goodsType=2, goodsSubType=1, goodsName=EWR-CLT-LAX, pcount=null, amount=0.00, discountAmount=0.00, receivable=2810.00, received=2810.00, buyorderPrice=null, orderingTime=Tue Sep 24 16:23:12 CST 2019, payStatus=4, orderStatus=5, orderChildStatus=4, modifyTime=null, actorUser=null, modifier=admin, valid=1, contacts=null, mobile=null, bsignType=1, haveDifference=null, differenceTotalAmount=null] 
- 销售变更单create()参数--> 开始创建销售 变更单.... 
 Time：7 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.insertSelective
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
		1177020519761965056,
		8755,
		1177020422057529344,
		1176411751139250176,
		1176411751164416000,
		'69',
		2,
		2,
		0,
		0,
		1,
		'客人自愿按照客规',
		'2019-09-26 08:41:50',
		'admin',
		2,
		12,
		'',
		3
	)
 - 销售变更单create()参数-->销售订单参数为：SaleOrder [saleOrderNo=1176411751164416000, externalNumber=null, owner=8755, transationOrderNo=1176411751139250176, businessSignNo=1176411751164416001, deptCode=69, orderType=1, sourceChannelNo=OP, customerTypeNo=301, customerNo=401703040743530784, customerName=null, orderingLoginName=admin, mainOrderNo=null, attachedType=null, orderChangeType=0:0:1, goodsType=2, goodsSubType=1, goodsName=EWR-CLT-LAX, pcount=null, amount=0.00, discountAmount=0.00, receivable=2810.00, received=2810.00, buyorderPrice=null, orderingTime=Tue Sep 24 16:23:12 CST 2019, payStatus=4, orderStatus=5, orderChildStatus=4, modifyTime=null, actorUser=null, modifier=admin, valid=1, contacts=null, mobile=null, bsignType=1, haveDifference=null, differenceTotalAmount=null] 
- 销售变更单create()参数--> 根据变更单的变更类型，修改销售单的变更类型.... 
- 销售单update()更新参数为-->SaleOrder [saleOrderNo=1176411751164416000, externalNumber=null, owner=null, transationOrderNo=null, businessSignNo=null, deptCode=null, orderType=null, sourceChannelNo=null, customerTypeNo=null, customerNo=null, customerName=null, orderingLoginName=null, mainOrderNo=null, attachedType=null, orderChangeType=0:1:1, goodsType=null, goodsSubType=null, goodsName=null, pcount=null, amount=null, discountAmount=null, receivable=null, received=null, buyorderPrice=null, orderingTime=null, payStatus=null, orderStatus=null, orderChildStatus=null, modifyTime=null, actorUser=null, modifier=null, valid=null, contacts=null, mobile=null, bsignType=null, haveDifference=null, differenceTotalAmount=null] 
 Time：6 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.updateSelectiveById
EXECUTE SQL：UPDATE OS_SALEORDER
SET OWNER = 8755,
 order_change_type = '0:1:1',
 modifier = 'admin'
WHERE
	SALE_ORDER_NO = 1176411751164416000
 Time：8 ms - ID：com.tempus.gss.order.dao.SaleOrderMapper.selectById
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,owner AS owner,transation_order_no AS transationOrderNo,business_sign_no AS businessSignNo,dept_code AS deptCode,order_type AS orderType,source_channel_no AS sourceChannelNo,customer_type_no AS customerTypeNo,customer_no AS customerNo,ordering_login_name AS orderingLoginName,main_order_no AS mainOrderNo,attached_type AS attachedType,order_change_type AS orderChangeType,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,amount AS amount,discount_amount AS discountAmount,receivable AS receivable,received AS received,buyorder_price AS buyorderPrice,ordering_time AS orderingTime,pay_status AS payStatus,order_status AS orderStatus,order_child_status AS orderChildStatus,modify_time AS modifyTime,actor_user AS actorUser,modifier AS modifier,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount,isviolation AS isviolation,violation AS violation FROM OS_SALEORDER WHERE SALE_ORDER_NO=1176411751164416000

[2019-09-26 09:11:56.128][INFO ][http-nio-8479-exec-6][com.tempus.gss.order.service.SaleChangeServiceImpl][?.()] - 销售变更单create()参数--> 插入数据到销售变更单扩展表里.... 
 Time：4 ms - ID：com.tempus.gss.order.dao.SaleOrderExtendMapper.selectOne
 Execute SQL：SELECT SALE_ORDER_NO AS saleOrderNo,external_number AS externalNumber,settlement_status AS settlementStatus,match_status AS matchStatus,check_way AS checkWay,check_result AS checkResult,clearance_status AS clearanceStatus,certificate_no AS certificateNo,pay_way AS payWay,third_pay_no AS thirdPayNo,third_bus_no AS thirdBusNo,third_amount AS thirdAmount,profit AS profit,clearance_amount AS clearanceAmount,customer_no_name AS customerNoName,customer_type_name AS customerTypeName,TICKETNOS AS ticketNos FROM OS_SALEORDER_EXTEND WHERE SALE_ORDER_NO=1176411751164416000

 Time：4 ms - ID：com.tempus.gss.order.dao.SaleChangeExtendMapper.insertSelective
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
		1177020519761965056,
		1,
		1,
		1,
		301,
		'分销商',
		401703040743530784,
		'18923880699'
	)
 Time：4 ms - ID：com.tempus.gss.order.dao.SaleChangeMapper.selectById
 Execute SQL：SELECT SALE_CHANGE_NO AS saleChangeNo,owner AS owner,business_sign_no AS businessSignNo,transation_order_no AS transationOrderNo,sale_order_no AS saleOrderNo,dept_code AS deptCode,order_change_type AS orderChangeType,income_expense_type AS incomeExpenseType,amount AS amount,discount_amount AS discountAmount,plan_amount AS planAmount,actual_amount AS actualAmount,pay_status AS payStatus,status AS status,child_status AS childStatus,change_reason AS changeReason,keep_seat AS keepSeat,create_time AS createTime,modify_time AS modifyTime,modifier AS modifier,goods_type AS goodsType,goods_sub_type AS goodsSubType,goods_name AS goodsName,pcount AS pcount,valid AS valid,bsign_type AS bsignType,have_difference AS haveDifference,difference_total_amount AS differenceTotalAmount FROM OS_SALECHANGE WHERE SALE_CHANGE_NO=1177020519761965056

# 插入国际销售变更扩展
Time：427 ms - ID：com.tempus.gss.product.ift.dao.SaleChangeExtDao.insertSelective
EXECUTE SQL：insert INTO IFT_SALE_CHANGE_EXT (
	SALE_CHANGE_NO,
	OWNER,
	REFUND_WAY,
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
		1177020519761965056,
		8755,
		1,
		1,
		'2019-09-26 08:41:50',
		'admin',
		1,
		2,
		'tudou123',
		'18923880699',
		'test',
		1,
		401703040743530784,
		301,
		1,
		''
	)
#创建采购变更单扩展表
 - 创建采购变更单扩展表BuyChangeExt{id=null, buyChangeNo=1177021803365789696, buyChange=null, orderChangeType=null, owner=8755, office='', ticketType='BSP', refuseReason='null', pnrList=null, creator='admin', createTime=Thu Sep 26 08:41:50 CST 2019, modifier='null', modifyTime=null, valid=1, status='1', changeRemark='null', airLineRefundStatus=0, buyLocker=1} 
 Time：182 ms - ID：com.tempus.gss.product.ift.dao.BuyChangeExtDao.insertSelective
EXECUTE SQL：insert INTO IFT_BUY_CHANGE_EXT (
	BUY_CHANGE_NO,
	OWNER,
	OFFICE,
	TICKET_TYPE,
	CREATOR,
	CREATE_TIME,
	VALID,
	STATUS,
	BUY_LOCKER
)
VALUES
	(
		1177021803365789696,
		8755,
		'',
		'BSP',
		'admin',
		'2019-09-26 08:41:50',
		1,
		'1',
		1
	)
# 修改销售单明细，设置 status 为 已退/已废
 Time：90 ms - ID：com.tempus.gss.product.ift.dao.SaleOrderDetailDao.updateByPrimaryKeySelective
 Execute SQL：update IFT_SALE_ORDER_DETAIL SET ID = 27404, OWNER = 8755, SALE_ORDER_NO = 1176414614481539072, PASSENGER_NO = 1176411751223136256, CABIN = 'L', LEG_NO = 1176414614628339712, TICKET_NO = '188-6632252369', IS_CHANGE = true, MODIFIER = 'admin', MODIFY_TIME = '2019-09-26 08:32:59', CREATOR = 'admin', CREATE_TIME = '2019-09-24 16:34:53', STATUS = '8', VALID = 1 where SALE_ORDER_DETAIL_NO = 1176414614653505536

#创建废退乘机人价格表
 Time：283 ms - ID：com.tempus.gss.product.ift.dao.PassengerRefundPriceDao.insertSelective
EXECUTE SQL：insert INTO IFT_PASSENGER_REFUND_PRICE (
	PASSENGER_REFUND_PRICE_NO,
	OWNER,
	SALE_ORDER_NO,
	SALE_CHANGE_NO,
	PASSENGER_NO,
	PASSENGER_TYPE,
	VALID,
	STATUS,
	CREATOR,
	CREATE_TIME
)
VALUES
	(
		1177033780158918656,
		8755,
		1176411751164416000,
		1177020519761965056,
		1176411751223136256,
		'ADT',
		1,
		'1',
		'admin',
		'2019-09-26 08:41:50'
	)