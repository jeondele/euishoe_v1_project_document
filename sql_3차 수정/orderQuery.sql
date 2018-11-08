select * from orders;

-- customer 아이디로 주문번호, 배송번호, 결제번호 조회
select order_num, delivery_num, payment_num
from orders
where customer_id = 'bangry';

-- customer 아이디로 주문번호, 배달주소, 수령인, 수령인번호, 요구사항, 주문날짜, 배송완료 날짜 , 배달상태
select delivery_num, delivery_address, delivery_recipient, DELIVERY_RECIPIENT_PHONENUMBER, delivery_requirement, ORDER_DATE, DELIVERY_DATE, DELIVERY_STATUS
from deliveries
where delivery_num = (select delivery_num
                      from orders
                      where customer_id = 'bangry');
                     
-- customer 아이디로 결제번호, 결제 포인트, 결제 방법, 결제할인, 결제 원가, 지불금액
select payment_num, payment_point, payment_method, PAYMENT_DISCOUNT, payment_origin_cost, DELIVERY_charge, (payment_origin_cost-PAYMENT_DISCOUNT) as "지불한금액(payed_cost)" 
from payments
where payment_num = (select payment_num
                      from orders
                      where customer_id = 'bangry');  

-- customer 아이디로 결제번호, 결제 포인트, 결제 방법, 결제할인, 결제 원가, 지불금액
select payment_num, payment_point, payment_method, PAYMENT_DISCOUNT, payment_origin_cost, DELIVERY_charge, (payment_origin_cost-PAYMENT_DISCOUNT) as "지불한금액(payed_cost)" 
from payments
where payment_num = (select payment_num
                      from orders
                      where customer_id = 'bangry');
                      
                      