using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//Classes de Conexão com Banco de dados via Entity Framework
namespace UNIP.DAO
{
    public class Visitante
    {
        public static bool Cadastrar(Models.pessoa visitante)
        {
            try
            {
                using (var conexao = new Models.projetoEntities2UNIP())
                {
                    conexao.pessoa.Add(visitante);
                    conexao.SaveChanges();
                    return true;
                }
            }
            catch (Exception e)
            {
                return false;
            }
        }
    }
}