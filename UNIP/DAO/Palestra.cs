using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//Classes de Conexão com Banco de dados via Entity Framework
namespace UNIP.DAO
{
    public class Palestra
    {
        public static bool Cadastrar(Models.PALESTRA palestra)
        {
            try
            {
                using (var conexao = new Models.projetoEntities2UNIP())
                {
                    conexao.PALESTRA.Add(palestra);
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