### Pos Tech FIAP - SOAT 2 - Grupo 16

**Deploy de RDS PostgreSQL com Terraform e GitHub Actions**

Este repositório contém uma configuração Terraform e um fluxo de trabalho GitHub Actions para implantar um banco de dados PostgreSQL RDS.

**Requisitos**

* Terraform 1.0.0 ou superior
* AWS CLI
* GitHub Actions

### Fluxo de trabalho GitHub Actions

O fluxo de trabalho GitHub Actions consiste nas seguintes etapas:

1. **Checkout do código:** Faz o checkout do código do repositório.
2. **Configuração do Terraform:** Configura o ambiente Terraform.
3. **Configuração das credenciais AWS:** Configura as credenciais AWS.
4. **Inicialização do Terraform:** Inicializa o ambiente Terraform.
5. **Aplicação do Terraform:** Aplica a configuração Terraform.

**Variáveis**

As seguintes variáveis são usadas no fluxo de trabalho GitHub Actions:

* `db_username`: O nome de usuário do banco de dados RDS.
* `db_password`: A senha do banco de dados RDS.
* `subnet_group_name`: O nome do grupo de sub-redes para o banco de dados RDS.

**Secrets**

As seguintes secretes são usadas no fluxo de trabalho GitHub Actions:

* `AWS_ACCESS_KEY_ID`
* `AWS_SECRET_ACCESS_KEY`
* `DB_USERNAME`
* `DB_PASSWORD`
* `SUBNET_GROUP_NAME`
