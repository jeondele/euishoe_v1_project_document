select product_num from product_infos;
select * from color_codes;

-- �÷��ڵ�
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
-- ��, ���� 
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

-- product_infos(��ǰ����)
select * from product_infos;
ALTER TABLE product_infos 
  MODIFY(product_hitcount NUMBER); 
ALTER TABLE product_infos 
  MODIFY(product_name VARCHAR2(50)); 
-- ��ǰ�ڵ�sts
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
            'SS ��Ƽ���� �̱ۼ�Ʈ_BlueGreen', 
            150000, 
            130000, 
            '��, ����, ������ �Ա� ���� ������ �̱ۼ�Ʈ', 
            'euishoe', 
            '18/11/09', 
            'KOR', 
            127800, 
            5, 
            'BLGR');
--��ǰ�ڵ�hss
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
            'FW �ȹ� �̱ۼ�Ʈ_Black', 
            110000, 
            100000, 
            '������ ���������� ĳ�־�, �����ϰ� ���Ⱑ��', 
            'euishoe', 
            '18/1/09', 
            'KOR', 
            81000, 
            123, 
            'BK');
--��ǰ�ڵ�bgs_br
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
            '�ٷ� �۷�üũ �̱ۼ�Ʈ_Brown', 
            172000, 
            150000, 
            '������ �Ա����� ������ �۷�üũ������ ��Ʈ', 
            'euishoe', 
            '18/07/19', 
            'KOR', 
            124500, 
            83, 
            'BR');
--��ǰ�ڵ�bgs_gr
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
            '�ٷ� �۷�üũ �̱ۼ�Ʈ_Gray', 
            172000, 
            150000, 
            '������ �Ա����� ������ �۷�üũ������ ��Ʈ', 
            'euishoe', 
            '18/07/19', 
            'KOR', 
            124500, 
            92, 
            'GR');

--��ǰ�ڵ�bts_bk
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
            '������ ���Ϸ��� �̱ۼ�Ʈ_Black', 
            120000, 
            92000, 
            '�����ϰ� ������ �⺻ ����Ʈ', 
            'euishoe', 
            '18/01/19', 
            'KOR', 
            89900, 
            231, 
            'BK');

--��ǰ�ڵ�ass_gr
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
            '�Ƹ��� �̱ۼ�Ʈ_Green', 
            137000, 
            120000, 
            '��Ư�� �������� ĳ�־��ϰ� ���Ⱑ��', 
            'euishoe', 
            '17/05/19', 
            'KOR', 
            100800, 
            172, 
            'GR');

--��ǰ�ڵ�asd_nv
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
            '�ƽ��� ��Ʈ������ �����Ʈ_Navy', 
            180000, 
            150000, 
            '������ ���� ����ִ� ��Ʈ������ ������ �����Ʈ', 
            'euishoe', 
            '18/09/19', 
            'KOR', 
            127800, 
            147, 
            'GR');    
--��ǰ�ڵ�pss_nv
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
            '��Ʈ�� �̱ۼ�Ʈ_Navy', 
            130000, 
            100000, 
            '������ ���������� ��Ȳ������ ����Ͻ�, ĳ�־������ ���Ⱑ��', 
            'euishoe', 
            '17/11/10', 
            'KOR', 
            81000, 
            745, 
            'NV');            
--��ǰ�ڵ�gwcs_gr
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
            '���� ������ üũ �̱ۼ�Ʈ_Gray', 
            180000, 
            150000, 
            '������ ������ üũ������ �̱ۼ�Ʈ', 
            'euishoe', 
            '17/03/08', 
            'KOR', 
            127800, 
            745, 
            'GR'); 
--��ǰ�ڵ�ass_nv
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
            '�ƽ��� ��Ʈ������ �̱ۼ�Ʈ_Navy', 
            180000, 
            150000, 
            '��Ʈ������ ���̷� �����ϰ� ���Ⱑ���� �̱ۼ�Ʈ', 
            'euishoe', 
            '18/09/19', 
            'KOR', 
            126000, 
            215, 
            'NV');             
--��ǰ�ڵ�mbs_bg
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
            '��� �� �̱ۼ�Ʈ_Beige', 
            180000, 
            150000, 
            '������ ���������� �ܿ�� �̱ۼ�Ʈ', 
            'freshiwon', 
            '17/11/10', 
            'KOR', 
            129600, 
            517, 
            'BG');            
--��ǰ�ڵ�sgb_gr
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
            '���� �׷��� ��ī�� ��Ʈ_Gray', 
            1580000, 
            130000, 
            '��ī���� ������ ������ ����ִ� ������ ��Ʈ', 
            'freshiwon', 
            '17/09/10', 
            'KOR', 
            118800, 
            377, 
            'GR');               
--��ǰ�ڵ�dic_iv
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
            '������ ���̺��� ��ư��Ʈ_Ivory', 
            189000, 
            150000, 
            '���� ���̺����÷��� ��ư����� ĳ�־��ϰ� ���Ⱑ��', 
            'freshiwon', 
            '17/12/10', 
            'KOR', 
            136800, 
            327, 
            'IV');                           
--��ǰ�ڵ�ccb_bk
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
            'ġ���ݷ� ����Ʈ_Black', 
            189000, 
            130000, 
            '���������� ����� Ȱ������ ���Ⱑ��', 
            'freshiwon', 
            '17/06/10', 
            'KOR', 
            120600, 
            427, 
            'BK');   
--��ǰ�ڵ�lss_gr
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
            '�η��� ���� �̱ۼ�Ʈ_Gray', 
            199000, 
            160000, 
            '���� ����� ������ �ܿ� ���������� �̱ۼ�Ʈ', 
            'freshiwon', 
            '17/07/10', 
            'KOR', 
            140400, 
            527, 
            'GR');  
--��ǰ�ڵ�ums_bk
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
            'FW��� ���� �̱ۼ�Ʈ_Black', 
            149000, 
            120000, 
            '����ϰ� ������ ������ ������� ��Ʈ', 
            'freshiwon', 
            '17/07/02', 
            'KOR', 
            97400, 
            727, 
            'BK'); 
--��ǰ�ڵ�ums_bk
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
            'FW��� ���� �̱ۼ�Ʈ_Burgundy', 
            149000, 
            120000, 
            '����ϰ� ������ ������ ������� ��Ʈ', 
            'freshiwon', 
            '17/07/02', 
            'KOR', 
            97400, 
            727, 
            'BGD'); 
--��ǰ�ڵ�lcs_nv
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
            '���� üũ �̱ۼ�Ʈ_Navy', 
            210000, 
            150000, 
            '������ üũ�� ������ũ�� ����� Ŭ�����ϸ鼭 �������� �̱ۼ�Ʈ', 
            'freshiwon', 
            '18/06/15', 
            'KOR', 
            135000, 
            727, 
            'NV'); 
--��ǰ�ڵ�lcs_nv
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
            '���� �����Ʈ_Beige', 
            210000, 
            150000, 
            '�������̰� ������ ������ �����Ʈ�� ���尡ġ�� �ִ� ��ǰ', 
            'freshiwon', 
            '18/06/15', 
            'KOR', 
            138500, 
            227, 
            'BG'); 
--��ǰ�ڵ�bgc_br
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
            '�ٷ� �۷�üũ �̱ۼ�Ʈ_Brown', 
            120000, 
            100000, 
            '������ �Ա����� ������ �ǿ����� �۷�üũ ��Ʈ', 
            'freshiwon', 
            '17/03/15', 
            'KOR', 
            81000, 
            127, 
            'BR'); 
-- �̹���(images)
------ �̰Ŵ� ������ �־�� row ����� ����..
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
'/iceland/images/Ƽ�ǿ��� �̱ۼ�Ʈ(BlueGreen)/sts_blgr$11$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            11, 
'/iceland/images/Ƽ�ǿ��� �̱ۼ�Ʈ(BlueGreen)/sts_blgr$11$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            11, 
'/iceland/images/Ƽ�ǿ��� �̱ۼ�Ʈ(BlueGreen)/sts_blgr$11$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            11, 
'/iceland/images/Ƽ�ǿ��� �̱ۼ�Ʈ(BlueGreen)/sts_blgr$11$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            11, 
'/iceland/images/Ƽ�ǿ��� �̱ۼ�Ʈ(BlueGreen)/sts_blgr$11$detail$2.jpg'); 
------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            12, 
'/iceland/images/FW�ȹ� �̱ۼ�Ʈ(Black)/hss_bk$12$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            12, 
'/iceland/images/FW�ȹ� �̱ۼ�Ʈ(Black)/hss_bk$12$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            12, 
'/iceland/images/FW�ȹ� �̱ۼ�Ʈ(Black)/hss_bk$12$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            12, 
'/iceland/images/FW�ȹ� �̱ۼ�Ʈ(Black)/hss_bk$12$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            12, 
'/iceland/images/FW�ȹ� �̱ۼ�Ʈ(Black)/hss_bk$12$detail$2.jpg'); 
--------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            13, 
'/iceland/images/�ٷ� �۷�üũ �̱ۼ�Ʈ(Brown)/bgs_br$13$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            13, 
'/iceland/images/�ٷ� �۷�üũ �̱ۼ�Ʈ(Brown)/bgs_br$13$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            13, 
'/iceland/images/�ٷ� �۷�üũ �̱ۼ�Ʈ(Brown)/bgs_br$13$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            13, 
'/iceland/images/�ٷ� �۷�üũ �̱ۼ�Ʈ(Brown)/bgs_br$13$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            13, 
'/iceland/images/�ٷ� �۷�üũ �̱ۼ�Ʈ(Brown)/bgs_br$13$detail$2.jpg'); 
--------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            14, 
'/iceland/images/�ٷ� �۷�üũ �̱ۼ�Ʈ(Gray)/bgs_gr$14$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            14, 
'/iceland/images/�ٷ� �۷�üũ �̱ۼ�Ʈ(Gray)/bgs_gr$14$main$2.jpg');
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            14, 
'/iceland/images/�ٷ� �۷�üũ �̱ۼ�Ʈ(Gray)/bgs_gr$14$main$3.jpg');
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            14, 
'/iceland/images/�ٷ� �۷�üũ �̱ۼ�Ʈ(Gray)/bgs_gr$14$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            14, 
'/iceland/images/�ٷ� �۷�üũ �̱ۼ�Ʈ(Gray)/bgs_gr$14$detail$2.jpg'); 
--------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            17, 
'/iceland/images/������ ���Ϸ��� �̱ۼ�Ʈ(Black)/bts_bk$17$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            17, 
'/iceland/images/������ ���Ϸ��� �̱ۼ�Ʈ(Black)/bts_bk$17$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            17, 
'/iceland/images/������ ���Ϸ��� �̱ۼ�Ʈ(Black)/bts_bk$17$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            17, 
'/iceland/images/������ ���Ϸ��� �̱ۼ�Ʈ(Black)/bts_bk$17$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            17, 
'/iceland/images/������ ���Ϸ��� �̱ۼ�Ʈ(Black)/bts_bk$17$detail$2.jpg'); 
--------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            18, 
'/iceland/images/�Ƹ��� �̱ۼ�Ʈ(Green)/ass_gr$18$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            18, 
'/iceland/images/�Ƹ��� �̱ۼ�Ʈ(Green)/ass_gr$18$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            18, 
'/iceland/images/�Ƹ��� �̱ۼ�Ʈ(Green)/ass_gr$18$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            18, 
'/iceland/images/�Ƹ��� �̱ۼ�Ʈ(Green)/ass_gr$18$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            18, 
'/iceland/images/�Ƹ��� �̱ۼ�Ʈ(Green)/ass_gr$18$detail$2.jpg'); 
--------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            19, 
'/iceland/images/�ƽ��� ��Ʈ������ �����Ʈ(Navy)/asd_nv$19$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            19, 
'/iceland/images/�ƽ��� ��Ʈ������ �����Ʈ(Navy)/asd_nv$19$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            19, 
'/iceland/images/�ƽ��� ��Ʈ������ �����Ʈ(Navy)/asd_nv$19$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            19, 
'/iceland/images/�ƽ��� ��Ʈ������ �����Ʈ(Navy)/asd_nv$19$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            19, 
'/iceland/images/�ƽ��� ��Ʈ������ �����Ʈ(Navy)/asd_nv$19$detail$2.jpg'); 
--------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            21, 
'/iceland/images/��Ʈ�� �̱ۼ�Ʈ(Navy)/pss_nv$21$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            21, 
'/iceland/images/��Ʈ�� �̱ۼ�Ʈ(Navy)/pss_nv$21$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            21, 
'/iceland/images/��Ʈ�� �̱ۼ�Ʈ(Navy)/pss_nv$21$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            21, 
'/iceland/images/��Ʈ�� �̱ۼ�Ʈ(Navy)/pss_nv$21$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            21, 
'/iceland/images/��Ʈ�� �̱ۼ�Ʈ(Navy)/pss_nv$21$detail$2.jpg'); 
------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            22, 
'/iceland/images/���� ������ üũ �̱ۼ�Ʈ(Gray)/gwcs_gr$22$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            22, 
'/iceland/images/���� ������ üũ �̱ۼ�Ʈ(Gray)/gwcs_gr$22$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            22, 
'/iceland/images/���� ������ üũ �̱ۼ�Ʈ(Gray)/gwcs_gr$22$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            22, 
'/iceland/images/���� ������ üũ �̱ۼ�Ʈ(Gray)/gwcs_gr$22$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            22, 
'/iceland/images/���� ������ üũ �̱ۼ�Ʈ(Gray)/gwcs_gr$22$detail$2.jpg'); 
------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            23, 
'/iceland/images/�ƽ��� ��Ʈ������ �̱ۼ�Ʈ(Navy)/ass_nv$23$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            23, 
'/iceland/images/�ƽ��� ��Ʈ������ �̱ۼ�Ʈ(Navy)/ass_nv$23$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            23, 
'/iceland/images/�ƽ��� ��Ʈ������ �̱ۼ�Ʈ(Navy)/ass_nv$23$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            23, 
'/iceland/images/�ƽ��� ��Ʈ������ �̱ۼ�Ʈ(Navy)/ass_nv$23$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            23, 
'/iceland/images/�ƽ��� ��Ʈ������ �̱ۼ�Ʈ(Navy)/ass_nv$23$detail$2.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            24, 
'/iceland/images/��� �� �̱ۼ�Ʈ(Beige)/mbs$24$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            24, 
'/iceland/images/��� �� �̱ۼ�Ʈ(Beige)/mbs$24$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            24, 
'/iceland/images/��� �� �̱ۼ�Ʈ(Beige)/mbs$24$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            24, 
'/iceland/images/��� �� �̱ۼ�Ʈ(Beige)/mbs$24$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            24, 
'/iceland/images/��� �� �̱ۼ�Ʈ(Beige)/mbs$24$detail$2.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/���� �׷��� ��ī�� ��Ʈ(Gray)/sgb_gr$25$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/���� �׷��� ��ī�� ��Ʈ(Gray)/sgb_gr$25$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/���� �׷��� ��ī�� ��Ʈ(Gray)/sgb_gr$25$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/���� �׷��� ��ī�� ��Ʈ(Gray)/sgb_gr$25$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/���� �׷��� ��ī�� ��Ʈ(Gray)/sgb_gr$25$detail$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/���� �׷��� ��ī�� ��Ʈ(Gray)/sgb_gr$25$detail$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/���� �׷��� ��ī�� ��Ʈ(Gray)/sgb_gr$25$detail$4.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/���� �׷��� ��ī�� ��Ʈ(Gray)/sgb_gr$25$detail$5.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            25, 
'/iceland/images/���� �׷��� ��ī�� ��Ʈ(Gray)/sgb_gr$25$detail$6.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            26, 
'/iceland/images/������ ���̺��� ��ư��Ʈ(Ivory)/dic_iv$26$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            26, 
'/iceland/images/������ ���̺��� ��ư��Ʈ(Ivory)/dic_iv$26$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            26, 
'/iceland/images/������ ���̺��� ��ư��Ʈ(Ivory)/dic_iv$26$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            26, 
'/iceland/images/������ ���̺��� ��ư��Ʈ(Ivory)/dic_iv$26$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            26, 
'/iceland/images/������ ���̺��� ��ư��Ʈ(Ivory)/dic_iv$26$detail$2.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            27, 
'/iceland/images/ġ���ݷ� �� ��Ʈ(Black)/ccb_bk$27$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            27, 
'/iceland/images/ġ���ݷ� �� ��Ʈ(Black)/ccb_bk$27$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            27, 
'/iceland/images/ġ���ݷ� �� ��Ʈ(Black)/ccb_bk$27$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            27, 
'/iceland/images/ġ���ݷ� �� ��Ʈ(Black)/ccb_bk$27$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            27, 
'/iceland/images/ġ���ݷ� �� ��Ʈ(Black)/ccb_bk$27$detail$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            27, 
'/iceland/images/ġ���ݷ� �� ��Ʈ(Black)/ccb_bk$27$detail$3.jpg');
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            27, 
'/iceland/images/ġ���ݷ� �� ��Ʈ(Black)/ccb_bk$27$detail$4.jpg');
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            27, 
'/iceland/images/ġ���ݷ� �� ��Ʈ(Black)/ccb_bk$27$detail$5.jpg');
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            28, 
'/iceland/images/�η��� ���� �̱ۼ�Ʈ(Gray)/lss_gr$28$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            28, 
'/iceland/images/�η��� ���� �̱ۼ�Ʈ(Gray)/lss_gr$28$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            28, 
'/iceland/images/�η��� ���� �̱ۼ�Ʈ(Gray)/lss_gr$28$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            28, 
'/iceland/images/�η��� ���� �̱ۼ�Ʈ(Gray)/lss_gr$28$detail$2.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            29, 
'/iceland/images/FW��� ���� �̱ۼ�Ʈ(Black)/ums_bk$29$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            29, 
'/iceland/images/FW��� ���� �̱ۼ�Ʈ(Black)/ums_bk$29$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            29, 
'/iceland/images/FW��� ���� �̱ۼ�Ʈ(Black)/ums_bk$29$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            29, 
'/iceland/images/FW��� ���� �̱ۼ�Ʈ(Black)/ums_bk$29$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            29, 
'/iceland/images/FW��� ���� �̱ۼ�Ʈ(Black)/ums_bk$29$detail$2.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            30, 
'/iceland/images/FW��� ���� �̱ۼ�Ʈ(Burgundy)/ums_bgd$30$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            30, 
'/iceland/images/FW��� ���� �̱ۼ�Ʈ(Burgundy)/ums_bgd$30$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            30, 
'/iceland/images/FW��� ���� �̱ۼ�Ʈ(Burgundy)/ums_bgd$30$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            30, 
'/iceland/images/FW��� ���� �̱ۼ�Ʈ(Burgundy)/ums_bgd$30$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            30, 
'/iceland/images/FW��� ���� �̱ۼ�Ʈ(Burgundy)/ums_bgd$30$detail$2.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            31, 
'/iceland/images/���� üũ �̱ۼ�Ʈ(Navy)/lcs_nv$31$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            31, 
'/iceland/images/���� üũ �̱ۼ�Ʈ(Navy)/lcs_nv$31$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            31, 
'/iceland/images/���� üũ �̱ۼ�Ʈ(Navy)/lcs_nv$31$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            31, 
'/iceland/images/���� üũ �̱ۼ�Ʈ(Navy)/lcs_nv$31$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            31, 
'/iceland/images/���� üũ �̱ۼ�Ʈ(Navy)/lcs_nv$31$detail$1.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            32, 
'/iceland/images/���� �����Ʈ(Beige)/mds_bg$32$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            32, 
'/iceland/images/���� �����Ʈ(Beige)/mds_bg$32$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            32, 
'/iceland/images/���� �����Ʈ(Beige)/mds_bg$32$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            32, 
'/iceland/images/���� �����Ʈ(Beige)/mds_bg$32$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            32, 
'/iceland/images/���� �����Ʈ(Beige)/mds_bg$32$detail$2.jpg'); 
------------------------------------------------------------------
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            33, 
'/iceland/images/�ٷ� �۷�üũ �̱ۼ�Ʈ(Brown)/bgc_br$13$main$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            33, 
'/iceland/images/�ٷ� �۷�üũ �̱ۼ�Ʈ(Brown)/bgc_br$13$main$2.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            33, 
'/iceland/images/�ٷ� �۷�üũ �̱ۼ�Ʈ(Brown)/bgc_br$13$main$3.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            33, 
'/iceland/images/�ٷ� �۷�üũ �̱ۼ�Ʈ(Brown)/bgc_br$13$detail$1.jpg'); 
INSERT INTO images 
            (image_num, 
             product_num, 
             image_ref) 
VALUES     (images_seq.NEXTVAL, 
            33, 
'/iceland/images/�ٷ� �۷�üũ �̱ۼ�Ʈ(Brown)/bgc_br$13$detail$2.jpg'); 

commit;
