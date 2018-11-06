----------------------------- �ߺ� ���̺� ��� ���� -----------------------------


drop table point_policies CASCADE CONSTRAINTS;          -- ����Ʈ ��å       
drop table point_histories CASCADE CONSTRAINTS;         -- ����Ʈ �̷�       
drop table orders CASCADE CONSTRAINTS;                  -- �ֹ�             
drop table payments CASCADE CONSTRAINTS;                -- ����              
drop table noncustomers CASCADE CONSTRAINTS;            -- ��ȸ��            
drop table order_by_products CASCADE CONSTRAINTS;       -- ��ǰ�ֹ�          
drop table deliveries CASCADE CONSTRAINTS;              -- ���             
drop table customers CASCADE CONSTRAINTS;               -- ȸ��              
drop table reviews CASCADE CONSTRAINTS;                 -- ����              
drop table carts CASCADE CONSTRAINTS;                   -- ��ٱ���          
drop table product_infos CASCADE CONSTRAINTS;           -- ��ǰ����          
drop table images CASCADE CONSTRAINTS;                  -- �̹���           
drop table qnas CASCADE CONSTRAINTS;                    -- ����             
drop table size_codes CASCADE CONSTRAINTS;              -- ������ �ڵ�      
drop table jackets CASCADE CONSTRAINTS;                 -- ����            
drop table color_codes CASCADE CONSTRAINTS;             -- �����ڵ�        
drop table comments CASCADE CONSTRAINTS;                -- ���           
drop table wishlists CASCADE CONSTRAINTS;               -- ���ø���Ʈ     
drop table products CASCADE CONSTRAINTS;                -- ��ǰ          
drop table qna_types CASCADE CONSTRAINTS;               -- ��������      
drop table pants CASCADE CONSTRAINTS;                   -- ����         


----------------------------- �ߺ� ������ ��� ���� -----------------------------


drop sequence carts_seq;   
drop sequence orders_seq;
drop sequence deliveries_seq;
drop sequence order_by_products_seq;
drop sequence product_list_num_seq;   
drop sequence product_infos_seq;  
drop sequence reviews_seq;
drop sequence payments_seq;
drop sequence imags_seq;
drop sequence qnas_seq;
drop sequence comments_seq;
drop sequence wishlists_seq;
drop sequence point_histories_seq;
drop sequence point_policies_seq;


------------------------------- ���̺� ���� ���� --------------------------------


/* 1. ����Ʈ ��å(point_policies) ���̺� ���� */
CREATE TABLE point_policies 
  ( 
     point_policy_type        NUMBER(10), 
     point_policy_description VARCHAR2(400), 
     point_policy_payment     NUMBER(15) 
  ); 



/* 2. ����Ʈ�̷�(point_histories) ���̺� ���� */
CREATE TABLE point_histories 
  ( 
     point_history_num         VARCHAR2(30), 
     point_policy_type         NUMBER(10), 
     customer_id               VARCHAR2(40), 
     point_history_score       NUMBER(15), 
     point_history_update_date DATE 
  ); 
  
  
/* 3. �ֹ�(orders) ���̺� ���� */
CREATE TABLE orders 
  ( 
     order_num       NUMBER(15), 
     customer_id     VARCHAR2(40), 
     noncustomer_num NUMBER(12), 
     delivery_num    NUMBER(10), 
     payment_num     NUMBER(10) 
  ); 


/* 4. ����(payments) ���̺� ���� */
CREATE TABLE payments 
  ( 
     payment_num         NUMBER(10), 
     payment_point       NUMBER(15), 
     payment_method      VARCHAR2(20), 
     payment_isrefund    CHAR(1), 
     payment_discount    NUMBER(15), 
     payment_origin_cost NUMBER(15), 
     delivery_charge     NUMBER(6) 
  ); 


/* 5. ��ȸ��(noncustomers) ���̺� ���� */
CREATE TABLE noncustomers 
  ( 
     noncustomer_num         NUMBER(12), 
     noncustomer_email       VARCHAR2(30), 
     noncustomer_name        VARCHAR2(20), 
     noncustomer_password    VARCHAR2(16), 
     noncustomer_phonenumber VARCHAR2(13) 
  ); 
  
  

/* 6. ��ǰ�ֹ�(order_by_products) ���̺� ���� */
CREATE TABLE order_by_products 
  ( 
     order_by_product_num NUMBER(15), 
     product_code         VARCHAR2(20), 
     order_num            NUMBER(15), 
     product_count        NUMBER(5) 
  ); 


/* 7. ���(deliveries) ���̺� ���� */
CREATE TABLE deliveries 
  ( 
     delivery_num                   NUMBER(10), 
     delivery_address               VARCHAR2(70), 
     delivery_recipient             VARCHAR2(20), 
     delivery_recipient_phonenumber VARCHAR2(13), 
     delivery_requirement           VARCHAR2(150), 
     order_date                     DATE, 
     delivery_date                  DATE, 
     delivery_status                VARCHAR2(20) 
  ); 


/* 8. ��(customers) ���̺� ���� */
CREATE TABLE customers 
  ( 
     customer_id          VARCHAR2(40), 
     customer_name        VARCHAR2(20), 
     customer_password    VARCHAR2(16), 
     customer_phonenumber VARCHAR2(13), 
     customer_email       VARCHAR2(30), 
     customer_address     VARCHAR2(90), 
     customer_postcode    VARCHAR2(7), 
     customer_birthday    DATE, 
     customer_gender      CHAR(1), 
     customer_jacket_size VARCHAR2(10), 
     customer_pants_size  VARCHAR2(10), 
     customer_height      VARCHAR2(10) 
  ); 
  

/* 9. ����(reviews) ���̺� ���� */
CREATE TABLE reviews 
  ( 
     review_num       NUMBER(10), 
     customer_id      VARCHAR2(40), 
     product_code     VARCHAR2(20), 
     review_title     VARCHAR2(50), 
     review_content   VARCHAR2(200), 
     review_score     NUMBER(1), 
     review_isdeleted CHAR(1), 
     review_password  VARCHAR2(10) 
  ); 


/* 10. ��ٱ���(carts) ���̺� ���� */
CREATE TABLE carts 
  ( 
     cart_num     NUMBER(10), 
     product_code VARCHAR2(20), 
     customer_id  VARCHAR2(40) 
  ); 


/* 11. ���ø���Ʈ(wishlists) ���̺� ���� */
CREATE TABLE wishlists 
  ( 
     wishlist_num NUMBER(15), 
     customer_id  VARCHAR2(40), 
     product_code VARCHAR2(20) 
  ); 


/* 12. ���(comments) ���̺� ���� */
CREATE TABLE comments 
  ( 
     comment_num       NUMBER(10), 
     review_num        NUMBER(10), 
     qna_num           NUMBER(10), 
     comment_content   VARCHAR2(400), 
     comment_level     NUMBER(2), 
     comment_isdeleted CHAR(1) 
  ); 


/* 13. ��ǰ(products) ���̺� ���� */
CREATE TABLE products 
  ( 
     product_code  VARCHAR2(20), 
     jacket_code   VARCHAR2(10), 
     pants_code    VARCHAR2(10), 
     product_num   NUMBER(10), 
     product_count NUMBER(10) 
  ); 


/* 14. �����ڵ�(color_codes) ���̺� ���� */
CREATE TABLE color_codes 
  ( 
     color_code   VARCHAR2(15), 
     color_detail VARCHAR2(18) 
  ); 
  

/* 15. ����(jackets) ���̺� ���� */
CREATE TABLE jackets 
  ( 
     jacket_code  VARCHAR2(10), 
     size_code    VARCHAR2(15), 
     jacket_count NUMBER(10) 
  ); 
  

/* 16. �������ڵ�(size_codes) �԰�ȭ ���̺� ���� */
CREATE TABLE size_codes 
  ( 
     size_code   VARCHAR2(15), 
     size_detail VARCHAR2(18) 
  ); 


/* 17. ����(qnas) ���̺� ���� */
CREATE TABLE qnas 
  ( 
     qna_num        NUMBER(10), 
     qna_type_num   NUMBER(10), 
     customer_id    VARCHAR2(40), 
     qna_title      VARCHAR2(60), 
     qna_content    VARCHAR2(4000), 
     qna_password   VARCHAR2(10), 
     qna_isanswered CHAR(1), 
     qna_islock     CHAR(1), 
     qna_rank       NUMBER(2), 
     qna_isdeleted  CHAR(1), 
     qna_regdate    DATE 
  ); 


/* 18. �̹���(images) ���̺� ���� */
CREATE TABLE images 
  ( 
     image_num    NUMBER(10), 
     product_code VARCHAR2(20), 
     review_num   NUMBER(10), 
     qna_num      NUMBER(10), 
     image_ref    VARCHAR2(800)
  ); 


/* 19. ��ǰ����(product_infos) ���̺� ���� */
CREATE TABLE product_infos 
  ( 
     product_num               NUMBER(10), 
     product_list_num          NUMBER(10), 
     product_name              VARCHAR(40), 
     product_cost              NUMBER(10), 
     product_price             NUMBER(10), 
     product_brief_information VARCHAR2(100), 
     product_manufacturer      VARCHAR2(30), 
     product_release_date      DATE, 
     product_origin            VARCHAR2(50), 
     product_list_price        NUMBER(10), 
     color_code                VARCHAR2(15) 
  ); 


/* 20. ����(pants) ���̺� ���� */
CREATE TABLE pants 
  ( 
     pants_code  VARCHAR2(10), 
     size_code   VARCHAR2(15), 
     pants_count NUMBER(10) 
  ); 


/* 21. ��������(qna_types) ���̺� ���� */
CREATE TABLE qna_types 
  ( 
     qna_type_num  NUMBER(10), 
     qna_type_name VARCHAR2(30) 
  ); 


------------------------------- Primary Key ���� -------------------------------


/* ����Ʈ��å(point_policies) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE point_policies 
  ADD CONSTRAINT point_policies_pk PRIMARY KEY(point_policy_type); 


/* ����Ʈ�̷�(point_histories) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE point_histories
  ADD CONSTRAINT point_histories_pk PRIMARY KEY(point_history_num);


/* �ֹ�(orders) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE orders
  ADD CONSTRAINT orders_pk PRIMARY KEY(order_num);


/* ����(payments) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE payments
  ADD CONSTRAINT payments_pk PRIMARY KEY(payment_num);


/* ����(reviews) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE reviews
  ADD CONSTRAINT reviews_pk PRIMARY KEY(review_num);


/* ȸ��(customers) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE customers
  ADD CONSTRAINT customers_pk PRIMARY KEY(customer_id);


/* ��ȸ��(noncustomers) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE noncustomers
  ADD CONSTRAINT noncustomers_pk PRIMARY KEY(noncustomer_num);


/* ��ǰ�ֹ�(order_by_products) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE order_by_products
  ADD CONSTRAINT order_by_products_pk PRIMARY KEY(order_by_product_num);

/* ���(deliveries) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE deliveries
  ADD CONSTRAINT deliveries_pk PRIMARY KEY(delivery_num);


/* ��ٱ���(carts) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE carts
  ADD CONSTRAINT carts_pk PRIMARY KEY(cart_num);

/* ���ø���Ʈ(wishlists) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE wishlists
  ADD CONSTRAINT wishlists_pk PRIMARY KEY(wishlist_num);
  

/* ��ǰ(products) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE products
  ADD CONSTRAINT products_pk PRIMARY KEY(product_code);


/* �����ڵ�(color_codes) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE color_codes
  ADD CONSTRAINT color_codes_pk PRIMARY KEY(color_code);


/* ����(jackets) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE jackets
  ADD CONSTRAINT jackets_pk PRIMARY KEY(jacket_code);


/* �������ڵ�(size_codes) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE size_codes
  ADD CONSTRAINT size_codes_pk PRIMARY KEY(size_code);


/* ���(comments) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE comments
  ADD CONSTRAINT comments_pk PRIMARY KEY(comment_num);


/* ����(qnas) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE qnas
  ADD CONSTRAINT qnas_pk PRIMARY KEY(qna_num);


/* �̹���(images) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE images
  ADD CONSTRAINT images_pk PRIMARY KEY(image_num);


/* ��ǰ����(product_infos) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE product_infos
  ADD CONSTRAINT product_infos_pk PRIMARY KEY(product_num);


/* ����(pants) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE pants
  ADD CONSTRAINT pants_pk PRIMARY KEY(pants_code);


/* ��������(qna_types) ���̺� ������� ����(Primary Key �߰�) */
ALTER TABLE qna_types
  ADD CONSTRAINT qna_types_pk PRIMARY KEY(qna_type_num);


------------------------------- Foreign Key ���� -------------------------------


/* ����Ʈ�̷�(qna_types) ���̺� ������� ����(Foreign Key �߰�) */
ALTER TABLE point_histories 
  ADD CONSTRAINT point_histories_fk1 FOREIGN KEY(point_policy_type) 
  REFERENCES point_policies(point_policy_type); 

ALTER TABLE point_histories
  ADD CONSTRAINT point_histories_fk2 FOREIGN KEY(customer_id) 
  REFERENCES customers(customer_id);


/* �ֹ�(orders) ���̺� ������� ����(Foreign Key �߰�) */
ALTER TABLE orders
  ADD CONSTRAINT orders_fk1 FOREIGN KEY(customer_id)
  REFERENCES customers(customer_id);

ALTER TABLE orders
  ADD CONSTRAINT orders_fk2 FOREIGN KEY(noncustomer_num)
  REFERENCES noncustomers(noncustomer_num);

ALTER TABLE orders
  ADD CONSTRAINT orders_fk3 FOREIGN KEY(delivery_num)
  REFERENCES deliveries(delivery_num);

ALTER TABLE orders
  ADD CONSTRAINT orders_fk4 FOREIGN KEY(payment_num)
  REFERENCES payments(payment_num);


/* ����(reviews) ���̺� ������� ����(Foreign Key �߰�) */
ALTER TABLE reviews
  ADD CONSTRAINT reviews_fk1 FOREIGN KEY(customer_id)
  REFERENCES customers(customer_id);

ALTER TABLE reviews
  ADD CONSTRAINT reviews_fk2 FOREIGN KEY(product_code)
  REFERENCES products(product_code);


/* ��ǰ�ֹ�(order_by_products) ���̺� ������� ����(Foreign Key �߰�) */
ALTER TABLE order_by_products
  ADD CONSTRAINT order_by_products_fk1 FOREIGN KEY(product_code)
  REFERENCES products(product_code);

ALTER TABLE order_by_products
  ADD CONSTRAINT order_by_products_fk2 FOREIGN KEY(order_num)
  REFERENCES orders(order_num);


/* ��ٱ���(carts) ���̺� ������� ����(Foreign Key �߰�) */
ALTER TABLE carts
  ADD CONSTRAINT carts_fk1 FOREIGN KEY(product_code)
  REFERENCES products(product_code);

ALTER TABLE carts
  ADD CONSTRAINT carts_fk2 FOREIGN KEY(customer_id)
  REFERENCES customers(customer_id);


/* ���ø���Ʈ(wishlists) ���̺� ������� ����(Foreign Key �߰�) */
ALTER TABLE wishlists
  ADD CONSTRAINT wishlists_fk1 FOREIGN KEY(customer_id)
  REFERENCES customers(customer_id);

ALTER TABLE wishlists
  ADD CONSTRAINT wishlists_fk2 FOREIGN KEY(product_code)  
  REFERENCES products(product_code);


/* ���(comments) ���̺� ������� ����(Foreign Key �߰�) */
ALTER TABLE comments
  ADD CONSTRAINT comments_fk1 FOREIGN KEY(review_num)
  REFERENCES reviews(review_num);

ALTER TABLE comments
  ADD CONSTRAINT comments_fk2 FOREIGN KEY(qna_num)
  REFERENCES qnas(qna_num);


/* ��ǰ����(product_infos) ���̺� ������� ����(Foreign Key �߰�) */
ALTER TABLE product_infos
  ADD CONSTRAINT product_infos_fk1 FOREIGN KEY(color_code)
  REFERENCES color_codes(color_code);

/* ����(qnas) ���̺� ������� ����(Foreign Key �߰�) */
ALTER TABLE qnas
  ADD CONSTRAINT qnas_fk1 FOREIGN KEY(qna_type_num)
  REFERENCES qna_types(qna_type_num);

ALTER TABLE qnas
  ADD CONSTRAINT qnas_fk2 FOREIGN KEY(customer_id)
  REFERENCES customers(customer_id);


/* �̹���(images) ���̺� ������� ����(Foreign Key �߰�) */
ALTER TABLE images
  ADD CONSTRAINT images_fk1 FOREIGN KEY(product_code)
  REFERENCES products(product_code);

ALTER TABLE images
  ADD CONSTRAINT images_fk2 FOREIGN KEY(review_num)
  REFERENCES reviews(review_num);

ALTER TABLE images
  ADD CONSTRAINT images_fk3 FOREIGN KEY(qna_num)
  REFERENCES qnas(qna_num);


/* ��ǰ(products) ���̺� ������� ����(Foreign Key �߰�) */
ALTER TABLE products
  ADD CONSTRAINT products_fk1 FOREIGN KEY(jacket_code)
  REFERENCES jackets(jacket_code);

ALTER TABLE products
  ADD CONSTRAINT products_fk2 FOREIGN KEY(pants_code)
  REFERENCES pants(pants_code);

ALTER TABLE products
  ADD CONSTRAINT products_fk3 FOREIGN KEY(product_num)
  REFERENCES product_infos(product_num);


/* ����(jackets) ���̺� ������� ����(Foreign Key �߰�) */
ALTER TABLE jackets
  ADD CONSTRAINT jackets_fk1 FOREIGN KEY(size_code)
  REFERENCES size_codes(size_code);


/* ����(pants) ���̺� ������� ����(Foreign Key �߰�) */
ALTER TABLE pants
  ADD CONSTRAINT pants_fk1 FOREIGN KEY(size_code)
  REFERENCES size_codes(size_code);


----------------------------- ���̺� ������ ���� ------------------------------


/* ����(payments) ���̺��� ������ȣ Sequence ���� */
CREATE SEQUENCE payments_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOMAXVALUE 
  NOMINVALUE; 


/* ����(reviews) ���̺��� �����ȣ Sequence ���� */  
CREATE SEQUENCE reviews_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE;


/* ��ǰ����(product_infos) ���̺��� ��ǰ��ȣ Sequence ���� */
CREATE SEQUENCE product_infos_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE;
   

/* ��ǰ����(product_infos) ���̺��� ��ǰ�۹�ȣ Sequence ���� */
CREATE SEQUENCE product_list_num_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE;


/* ��ǰ�ֹ�(order_by_products) ���̺��� ��ǰ�ֹ���ȣ Sequence ���� */
CREATE SEQUENCE order_by_products_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE;


/* ���(deliveries) ���̺��� ��۹�ȣ Sequence ���� */
CREATE SEQUENCE deliveries_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE;


/* �ֹ�(orders) ���̺��� �ֹ���ȣ Sequences ���� */
CREATE SEQUENCE orders_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE;  


/* ��ٱ���(carts) ���̺��� ��ٱ��Ϲ�ȣ Sequences ���� */
CREATE SEQUENCE carts_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE;    
   

/* ����Ʈ��å(point_policies_seq) ���̺��� ����Ʈ��å��ȣ Sequence ���� */
CREATE SEQUENCE point_policies_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOMAXVALUE 
  NOMINVALUE;    
  
  
/* ����Ʈ�̷�(point_hostories_seq) ���̺��� ����Ʈ�̷¹�ȣ Sequence ���� */
CREATE SEQUENCE point_histories_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOMAXVALUE 
  NOMINVALUE;  


/* ���ø���Ʈ(wishlists) ���̺��� ���ø���Ʈ��ȣ Sequence ���� */
CREATE SEQUENCE wishlists_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE; 


/* ���(comments) ���̺��� ��۹�ȣ Sequence ���� */
CREATE SEQUENCE comments_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOMAXVALUE 
  NOMINVALUE;   
  

/* ����(qnas) ���̺��� ���ǹ�ȣ Sequence ���� */
CREATE SEQUENCE qnas_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE;


/* �̹���(images) ���̺��� �̹��� ��ȣ Sequence ���� */
CREATE SEQUENCE images_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOMAXVALUE 
  NOMINVALUE;   
  
  
  commit;