select * from orders;

-- customer ���̵�� �ֹ���ȣ, ��۹�ȣ, ������ȣ ��ȸ
select order_num, delivery_num, payment_num
from orders
where customer_id = 'bangry';

-- customer ���̵�� �ֹ���ȣ, ����ּ�, ������, �����ι�ȣ, �䱸����, �ֹ���¥, ��ۿϷ� ��¥ , ��޻���
select delivery_num, delivery_address, delivery_recipient, DELIVERY_RECIPIENT_PHONENUMBER, delivery_requirement, ORDER_DATE, DELIVERY_DATE, DELIVERY_STATUS
from deliveries
where delivery_num = (select delivery_num
                      from orders
                      where customer_id = 'bangry');
                     
-- customer ���̵�� ������ȣ, ���� ����Ʈ, ���� ���, ��������, ���� ����, ���ұݾ�
select payment_num, payment_point, payment_method, PAYMENT_DISCOUNT, payment_origin_cost, DELIVERY_charge, (payment_origin_cost-PAYMENT_DISCOUNT) as "�����ѱݾ�(payed_cost)" 
from payments
where payment_num = (select payment_num
                      from orders
                      where customer_id = 'bangry');  

-- customer ���̵�� ������ȣ, ���� ����Ʈ, ���� ���, ��������, ���� ����, ���ұݾ�
select payment_num, payment_point, payment_method, PAYMENT_DISCOUNT, payment_origin_cost, DELIVERY_charge, (payment_origin_cost-PAYMENT_DISCOUNT) as "�����ѱݾ�(payed_cost)" 
from payments
where payment_num = (select payment_num
                      from orders
                      where customer_id = 'bangry');
                      
                      