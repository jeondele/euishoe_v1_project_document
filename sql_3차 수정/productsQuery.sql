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
                                 ON r.product_code = p.product_code 
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
                                 ON r.product_code = p.product_code 
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
WHERE  product_tpo = 'bizcasual'; 
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
WHERE  product_body = 1; 
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




