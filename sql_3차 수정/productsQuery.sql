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
                                 ON r.product_code = p.product_code 
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
                                 ON r.product_code = p.product_code 
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
WHERE  product_tpo = 'bizcasual'; 
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
WHERE  product_body = 1; 
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




