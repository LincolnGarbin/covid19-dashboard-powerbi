## 📁 Tabela 1: `dados_covid_mundial`

| Nome do campo       | Tipo    | Descrição                                                                 |
|---------------------|---------|---------------------------------------------------------------------------|
| Data_Relatorio      | STRING  | Data em que o relatório foi emitido.                                     |
| AnoMes              | STRING  | Combinação do ano e mês (ex: 202104) para facilitar análises temporais.  |
| CodPaises           | STRING  | Código de identificação do país.                                         |
| Paises              | STRING  | Nome do país.                                                             |
| Regiao              | STRING  | Região do país (ex: Europa, América, Ásia).                              |
| Novos_Casos         | INTEGER | Número de novos casos reportados no dia.                                 |
| Casos_acumulados    | INTEGER | Total acumulado de casos até a data do relatório.                        |
| Novas_mortes        | INTEGER | Número de novos óbitos reportados no dia.                                |
| Mortes_acumuladas   | INTEGER | Total acumulado de óbitos até a data do relatório.                       |


## 📁 Tabela 2: `dados_covid_brasil`

| Nome do campo           | Tipo     | Descrição                                                                 |
|-------------------------|----------|---------------------------------------------------------------------------|
| Regiao                  | STRING   | Região geográfica do Brasil (ex: Sudeste, Nordeste).                      |
| Estado                  | STRING   | Sigla do estado brasileiro (ex: SP, RJ, MG).                              |
| Municipio               | STRING   | Nome do município.                                                       |
| CodUF                   | STRING   | Código da Unidade Federativa (estado).                                   |
| CodMunicipio            | INTEGER  | Código IBGE do município.                                                |
| codRegiaoSaude          | INTEGER  | Código da região de saúde.                                               |
| nomeRegiaoSaude         | STRING   | Nome da região de saúde.                                                 |
| Data                    | STRING   | Data do registro.                                                        |
| AnoMes                  | STRING   | Combinação do ano e mês (ex: 202104) para facilitar análises temporais.  |
| SemanaEpidemia          | INTEGER  | Número da semana epidemiológica.                                         |
| Populacao               | STRING   | População estimada do município.                                         |
| casosAcumulado          | INTEGER  | Total acumulado de casos até a data.                                     |
| casosNovos              | INTEGER  | Número de novos casos registrados no dia.                                |
| obitosAcumulado         | INTEGER  | Total acumulado de óbitos até a data.                                    |
| obitosNovos             | INTEGER  | Número de novos óbitos registrados no dia.                               |
| Recuperadosnovos        | INTEGER  | Número de pessoas recuperadas no dia.                                    |
| emAcompanhamentoNovos   | INTEGER  | Número de casos ativos em acompanhamento no dia.                         |
