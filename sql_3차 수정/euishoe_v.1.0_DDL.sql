----------------------------- 중복 테이블 모두 제거 -----------------------------


drop table point_policies CASCADE CONSTRAINTS;          -- 포인트 정책       
drop table point_histories CASCADE CONSTRAINTS;         -- 포인트 이력       
drop table orders CASCADE CONSTRAINTS;                  -- 주문             
drop table payments CASCADE CONSTRAINTS;                -- 결제              
drop table noncustomers CASCADE CONSTRAINTS;            -- 비회원            
drop table order_by_products CASCADE CONSTRAINTS;       -- 상품주문          
drop table deliveries CASCADE CONSTRAINTS;              -- 배송             
drop table customers CASCADE CONSTRAINTS;               -- 회원              
drop table reviews CASCADE CONSTRAINTS;                 -- 리뷰              
drop table carts CASCADE CONSTRAINTS;                   -- 장바구니          
drop table product_infos CASCADE CONSTRAINTS;           -- 상품정보          
drop table images CASCADE CONSTRAINTS;                  -- 이미지           
drop table qnas CASCADE CONSTRAINTS;                    -- 문의             
drop table size_codes CASCADE CONSTRAINTS;              -- 사이즈 코드      
drop table jackets CASCADE CONSTRAINTS;                 -- 상의            
drop table color_codes CASCADE CONSTRAINTS;             -- 색상코드        
drop table comments CASCADE CONSTRAINTS;                -- 댓글           
drop table wishlists CASCADE CONSTRAINTS;               -- 위시리스트     
drop table products CASCADE CONSTRAINTS;                -- 상품          
drop table qna_types CASCADE CONSTRAINTS;               -- 문의유형      
drop table pants CASCADE CONSTRAINTS;                   -- 하의         


----------------------------- 중복 시퀀스 모두 제거 -----------------------------


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


------------------------------- 테이블 생성 쿼리 --------------------------------


/* 1. 포인트 정책(point_policies) 테이블 생성 */
CREATE TABLE point_policies 
  ( 
     point_policy_type        NUMBER(10), 
     point_policy_description VARCHAR2(400), 
     point_policy_payment     NUMBER(15) 
  ); 



/* 2. 포인트이력(point_histories) 테이블 생성 */
CREATE TABLE point_histories 
  ( 
     point_history_num         VARCHAR2(30), 
     point_policy_type         NUMBER(10), 
     customer_id               VARCHAR2(40), 
     point_history_score       NUMBER(15), 
     point_history_update_date DATE 
  ); 
  
  
/* 3. 주문(orders) 테이블 생성 */
CREATE TABLE orders 
  ( 
     order_num       NUMBER(15), 
     customer_id     VARCHAR2(40), 
     noncustomer_num NUMBER(12), 
     delivery_num    NUMBER(10), 
     payment_num     NUMBER(10) 
  ); 


/* 4. 결제(payments) 테이블 생성 */
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


/* 5. 비회원(noncustomers) 테이블 생성 */
CREATE TABLE noncustomers 
  ( 
     noncustomer_num         NUMBER(12), 
     noncustomer_email       VARCHAR2(30), 
     noncustomer_name        VARCHAR2(20), 
     noncustomer_password    VARCHAR2(16), 
     noncustomer_phonenumber VARCHAR2(13) 
  ); 
  
  

/* 6. 상품주문(order_by_products) 테이블 생성 */
CREATE TABLE order_by_products 
  ( 
     order_by_product_num NUMBER(15), 
     product_code         VARCHAR2(20), 
     order_num            NUMBER(15), 
     product_count        NUMBER(5) 
  ); 


/* 7. 배송(deliveries) 테이블 생성 */
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


/* 8. 고객(customers) 테이블 생성 */
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
  

/* 9. 리뷰(reviews) 테이블 생성 */
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


/* 10. 장바구니(carts) 테이블 생성 */
CREATE TABLE carts 
  ( 
     cart_num     NUMBER(10), 
     product_code VARCHAR2(20), 
     customer_id  VARCHAR2(40) 
  ); 


/* 11. 위시리스트(wishlists) 테이블 생성 */
CREATE TABLE wishlists 
  ( 
     wishlist_num NUMBER(15), 
     customer_id  VARCHAR2(40), 
     product_code VARCHAR2(20) 
  ); 


/* 12. 댓글(comments) 테이블 생성 */
CREATE TABLE comments 
  ( 
     comment_num       NUMBER(10), 
     review_num        NUMBER(10), 
     qna_num           NUMBER(10), 
     comment_content   VARCHAR2(400), 
     comment_level     NUMBER(2), 
     comment_isdeleted CHAR(1) 
  ); 


/* 13. 상품(products) 테이블 생성 */
CREATE TABLE products 
  ( 
     product_code  VARCHAR2(20), 
     jacket_code   VARCHAR2(10), 
     pants_code    VARCHAR2(10), 
     product_num   NUMBER(10), 
     product_count NUMBER(10) 
  ); 


/* 14. 색상코드(color_codes) 테이블 생성 */
CREATE TABLE color_codes 
  ( 
     color_code   VARCHAR2(15), 
     color_detail VARCHAR2(18) 
  ); 
  

/* 15. 상의(jackets) 테이블 생성 */
CREATE TABLE jackets 
  ( 
     jacket_code  VARCHAR2(10), 
     size_code    VARCHAR2(15), 
     jacket_count NUMBER(10) 
  ); 
  

/* 16. 사이즈코드(size_codes) 규격화 테이블 생성 */
CREATE TABLE size_codes 
  ( 
     size_code   VARCHAR2(15), 
     size_detail VARCHAR2(18) 
  ); 


/* 17. 문의(qnas) 테이블 생성 */
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


/* 18. 이미지(images) 테이블 생성 */
CREATE TABLE images 
  ( 
     image_num    NUMBER(10), 
     product_code VARCHAR2(20), 
     review_num   NUMBER(10), 
     qna_num      NUMBER(10), 
     image_ref    VARCHAR2(800)
  ); 


/* 19. 상품정보(product_infos) 테이블 생성 */
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


/* 20. 하의(pants) 테이블 생성 */
CREATE TABLE pants 
  ( 
     pants_code  VARCHAR2(10), 
     size_code   VARCHAR2(15), 
     pants_count NUMBER(10) 
  ); 


/* 21. 문의유형(qna_types) 테이블 생성 */
CREATE TABLE qna_types 
  ( 
     qna_type_num  NUMBER(10), 
     qna_type_name VARCHAR2(30) 
  ); 


------------------------------- Primary Key 설정 -------------------------------


/* 포인트정책(point_policies) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE point_policies 
  ADD CONSTRAINT point_policies_pk PRIMARY KEY(point_policy_type); 


/* 포인트이력(point_histories) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE point_histories
  ADD CONSTRAINT point_histories_pk PRIMARY KEY(point_history_num);


/* 주문(orders) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE orders
  ADD CONSTRAINT orders_pk PRIMARY KEY(order_num);


/* 결제(payments) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE payments
  ADD CONSTRAINT payments_pk PRIMARY KEY(payment_num);


/* 리뷰(reviews) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE reviews
  ADD CONSTRAINT reviews_pk PRIMARY KEY(review_num);


/* 회원(customers) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE customers
  ADD CONSTRAINT customers_pk PRIMARY KEY(customer_id);


/* 비회원(noncustomers) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE noncustomers
  ADD CONSTRAINT noncustomers_pk PRIMARY KEY(noncustomer_num);


/* 상품주문(order_by_products) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE order_by_products
  ADD CONSTRAINT order_by_products_pk PRIMARY KEY(order_by_product_num);

/* 배송(deliveries) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE deliveries
  ADD CONSTRAINT deliveries_pk PRIMARY KEY(delivery_num);


/* 장바구니(carts) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE carts
  ADD CONSTRAINT carts_pk PRIMARY KEY(cart_num);

/* 위시리스트(wishlists) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE wishlists
  ADD CONSTRAINT wishlists_pk PRIMARY KEY(wishlist_num);
  

/* 상품(products) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE products
  ADD CONSTRAINT products_pk PRIMARY KEY(product_code);


/* 색상코드(color_codes) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE color_codes
  ADD CONSTRAINT color_codes_pk PRIMARY KEY(color_code);


/* 상의(jackets) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE jackets
  ADD CONSTRAINT jackets_pk PRIMARY KEY(jacket_code);


/* 사이즈코드(size_codes) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE size_codes
  ADD CONSTRAINT size_codes_pk PRIMARY KEY(size_code);


/* 댓글(comments) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE comments
  ADD CONSTRAINT comments_pk PRIMARY KEY(comment_num);


/* 문의(qnas) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE qnas
  ADD CONSTRAINT qnas_pk PRIMARY KEY(qna_num);


/* 이미지(images) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE images
  ADD CONSTRAINT images_pk PRIMARY KEY(image_num);


/* 상품정보(product_infos) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE product_infos
  ADD CONSTRAINT product_infos_pk PRIMARY KEY(product_num);


/* 하의(pants) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE pants
  ADD CONSTRAINT pants_pk PRIMARY KEY(pants_code);


/* 문의유형(qna_types) 테이블 제약사항 변경(Primary Key 추가) */
ALTER TABLE qna_types
  ADD CONSTRAINT qna_types_pk PRIMARY KEY(qna_type_num);


------------------------------- Foreign Key 설정 -------------------------------


/* 포인트이력(qna_types) 테이블 제약사항 변경(Foreign Key 추가) */
ALTER TABLE point_histories 
  ADD CONSTRAINT point_histories_fk1 FOREIGN KEY(point_policy_type) 
  REFERENCES point_policies(point_policy_type); 

ALTER TABLE point_histories
  ADD CONSTRAINT point_histories_fk2 FOREIGN KEY(customer_id) 
  REFERENCES customers(customer_id);


/* 주문(orders) 테이블 제약사항 변경(Foreign Key 추가) */
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


/* 리뷰(reviews) 테이블 제약사항 변경(Foreign Key 추가) */
ALTER TABLE reviews
  ADD CONSTRAINT reviews_fk1 FOREIGN KEY(customer_id)
  REFERENCES customers(customer_id);

ALTER TABLE reviews
  ADD CONSTRAINT reviews_fk2 FOREIGN KEY(product_code)
  REFERENCES products(product_code);


/* 상품주문(order_by_products) 테이블 제약사항 변경(Foreign Key 추가) */
ALTER TABLE order_by_products
  ADD CONSTRAINT order_by_products_fk1 FOREIGN KEY(product_code)
  REFERENCES products(product_code);

ALTER TABLE order_by_products
  ADD CONSTRAINT order_by_products_fk2 FOREIGN KEY(order_num)
  REFERENCES orders(order_num);


/* 장바구니(carts) 테이블 제약사항 변경(Foreign Key 추가) */
ALTER TABLE carts
  ADD CONSTRAINT carts_fk1 FOREIGN KEY(product_code)
  REFERENCES products(product_code);

ALTER TABLE carts
  ADD CONSTRAINT carts_fk2 FOREIGN KEY(customer_id)
  REFERENCES customers(customer_id);


/* 위시리스트(wishlists) 테이블 제약사항 변경(Foreign Key 추가) */
ALTER TABLE wishlists
  ADD CONSTRAINT wishlists_fk1 FOREIGN KEY(customer_id)
  REFERENCES customers(customer_id);

ALTER TABLE wishlists
  ADD CONSTRAINT wishlists_fk2 FOREIGN KEY(product_code)  
  REFERENCES products(product_code);


/* 댓글(comments) 테이블 제약사항 변경(Foreign Key 추가) */
ALTER TABLE comments
  ADD CONSTRAINT comments_fk1 FOREIGN KEY(review_num)
  REFERENCES reviews(review_num);

ALTER TABLE comments
  ADD CONSTRAINT comments_fk2 FOREIGN KEY(qna_num)
  REFERENCES qnas(qna_num);


/* 상품정보(product_infos) 테이블 제약사항 변경(Foreign Key 추가) */
ALTER TABLE product_infos
  ADD CONSTRAINT product_infos_fk1 FOREIGN KEY(color_code)
  REFERENCES color_codes(color_code);

/* 문의(qnas) 테이블 제약사항 변경(Foreign Key 추가) */
ALTER TABLE qnas
  ADD CONSTRAINT qnas_fk1 FOREIGN KEY(qna_type_num)
  REFERENCES qna_types(qna_type_num);

ALTER TABLE qnas
  ADD CONSTRAINT qnas_fk2 FOREIGN KEY(customer_id)
  REFERENCES customers(customer_id);


/* 이미지(images) 테이블 제약사항 변경(Foreign Key 추가) */
ALTER TABLE images
  ADD CONSTRAINT images_fk1 FOREIGN KEY(product_code)
  REFERENCES products(product_code);

ALTER TABLE images
  ADD CONSTRAINT images_fk2 FOREIGN KEY(review_num)
  REFERENCES reviews(review_num);

ALTER TABLE images
  ADD CONSTRAINT images_fk3 FOREIGN KEY(qna_num)
  REFERENCES qnas(qna_num);


/* 상품(products) 테이블 제약사항 변경(Foreign Key 추가) */
ALTER TABLE products
  ADD CONSTRAINT products_fk1 FOREIGN KEY(jacket_code)
  REFERENCES jackets(jacket_code);

ALTER TABLE products
  ADD CONSTRAINT products_fk2 FOREIGN KEY(pants_code)
  REFERENCES pants(pants_code);

ALTER TABLE products
  ADD CONSTRAINT products_fk3 FOREIGN KEY(product_num)
  REFERENCES product_infos(product_num);


/* 상의(jackets) 테이블 제약사항 변경(Foreign Key 추가) */
ALTER TABLE jackets
  ADD CONSTRAINT jackets_fk1 FOREIGN KEY(size_code)
  REFERENCES size_codes(size_code);


/* 하의(pants) 테이블 제약사항 변경(Foreign Key 추가) */
ALTER TABLE pants
  ADD CONSTRAINT pants_fk1 FOREIGN KEY(size_code)
  REFERENCES size_codes(size_code);


----------------------------- 테이블별 시퀀스 설정 ------------------------------


/* 결제(payments) 테이블의 결제번호 Sequence 생성 */
CREATE SEQUENCE payments_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOMAXVALUE 
  NOMINVALUE; 


/* 리뷰(reviews) 테이블의 리뷰번호 Sequence 생성 */  
CREATE SEQUENCE reviews_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE;


/* 상품정보(product_infos) 테이블의 상품번호 Sequence 생성 */
CREATE SEQUENCE product_infos_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE;
   

/* 상품정보(product_infos) 테이블의 상품글번호 Sequence 생성 */
CREATE SEQUENCE product_list_num_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE;


/* 상품주문(order_by_products) 테이블의 상품주문번호 Sequence 생성 */
CREATE SEQUENCE order_by_products_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE;


/* 배송(deliveries) 테이블의 배송번호 Sequence 생성 */
CREATE SEQUENCE deliveries_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE;


/* 주문(orders) 테이블의 주문번호 Sequences 생성 */
CREATE SEQUENCE orders_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE;  


/* 장바구니(carts) 테이블의 장바구니번호 Sequences 생성 */
CREATE SEQUENCE carts_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE;    
   

/* 포인트정책(point_policies_seq) 테이블의 포인트정책번호 Sequence 생성 */
CREATE SEQUENCE point_policies_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOMAXVALUE 
  NOMINVALUE;    
  
  
/* 포인트이력(point_hostories_seq) 테이블의 포인트이력번호 Sequence 생성 */
CREATE SEQUENCE point_histories_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOMAXVALUE 
  NOMINVALUE;  


/* 위시리스트(wishlists) 테이블의 위시리스트번호 Sequence 생성 */
CREATE SEQUENCE wishlists_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE; 


/* 댓글(comments) 테이블의 댓글번호 Sequence 생성 */
CREATE SEQUENCE comments_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOMAXVALUE 
  NOMINVALUE;   
  

/* 문의(qnas) 테이블의 문의번호 Sequence 생성 */
CREATE SEQUENCE qnas_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE
   NOMINVALUE;


/* 이미지(images) 테이블의 이미지 번호 Sequence 생성 */
CREATE SEQUENCE images_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOMAXVALUE 
  NOMINVALUE;   
  
  
  commit;