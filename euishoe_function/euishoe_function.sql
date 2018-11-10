select * from products;
select * from product_infos;
select * from reviews;

--��ǰ����¡ó�� �׽�Ʈ
--SELECT product_num, 
--       product_list_num, 
--       product_name, 
--       product_list_price, 
--       product_brief_information, 
--       product_manufacturer, 
--       product_release_date, 
--       product_origin, 
--       color_code, 
--       product_hitcount 
--FROM   (SELECT CEIL(rownum / 1) request_page, 
--               product_num, 
--               product_list_num, 
--               product_name, 
--               product_list_price, 
--               product_brief_information, 
--               product_manufacturer, 
--               product_release_date, 
--               product_origin, 
--               color_code, 
--               product_hitcount 
--        FROM   (SELECT product_num, 
--                       product_list_num, 
--                       product_name, 
--                       product_list_price, 
--                       product_brief_information, 
--                       product_manufacturer, 
--                       product_release_date, 
--                       product_origin, 
--                       color_code, 
--                       product_hitcount 
--                FROM   product_infos
--                where  product_list_num is not null)) 
--WHERE  request_page =3; 

--��ǰ����¡ó��  ���!!!
SELECT product_num, 
       product_list_num, 
       product_name, 
       product_list_price, 
       product_brief_information, 
       product_manufacturer, 
       product_release_date, 
       product_origin, 
       color_code, 
       product_hitcount,
       star_score 
FROM   (SELECT CEIL(rownum / 1) request_page, 
               product_num, 
               product_list_num, 
               product_name, 
               product_list_price, 
               product_brief_information, 
               product_manufacturer, 
               product_release_date, 
               product_origin, 
               color_code, 
               product_hitcount, 
               star_score
        FROM   (SELECT pi.product_num, 
       product_list_num, 
       product_name, 
       product_list_price, 
       product_brief_information, 
       product_manufacturer, 
       product_release_date, 
       product_origin, 
       color_code, 
       product_hitcount, 
       rs.avg_score star_score 
FROM   product_infos pi 
       left outer join (SELECT p.product_num, 
                               Avg(r.review_score) avg_score 
                        FROM   reviews r 
                               join products p 
                                 ON r.product_num = p.product_num 
                        GROUP  BY p.product_num) rs 
                    ON pi.product_num = rs.product_num 
WHERE  product_list_num IS NOT NULL)) 
WHERE  request_page =1; 










--no.8 ��ǰ����Ʈ�� �ö�� �ִ� ��ǰ�� �߿� ��ǰ���� ���� ������ �˻� (�������� ���� ����)
-- ��ǰ��ȣ, ��ǰ�۹�ȣ, ��ǰ�̸�, ��ǰ �ۿ� �ö�� ����(����, ���� �ƴ�), ��ǰ�������, ��ǰ������, ��ǰ�߸���, ��ǰ������, ��ǰ����, ��ȸ��

SELECT product_num, 
       product_list_num, 
       product_name, 
       product_list_price, 
       product_brief_information, 
       product_manufacturer, 
       product_release_date, 
       product_origin, 
       color_code, 
       product_hitcount 
FROM   product_infos 
WHERE  ( product_list_price BETWEEN 90000 AND 110000 ) 
       AND product_list_num IS NOT NULL; 
--where (product_list_price BETWEEN ? and ?) and product_list_num is not null;

--no.9~10 ��ǰ����Ʈ�� �ö�� �ִ� ��ǰ�� �߿� ��ǰ���� ���ݼ����� �˻� (�������� ���� ����)
-- ��ǰ��ȣ, ��ǰ�۹�ȣ, ��ǰ�̸�, ��ǰ �ۿ� �ö�� ����(����, ���� �ƴ�), ��ǰ�������, ��ǰ������, ��ǰ�߸���, ��ǰ������, ��ǰ����, ��ȸ��
SELECT product_num, 
       product_list_num, 
       product_name, 
       product_list_price, 
       product_brief_information, 
       product_manufacturer, 
       product_release_date, 
       product_origin, 
       color_code, 
       product_hitcount 
FROM   product_infos 
WHERE  ( product_list_price BETWEEN 90000 AND 110000 ) 
       AND product_list_num IS NOT NULL 
--where (product_list_price BETWEEN ? and ?) and product_list_num is not null 
ORDER  BY product_list_price DESC; --order by product_list_price ?; 

--no.11 ��ǰ����Ʈ�� �ö�� �ִ� ��ǰ�� �߿� ���� ��� �˻� (�������� ���� ����)
-- ��ǰ��ȣ, ��ǰ�۹�ȣ, ��ǰ�̸�, ��ǰ �ۿ� �ö�� ����(����, ���� �ƴ�), ��ǰ�������, ��ǰ������, ��ǰ�߸���, ��ǰ������, ��ǰ����, ��ȸ�� , ���� ���
SELECT pi.product_num, 
       product_list_num, 
       product_name, 
       product_list_price, 
       product_brief_information, 
       product_manufacturer, 
       product_release_date, 
       product_origin, 
       color_code, 
       product_hitcount, 
       rs.avg_score 
FROM   product_infos pi 
       left outer join (SELECT p.product_num, 
                               Avg(r.review_score) avg_score 
                        FROM   reviews r 
                               join products p 
                                 ON r.product_num = p.product_num 
                        GROUP  BY p.product_num) rs 
                    ON pi.product_num = rs.product_num 
WHERE  product_list_num IS NOT NULL 
       AND ( rs.avg_score BETWEEN 3 AND 5 ) --(rs.avg_score between ? and ?) 
ORDER  BY rs.avg_score ASC; --(rs.avg_score ?) 

--no.11 �׽�Ʈ
--select p.PRODUCT_NUM, avg(r.review_score) as"���� ���"
--from reviews r join products p on r.PRODUCT_CODE = p.PRODUCT_CODE
--group by p.product_num;

--no.12 ��ǰ����Ʈ�� �ö�� �ִ� ��ǰ�� �߿� ��ȸ���� �˻� (�������� ���� ����)
-- ��ǰ��ȣ, ��ǰ�۹�ȣ, ��ǰ�̸�, ��ǰ �ۿ� �ö�� ����(����, ���� �ƴ�), ��ǰ�������, ��ǰ������, ��ǰ�߸���, ��ǰ������, ��ǰ����, ��ȸ��
SELECT product_num, 
       product_list_num, 
       product_name, 
       product_list_price, 
       product_brief_information, 
       product_manufacturer, 
       product_release_date, 
       product_origin, 
       color_code, 
       product_hitcount 
FROM   product_infos 
WHERE  ( product_list_price BETWEEN 90000 AND 110000 ) 
       AND product_list_num IS NOT NULL 
--where (product_list_price BETWEEN ? and ?) and product_list_num is not null 
ORDER  BY product_hitcount DESC; --order by product_hitcount ?; 

--NO.13 ������
SELECT product_num, 
       product_list_num, 
       product_name, 
       product_list_price, 
       product_brief_information, 
       product_manufacturer, 
       product_release_date, 
       product_origin, 
       color_code, 
       product_hitcount 
FROM   product_infos 
WHERE  product_season = 'OV'; 
--WHERE  product_season = ?;

--no.14 ��Ȳ��
SELECT product_num, 
       product_list_num, 
       product_name, 
       product_list_price, 
       product_brief_information, 
       product_manufacturer, 
       product_release_date, 
       product_origin, 
       color_code, 
       product_hitcount 
FROM   product_infos 
WHERE  product_tpo = 'silk'; 
--WHERE  product_tpo = ?;

--no.15 ���纰
SELECT product_num, 
       product_list_num, 
       product_name, 
       product_list_price, 
       product_brief_information, 
       product_manufacturer, 
       product_release_date, 
       product_origin, 
       color_code, 
       product_hitcount 
FROM   product_infos 
WHERE  product_fabric = 'silk'; 
--WHERE  product_fabric = ?;

--NO.16 ��ü��
SELECT product_num, 
       product_list_num, 
       product_name, 
       product_list_price, 
       product_brief_information, 
       product_manufacturer, 
       product_release_date, 
       product_origin, 
       color_code, 
       product_hitcount 
FROM   product_infos 
WHERE  product_tpo = 'bizcasual'; 
--WHERE  product_tpo = ?;

--NO.17 ��ü��
SELECT product_num, 
       product_list_num, 
       product_name, 
       product_list_price, 
       product_brief_information, 
       product_manufacturer, 
       product_release_date, 
       product_origin, 
       color_code, 
       product_hitcount 
FROM   product_infos 
WHERE  product_body = '2'; 
--WHERE  product_body = ?;

--no.20 ��ǰ����Ʈ�� �ö�� �ִ� ��ǰ�� �߿� �ֽż����� �˻� (�������� ���� ����)
-- ��ǰ��ȣ, ��ǰ�۹�ȣ, ��ǰ�̸�, ��ǰ �ۿ� �ö�� ����(����, ���� �ƴ�), ��ǰ�������, ��ǰ������, ��ǰ�߸���, ��ǰ������, ��ǰ����, ��ȸ��
SELECT product_num, 
       product_list_num, 
       product_name, 
       product_list_price, 
       product_brief_information, 
       product_manufacturer, 
       product_release_date, 
       product_origin, 
       color_code, 
       product_hitcount 
FROM   product_infos 
WHERE  ( product_list_price BETWEEN 90000 AND 110000 ) 
       AND product_list_num IS NOT NULL 
--where (product_list_price BETWEEN ? and ?) and product_list_num is not null 
ORDER  BY product_release_date DESC; --order by product_release_date ?; 

-- no.22 ���� ��ǰ������������� ���ϴ� ��ǰ�� �˻�(��ǰ�̸�����),
-- no.23 ��� ������ ��ư���� �˻�
SELECT product_num, 
       product_list_num, 
       product_name, 
       product_list_price, 
       product_brief_information, 
       product_manufacturer, 
       product_release_date, 
       product_origin, 
       color_code, 
       product_hitcount 
FROM   product_infos 
WHERE  product_name LIKE CONCAT('%',product_name,'%')
ORDER BY product_release_date DESC;
select * from product_infos;
-- no.24 Best Product,New Product���� �� ����
SELECT product_num, 
       product_list_num, 
       product_name, 
       product_list_price, 
       product_brief_information, 
       product_manufacturer, 
       product_release_date, 
       product_origin, 
       color_code, 
       product_hitcount 
FROM   product_infos 
WHERE  ROWNUM <= 4
ORDER BY product_hitcount DESC;

SELECT product_num, 
       product_list_num, 
       product_name, 
       product_list_price, 
       product_brief_information, 
       product_manufacturer, 
       product_release_date, 
       product_origin, 
       color_code, 
       product_hitcount 
FROM   product_infos 
WHERE  ROWNUM <= 4
ORDER BY product_release_date DESC;

-- no.25 ��ǰ ��� ���������� ���� ��� �����Ͽ� �˻�

-- no.32 ��� navigator �ٿ��� ��ٱ��� ��ư Ŭ���Ͽ� ��ٱ��� ���� Ȯ��
SELECT pi.product_num, 
       pi.product_list_num, 
       pi.product_name, 
       pi.product_list_price, 
       pi.product_brief_information, 
       pi.product_manufacturer, 
       pi.product_release_date, 
       pi.product_origin, 
       pi.color_code, 
       pi.product_hitcount, 
       i.image_ref 
FROM   carts c 
       INNER JOIN products p 
               ON c.product_code = p.product_code 
       INNER JOIN images i 
               ON p.product_num = i.product_num 
       INNER JOIN product_infos pi 
               ON p.product_num = pi.product_num; 
select * from carts;  
select * from products;
-- no.33 ���� ��ǰ QuickView ������, ��ǰ �� ���������� ���ϴ� ��ǰ�� ��ٱ��Ͽ� ����ϴ�
INSERT INTO carts 
            (cart_num, 
             product_code, 
             customer_id) 
VALUES     (?, 
            ?, 
            ?); 

-- no.34 ���� ��ٱ��� ���������� ��ǰ�� ����
DELETE FROM carts 
WHERE  cart_num = ? 
       AND customer_id = ?; 

-- no.35 ��ȸ�� ��ٱ��� ���� �̿�(DB ��Ȱ��)

-- no.36 ���� ��ǰ ��� ������, ��ǰ �� ���������� ���ϴ� ��ǰ�� ���ø���Ʈ�� ����ϴ�
INSERT INTO wishlists 
            (wishlist_num, 
             customer_id, 
             product_num)
VALUES     (wishlist_num_seq.nextval, 
            'bangry', 
            3);

 
--no.37 1) üũ
SELECT wishlist_num "wishlistNum"
		FROM   wishlists 
		WHERE  customer_id = 'bangry' 
       	   AND product_num = 3;

select * from product_infos;

--wishlist�� �ش��ϴ� product_info ��������
select wl.product_num,
       color_code, 
       product_list_num,
       product_name,
       product_cost,
       product_price,
       product_brief_information,
       product_manufacturer,
       product_release_date,
       product_origin,
       product_list_price,
       product_hitcount,
       product_body,
       product_shoulder,
       product_arm,
       product_leg,
       product_season,
       product_fabric,
       product_tpo
From (SELECT wishlist_num ,
			   customer_id ,
			   product_num  
		FROM   wishlists 
		WHERE  customer_id = 'bangry') wl join product_infos pi
    on wl.product_num = pi.product_num;




-- no.38 ���� ���ø���Ʈ���� ��ǰ ����
DELETE FROM wishlists 
WHERE  customer_id = 'bangry' 
       AND product_num = 3; 

-- no.39 ȸ�� ��ǰ �ֹ�, ���ø���Ʈ ���������� �׸� ���� �� ���� ��ư Ŭ��
/*
  ��� --> ���� --> �ֹ� ���� --> ��ٱ��� ����
*/
INSERT INTO deliveries 
            (delivery_num, 
             delivery_address, 
             delivery_recipient, 
             delivery_recipient_phonenumber, 
             delivery_requirement, 
             order_date, 
             delivery_date, 
             delivery_status) 
VALUES     (deliveries_seq.nextval, 
            '��⵵ ���ν�', 
            '������',
            '01066421489', 
            '�� �ۿ� ���ּ���', 
            '20181109', 
            '20181112', 
            '�����'); 
select * from DELIVERIES;
INSERT INTO payments 
            (payment_num, 
             payment_point, 
             payment_method, 
             payment_isrefund, 
             payment_discount, 
             payment_origin_cost, 
             delivery_charge) 
VALUES     (payments_seq.nextval, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?); 

INSERT INTO orders 
            (order_num, 
             customer_id, 
             delivery_num, 
             delivery_num, 
             payment_num) 
VALUES     (?, 
            ?, 
            ?, 
            ?); 

INSERT INTO order_by_products 
            (order_by_product_num, 
             product_code, 
             order_num, 
             product_count) 
VALUES     (?, 
            ?, 
            ?, 
            ?); 

DELETE FROM carts 
WHERE  wishlist_num = ?; 

-- ��ȸ�� ��ǰ�ֹ�
/*
  ��� --> ���� --> �ֹ� ���� --> ��ٱ��� ����
*/
INSERT INTO deliveries 
            (delivery_num, 
             delivery_address, 
             delivery_recipient, 
             delivery_recipient_phonenumber, 
             delivery_requirement, 
             order_date, 
             delivery_date, 
             delivery_status) 
VALUES     (?, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?); 

INSERT INTO payments 
            (payment_num, 
             payment_point, 
             payment_method, 
             payment_isrefund, 
             payment_discount, 
             payment_origin_cost, 
             payment_origin_cost) 
VALUES     (?, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?); 

INSERT INTO orders 
            (order_num, 
             noncustomer_num, 
             delivery_num, 
             delivery_num, 
             payment_num) 
VALUES     (?, 
            ?, 
            ?, 
            ?); 

INSERT INTO order_by_products 
            (order_by_product_num, 
             product_code, 
             order_num, 
             product_count) 
VALUES     (?, 
            ?, 
            ?, 
            ?); 

DELETE FROM carts 
WHERE  wishlist_num = ?; 

-- no.40 ȸ��, ��ȸ���� quickView ���������� �ٷ� ���� ��ư Ŭ��
-- ȸ��
/*
  ��� --> ���� --> �ֹ� ����
*/
INSERT INTO deliveries 
            (delivery_num, 
             delivery_address, 
             delivery_recipient, 
             delivery_recipient_phonenumber, 
             delivery_requirement, 
             order_date, 
             delivery_date, 
             delivery_status) 
VALUES     (?, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?); 

INSERT INTO payments 
            (payment_num, 
             payment_point, 
             payment_method, 
             payment_isrefund, 
             payment_discount, 
             payment_origin_cost, 
             payment_origin_cost) 
VALUES     (?, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?); 

INSERT INTO orders 
            (order_num, 
             customer_id, 
             delivery_num, 
             delivery_num, 
             payment_num) 
VALUES     (?, 
            ?, 
            ?, 
            ?); 

INSERT INTO order_by_products 
            (order_by_product_num, 
             product_code, 
             order_num, 
             product_count) 
VALUES     (?, 
            ?, 
            ?, 
            ?); 
-- ��ȸ��
/*
  ��� --> ���� --> �ֹ� ����
*/
INSERT INTO deliveries 
            (delivery_num, 
             delivery_address, 
             delivery_recipient, 
             delivery_recipient_phonenumber, 
             delivery_requirement, 
             order_date, 
             delivery_date, 
             delivery_status) 
VALUES     (?, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?); 

INSERT INTO payments 
            (payment_num, 
             payment_point, 
             payment_method, 
             payment_isrefund, 
             payment_discount, 
             payment_origin_cost, 
             payment_origin_cost) 
VALUES     (?, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?, 
            ?); 

INSERT INTO orders 
            (order_num, 
             noncustomer_num, 
             delivery_num, 
             delivery_num, 
             payment_num) 
VALUES     (?, 
            ?, 
            ?, 
            ?); 

INSERT INTO order_by_products 
            (order_by_product_num, 
             product_code, 
             order_num, 
             product_count) 
VALUES     (?, 
            ?, 
            ?, 
            ?); 
            
-- no.41 ���������� ����� ���ų��� ���
SELECT p.payment_num, 
       p.payment_point, 
       p.payment_method, 
       p.payment_isrefund, 
       p.payment_discount, 
       p.payment_origin_cost, 
       p.delivery_charge 
FROM   payments p 
       INNER JOIN orders o 
               ON p.payment_num = o.payment_num 
WHERE  o.customer_id LIKE ?; 

-- no.42 ���������� ����� ����Ʈ���� ���
SELECT customer_id, 
       point_history_num, 
       point_policy_type, 
       point_history_score, 
       point_history_update_date 
FROM   point_histories 
WHERE  customer_id LIKE ?; 

-- no.43 ���������� ����� ��ٱ��� ���
SELECT pi.product_num, 
       pi.product_list_num, 
       pi.product_name, 
       pi.product_list_price, 
       pi.product_brief_information, 
       pi.product_manufacturer, 
       pi.product_release_date, 
       pi.product_origin, 
       pi.color_code, 
       pi.product_hitcount, 
       i.image_ref 
FROM   carts c 
       INNER JOIN products p 
               ON c.product_code = p.product_code 
       INNER JOIN images i 
               ON p.product_num = i.product_num
       INNER JOIN product_infos pi 
               ON p.product_num = pi.product_num 
WHERE  c.customer_id LIKE ?; 

-- no.44 ���������� ����� ���ø���Ʈ ���
SELECT pi.product_num, 
       pi.product_list_num, 
       pi.product_name, 
       pi.product_list_price, 
       pi.product_brief_information, 
       pi.product_manufacturer, 
       pi.product_release_date, 
       pi.product_origin, 
       pi.color_code, 
       pi.product_hitcount, 
       i.image_ref 
FROM   wishlists w 
       INNER JOIN products p 
               ON w.product_code = p.product_code 
       INNER JOIN images i 
               ON p.product_num = i.product_num
       INNER JOIN product_infos pi 
               ON p.product_num = pi.product_num 
WHERE  w.customer_id LIKE ?; 

-- no.45 ���������� ����� ȸ���������� ���
SELECT customer_id, 
       customer_name, 
       customer_password, 
       customer_phonenumber, 
       customer_email, 
       customer_address, 
       customer_postcode, 
       customer_birthday, 
       customer_gender, 
       customer_jacket_size, 
       customer_pants_size, 
       customer_height, 
       customer_body, 
       customer_shoulder, 
       customer_arm, 
       customer_leg 
FROM   customers 
WHERE  customer_id LIKE ?; 

-- no.46 ��ǰ ������ hover �� �ߴ� quickView ��ư���� ������ ���� ���
SELECT pi.product_num, 
       pi.product_list_num, 
       pi.product_name, 
       pi.product_list_price, 
       pi.product_brief_information, 
       pi.product_manufacturer, 
       pi.product_release_date, 
       pi.product_origin, 
       pi.color_code, 
       pi.product_hitcount, 
       i.image_ref 
FROM   carts c 
       INNER JOIN products p 
               ON c.cart_num = p.cart_num 
       INNER JOIN images i 
               ON p.product_num = i.product_num
       INNER JOIN product_infos pi 
               ON p.product_num = pi.product_num 
WHERE  pi.product_num = ?; 
     
-- no.48 product page ������ ���� ��ǰ �����ִ� ���
SELECT pi.product_num, 
       pi.product_list_num, 
       pi.product_name, 
       pi.product_list_price, 
       pi.product_brief_information, 
       pi.product_manufacturer, 
       pi.product_release_date, 
       pi.product_origin, 
       pi.color_code, 
       pi.product_hitcount, 
       i.image_ref 
FROM   carts c 
       INNER JOIN products p 
               ON c.cart_num = p.cart_num 
       INNER JOIN images i 
               ON p.product_num = i.product_num
       INNER JOIN product_infos pi 
               ON p.product_num = pi.product_num 
WHERE  pi.product_season LIKE ? 
       AND product_body = ? 
        OR product_shoulder = ? 
        OR product_arm = ? 
        OR product_leg = ?; 
      
--no.49 product page ������ ��ǰ �� ���� �����ִ� ���
SELECT pi.product_num, 
       pi.product_list_num, 
       pi.product_name, 
       pi.product_list_price, 
       pi.product_brief_information, 
       pi.product_manufacturer, 
       pi.product_release_date, 
       pi.product_origin, 
       pi.color_code, 
       pi.product_hitcount, 
       i.image_ref 
FROM   carts c 
       INNER JOIN products p 
               ON c.cart_num = p.cart_num 
       INNER JOIN images i 
               ON p.product_num = i.product_num 
       INNER JOIN product_infos pi 
               ON p.product_num = pi.product_num 
WHERE p.product_code LIKE ?; 
        
--no.50 product page ������ ��ǰ ���� �����ִ� ���
SELECT pi.product_num, 
       pi.product_list_num, 
       pi.product_name, 
       pi.product_list_price, 
       pi.product_brief_information, 
       pi.product_manufacturer, 
       pi.product_release_date, 
       pi.product_origin, 
       pi.color_code, 
       pi.product_hitcount, 
       i.image_ref 
FROM   carts c 
       INNER JOIN products p 
               ON c.cart_num = p.cart_num 
       INNER JOIN images i 
               ON p.product_num = i.product_num
       INNER JOIN product_infos pi 
               ON p.product_num = pi.product_num 
WHERE  p.product_code LIKE ?;
        
--no.51 product page ������ ��ǰ �ı� �����ִ� ���
SELECT review_num, 
       customer_id, 
       product_code, 
       review_title, 
       review_content, 
       review_password, 
       review_score, 
       review_isdeleted 
FROM   reviews r 
       INNER JOIN products p 
               ON r.product_num = p.product_num
WHERE  product_code LIKE ?; 
select * from products;
--no.52 product page ������ ��ǰ ���� �����ִ� ���(???)
SELECT review_num, 
       customer_id, 
       product_code, 
       review_title, 
       review_content, 
       review_password, 
       review_score, 
       review_isdeleted 
FROM   qnas q 
       INNER JOIN products p 
               ON q.product_num = p.product_num 
WHERE  product_code LIKE ?; 

--no.53 ����ڰ� ���θ� �������� ���뿡 ���� ������ �� �ִ� ���ǻ��� �����ִ� ���
SELECT qna_num, 
       qna_type_num, 
       customer_id, 
       qna_title, 
       qna_content, 
       qna_password, 
       qna_isanswered, 
       qna_issecret, 
       qna_rank, 
       qna_isdeleted, 
       qna_regdate 
FROM   qnas; 

--no.54 Ȩ������ ��ü �Ұ� �����ִ� ���

--no.55 Ȩ������ �����ڿ� ���� ������ ���

--cart
 SELECT c.cart_num            
      	 FROM carts c INNER JOIN products p 
                      ON c.product_code = p.product_code
                INNER JOIN product_infos pi 
                       ON p.product_num = pi.product_num;
                       
SELECT c.* ,p.*,pi.*               
      	 FROM carts c INNER JOIN products p 
                      		ON c.product_code = p.product_code
                	  INNER JOIN product_infos pi 
                       		ON p.product_num = pi.product_num;

select o.* , d.*, p.* 
from orders o join deliveries d
  on o.DELIVERY_NUM = d.DELIVERY_NUM
  join payments p
  on o.PAYMENT_NUM = p.PAYMENT_NUM
where o.ORDER_NUM = 1;

select d.*
from orders o join deliveries d
  on o.DELIVERY_NUM = d.DELIVERY_NUM
where o.order_num = 1;  

select p.*
from orders o join payments p
  on o.PAYMENT_NUM = p.PAYMENT_NUM
where o.ORDER_NUM = 1;

select * from deliveries; 
select * from payments;