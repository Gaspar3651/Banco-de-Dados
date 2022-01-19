using System;
using System.Data.SqlClient;

namespace TesteSQL
{
    class Program
    {
        static void Main(string[] args)
        {
            // ########## ESTABELECER A CONEXÃO COM SQLSERVER ##########
            SqlConnection conexao = new SqlConnection(@"data source = DESKTOP-UI0D29V\SQLEXPRESS; Integrated Security = SSPI; Initial Catalog = AdventureWorks2017;");
            
            // ########## ABRINDO A CONEXÃO COM SQLSERVER ##########
            conexao.Open();

            // ########## DEFINIR O CÓDIGO SQL ##########
            String Pessoa = "SELECT * FROM Person.Person";

            // ########## EXECUTANDO O COMANDO SQL ##########
            SqlCommand cmd = new SqlCommand(Pessoa, conexao);

            // ########## LENDO OS DADOS ##########
            SqlDataReader dados = cmd.ExecuteReader();

            // ########## EXIBINDO OS DADOS ##########
            while (dados.Read())
            {
                Console.WriteLine("ID: {0} | Primeiro nome: {1} | Ultimo nome: {2}", dados["BusinessEntityID"],dados["FirstName"], dados["LastName"]);
                Console.WriteLine("------------------------------------------------------------");
            }

            // ########## FECHANDO A CONEXÃO COM SQLSERVER ##########
            conexao.Close();
        }
    }
}
