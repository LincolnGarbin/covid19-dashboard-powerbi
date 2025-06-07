-- PREPARA BASE DE DADOS COVID GLOBAL

create or replace table Covid.dados_covid_global_tratado AS (
  select FORMAT_DATE("%d/%m/%Y", Date_reported) as  Data_Relatorio
        ,case when CHAR_LENGTH(concat(extract(year from Date_reported),extract(month from Date_reported))) <= 5 then concat(extract(year from Date_reported),"0",extract(month from Date_reported))
          else concat(extract(year from Date_reported),extract(month from Date_reported)) end as AnoMes
       ,case when ` Country_code` = " " then "ND" else ` Country_code` end as CodPaises
       ,case when ` Country` = " " then "ND" else ` Country` end as Paises
       ,case when ` WHO_region` = " " then "ND" 
             when ` WHO_region` = "AFRO" then "África Subsaariana" 
             when ` WHO_region` = "AMRO" then "Américas"
             when ` WHO_region` = "EMRO" then "Mediterrâneo Oriental"
             when ` WHO_region` = "EURO" then "Europa"
             when ` WHO_region` = "Other" then "Outros"
             when ` WHO_region` = "SEARO" then "Sudeste Asiático"
             when ` WHO_region` = "WPRO" then "Pácifico Ocidental"
             else ` WHO_region` end as Regiao
       ,` New_cases` as Novos_Casos
       ,` Cumulative_cases` as Casos_acumulados
       ,` New_deaths` as Novas_mortes
       ,` Cumulative_deaths` as Mortes_acumuladas
  from Covid.dados_covid_global
);

-- PREPARA BASE DE DADOS COVID NACIONAL

create or replace table Covid.dados_covid_nacional_tratado AS (
  select case when `'regiao'` is null then "ND" else replace(`'regiao'`,"'","") end as Regiao
        ,case when `'estado'` is null then "ND" else replace(`'estado'`,"'","") end as Estado
        ,case when `'municipio'` is null then "ND" else replace(`'municipio'`,"'","") end as Municipio
        ,case when `'coduf'` is null then "ND" else replace(`'coduf'`,"'","") end as CodUF
        ,`'codmun'` as CodMunicipio
        ,`'codRegiaoSaude'` as codRegiaoSaude
        ,case when `'nomeRegiaoSaude'` is null then "ND" else replace(`'nomeRegiaoSaude'`,"'","")	end as nomeRegiaoSaude
        ,FORMAT_DATE("%d/%m/%Y", `'data'`) as Data
        ,case when CHAR_LENGTH(concat(extract(year from `'data'`),extract(month from `'data'`))) <= 5 then concat(extract(year from `'data'`),"0",extract(month from `'data'`))
          else concat(extract(year from `'data'`),extract(month from `'data'`)) end as AnoMes
        ,`'semanaEpi'` as SemanaEpidemia
        ,replace(`'populacaoTCU2019'`,"'", "") as Populacao
        ,`'casosAcumulado'` as casosAcumulado
        ,`'casosNovos'` as casosNovos
        ,`'obitosAcumulado'` as obitosAcumulado
        ,`'obitosNovos'` as obitosNovos
        ,`'Recuperadosnovos'` as Recuperadosnovos
        ,`'emAcompanhamentoNovos'` as emAcompanhamentoNovos
  from Covid.dados_covid_nacional
);

select distinct	Municipio from Covid.dados_covid_nacional_tratado where Municipio is null;
