using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using TPA.Domain.DomainModel;

namespace TPA.Infra.Data.Repository
{
    public class ContratoRepository
    {


        #region propriedades estáticas

        /// <summary>
        /// contexto para as queries
        /// </summary>
        private TPAContext _db;

        #endregion



        /// <summary>
        /// cosntructor principal
        /// </summary>
        /// <param name="context">TPAContext - contexto do EF para as queries</param>
        public ContratoRepository(TPAContext context)
        {
            this._db = context;
        }


        #region métodos CRUD públicos síncronos

        public virtual Contrato GetByUsuarioId(int idFuncionario)
        {
            return _db.Contratos.SingleOrDefault(x => x.IdFuncionario == idFuncionario);
        }


        /// <summary>
        /// obtém um usuário pelo seu Id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public virtual Contrato GetById(int id)
        {
            return _db.Contratos.Find(id);
        }

        /// <summary>
        /// obtém todos os usuários, sem tracking
        /// </summary>
        /// <returns></returns>
        public virtual List<Contrato> GetAll()
        {
            return _db.Contratos
                .AsNoTracking()
                .ToList();
        }

        /// <summary>
        /// salva um usuário
        /// </summary>
        /// <param name="ent"></param>
        public virtual void Save(Contrato ent)
        {
            if ((ent.Id == 0) || (!_db.Contratos.Any(x => x.Id == ent.Id)))
            {
                _db.Contratos.Add(ent);
            }
            else
            {
                _db.Entry(ent).State = EntityState.Modified;
            }

            _db.SaveChanges();
        }

        /// <summary>
        /// exclui um usuário
        /// </summary>
        /// <param name="ent"></param>
        public virtual void Delete(Contrato ent)
        {
            if ((ent != null) && (_db.Contratos.Any(x => x.Id == ent.Id)))
            {
                var deletando = _db.Contratos.Find(ent.Id);
                if (deletando != null)
                {
                    _db.Contratos.Remove(deletando);
                    _db.SaveChanges();
                }
            }
        }


     
        #endregion

    }
}
