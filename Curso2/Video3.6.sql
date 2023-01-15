SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA,
(CASE WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
      WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
      ELSE 'PRODUTO BRATO'
      END) AS CLASSIFICACAO
FROM TABELA_DE_PRODUTOS
WHERE SABOR = 'Manga';

SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA,
(CASE WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
      WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
      ELSE 'PRODUTO BRATO'
      END) AS CLASSIFICACAO
FROM TABELA_DE_PRODUTOS
ORDER BY CLASSIFICACAO;

-- Classificar clientes
SELECT NOME,
(CASE WHEN LIMITE_CREDITO >= 150000 THEN 'Clientes Grandes'
      WHEN LIMITE_CREDITO < 150000 AND LIMITE_CREDITO > 110000 THEN 'Clientes M�dios'
      ELSE 'Clientes Pequenos'
      END) AS TIPO_CLIENTE
FROM TB_CLIENTES;
