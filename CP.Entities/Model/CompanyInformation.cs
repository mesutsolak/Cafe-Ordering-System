namespace CP.Entities.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CompanyInformation")]
    public partial class CompanyInformation : BaseEntity<int>
    {
        [Column(TypeName = "text")]
        [Display(Name = "A��klama 1")]
        [Required(ErrorMessage ="1.ci a��klamay� girmek zorunludur.")]
        public string Description1 { get; set; }
        [Column(TypeName = "text")]
        [Display(Name = "A��klama 2")]
        public string Description2 { get; set; }

        [StringLength(150)]
        [Display(Name = "Ba�l�k 1")]
        [Required(ErrorMessage = "1.ci ba�l��� girmek zorunludur.")]
        public string Header1 { get; set; }

        [StringLength(150)]
        [Display(Name = "Ba�l�k 2")]
        public string Header2 { get; set; }
    }
}
