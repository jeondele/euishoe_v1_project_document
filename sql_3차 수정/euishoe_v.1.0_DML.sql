--------------------------- ������ ���̺� ��ü ��ȸ -----------------------------


select * from noncustomers;
select * from jackets;
select * from pants;
select * from product_infos;
select * from qna_types;
select * from color_codes;
select * from reviews;
select * from payments;
select * from customers;
select * from products;
select * from deliveries;
select * from orders;
select * from carts;
select * from product_infos;
select * from order_by_products;
select * from point_policies;
select * from point_histories;
select * from wishlists;
select * from images;
select * from comments;
select * from qnas;
commit;


----------------- ��ȸ��(noncustomers) ���̺� ���� ������ �߰� ------------------


INSERT INTO noncustomers 
            (noncustomer_num, 
             noncustomer_email, 
             noncustomer_name, 
             noncustomer_password, 
             noncustomer_phonenumber) 
VALUES     ((SELECT rn 
             FROM   (SELECT Row_number() 
                              over ( 
                                ORDER BY dbms_random.random) AS mx, 
                            rn 
                     FROM   (SELECT ROWNUM AS rn 
                             FROM   dual 
                             CONNECT BY ROWNUM <= 100000 
                             MINUS 
                             (SELECT noncustomer_num 
                              FROM   noncustomers))) 
             WHERE  mx = 1), 
            'cde@naver.com', 
            '��', 
            '1234', 
            '010-1234-1234'); 



INSERT INTO noncustomers 
            (noncustomer_num, 
             noncustomer_email, 
             noncustomer_name, 
             noncustomer_password, 
             noncustomer_phonenumber) 
VALUES     ((SELECT rn 
             FROM   (SELECT Row_number() 
                              over ( 
                                ORDER BY dbms_random.random) AS mx, 
                            rn 
                     FROM   (SELECT ROWNUM AS rn 
                             FROM   dual 
                             CONNECT BY ROWNUM <= 100000 
                             MINUS 
                             (SELECT noncustomer_num 
                              FROM   noncustomers))) 
             WHERE  mx = 1), 
            'cde@naver.com', 
            '��', 
            '1234', 
            '010-1234-1234'); 
            

INSERT INTO noncustomers 
            (noncustomer_num, 
             noncustomer_email, 
             noncustomer_name, 
             noncustomer_password, 
             noncustomer_phonenumber) 
VALUES     ((SELECT rn 
             FROM   (SELECT Row_number() 
                              over ( 
                                ORDER BY dbms_random.random) AS mx, 
                            rn 
                     FROM   (SELECT ROWNUM AS rn 
                             FROM   dual 
                             CONNECT BY ROWNUM <= 100000 
                             MINUS 
                             (SELECT noncustomer_num 
                              FROM   noncustomers))) 
             WHERE  mx = 1), 
            'cde@naver.com', 
            '��', 
            '1234', 
            '010-1234-1234');
        
        
INSERT INTO noncustomers 
            (noncustomer_num, 
             noncustomer_email, 
             noncustomer_name, 
             noncustomer_password, 
             noncustomer_phonenumber) 
VALUES     ((SELECT rn 
             FROM   (SELECT Row_number() 
                              over ( 
                                ORDER BY dbms_random.random) AS mx, 
                            rn 
                     FROM   (SELECT ROWNUM AS rn 
                             FROM   dual 
                             CONNECT BY ROWNUM <= 100000 
                             MINUS 
                             (SELECT noncustomer_num 
                              FROM   noncustomers))) 
             WHERE  mx = 1), 
            'cde@naver.com', 
            '��', 
            '1234', 
            '010-1234-1234');
            
            

INSERT INTO noncustomers 
            (noncustomer_num, 
             noncustomer_email, 
             noncustomer_name, 
             noncustomer_password, 
             noncustomer_phonenumber) 
VALUES     ((SELECT rn 
             FROM   (SELECT Row_number() 
                              over ( 
                                ORDER BY dbms_random.random) AS mx, 
                            rn 
                     FROM   (SELECT ROWNUM AS rn 
                             FROM   dual 
                             CONNECT BY ROWNUM <= 100000 
                             MINUS 
                             (SELECT noncustomer_num 
                              FROM   noncustomers))) 
             WHERE  mx = 1), 
            'cde@naver.com', 
            '��', 
            '1234', 
            '010-1234-1234'); 
            
            

INSERT INTO noncustomers 
            (noncustomer_num, 
             noncustomer_email, 
             noncustomer_name, 
             noncustomer_password, 
             noncustomer_phonenumber) 
VALUES     ((SELECT rn 
             FROM   (SELECT Row_number() 
                              over ( 
                                ORDER BY dbms_random.random) AS mx, 
                            rn 
                     FROM   (SELECT ROWNUM AS rn 
                             FROM   dual 
                             CONNECT BY ROWNUM <= 100000 
                             MINUS 
                             (SELECT noncustomer_num 
                              FROM   noncustomers))) 
             WHERE  mx = 1), 
            'cde@naver.com', 
            '��', 
            '1234', 
            '010-1234-1234'); 


----------------- �������ڵ�(size_codes) ���̺� ���� ������ �߰� -----------------


INSERT INTO size_codes 
            (size_code, 
             size_detail) 
VALUES     ('S', 
            '90'); 

INSERT INTO size_codes 
            (size_code, 
             size_detail) 
VALUES     ('M', 
            '95'); 

INSERT INTO size_codes 
            (size_code, 
             size_detail) 
VALUES     ('L', 
            '100'); 

INSERT INTO size_codes 
            (size_code, 
             size_detail) 
VALUES     ('XL', 
            '105'); 

INSERT INTO size_codes 
            (size_code, 
             size_detail) 
VALUES     ('XXL', 
            '110'); 

INSERT INTO size_codes 
            (size_code, 
             size_detail) 
VALUES     ('FREE', 
            'free'); 

INSERT INTO size_codes 
            (size_code, 
             size_detail) 
VALUES     ('26', 
            '26'); 

INSERT INTO size_codes 
            (size_code, 
             size_detail) 
VALUES     ('28', 
            '28'); 

INSERT INTO size_codes 
            (size_code, 
             size_detail) 
VALUES     ('30', 
            '30'); 

INSERT INTO size_codes 
            (size_code, 
             size_detail) 
VALUES     ('32', 
            '32'); 

INSERT INTO size_codes 
            (size_code, 
             size_detail) 
VALUES     ('34', 
            '34'); 

INSERT INTO size_codes 
            (size_code, 
             size_detail) 
VALUES     ('36', 
            '36'); 


--------------------- ����(jackets) ���̺� ���� ������ �߰� ---------------------


INSERT INTO jackets 
            (jacket_code,
             color_code,
             size_code, 
             jacket_count) 
VALUES     ('aaa%fr%bl',
            'BL',
            'FREE', 
            40); 

INSERT INTO jackets 
            (jacket_code,
             color_code,
             size_code, 
             jacket_count) 
VALUES     ('bbb%xl%bl',
            'BL',
            'XL', 
            40); 

INSERT INTO jackets 
            (jacket_code,
             color_code,
             size_code, 
             jacket_count) 
VALUES     ('ccc%fr%gr',
            'GR',
            'FREE', 
            40); 


INSERT INTO jackets 
            (jacket_code,
             color_code,
             size_code, 
             jacket_count) 
VALUES     ('ddd%fr%bl',
            'BL',
            'FREE', 
            40); 


INSERT INTO jackets 
            (jacket_code,
             color_code,
             size_code, 
             jacket_count) 
VALUES     ('eee%fr%gr',
            'GR',
            'FREE', 
            40); 

INSERT INTO jackets 
            (jacket_code,
             color_code,
             size_code, 
             jacket_count) 
VALUES     ('fff%fr%gr',
            'GR',
            'FREE', 
            40);  

INSERT INTO jackets 
            (jacket_code,
             color_code,
             size_code, 
             jacket_count) 
VALUES     ('fff%x%gr',
            'GR',
            'X', 
            40); 



---------------------- ����(pants) ���̺� ���� ������ �߰� ----------------------


INSERT INTO pants 
            (pants_code, 
             size_code, 
             pants_count) 
VALUES     ('aaa_p', 
            '30', 
            40); 

INSERT INTO pants 
            (pants_code, 
             size_code, 
             pants_count) 
VALUES     ('bbb_p', 
            '30', 
            23); 

INSERT INTO pants 
            (pants_code, 
             size_code, 
             pants_count) 
VALUES     ('ccc_p', 
            '34', 
            23); 

INSERT INTO pants 
            (pants_code, 
             size_code, 
             pants_count) 
VALUES     ('ddd_p', 
            '34', 
            23); 

INSERT INTO pants 
            (pants_code, 
             size_code, 
             pants_count) 
VALUES     ('eee_p', 
            '34', 
            23); 

INSERT INTO pants 
            (pants_code, 
             size_code, 
             pants_count) 
VALUES     ('fff_p', 
            '32', 
            23); 

INSERT INTO pants 
            (pants_code, 
             size_code, 
             pants_count) 
VALUES     ('ggg_p', 
            'XL', 
            23); 

INSERT INTO pants 
            (pants_code, 
             size_code, 
             pants_count) 
VALUES     ('iii_p', 
            '28', 
            23); 

INSERT INTO pants 
            (pants_code, 
             size_code, 
             pants_count) 
VALUES     ('kkk_p', 
            '30', 
            23); 

        
-------------------- ȸ��(customers) ���̺� ���� ������ �߰� --------------------


INSERT INTO customers 
            (customer_id, 
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
             customer_height) 
VALUES     ('abc1234', 
            '��ȣ��', 
            '1234', 
            '010-0000-1111', 
            'abeqw@naver.com', 
            '����Ư���� ��õ��', 
            '00011', 
            SYSDATE, 
            'M',
            'XL',
            '32',
            '180'); 
            

            
INSERT INTO customers 
            (customer_id, 
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
             customer_height) 
VALUES     ('bongus', 
            '������', 
            '1234', 
            '010-0000-2222', 
            'dsadlkqw@naver.com', 
            '����Ư���� ��õ��', 
            '00011', 
            SYSDATE, 
            'F',
            'L',
            '30',
            '178'); 
            
            

INSERT INTO customers 
            (customer_id, 
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
             customer_height) 
VALUES     ('abc1235', 
            '������1', 
            '4567', 
            '010-1111-2222', 
            'create65@daum.net', 
            '����Ư���� ������', 
            '05015', 
            SYSDATE, 
            'M',
            'XXL',
            '34',
            '190'); 



INSERT INTO customers 
            (customer_id, 
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
             customer_height)
VALUES     ('bangry', 
            '�����', 
            '1958', 
            '010-3333-5555', 
            'dkvnwoe@hanmail.net', 
            '����Ư���� ������', 
            '98752', 
            SYSDATE, 
            'F',
            'M',
            '28',
            '164');
            

            
INSERT INTO customers 
            (customer_id, 
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
             customer_height)
VALUES     ('admin3', 
            '������3', 
            '1028', 
            '010-4444-2222', 
            'crdvcs@nate.com', 
            '��⵵ �Ȼ�� �ܿ���', 
            '10395', 
            SYSDATE, 
            'M',
            'M',
            '30',
            '169');
            

INSERT INTO customers 
            (customer_id, 
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
             customer_height)
VALUES     ('admin4', 
            '������4', 
            '1953', 
            '010-8777-4122', 
            'aaabbbcc@nate.com', 
            '����� ������ ��õ��', 
            '15985', 
            SYSDATE, 
            'M',
            'L',
            '32',
            '170');
            


INSERT INTO customers 
            (customer_id, 
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
             customer_height)
VALUES     ('admin5', 
            '������5', 
            '9203', 
            '010-5922-2959', 
            'qwerasdf@hitel.net', 
            '��⵵ ��õ�� ���ﵿ', 
            '67634', 
            SYSDATE, 
            'M',
            'XL',
            '30',
            '185');
            
            
-------------------- ����(payments) ���̺� ���� ������ �߰� ---------------------


INSERT INTO payments 
            (payment_num, 
             payment_point, 
             payment_method, 
             payment_isrefund, 
             payment_discount, 
             payment_origin_cost, 
             delivery_charge) 
VALUES     (payments_seq.NEXTVAL, 
            10000, 
            'credit_card', 
            'N', 
            10000, 
            100000, 
            5000); 
            
            
            
INSERT INTO payments 
            (payment_num, 
             payment_point, 
             payment_method, 
             payment_isrefund, 
             payment_discount, 
             payment_origin_cost, 
             delivery_charge) 
VALUES     (payments_seq.NEXTVAL, 
            5000, 
            'credit_card', 
            'N', 
            1000, 
            10000, 
            2500);
                  
                  
INSERT INTO payments 
            (payment_num, 
             payment_point, 
             payment_method, 
             payment_isrefund, 
             payment_discount, 
             payment_origin_cost, 
             delivery_charge) 
VALUES     (payments_seq.NEXTVAL, 
            3000, 
            'credit_card', 
            'N', 
            3000, 
            102900, 
            5000);
 

----------------- �����ڵ�(color_codes) ���̺� ���� ������ �߰� ------------------

 
INSERT INTO color_codes 
            (color_code, 
             color_detail) 
VALUES      ('BR', 
             'Brown');
             
             
INSERT INTO color_codes 
            (color_code, 
             color_detail) 
VALUES      ('BK', 
             'Black');
             
             
             
INSERT INTO color_codes 
            (color_code, 
             color_detail) 
VALUES      ('BG', 
             'Beige'); 
             

INSERT INTO color_codes 
            (color_code, 
             color_detail) 
VALUES      ('GR', 
             'Gray'); 
             
             
INSERT INTO color_codes 
            (color_code, 
             color_detail) 
VALUES      ('NV', 
             'Navy');
             

INSERT INTO color_codes 
            (color_code, 
             color_detail) 
VALUES      ('KK', 
             'Khaki');  
             

INSERT INTO color_codes 
            (color_code, 
             color_detail) 
VALUES      ('BL', 
             'Blue');

INSERT INTO color_codes 
            (color_code, 
             color_detail) 
VALUES      ('CC', 
             'Charcoal');
             
             
INSERT INTO color_codes 
            (color_code, 
             color_detail) 
VALUES      ('LG', 
             'LightGray'); 
             
             
INSERT INTO color_codes 
            (color_code, 
             color_detail) 
VALUES      ('CH', 
             'Checkered');
             
INSERT INTO color_codes 
            (color_code, 
             color_detail) 
VALUES      ('LP', 
             'LightPurple');
             
             
INSERT INTO color_codes 
            (color_code, 
             color_detail) 
VALUES      ('WI', 
             'Wine');

           
commit;            
   
            
---------------- ��ǰ����(product_infos) ���̺� ���� ������ �߰� -----------------
  
  
INSERT INTO product_infos 
            (product_num, 
             product_list_num, 
             product_name, 
             product_cost, 
             product_price,
             product_brief_information,
             product_manufacturer, 
             product_release_date,
             product_origin,
             product_list_price,
             color_code) 
VALUES      (product_infos_seq.NEXTVAL, 
             product_list_num_seq.NEXTVAL, 
             'FW �ȹ� �̱ۼ�Ʈ_Brown',  
             160000, 
             140000, 
             '�ܿ���� �Ա� ���� �β��� �ִ� �̱ۼ�Ʈ',
             'euishoe',
             '2018-09-01',
             'KOR',
             '130000',
             'BR');
             
             
             
INSERT INTO product_infos 
            (product_num, 
             product_list_num, 
             product_name, 
             product_cost, 
             product_price,
             product_brief_information,
             product_manufacturer, 
             product_release_date,
             product_origin,
             product_list_price,
             color_code) 
VALUES      (product_infos_seq.NEXTVAL, 
             NULL, 
             '��� �۷�üũ �̱��ڵ�_Beige', 
             120000, 
             110000, 
             '������ ���� �����翡 �� ��︮�� �̱ۼ�Ʈ',
             'euishoe',
             '2018-08-01',
             'KOR',
             '100000',
             'BG');
             
             
INSERT INTO product_infos 
            (product_num, 
             product_list_num, 
             product_name, 
             product_cost, 
             product_price,
             product_brief_information,
             product_manufacturer, 
             product_release_date,
             product_origin,
             product_list_price,
             color_code) 
VALUES      (product_infos_seq.NEXTVAL, 
             product_list_num_seq.NEXTVAL, 
             '��Ʈ�� �̱� ��Ʈ_Navy', /*���� �ʿ�*/ 
             140000, 
             120000, 
             '�Ұ���, �����ڸ��� �� ��︮�� ������ ���̺�� �̱ۼ�Ʈ',
             'euishoe',
             '2018-07-01',
             'ENG',
             100000,
             'NV'); 
             
             
             
INSERT INTO product_infos 
            (product_num, 
             product_list_num, 
             product_name, 
             product_cost, 
             product_price,
             product_brief_information,
             product_manufacturer, 
             product_release_date,
             product_origin,
             product_list_price,
             color_code) 
VALUES      (product_infos_seq.NEXTVAL, 
             product_list_num_seq.NEXTVAL, 
             '��� �۷�üũ �̱ۼ�Ʈ_Beige', 
             120000, 
             110000, 
             '�ܿ���� �Ա� ���� �β��� �ִ� �̱ۼ�Ʈ',
             'euishoe',
             '2018-08-01',
             'KOR',
             100000,
             'BG'); 

commit;             

-------------------- ��ǰ(products) ���̺� ���� ������ �߰� ---------------------


INSERT INTO products 
            (product_code, 
             jacket_code, 
             pants_code, 
             product_num, 
             product_count) 
VALUES      ('aaa',
             'aaa_j',
             'aaa_p',
             1,
             20);
             
INSERT INTO products 
            (product_code, 
             jacket_code, 
             pants_code, 
             product_num, 
             product_count) 
VALUES      ('bbb',
             'bbb_j',
             'bbb_p',
             2,
             20);  
             
INSERT INTO products 
            (product_code, 
             jacket_code, 
             pants_code, 
             product_num, 
             product_count) 
VALUES      ('ccc',
             'ccc_j',
             'ccc_p',
             3,
             20); 

INSERT INTO products 
            (product_code, 
             jacket_code, 
             pants_code, 
             product_num, 
             product_count) 
VALUES      ('ddd',
             'ddd_j',
             'ddd_p',
             3,
             20);  

INSERT INTO products 
            (product_code, 
             jacket_code, 
             pants_code, 
             product_num, 
             product_count) 
VALUES      ('eee',
             'eee_j',
             'eee_p',
             3,
             20); 
INSERT INTO products 
            (product_code, 
             jacket_code, 
             pants_code, 
             product_num, 
             product_count) 
VALUES      ('fff',
             'fff_j',
             'fff_p',
             3,
             20);

INSERT INTO products 
            (product_code, 
             jacket_code, 
             pants_code, 
             product_num, 
             product_count) 
VALUES      ('kkk',
             'kkk_j',
             'kkk_p',
             3,
             20);              
             
             
--------------------- ����(reviews) ���̺� ���� ������ �߰� ---------------------
            
             
INSERT INTO reviews 
            (review_num, 
             customer_id, 
             product_code, 
             review_title, 
             review_content, 
             review_password,
             review_score, 
             review_isdeleted) 
VALUES      (reviews_seq.NEXTVAL, 
             'abc1234', 
             'aaa', 
             '����', 
             '�ѳ� ���ƿ�',
             '1234',
             5.0, 
             'N');
       
             
INSERT INTO reviews 
            (review_num, 
             customer_id, 
             product_code, 
             review_title, 
             review_content,
             review_password,
             review_score, 
             review_isdeleted) 
VALUES      (reviews_seq.NEXTVAL, 
             'bangry', 
             'bbb',  
             '�̾�~~~~', 
             '���� ���ߴµ�~~~~~', 
             '7912',
             5.0, 
             'N');  


INSERT INTO reviews 
            (review_num, 
             customer_id, 
             product_code, 
             review_title, 
             review_content,
             review_password,
             review_score, 
             review_isdeleted) 
VALUES      (reviews_seq.NEXTVAL, 
             'abc1234', 
             'aaa', 
             '���ƿ�', 
             '���˷δٰ� ���ƿ�', 
             '1111',
             4.5, 
             'N');
             
             
INSERT INTO reviews 
            (review_num, 
             customer_id, 
             product_code, 
             review_title, 
             review_content, 
             review_password,
             review_score, 
             review_isdeleted) 
VALUES      (reviews_seq.NEXTVAL, 
             'abc1234', 
             'bbb', 
             '�����ε���....', 
             '�ʹ� ¥������..... ���� �� �̵���....', 
             '7890',
             2.0, 
             'N');
                    

------------------ ���� ����(qna_types) ���̺� ���� ������ �߰� ------------------


INSERT INTO qna_types
            (qna_type_num,
             qna_type_name)
VALUES      (1,
            '���');


INSERT INTO qna_types
            (qna_type_num,
             qna_type_name)
VALUES      ('2',
            '������');


INSERT INTO qna_types
            (qna_type_num,
             qna_type_name)
VALUES      ('3',
            '����');
            
            
INSERT INTO qna_types
            (qna_type_num,
             qna_type_name)
VALUES      ('4',
            '��Ÿ');

             
--------------------- ���(deliveries) ���̺� ���� ������ �߰� -------------------
             
INSERT INTO deliveries 
            (delivery_num, 
             delivery_address, 
             delivery_recipient, 
             delivery_recipient_phonenumber, 
             delivery_requirement, 
             order_date, 
             delivery_date, 
             delivery_status) 
VALUES     (deliveries_seq.NEXTVAL, 
            '��⵵ ��õ�� ������ 110-1 702ȣ', 
            '�ڽÿ�', 
            '01094841297', 
            '����� ���ǿ� �ð��ּ���', 
            SYSDATE, 
            SYSDATE + 3, 
            '�����'); 

INSERT INTO deliveries 
            (delivery_num, 
             delivery_address, 
             delivery_recipient, 
             delivery_recipient_phonenumber, 
             delivery_requirement, 
             order_date, 
             delivery_date, 
             delivery_status) 
VALUES     (deliveries_seq.NEXTVAL, 
            '����Ư���� ��õ�� ���������1�� 151 �̳��÷��� 1��', 
            '�ڽ�Ÿ', 
            '01012341234', 
            '����� ������Ź�帳�ϴ�.', 
            SYSDATE, 
            SYSDATE + 3, 
            '����غ���');  
commit;
INSERT INTO deliveries 
            (delivery_num, 
             delivery_address, 
             delivery_recipient, 
             delivery_recipient_phonenumber, 
             delivery_requirement, 
             order_date, 
             delivery_date, 
             delivery_status) 
VALUES     (deliveries_seq.NEXTVAL, 
            '��� ��õ�� ���η� 505 �������̺� 1�� �̵��Ŀ��', 
            '�̵��', 
            '01012341234', 
            '����� ���տ� ���ּ���', 
            SYSDATE, 
            SYSDATE + 5, 
            '��ǰ�غ���');
commit;


--------------------- �ֹ�(orders) ���̺� ���� ������ �߰� ---------------------

INSERT INTO orders(order_num, 
             customer_id, 
             noncustomer_num, 
             delivery_num, 
             payment_num) 
VALUES     (orders_seq.nextval, 
            'bangry', 
            null, 
            1, 
            1);

INSERT INTO orders(order_num, 
             customer_id, 
             noncustomer_num, 
             delivery_num, 
             payment_num) 
VALUES     (orders_seq.nextval, 
            'bongus', 
            null, 
            2, 
            2);
            
INSERT INTO orders(order_num, 
             customer_id, 
             noncustomer_num, 
             delivery_num, 
             payment_num) 
VALUES     (orders_seq.nextval, 
            'abc1234', 
            null, 
            3, 
            3);


------------ ��ǰ �ֹ�(order_by_products) ���̺� ���� ������ �߰� ----------------


INSERT INTO order_by_products 
            (order_by_product_num, 
             product_code, 
             order_num, 
             product_count) 
VALUES      (order_by_products_seq.NEXTVAL,
             'aaa',
             1,
             20); 

INSERT INTO order_by_products 
            (order_by_product_num, 
             product_code, 
             order_num, 
             product_count) 
VALUES      (order_by_products_seq.NEXTVAL,
             'aaa',
             2,
             20); 

INSERT INTO order_by_products 
            (order_by_product_num, 
             product_code, 
             order_num, 
             product_count) 
VALUES      (order_by_products_seq.NEXTVAL,
             'eee',
             2,
             20);             
           
             
------------------- ��ٱ���(carts) ���̺� ���� ������ �߰� ---------------------


INSERT INTO carts(cart_num, 
             product_code, 
             customer_id) 
VALUES     (carts_seq.nextval, 
            'aaa', 
            'bangry');

INSERT INTO carts(cart_num, 
             product_code, 
             customer_id) 
VALUES     (carts_seq.nextval, 
            'bbb', 
            'bongus');   

INSERT INTO carts(cart_num, 
             product_code, 
             customer_id) 
VALUES     (carts_seq.nextval, 
            'ccc', 
            'abc1234');             
            

-------------- ����Ʈ ��å(point_policies) ���̺� ���� ������ �߰� ---------------


INSERT INTO point_policies 
            (point_policy_type, 
             point_policy_description,
             POINT_POLICY_PAYMENT) 
VALUES      (point_policies_seq.NEXTVAL, 
             '���� ���� ���� ����Ʈ',
             2000); 


INSERT INTO point_policies 
            (point_policy_type, 
             point_policy_description,
             POINT_POLICY_PAYMENT) 
VALUES      (point_policies_seq.NEXTVAL, 
             '���� ���� ���� ����Ʈ',
             2000);   


INSERT INTO point_policies 
            (point_policy_type, 
             point_policy_description,
             POINT_POLICY_PAYMENT) 
VALUES      (point_policies_seq.NEXTVAL, 
             '���� ���� ���� ����Ʈ',
             2000); 

INSERT INTO point_policies 
            (point_policy_type, 
             point_policy_description,
             POINT_POLICY_PAYMENT) 
VALUES      (point_policies_seq.NEXTVAL, 
             '���� ���� ���� ����Ʈ',
             2000); 


-------------- ����Ʈ �̷�(point_hitories) ���̺� ���� ������ �߰� ---------------


INSERT INTO point_histories 
            (point_history_num, 
             point_policy_type, 
             customer_id, 
             point_history_score, 
             point_history_update_date) 
VALUES     (point_histories_seq.NEXTVAL, 
            1, 
            'bangry', 
            2000, 
            SYSDATE); 

INSERT INTO point_histories 
            (point_history_num, 
             point_policy_type, 
             customer_id, 
             point_history_score, 
             point_history_update_date) 
VALUES     (point_histories_seq.NEXTVAL, 
            2, 
            'bangry', 
            4000, 
            SYSDATE); 

INSERT INTO point_histories 
            (point_history_num, 
             point_policy_type, 
             customer_id, 
             point_history_score, 
             point_history_update_date) 
VALUES     (point_histories_seq.NEXTVAL, 
            1, 
            'bongus', 
            3000, 
            SYSDATE); 

         

---------------- ���ø���Ʈ(wishlists) ���̺� ���� ������ �߰� ------------------
  
INSERT INTO wishlists 
            (wishlist_num, 
             customer_id, 
             product_code) 
VALUES      (wishlists_seq.NEXTVAL, 
             'bangry', 
             'ddd');
             
INSERT INTO wishlists 
            (wishlist_num, 
             customer_id, 
             product_code) 
VALUES      (wishlists_seq.NEXTVAL, 
             'bangry', 
             'kkk');

INSERT INTO wishlists 
            (wishlist_num, 
             customer_id, 
             product_code) 
VALUES      (wishlists_seq.NEXTVAL, 
             'bongus', 
             'fff'); 


---------------------- ����(qnas) ���̺� ���� ������ �߰� -----------------------


INSERT INTO qnas
            (qna_num,
             qna_type_num,
             customer_id,
             qna_title,
             qna_content,
             qna_password,
             qna_isAnswered,
             qna_isLock,
             qna_rank,
             qna_isDeleted,
             qna_regdate)
VALUES      (qnas_seq.NEXTVAL,
             1,
             'abc1234',
             '��۰��ù���',
             '������ �����ؿ�?',
             '1234',
             'N',
             'Y',
             '1',
             'N',
             '2018-11-06');
             
             
INSERT INTO qnas
            (qna_num,
             qna_type_num,
             customer_id,
             qna_title,
             qna_content,
             qna_password,
             qna_isAnswered,
             qna_isLock,
             qna_rank,
             qna_isDeleted,
             qna_regdate)
VALUES      (qnas_seq.NEXTVAL,
             2,
             'abc1234',
             '��������ù���',
             '�� �����ε� ����?',
             '9584',
             'Y',
             'Y',
             '1',
             'N',
             '2018-10-18');
             
             
INSERT INTO qnas
            (qna_num,
             qna_type_num,
             customer_id,
             qna_title,
             qna_content,
             qna_password,
             qna_isAnswered,
             qna_isLock,
             qna_rank,
             qna_isDeleted,
             qna_regdate)
VALUES      (qnas_seq.NEXTVAL,
             3,
             'bangry',
             '������ù���',
             '�̻� �̻�?',
             '9584',
             'N',
             'N',
             '0',
             'N',
             '2017-06-12');
             

-------------------- ���(comments) ���̺� ���� ������ �߰� ---------------------


INSERT INTO comments 
            (comment_num, 
             review_num, 
             qna_num, 
             comment_content, 
             comment_level, 
             comment_isdeleted) 
VALUES     (comments_seq.nextval, 
            1, --review_num(FK) 
            1,-- qna_num(FK) null 
            '���� ������ �¾ƿ�?', 
            1, 
            'N'); 

INSERT INTO comments 
            (comment_num, 
             review_num, 
             qna_num, 
             comment_content, 
             comment_level, 
             comment_isdeleted) 
VALUES     (comments_seq.nextval, 
            4, --review_num(FK) 
            2,-- qna_num(FK) null 
            '��ȣ', 
            1, 
            'N'); 
            
INSERT INTO comments 
            (comment_num, 
             review_num, 
             qna_num, 
             comment_content, 
             comment_level, 
             comment_isdeleted) 
VALUES     (comments_seq.nextval, 
            2, --review_num(FK)  null
            3,-- qna_num(FK) 
            'pna�亯��', 
            1, 
            'N');      

INSERT INTO comments 
            (comment_num, 
             review_num, 
             qna_num, 
             comment_content, 
             comment_level, 
             comment_isdeleted) 
VALUES     (comments_seq.nextval, 
            1, --review_num(FK)  null
            2,-- qna_num(FK) 
            'pna�亯��2', 
            1, 
            'N'); 


-------------------- �̹���(images) ���̺� ���� ������ �߰� ---------------------


INSERT INTO images 
            (image_num, 
             product_code, 
             review_num, 
             qna_num, 
             image_ref) 
VALUES      (images_seq.nextval, 
             null, --product_code 
             3, --review, qna null��..
             null,
             'C:\images\image1.jpg');


INSERT INTO images 
            (image_num, 
             product_code, 
             review_num, 
             qna_num, 
             image_ref) 
VALUES      (images_seq.nextval, 
             'eee', --product_code 
             null, 
             null,
             'C:\images\image2.jpg'); 


INSERT INTO images 
            (image_num, 
             product_code, 
             review_num, 
             qna_num, 
             image_ref) 
VALUES      (images_seq.nextval, 
             null, --product_code null
             4,
             null,  --qna null
             'C:\images\image23jpg'); 
             
commit;