using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UNIP.DAO
{
    public class Certificado
    {
        public static bool Cadastrar(Models.CERTIFICADO certificado)
        {
            try
            {
                using (var conexao = new Models.projetoEntities2UNIP())
                {
                    conexao.CERTIFICADO.Add(certificado);
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
