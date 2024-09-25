using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.OleDb;
using System.Data.Common;
using System.Data;
using EasyInnerSDK.Entity;

namespace EasyInnerSDK.DAO
{
    class DAOBilhete
    {
        public bool InserirBilhete(Bilhete bilhete)
        {
            try
            {
                DbCommand Command = DAOConexao.ConectarBase().CreateCommand();
                Command.CommandText = @"INSERT INTO ADMSUARIOS 
                                        (TIPO, DIA, MES, ANO, HORA, MINUTO, SEGUNDO, CARTAO, ORIGEM, COMPLEMENTO) 
                                        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

                OleDbParameter PmtTipo = DAOConexao.ReturnParametro(bilhete.Tipo);
                OleDbParameter PmtDia = DAOConexao.ReturnParametro(bilhete.Dia);
                OleDbParameter PmtMes = DAOConexao.ReturnParametro(bilhete.Mes);
                OleDbParameter PmtAno = DAOConexao.ReturnParametro(bilhete.Ano);
                OleDbParameter PmtHora = DAOConexao.ReturnParametro(bilhete.Hora);
                OleDbParameter PmtMinuto = DAOConexao.ReturnParametro(bilhete.Minuto);
                OleDbParameter PmtSegundo = DAOConexao.ReturnParametro(bilhete.Segundo);
                OleDbParameter PmtCartao = DAOConexao.ReturnParametro(bilhete.Cartao.ToString());
                OleDbParameter PmtOrigem = DAOConexao.ReturnParametro(bilhete.Origem);
                OleDbParameter PmtComplemento = DAOConexao.ReturnParametro(bilhete.Complemento);

                Command.Parameters.Add(PmtTipo);
                Command.Parameters.Add(PmtDia);
                Command.Parameters.Add(PmtMes);
                Command.Parameters.Add(PmtAno);
                Command.Parameters.Add(PmtHora);
                Command.Parameters.Add(PmtMinuto);
                Command.Parameters.Add(PmtSegundo);
                Command.Parameters.Add(PmtCartao);
                Command.Parameters.Add(PmtOrigem);
                Command.Parameters.Add(PmtComplemento);

                if (Command.ExecuteNonQuery() > 0)
                {
                    DAOConexao.Conn.Close();
                    return true;
                }
                DAOConexao.Conn.Close();
                return false;
            }
            catch (DbException ex)
            {
                Console.WriteLine("Erro ao inserir bilhete: " + ex.Message);
                return false;
            }
        }
    }
}
