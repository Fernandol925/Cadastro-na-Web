using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

//Classes de Conexão com Banco de dados via Entity Framework

namespace UNIP.DAO
{
    public class Aluno
    {
        public static bool Cadastrar(Models.pessoa aluno)
        {
            try
            {
                using (var conexao = new Models.projetoEntities2UNIP())
                {
                    conexao.pessoa.Add(aluno);
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