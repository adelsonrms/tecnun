using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TPA.Domain.DomainModel
{
    public class Cargo : TPAEntity
    {

        #region propriedades públicas 

        /// <summary>
        /// id do tipo de atividade
        /// </summary>
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public override int Id { get; set; }

        /// <summary>
        /// nome do tipo de atividade
        /// </summary>
        [Required]
        [Index(IsUnique = true)]
        [MaxLength(50, ErrorMessage = "O nome deve ter no máximo 50 caracteres")]
        [Display(Name = "Nome do Tipo de Atividade")]
        public virtual string Nome { get; set; }
        #endregion

    }

}
