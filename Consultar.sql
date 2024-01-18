CREATE VIEW ContasReceberNaoPagas AS
SELECT
	ContaReceber.ID AS 'ID da conta a receber',
    Cliente.Nome AS 'Nome do Cliente',
    Cliente.CPF AS 'CPF do Cliente',
    ContaReceber.DataVencimento AS 'Data de Vencimento',
    ContaReceber.Valor AS 'Valor da Conta'
FROM ContaReceber
JOIN Cliente ON ContaReceber.Cliente_ID=Cliente_ID
WHERE ContaReceber.Situacao = '1';