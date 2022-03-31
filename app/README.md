# clinickr-march-2022

Projeto destinado às sessões extras de aquecimento em Março 2022. 

## Desafio

Utilizar o arquivo com dados `result_tests.csv` e expor uma API REST com minimamente um endpoint que, dado um `token`, mostra os resultados de análises clínicas de um paciente. Um exemplo deste endpoint está descrito abaixo. Além deste, você pode implementar outros endpoints como listagem de pacientes, de médicos e de resultados.

Request:
```bash
GET /tests/T9O6AI
```

Response:

```json
{
   "result_token":"T9O6AI",
   "result_date":"2021-11-21",
   "cpf":"066.126.400-90",
   "name":"Matheus Barroso",
   "email":"maricela@streich.com",
   "birthday":"1972-03-09",
   "doctor": {
      "crm":"B000B7CDX4",
      "crm_state":"SP",
      "name":"Sra. Calebe Louzada"
   },
   "tests":[
      {
         "test_type":"hemácias",
         "test_limits":"45-52",
         "result":"48"
      },
      {
         "test_type":"leucócitos",
         "test_limits":"9-61",
         "result":"75"
      },
      {
         "test_type":"plaquetas",
         "test_limits":"11-93",
         "result":"67"
      },
      {
         "test_type":"hdl",
         "test_limits":"19-75",
         "result":"3"
      },
      {
         "test_type":"ldl",
         "test_limits":"45-54",
         "result":"27"
      },
      {
         "test_type":"vldl",
         "test_limits":"48-72",
         "result":"27"
      },
      {
         "test_type":"glicemia",
         "test_limits":"25-83",
         "result":"78"
      },
      {
         "test_type":"tgo",
         "test_limits":"50-84",
         "result":"15"
      },
      {
         "test_type":"tgp",
         "test_limits":"38-63",
         "result":"34"
      },
      {
         "test_type":"eletrólitos",
         "test_limits":"2-68",
         "result":"92"
      },
      {
         "test_type":"tsh",
         "test_limits":"25-80",
         "result":"21"
      },
      {
         "test_type":"t4-livre",
         "test_limits":"34-60",
         "result":"95"
      },
      {
         "test_type":"ácido úrico",
         "test_limits":"15-61",
         "result":"10"
      }
   ]
}
```


## Pré Requisitos

Você deve construir uma aplicação web em Ruby sem Rails que, obrigatoriamente se conecta a um banco de dados PostgreSQL. A sua solução deve ser executada em um ambiente contendo 2 containeres (um para a aplicação e outro para o banco de dados) mas sem usar **Docker Compose**. 

Sua solução deve contemplar a importação de dados de novos arquivos CSV com a mesma estrutura do arquivo `result_tests.csv` para alimentar o banco de dados.

Todo código escrito, inclusive da ferramenta de importação de dados, deve ser testado com RSpec ou Minitest.