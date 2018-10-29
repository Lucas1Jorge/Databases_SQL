DECLARE
    v_counter INT := 0;
    v_date date := TO_DATE('01/01/2017', 'DD/MM/YY');
    
    BEGIN
    LOOP
        INSERT INTO LUCASJ.DIM_TEMPO
        VALUES
        (to_number(to_char(v_date, 'YYYYMM')),
        extract (month from v_date),
        extract (year from v_date),
        case extract (month from v_date)
            when 1 then 1
            when 2 then 1
            when 3 then 2
            when 4 then 2
            when 5 then 3
            when 6 then 3
            when 7 then 4
            when 8 then 4
            when 9 then 5
            when 10 then 5
            when 11 then 6
            when 12 then 6
        END,
        to_number(to_char(v_date, 'q')),
        to_char(v_date, 'Month'),
        case (to_char(v_date, 'q'))
            when '1' then '1Trim'
            when '2' then '2Trim'
            when '3' then '3Trim'
            when '4' then '4Trim'
        end);
        v_counter := v_counter + 1;
        v_date := ADD_MONTHS(v_date,1);
        EXIT WHEN v_counter > 35;
    END LOOP;
END;

/* DIM_CLIENTE */
Insert into DIM_CLIENTE values ('10101010101','Matos Filho');
Insert into DIM_CLIENTE values ('10101010102','Alyson Basilio');
Insert into DIM_CLIENTE values ('10101010103','Fabio Martins');
Insert into DIM_CLIENTE values ('10101010104','Giancarlo Alves');
Insert into DIM_CLIENTE values ('10101010105','Gabriel Cavalcante');
Insert into DIM_CLIENTE values ('10101010106','Uriel Mendes');
Insert into DIM_CLIENTE values ('10101010107','Manoel Bandeira');

/* DIM_PRODUTO */
Insert into DIM_PRODUTO values ('404041','Percy Jackson - O ladrão de raios','29.9','14','Livros','5.35');
Insert into DIM_PRODUTO values ('404042','Cigarro','19.9','79','Variados','35.89');
Insert into DIM_PRODUTO values ('404043','Box - A 5a Onda','79.9','3','Livros','5.35');
Insert into DIM_PRODUTO values ('404044','Headset Razer Kraken','727.9','12','Acessórios','15.78');
Insert into DIM_PRODUTO values ('404045','Jogo Fifa 2017 PlayStation 4','185.99','13','Games','17.43');
Insert into DIM_PRODUTO values ('404046','Jogo Fifa 2018 PlayStation 4','175.99','35','Games','17.43');
Insert into DIM_PRODUTO values ('404047','PlayStation 4','1378','7','Eletrônicos','21.57');
Insert into DIM_PRODUTO values ('404048','Smart Tv 32 polegadas','949.9','3','Eletrônicos','21.57');
Insert into DIM_PRODUTO values ('404049','Travesseiro','39.9','27','Cama, mesa e banho','8.67');
Insert into DIM_PRODUTO values ('404050','Cama box casal','789','7','Cama, mesa e banho','8.67');
Insert into DIM_PRODUTO values ('404051','Homo Deus','49.9','5','Livros','5.35');
Insert into DIM_PRODUTO values ('404052','Marvel: Guerra Civil','59.9','13','Livros','5.35');
Insert into DIM_PRODUTO values ('404053','Caderno','19.9','25','Variados','35.89');
Insert into DIM_PRODUTO values ('404054','Caneta','1.99','139','Variados','35.89');
Insert into DIM_PRODUTO values ('404055','Borracha','2.5','73','Variados','35.89');
Insert into DIM_PRODUTO values ('404056','Controle Play Sation 4','199','13','Games','17.43');
Insert into DIM_PRODUTO values ('404057','Toalha','25.9','7','Cama, mesa e banho','8.67');
Insert into DIM_PRODUTO values ('404058','Box - As Crônicas de Gelo e Fogo','89.9','3','Livros','5.35');
Insert into DIM_PRODUTO values ('404059','Geladeira','1299','2','Eletrônicos','21.57');

/* DIM_VENDEDOR */
Insert into DIM_VENDEDOR values ('60606060601','Renato Silva');
Insert into DIM_VENDEDOR values ('60606060602','Rafael Ramos');
Insert into DIM_VENDEDOR values ('60606060603','Jennifer Souza');
Insert into DIM_VENDEDOR values ('60606060604','Larissa Batista');

/* FATO_VENDAS */
Insert into FATO_VENDAS values ('404043','60606060601','10101010101',201807,'1','79.9');
Insert into FATO_VENDAS values ('404053','60606060601','10101010101',201807,'2','29.9');
Insert into FATO_VENDAS values ('404054','60606060601','10101010101',201807,'3','1.99');
Insert into FATO_VENDAS values ('404041','60606060601','10101010103',201807,'1','29.9');
Insert into FATO_VENDAS values ('404053','60606060601','10101010103',201807,'1','29.9');
Insert into FATO_VENDAS values ('404054','60606060601','10101010103',201807,'2','1.99');
Insert into FATO_VENDAS values ('404052','60606060601','10101010102',201807,'2','59.9');
Insert into FATO_VENDAS values ('404053','60606060601','10101010102',201807,'1','29.9');
Insert into FATO_VENDAS values ('404054','60606060601','10101010102',201807,'2','1.99');
Insert into FATO_VENDAS values ('404058','60606060601','10101010104',201807,'1','89.9');
Insert into FATO_VENDAS values ('404053','60606060601','10101010104',201807,'1','29.9');
Insert into FATO_VENDAS values ('404054','60606060601','10101010104',201807,'2','1.99');
Insert into FATO_VENDAS values ('404044','60606060604','10101010102',201810,'1','727.9');
Insert into FATO_VENDAS values ('404053','60606060604','10101010106',201810,'1','19.9');
Insert into FATO_VENDAS values ('404054','60606060604','10101010106',201810,'1','1.99');
Insert into FATO_VENDAS values ('404053','60606060604','10101010105',201810,'1','1.99');
Insert into FATO_VENDAS values ('404050','60606060603','10101010101',201805,'1','800');
Insert into FATO_VENDAS values ('404049','60606060603','10101010101',201805,'4','39.9');
Insert into FATO_VENDAS values ('404059','60606060602','10101010107',201701,'1','1299');
Insert into FATO_VENDAS values ('404048','60606060602','10101010107',201701,'1','949.9');
Insert into FATO_VENDAS values ('404047','60606060602','10101010107',201701,'1','1400');
Insert into FATO_VENDAS values ('404053','60606060603','10101010101',201702,'1','29.9');
Insert into FATO_VENDAS values ('404054','60606060603','10101010101',201702,'1','1.99');
Insert into FATO_VENDAS values ('404053','60606060603','10101010102',201702,'1','29.9');
Insert into FATO_VENDAS values ('404054','60606060603','10101010102',201702,'2','1.99');
Insert into FATO_VENDAS values ('404053','60606060603','10101010103',201702,'1','29.9');
Insert into FATO_VENDAS values ('404045','60606060604','10101010103',201711,'1','185.99');
Insert into FATO_VENDAS values ('404046','60606060604','10101010103',201711,'2','219');
Insert into FATO_VENDAS values ('404056','60606060604','10101010103',201711,'2','199.9');
Insert into FATO_VENDAS values ('404055','60606060601','10101010104',201806,'1','2.5');
Insert into FATO_VENDAS values ('404055','60606060601','10101010102',201806,'1','2.5');
Insert into FATO_VENDAS values ('404055','60606060601','10101010101',201806,'1','2.5');
Insert into FATO_VENDAS values ('404055','60606060601','10101010103',201806,'1','2.5');
