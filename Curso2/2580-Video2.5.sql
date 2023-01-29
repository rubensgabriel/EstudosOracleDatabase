SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR IN ('Lima/Limao','Morango/Limao');

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE '%Limao';

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE '%Maca%';

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE '%Morango';

-- Morango/Limao

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE 'Morango%';

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE '%Morango%' AND EMBALAGEM = 'PET';

select *
  from posicao_empregado;
 --where cod_posicao_empregado = :as_cod_posicao_empregado ;
 
 
 select cod_perfil_acesso
		,dsc_perfil
		,(case when ind_tipo_perfil = 'P' then 'POSITION' else 'MATRICULA' end) as ind_tipo_perfil
		,(case when ind_perfil_unico = 'S' then 'SIM' else 'NAO' end) as ind_perfil_unico
		,(case when ind_atribuicao_terceiro = 'S' then 'SIM' else 'NAO' end) as ind_atribuicao_terceiro
      ,ind_exclusao_logica
  from perfil_acesso
 where ind_exclusao_logica = (case when :as_ind_exclusao_logica <> 'T'
                              then :as_ind_exclusao_logica
                              else ind_exclusao_logica end)
 order by dsc_perfil;