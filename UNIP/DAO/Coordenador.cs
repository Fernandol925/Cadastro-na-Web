using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//Classes de Conexão com Banco de dados via Entity Framework
namespace UNIP.DAO
{
    public class Coordenador
    {
        public static bool Cadastrar(Models.COORDENADOR coordenador)
        {
            try
            {
                using (var conexao = new Models.projetoEntities2UNIP())
                {
                    conexao.COORDENADOR.Add(coordenador);
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
