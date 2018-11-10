select product_num from product_infos;
select * from color_codes;

-- 컬러코드
select * from color_codes;
INSERT INTO color_codes 
VALUES     ( 'BLGR', 
            'BlueGreen'); 

INSERT INTO color_codes 
VALUES     ( 'GN', 
            'Green'); 

INSERT INTO color_codes 
VALUES      ('IV', 
             'Ivory'); 
            
DELETE FROM color_codes 
WHERE  color_code = 'WI'; 

INSERT INTO color_codes 
VALUES     ('BGD', 
            'Burgundy'); 
-- 상, 하의 
ALTER TABLE jackets 
  MODIFY(jacket_code VARCHAR2(15)); 

ALTER TABLE pants 
  MODIFY(pants_code VARCHAR2(15)); 

SELECT * 
FROM   jackets; 

SELECT * 
FROM   pants; 
------------------------------------
INSERT INTO jackets 
VALUES     ( 'sts$jk$s$blgr', 
            'BLGR', 
            'S', 
            126); 

INSERT INTO jackets 
VALUES     ( 'sts$jk$m$blgr', 
            'BLGR', 
            'M', 
            82); 

INSERT INTO jackets 
VALUES     ( 'sts$jk$l$blgr', 
            'BLGR', 
            'L', 
            107); 

INSERT INTO pants 
VALUES     ( 'sts$pt$28$blgr', 
            'BLGR', 
            '28', 
            78); 

INSERT INTO pants 
VALUES     ( 'sts$pt$30$blgr', 
            'BLGR', 
            '30', 
            127); 

INSERT INTO pants 
VALUES     ( 'sts$pt$32$blgr', 
            'BLGR', 
            '32', 
            47); 
----------------------------------------            
INSERT INTO jackets
VALUES     ('hss$jk$s$bk',
            'BK',
            'S',
            75);
INSERT INTO jackets
VALUES     ('hss$jk$m$bk',
            'BK',
            'M',
            120);
INSERT INTO jackets
VALUES     ('hss$jk$l$bk',
            'BK',
            'L',
            100);
INSERT INTO jackets
VALUES     ('hss$jk$xl$bk',
            'BK',
            'XL',
            120);
            
INSERT INTO pants
VALUES     ('hss$pt$28$bk',
            'BK',
            '28',
            75);
INSERT INTO pants
VALUES     ('hss$pt$30$bk',
            'BK',
            '30',
            120); 
INSERT INTO pants
VALUES     ('hss$pt$32$bk',
            'BK',
            '32',
            100);
INSERT INTO pants
VALUES     ('hss$pt$34$bk',
            'BK',
            '34',
            120);            
------------------------------
INSERT INTO jackets
VALUES     ('bgs$jk$s$br',
            'BR',
            'S',
            75);
INSERT INTO jackets
VALUES     ('bgs$jk$m$br',
            'BR',
            'M',
            120);
INSERT INTO jackets
VALUES     ('bgs$jk$l$br',
            'BR',
            'L',
            100);
INSERT INTO jackets
VALUES     ('bgs$jk$xl$br',
            'BR',
            'XL',
            120);
            
INSERT INTO pants
VALUES     ('bgs$pt$28$br',
            'BR',
            '28',
            75);
INSERT INTO pants
VALUES     ('bgs$pt$30$br',
            'BR',
            '30',
            120); 
INSERT INTO pants
VALUES     ('bgs$pt$32$br',
            'BR',
            '32',
            100);
INSERT INTO pants
VALUES     ('bgs$pt$34$br',
            'BR',
            '34',
            120);            
---------------------------------
INSERT INTO jackets
VALUES     ('bgs$jk$s$gr',
            'GR',
            'S',
            75);
INSERT INTO jackets
VALUES     ('bgs$jk$m$gr',
            'GR',
            'M',
            120);
INSERT INTO jackets
VALUES     ('bgs$jk$l$gr',
            'GR',
            'L',
            100);
INSERT INTO jackets
VALUES     ('bgs$jk$xl$gr',
            'GR',
            'XL',
            120);
            
INSERT INTO pants
VALUES     ('bgs$pt$28$gr',
            'GR',
            '28',
            75);
INSERT INTO pants
VALUES     ('bgs$pt$30$gr',
            'GR',
            '30',
            120); 
INSERT INTO pants
VALUES     ('bgs$pt$32$gr',
            'GR',
            '32',
            100);
INSERT INTO pants
VALUES     ('bgs$pt$34$gr',
            'GR',
            '34',
            120); 
---------------------------------
--bts_bk------------------------------- 
INSERT INTO jackets
VALUES     ('bts$jk$s$bk',
            'BK',
            'S',
            92);
INSERT INTO jackets
VALUES     ('bts$jk$m$bk',
            'BK',
            'M',
            78);
INSERT INTO jackets
VALUES     ('bts$jk$l$bk',
            'BK',
            'L',
            98);
INSERT INTO jackets
VALUES     ('bts$jk$xl$bk',
            'BK',
            'XL',
            153);
            
INSERT INTO pants
VALUES     ('bts$pt$28$bk',
            'BK',
            '28',
            66);
INSERT INTO pants
VALUES     ('bts$pt$30$bk',
            'BK',
            '30',
            155); 
INSERT INTO pants
VALUES     ('bts$pt$32$bk',
            'BK',
            '32',
            112);
INSERT INTO pants
VALUES     ('bts$pt$34$bk',
            'BK',
            '34',
            43); 
---------------------------------
--ass_gn------------------------------- 
INSERT INTO jackets
VALUES     ('ass$jk$s$gn',
            'GN',
            'S',
            92);
INSERT INTO jackets
VALUES     ('ass$jk$m$gn',
            'GN',
            'M',
            78);
INSERT INTO jackets
VALUES     ('ass$jk$l$gn',
            'GN',
            'L',
            88);
            
INSERT INTO pants
VALUES     ('ass$pt$28$gn',
            'GN',
            '28',
            70);
INSERT INTO pants
VALUES     ('ass$pt$30$gn',
            'GN',
            '30',
            173); 
INSERT INTO pants
VALUES     ('ass$pt$32$gn',
            'GN',
            '32',
            115);
---------------------------------
select * from COLOR_CODES;
--asd_nv------------------------------- 
INSERT INTO jackets
VALUES     ('asd$jk$s$nv',
            'NV',
            'S',
            129);
INSERT INTO jackets
VALUES     ('asd$jk$m$nv',
            'NV',
            'M',
            98);
INSERT INTO jackets
VALUES     ('asd$jk$l$nv',
            'NV',
            'L',
            139);
            
INSERT INTO pants
VALUES     ('asd$pt$28$nv',
            'NV',
            '28',
            94);
INSERT INTO pants
VALUES     ('asd$pt$30$nv',
            'NV',
            '30',
            134); 
INSERT INTO pants
VALUES     ('asd$pt$32$nv',
            'NV',
            '32',
            115);
---------------------------------
--pss_nv------------------------------- 
INSERT INTO jackets
VALUES     ('pss$jk$s$nv',
            'NV',
            'S',
            129);
INSERT INTO jackets
VALUES     ('pss$jk$m$nv',
            'NV',
            'M',
            98);
INSERT INTO jackets
VALUES     ('pss$jk$l$nv',
            'NV',
            'L',
            99);
INSERT INTO jackets
VALUES     ('pss$jk$xl$nv',
            'NV',
            'XL',
            76);
INSERT INTO jackets
VALUES     ('pss$jk$xxl$nv',
            'NV',
            'XXL',
            54);
          
INSERT INTO pants
VALUES     ('pss$pt$28$nv',
            'NV',
            '28',
            94);
INSERT INTO pants
VALUES     ('pss$pt$30$nv',
            'NV',
            '30',
            134); 
INSERT INTO pants
VALUES     ('pss$pt$32$nv',
            'NV',
            '32',
            115);
INSERT INTO pants
VALUES     ('pss$pt$34$nv',
            'NV',
            '34',
            75);
INSERT INTO pants
VALUES     ('pss$pt$36$nv',
            'NV',
            '36',
            34);
---------------------------------
--gwcs_gr------------------------------- 
INSERT INTO jackets
VALUES     ('gwcs$jk$s$gr',
            'GR',
            'S',
            129);
INSERT INTO jackets
VALUES     ('gwcs$jk$m$gr',
            'GR',
            'M',
            98);
INSERT INTO jackets
VALUES     ('gwcs$jk$l$gr',
            'GR',
            'L',
            139);
            
INSERT INTO pants
VALUES     ('gwcs$pt$28$gr',
            'GR',
            '28',
            94);
INSERT INTO pants
VALUES     ('gwcs$pt$30$gr',
            'GR',
            '30',
            134); 
INSERT INTO pants
VALUES     ('gwcs$pt$32$gr',
            'GR',
            '32',
            115);
---------------------------------
--ass_nv------------------------------- 
INSERT INTO jackets
VALUES     ('ass$jk$s$nv',
            'NV',
            'S',
            129);
INSERT INTO jackets
VALUES     ('ass$jk$m$nv',
            'NV',
            'M',
            98);
INSERT INTO jackets
VALUES     ('ass$jk$l$nv',
            'NV',
            'L',
            139);
            
INSERT INTO pants
VALUES     ('ass$pt$28$nv',
            'NV',
            '28',
            94);
INSERT INTO pants
VALUES     ('ass$pt$30$nv',
            'NV',
            '30',
            134); 
INSERT INTO pants
VALUES     ('ass$pt$32$nv',
            'NV',
            '32',
            115);
---------------------------------
select * from COLOR_CODES;
--mbs_bg------------------------------- 
INSERT INTO jackets
VALUES     ('mbs$jk$s$bg',
            'BG',
            'S',
            129);
INSERT INTO jackets
VALUES     ('mb$jk$m$bg',
            'BG',
            'M',
            98);
INSERT INTO jackets
VALUES     ('mbs$jk$l$bg',
            'BG',
            'L',
            139);
INSERT INTO jackets
VALUES     ('mbs$jk$l$bg',
            'BG',
            'XL',
            119);
            
INSERT INTO pants
VALUES     ('mbs$pt$28$bg',
            'BG',
            '28',
            94);
INSERT INTO pants
VALUES     ('mbs$pt$30$bg',
            'BG',
            '30',
            134); 
INSERT INTO pants
VALUES     ('mbs$pt$32$bg',
            'BG',
            '32',
            115);
INSERT INTO pants
VALUES     ('mbs$pt$34$bg',
            'BG',
            '34',
            115);
---------------------------------
--sgb_gr------------------------------- 
INSERT INTO jackets
VALUES     ('sgb$jk$s$gr',
            'GR',
            'S',
            129);
INSERT INTO jackets
VALUES     ('sgb$jk$m$gr',
            'GR',
            'M',
            98);
INSERT INTO jackets
VALUES     ('sgb$jk$l$gr',
            'GR',
            'L',
            139);
            
INSERT INTO pants
VALUES     ('sgb$pt$28$gr',
            'GR',
            '28',
            94);
INSERT INTO pants
VALUES     ('sgb$pt$30$gr',
            'GR',
            '30',
            134); 
INSERT INTO pants
VALUES     ('sgb$pt$32$gr',
            'GR',
            '32',
            115);
---------------------------------
--dic_iv-------------------------------
INSERT INTO jackets
VALUES     ('dic$jk$s$iv',
            'IV',
            'S',
            129);
INSERT INTO jackets
VALUES     ('dic$jk$m$iv',
            'IV',
            'M',
            98);
INSERT INTO jackets
VALUES     ('dic$jk$l$iv',
            'IV',
            'L',
            139);
            
INSERT INTO pants
VALUES     ('dic$pt$28$iv',
            'IV',
            '28',
            94);
INSERT INTO pants
VALUES     ('dic$pt$30$iv',
            'IV',
            '30',
            134); 
INSERT INTO pants
VALUES     ('dic$pt$32$iv',
            'IV',
            '32',
            115);
---------------------------------
--ccb_bk---------------------------------------
INSERT INTO jackets
VALUES     ('ccb$jk$s$bk',
            'BK',
            'S',
            129);
INSERT INTO jackets
VALUES     ('ccb$jk$m$bk',
            'BK',
            'M',
            98);
INSERT INTO jackets
VALUES     ('ccb$jk$l$bk',
            'BK',
            'L',
            139);
            
INSERT INTO pants
VALUES     ('ccb$pt$28$bk',
            'BK',
            '28',
            94);
INSERT INTO pants
VALUES     ('ccb$pt$30$bk',
            'BK',
            '30',
            134); 
INSERT INTO pants
VALUES     ('ccb$pt$32$bk',
            'BK',
            '32',
            115);
---------------------------------
--lss_gr---------------------------------------
INSERT INTO jackets
VALUES     ('lss$jk$s$gr',
            'GR',
            'S',
            129);
INSERT INTO jackets
VALUES     ('lss$jk$m$gr',
            'GR',
            'M',
            98);
INSERT INTO jackets
VALUES     ('lss$jk$l$gr',
            'GR',
            'L',
            139);
            
INSERT INTO pants
VALUES     ('lss$pt$28$gr',
            'GR',
            '28',
            94);
INSERT INTO pants
VALUES     ('lss$pt$30$gr',
            'GR',
            '30',
            134); 
INSERT INTO pants
VALUES     ('lss$pt$32$gr',
            'GR',
            '32',
            115);
---------------------------------
--ums_bk--------------------------------------            
INSERT INTO jackets
VALUES     ('ums$jk$s$bk',
            'BK',
            'S',
            75);
INSERT INTO jackets
VALUES     ('ums$jk$m$bk',
            'BK',
            'M',
            120);
INSERT INTO jackets
VALUES     ('ums$jk$l$bk',
            'BK',
            'L',
            100);
INSERT INTO jackets
VALUES     ('ums$jk$xl$bk',
            'BK',
            'XL',
            120);
            
INSERT INTO pants
VALUES     ('ums$pt$28$bk',
            'BK',
            '28',
            75);
INSERT INTO pants
VALUES     ('ums$pt$30$bk',
            'BK',
            '30',
            120); 
INSERT INTO pants
VALUES     ('ums$pt$32$bk',
            'BK',
            '32',
            100);
INSERT INTO pants
VALUES     ('ums$pt$34$bk',
            'BK',
            '34',
            120);            
------------------------------
--ums_bgd--------------------------------------            
INSERT INTO jackets
VALUES     ('ums$jk$s$bgd',
            'BGD',
            'S',
            75);
INSERT INTO jackets
VALUES     ('ums$jk$m$bgd',
            'BGD',
            'M',
            120);
INSERT INTO jackets
VALUES     ('ums$jk$l$bgd',
            'BGD',
            'L',
            100);
INSERT INTO jackets
VALUES     ('ums$jk$xl$bgd',
            'BGD',
            'XL',
            120);
            
INSERT INTO pants
VALUES     ('ums$pt$28$bgd',
            'BGD',
            '28',
            75);
INSERT INTO pants
VALUES     ('ums$pt$30$bgd',
            'BGD',
            '30',
            120); 
INSERT INTO pants
VALUES     ('ums$pt$32$bgd',
            'BGD',
            '32',
            100);
INSERT INTO pants
VALUES     ('ums$pt$34$bgd',
            'BGD',
            '34',
            120);            
------------------------------
--lcs_nv--------------------------------------            
INSERT INTO jackets
VALUES     ('lcs$jk$s$nv',
            'NV',
            'S',
            75);
INSERT INTO jackets
VALUES     ('lcs$jk$m$nv',
            'NV',
            'M',
            120);
INSERT INTO jackets
VALUES     ('lcs$jk$l$nv',
            'NV',
            'L',
            100);
INSERT INTO jackets
VALUES     ('lcs$jk$xl$nv',
            'NV',
            'XL',
            120);
            
INSERT INTO pants
VALUES     ('lcs$pt$28$nv',
            'NV',
            '28',
            75);
INSERT INTO pants
VALUES     ('lcs$pt$30$nv',
            'NV',
            '30',
            120); 
INSERT INTO pants
VALUES     ('lcs$pt$32$nv',
            'NV',
            '32',
            100);
INSERT INTO pants
VALUES     ('lcs$pt$34$nv',
            'NV',
            '34',
            120);            
------------------------------
--mds_bg--------------------------------------            
INSERT INTO jackets
VALUES     ('mds$jk$s$bg',
            'BG',
            'S',
            75);
INSERT INTO jackets
VALUES     ('mds$jk$m$bg',
            'BG',
            'M',
            120);
INSERT INTO jackets
VALUES     ('mds$jk$l$bg',
            'BG',
            'L',
            100);
INSERT INTO jackets
VALUES     ('mds$jk$xl$bg',
            'BG',
            'XL',
            120);
            
INSERT INTO pants
VALUES     ('mds$pt$28$bg',
            'BG',
            '28',
            75);
INSERT INTO pants
VALUES     ('mds$pt$30$bg',
            'BG',
            '30',
            120); 
INSERT INTO pants
VALUES     ('mds$pt$32$bg',
            'BG',
            '32',
            100);
INSERT INTO pants
VALUES     ('mds$pt$34$bg',
            'BG',
            '34',
            120);            
------------------------------
--bgc_br--------------------------------------            
INSERT INTO jackets
VALUES     ('bgc$jk$s$br',
            'BR',
            'S',
            75);
INSERT INTO jackets
VALUES     ('bgc$jk$m$br',
            'BR',
            'M',
            120);
INSERT INTO jackets
VALUES     ('bgc$jk$l$br',
            'BK',
            'L',
            100);
INSERT INTO jackets
VALUES     ('bgc$jk$xl$br',
            'BR',
            'XL',
            120);
INSERT INTO jackets
VALUES     ('bgc$jk$xxl$br',
            'BR',
            'XXL',
            120);
            
INSERT INTO pants
VALUES     ('bgc$pt$28$br',
            'BR',
            '28',
            75);
INSERT INTO pants
VALUES     ('bgc$pt$30$br',
            'BR',
            '30',
            120); 
INSERT INTO pants
VALUES     ('bgc$pt$32$br',
            'BR',
            '32',
            100);
INSERT INTO pants
VALUES     ('bgc$pt$34$br',
            'BR',
            '34',
            120);            
INSERT INTO pants
VALUES     ('bgc$pt$36$br',
            'BR',
            '36',
            120);   
------------------------------

-- product_infos(상품정보)
select * from product_infos;
ALTER TABLE product_infos 
  MODIFY(product_hitcount NUMBER); 
ALTER TABLE product_infos 
  MODIFY(product_name VARCHAR2(50)); 
-- 상품코드sts
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            'SS 피티워모 싱글수트_BlueGreen', 
            150000, 
            130000, 
            '봄, 여름, 가을에 입기 좋은 포멀한 싱글수트', 
            'euishoe', 
            '18/11/09', 
            'KOR', 
            127800, 
            5, 
            'BLGR');
--상품코드hss
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            'FW 옴므 싱글수트_Black', 
            110000, 
            100000, 
            '심플한 디자인으로 캐주얼, 포멀하게 연출가능', 
            'euishoe', 
            '18/1/09', 
            'KOR', 
            81000, 
            123, 
            'BK');
--상품코드bgs_br
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            '바론 글렌체크 싱글수트_Brown', 
            172000, 
            150000, 
            '가을에 입기좋은 은은한 글렌체크패턴의 수트', 
            'euishoe', 
            '18/07/19', 
            'KOR', 
            124500, 
            83, 
            'BR');
--상품코드bgs_gr
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            '바론 글렌체크 싱글수트_Gray', 
            172000, 
            150000, 
            '가을에 입기좋은 은은한 글렌체크패턴의 수트', 
            'euishoe', 
            '18/07/19', 
            'KOR', 
            124500, 
            92, 
            'GR');

--상품코드bts_bk
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            '베이직 테일러드 싱글수트_Black', 
            120000, 
            92000, 
            '포멀하고 심플한 기본 블랙수트', 
            'euishoe', 
            '18/01/19', 
            'KOR', 
            89900, 
            231, 
            'BK');

--상품코드ass_gr
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            '아르노 싱글수트_Green', 
            137000, 
            120000, 
            '독특한 색감으로 캐주얼하게 연출가능', 
            'euishoe', 
            '17/05/19', 
            'KOR', 
            100800, 
            172, 
            'GR');

--상품코드asd_nv
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            '아스펜 스트라이프 더블수트_Navy', 
            180000, 
            150000, 
            '슬림한 핏을 살려주는 스트라이프 무늬의 더블수트', 
            'euishoe', 
            '18/09/19', 
            'KOR', 
            127800, 
            147, 
            'GR');    
--상품코드pss_nv
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            '패트릭 싱글수트_Navy', 
            130000, 
            100000, 
            '심플한 디자인으로 상황에따라 비즈니스, 캐주얼룩으로 연출가능', 
            'euishoe', 
            '17/11/10', 
            'KOR', 
            81000, 
            745, 
            'NV');            
--상품코드gwcs_gr
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            '지팟 윈도우 체크 싱글수트_Gray', 
            180000, 
            150000, 
            '은은한 윈도우 체크무늬의 싱글수트', 
            'euishoe', 
            '17/03/08', 
            'KOR', 
            127800, 
            745, 
            'GR'); 
--상품코드ass_nv
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            '아스펜 스트라이프 싱글수트_Navy', 
            180000, 
            150000, 
            '스트라이프 무늬로 슬림하게 연출가능한 싱글수트', 
            'euishoe', 
            '18/09/19', 
            'KOR', 
            126000, 
            215, 
            'NV');             
--상품코드mbs_bg
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            '모던 비엘 싱글수트_Beige', 
            180000, 
            150000, 
            '따듯한 베이지색의 겨울용 싱글수트', 
            'freshiwon', 
            '17/11/10', 
            'KOR', 
            129600, 
            517, 
            'BG');            
--상품코드sgb_gr
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            '심플 그레이 보카시 수트_Gray', 
            1580000, 
            130000, 
            '보카시의 따듯한 느낌이 살아있는 심플한 수트', 
            'freshiwon', 
            '17/09/10', 
            'KOR', 
            118800, 
            377, 
            'GR');               
--상품코드dic_iv
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            '데이지 아이보리 코튼수트_Ivory', 
            189000, 
            150000, 
            '밝은 아이보리컬러의 코튼소재로 캐주얼하게 연출가능', 
            'freshiwon', 
            '17/12/10', 
            'KOR', 
            136800, 
            327, 
            'IV');                           
--상품코드ccb_bk
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            '치르콜로 블랙수트_Black', 
            189000, 
            130000, 
            '스판함유로 편안한 활동에도 연출가능', 
            'freshiwon', 
            '17/06/10', 
            'KOR', 
            120600, 
            427, 
            'BK');   
--상품코드lss_gr
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            '로렌느 심플 싱글수트_Gray', 
            199000, 
            160000, 
            '높은 울소재 함유로 겨울 시즌에적합한 싱글수트', 
            'freshiwon', 
            '17/07/10', 
            'KOR', 
            140400, 
            527, 
            'GR');  
--상품코드ums_bk
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            'FW어반 맨즈 싱글수트_Black', 
            149000, 
            120000, 
            '깔끔하고 무난한 느낌의 사계절용 수트', 
            'freshiwon', 
            '17/07/02', 
            'KOR', 
            97400, 
            727, 
            'BK'); 
--상품코드ums_bk
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            'FW어반 맨즈 싱글수트_Burgundy', 
            149000, 
            120000, 
            '깔끔하고 무난한 느낌의 사계절용 수트', 
            'freshiwon', 
            '17/07/02', 
            'KOR', 
            97400, 
            727, 
            'BGD'); 
--상품코드lcs_nv
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            '르미 체크 싱글수트_Navy', 
            210000, 
            150000, 
            '은은한 체크와 세미피크드 라펠로 클래식하면서 남성적인 싱글수트', 
            'freshiwon', 
            '18/06/15', 
            'KOR', 
            135000, 
            727, 
            'NV'); 
--상품코드lcs_nv
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            '마쉘 더블수트_Beige', 
            210000, 
            150000, 
            '남성적이고 포멀한 느낌의 더블수트로 소장가치가 있는 제품', 
            'freshiwon', 
            '18/06/15', 
            'KOR', 
            138500, 
            227, 
            'BG'); 
--상품코드bgc_br
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
             product_hitcount, 
             color_code) 
VALUES     ( product_infos_seq.NEXTVAL, 
            product_list_num_seq.NEXTVAL, 
            '바론 글렌체크 싱글수트_Brown', 
            120000, 
            100000, 
            '가을에 입기좋은 멋지고 실용적인 글렌체크 수트', 
            'freshiwon', 
            '17/03/15', 
            'KOR', 
            81000, 
            127, 
            'BR'); 
-- 이미지(images)
------ 이거는 이전에 넣어둔 row 지우는 과정..
delete from images where IMAGE_NUM = 1;
delete from images where IMAGE_NUM = 2;
delete from images where IMAGE_NUM = 3;
delete from images where IMAGE_NUM = 4;
-------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            11, 
'/iceland/images/티피워모 싱글수트(BlueGreen)/sts_blgr$11$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            11, 
'/iceland/images/티피워모 싱글수트(BlueGreen)/sts_blgr$11$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            11, 
'/iceland/images/티피워모 싱글수트(BlueGreen)/sts_blgr$11$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            11, 
'/iceland/images/티피워모 싱글수트(BlueGreen)/sts_blgr$11$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            11, 
'/iceland/images/티피워모 싱글수트(BlueGreen)/sts_blgr$11$detail$2.jpg'); 
------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            12, 
'/iceland/images/FW옴므 싱글수트(Black)/hss_bk$12$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            12, 
'/iceland/images/FW옴므 싱글수트(Black)/hss_bk$12$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            12, 
'/iceland/images/FW옴므 싱글수트(Black)/hss_bk$12$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            12, 
'/iceland/images/FW옴므 싱글수트(Black)/hss_bk$12$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            12, 
'/iceland/images/FW옴므 싱글수트(Black)/hss_bk$12$detail$2.jpg'); 
--------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            13, 
'/iceland/images/바론 글렌체크 싱글수트(Brown)/bgs_br$13$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            13, 
'/iceland/images/바론 글렌체크 싱글수트(Brown)/bgs_br$13$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            13, 
'/iceland/images/바론 글렌체크 싱글수트(Brown)/bgs_br$13$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            13, 
'/iceland/images/바론 글렌체크 싱글수트(Brown)/bgs_br$13$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            13, 
'/iceland/images/바론 글렌체크 싱글수트(Brown)/bgs_br$13$detail$2.jpg'); 
--------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            14, 
'/iceland/images/바론 글렌체크 싱글수트(Gray)/bgs_gr$14$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            14, 
'/iceland/images/바론 글렌체크 싱글수트(Gray)/bgs_gr$14$main$2.jpg');
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            14, 
'/iceland/images/바론 글렌체크 싱글수트(Gray)/bgs_gr$14$main$3.jpg');
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            14, 
'/iceland/images/바론 글렌체크 싱글수트(Gray)/bgs_gr$14$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            14, 
'/iceland/images/바론 글렌체크 싱글수트(Gray)/bgs_gr$14$detail$2.jpg'); 
--------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            17, 
'/iceland/images/베이직 테일러드 싱글수트(Black)/bts_bk$17$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            17, 
'/iceland/images/베이직 테일러드 싱글수트(Black)/bts_bk$17$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            17, 
'/iceland/images/베이직 테일러드 싱글수트(Black)/bts_bk$17$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            17, 
'/iceland/images/베이직 테일러드 싱글수트(Black)/bts_bk$17$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            17, 
'/iceland/images/베이직 테일러드 싱글수트(Black)/bts_bk$17$detail$2.jpg'); 
--------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            18, 
'/iceland/images/아르노 싱글수트(Green)/ass_gr$18$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            18, 
'/iceland/images/아르노 싱글수트(Green)/ass_gr$18$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            18, 
'/iceland/images/아르노 싱글수트(Green)/ass_gr$18$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            18, 
'/iceland/images/아르노 싱글수트(Green)/ass_gr$18$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            18, 
'/iceland/images/아르노 싱글수트(Green)/ass_gr$18$detail$2.jpg'); 
--------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            19, 
'/iceland/images/아스펜 스트라이프 더블수트(Navy)/asd_nv$19$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            19, 
'/iceland/images/아스펜 스트라이프 더블수트(Navy)/asd_nv$19$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            19, 
'/iceland/images/아스펜 스트라이프 더블수트(Navy)/asd_nv$19$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            19, 
'/iceland/images/아스펜 스트라이프 더블수트(Navy)/asd_nv$19$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            19, 
'/iceland/images/아스펜 스트라이프 더블수트(Navy)/asd_nv$19$detail$2.jpg'); 
--------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            21, 
'/iceland/images/패트릭 싱글수트(Navy)/pss_nv$21$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            21, 
'/iceland/images/패트릭 싱글수트(Navy)/pss_nv$21$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            21, 
'/iceland/images/패트릭 싱글수트(Navy)/pss_nv$21$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            21, 
'/iceland/images/패트릭 싱글수트(Navy)/pss_nv$21$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            21, 
'/iceland/images/패트릭 싱글수트(Navy)/pss_nv$21$detail$2.jpg'); 
------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            22, 
'/iceland/images/지팟 윈도우 체크 싱글수트(Gray)/gwcs_gr$22$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            22, 
'/iceland/images/지팟 윈도우 체크 싱글수트(Gray)/gwcs_gr$22$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            22, 
'/iceland/images/지팟 윈도우 체크 싱글수트(Gray)/gwcs_gr$22$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            22, 
'/iceland/images/지팟 윈도우 체크 싱글수트(Gray)/gwcs_gr$22$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            22, 
'/iceland/images/지팟 윈도우 체크 싱글수트(Gray)/gwcs_gr$22$detail$2.jpg'); 
------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            23, 
'/iceland/images/아스펜 스트라이프 싱글수트(Navy)/ass_nv$23$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            23, 
'/iceland/images/아스펜 스트라이프 싱글수트(Navy)/ass_nv$23$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            23, 
'/iceland/images/아스펜 스트라이프 싱글수트(Navy)/ass_nv$23$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            23, 
'/iceland/images/아스펜 스트라이프 싱글수트(Navy)/ass_nv$23$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            23, 
'/iceland/images/아스펜 스트라이프 싱글수트(Navy)/ass_nv$23$detail$2.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            24, 
'/iceland/images/모던 비엘 싱글수트(Beige)/mbs$24$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            24, 
'/iceland/images/모던 비엘 싱글수트(Beige)/mbs$24$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            24, 
'/iceland/images/모던 비엘 싱글수트(Beige)/mbs$24$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            24, 
'/iceland/images/모던 비엘 싱글수트(Beige)/mbs$24$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            24, 
'/iceland/images/모던 비엘 싱글수트(Beige)/mbs$24$detail$2.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/심플 그레이 보카시 수트(Gray)/sgb_gr$25$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/심플 그레이 보카시 수트(Gray)/sgb_gr$25$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/심플 그레이 보카시 수트(Gray)/sgb_gr$25$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/심플 그레이 보카시 수트(Gray)/sgb_gr$25$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/심플 그레이 보카시 수트(Gray)/sgb_gr$25$detail$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/심플 그레이 보카시 수트(Gray)/sgb_gr$25$detail$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/심플 그레이 보카시 수트(Gray)/sgb_gr$25$detail$4.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/심플 그레이 보카시 수트(Gray)/sgb_gr$25$detail$5.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/심플 그레이 보카시 수트(Gray)/sgb_gr$25$detail$6.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            26, 
'/iceland/images/데이지 아이보리 코튼수트(Ivory)/dic_iv$26$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            26, 
'/iceland/images/데이지 아이보리 코튼수트(Ivory)/dic_iv$26$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            26, 
'/iceland/images/데이지 아이보리 코튼수트(Ivory)/dic_iv$26$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            26, 
'/iceland/images/데이지 아이보리 코튼수트(Ivory)/dic_iv$26$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            26, 
'/iceland/images/데이지 아이보리 코튼수트(Ivory)/dic_iv$26$detail$2.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            27, 
'/iceland/images/치르콜로 블랙 수트(Black)/ccb_bk$27$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            27, 
'/iceland/images/치르콜로 블랙 수트(Black)/ccb_bk$27$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            27, 
'/iceland/images/치르콜로 블랙 수트(Black)/ccb_bk$27$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            27, 
'/iceland/images/치르콜로 블랙 수트(Black)/ccb_bk$27$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            27, 
'/iceland/images/치르콜로 블랙 수트(Black)/ccb_bk$27$detail$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            27, 
'/iceland/images/치르콜로 블랙 수트(Black)/ccb_bk$27$detail$3.jpg');
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            27, 
'/iceland/images/치르콜로 블랙 수트(Black)/ccb_bk$27$detail$4.jpg');
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            27, 
'/iceland/images/치르콜로 블랙 수트(Black)/ccb_bk$27$detail$5.jpg');
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            28, 
'/iceland/images/로렌느 심플 싱글수트(Gray)/lss_gr$28$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            28, 
'/iceland/images/로렌느 심플 싱글수트(Gray)/lss_gr$28$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            28, 
'/iceland/images/로렌느 심플 싱글수트(Gray)/lss_gr$28$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            28, 
'/iceland/images/로렌느 심플 싱글수트(Gray)/lss_gr$28$detail$2.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            29, 
'/iceland/images/FW어반 맨즈 싱글수트(Black)/ums_bk$29$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            29, 
'/iceland/images/FW어반 맨즈 싱글수트(Black)/ums_bk$29$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            29, 
'/iceland/images/FW어반 맨즈 싱글수트(Black)/ums_bk$29$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            29, 
'/iceland/images/FW어반 맨즈 싱글수트(Black)/ums_bk$29$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            29, 
'/iceland/images/FW어반 맨즈 싱글수트(Black)/ums_bk$29$detail$2.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            30, 
'/iceland/images/FW어반 맨즈 싱글수트(Burgundy)/ums_bgd$30$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            30, 
'/iceland/images/FW어반 맨즈 싱글수트(Burgundy)/ums_bgd$30$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            30, 
'/iceland/images/FW어반 맨즈 싱글수트(Burgundy)/ums_bgd$30$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            30, 
'/iceland/images/FW어반 맨즈 싱글수트(Burgundy)/ums_bgd$30$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            30, 
'/iceland/images/FW어반 맨즈 싱글수트(Burgundy)/ums_bgd$30$detail$2.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            31, 
'/iceland/images/르미 체크 싱글수트(Navy)/lcs_nv$31$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            31, 
'/iceland/images/르미 체크 싱글수트(Navy)/lcs_nv$31$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            31, 
'/iceland/images/르미 체크 싱글수트(Navy)/lcs_nv$31$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            31, 
'/iceland/images/르미 체크 싱글수트(Navy)/lcs_nv$31$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            31, 
'/iceland/images/르미 체크 싱글수트(Navy)/lcs_nv$31$detail$1.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            32, 
'/iceland/images/마쉘 더블수트(Beige)/mds_bg$32$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            32, 
'/iceland/images/마쉘 더블수트(Beige)/mds_bg$32$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            32, 
'/iceland/images/마쉘 더블수트(Beige)/mds_bg$32$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            32, 
'/iceland/images/마쉘 더블수트(Beige)/mds_bg$32$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            32, 
'/iceland/images/마쉘 더블수트(Beige)/mds_bg$32$detail$2.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            33, 
'/iceland/images/바론 글렌체크 싱글수트(Brown)/bgc_br$13$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            33, 
'/iceland/images/바론 글렌체크 싱글수트(Brown)/bgc_br$13$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            33, 
'/iceland/images/바론 글렌체크 싱글수트(Brown)/bgc_br$13$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            33, 
'/iceland/images/바론 글렌체크 싱글수트(Brown)/bgc_br$13$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            33, 
'/iceland/images/바론 글렌체크 싱글수트(Brown)/bgc_br$13$detail$2.jpg'); 

commit;
