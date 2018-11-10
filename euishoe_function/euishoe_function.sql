select * from products;
select * from product_infos;
select * from reviews;

--상품페이징처리 테스트
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

--상품페이징처리  목록!!!
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










--no.8 상품리스트에 올라와 있는 상품들 중에 상품필터 가격 범위로 검색 (다중필터 적용 예정)
-- 상품번호, 상품글번호, 상품이름, 상품 글에 올라온 정가(원가, 정가 아님), 상품요약정보, 상품제조사, 상품발매일, 상품생산지, 상품색깔, 조회수

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

--no.9~10 상품리스트에 올라와 있는 상품들 중에 상품필터 가격순으로 검색 (다중필터 적용 예정)
-- 상품번호, 상품글번호, 상품이름, 상품 글에 올라온 정가(원가, 정가 아님), 상품요약정보, 상품제조사, 상품발매일, 상품생산지, 상품색깔, 조회수
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

--no.11 상품리스트에 올라와 있는 상품들 중에 별점 평로 검색 (다중필터 적용 예정)
-- 상품번호, 상품글번호, 상품이름, 상품 글에 올라온 정가(원가, 정가 아님), 상품요약정보, 상품제조사, 상품발매일, 상품생산지, 상품색깔, 조회수 , 평점 평균
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

--no.11 테스트
--select p.PRODUCT_NUM, avg(r.review_score) as"평점 평균"
--from reviews r join products p on r.PRODUCT_CODE = p.PRODUCT_CODE
--group by p.product_num;

--no.12 상품리스트에 올라와 있는 상품들 중에 조회수로 검색 (다중필터 적용 예정)
-- 상품번호, 상품글번호, 상품이름, 상품 글에 올라온 정가(원가, 정가 아님), 상품요약정보, 상품제조사, 상품발매일, 상품생산지, 상품색깔, 조회수
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

--NO.13 계절별
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

--no.14 상황별
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

--no.15 소재별
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

--NO.16 신체별
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

--NO.17 신체별
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

--no.20 상품리스트에 올라와 있는 상품들 중에 최신순으로 검색 (다중필터 적용 예정)
-- 상품번호, 상품글번호, 상품이름, 상품 글에 올라온 정가(원가, 정가 아님), 상품요약정보, 상품제조사, 상품발매일, 상품생산지, 상품색깔, 조회수
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

-- no.22 고객이 상품목록페이지에서 원하는 상품을 검색(상품이름으로),
-- no.23 상단 돋보기 버튼으로 검색
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
-- no.24 Best Product,New Product에서 더 보기
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

-- no.25 상품 목록 페이지에서 열거 방식 선택하여 검색

-- no.32 상단 navigator 바에서 장바구니 버튼 클릭하여 장바구니 내역 확인
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
-- no.33 고객이 상품 QuickView 페이지, 상품 상세 페이지에서 원하는 상품을 장바구니에 담습니다
INSERT INTO carts 
            (cart_num, 
             product_code, 
             customer_id) 
VALUES     (?, 
            ?, 
            ?); 

-- no.34 고객이 장바구니 페이지에서 상품을 삭제
DELETE FROM carts 
WHERE  cart_num = ? 
       AND customer_id = ?; 

-- no.35 비회원 장바구니 서비스 이용(DB 미활용)

-- no.36 고객이 상품 목록 페이지, 상품 상세 페이지에서 원하는 상품을 위시리스트에 담습니다
INSERT INTO wishlists 
            (wishlist_num, 
             customer_id, 
             product_num)
VALUES     (wishlist_num_seq.nextval, 
            'bangry', 
            3);

 
--no.37 1) 체크
SELECT wishlist_num "wishlistNum"
		FROM   wishlists 
		WHERE  customer_id = 'bangry' 
       	   AND product_num = 3;

select * from product_infos;

--wishlist에 해당하는 product_info 가져오기
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




-- no.38 고객이 위시리스트에서 상품 삭제
DELETE FROM wishlists 
WHERE  customer_id = 'bangry' 
       AND product_num = 3; 

-- no.39 회원 상품 주문, 위시리스트 페이지에서 항목 선택 후 삭제 버튼 클릭
/*
  배송 --> 결제 --> 주문 생성 --> 장바구니 삭제
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
            '경기도 용인시', 
            '상일이',
            '01066421489', 
            '집 밖에 놔주세요', 
            '20181109', 
            '20181112', 
            '배송중'); 
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

-- 비회원 상품주문
/*
  배송 --> 결제 --> 주문 생성 --> 장바구니 삭제
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

-- no.40 회원, 비회원이 quickView 페이지에서 바로 구매 버튼 클릭
-- 회원
/*
  배송 --> 결제 --> 주문 생성
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
-- 비회원
/*
  배송 --> 결제 --> 주문 생성
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
            
-- no.41 마이페이지 사용자 구매내역 출력
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

-- no.42 마이페이지 사용자 포인트내역 출력
SELECT customer_id, 
       point_history_num, 
       point_policy_type, 
       point_history_score, 
       point_history_update_date 
FROM   point_histories 
WHERE  customer_id LIKE ?; 

-- no.43 마이페이지 사용자 장바구니 출력
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

-- no.44 마이페이지 사용자 위시리스트 출력
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

-- no.45 마이페이지 사용자 회원정보수정 출력
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

-- no.46 상품 사진에 hover 시 뜨는 quickView 버튼으로 간략히 보기 출력
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
     
-- no.48 product page 내에서 연관 상품 보여주는 기능
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
      
--no.49 product page 내에서 상품 상세 내용 보여주는 기능
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
        
--no.50 product page 내에서 상품 스펙 보여주는 기능
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
        
--no.51 product page 내에서 상품 후기 보여주는 기능
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
--no.52 product page 내에서 상품 문의 보여주는 기능(???)
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

--no.53 사용자가 쇼핑몰 전반적인 내용에 대해 문의할 수 있는 문의사항 보여주는 기능
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

--no.54 홈페이지 전체 소개 보여주는 기능

--no.55 홈페이지 관리자와 연락 가능한 기능

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