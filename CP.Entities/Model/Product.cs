namespace CP.Entities.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web;
    using System.Web.Mvc;

    [Table("Product")]
    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            CampProduct = new HashSet<CampProduct>();
            Comment = new HashSet<Comment>();
            Order = new HashSet<Order>();
            IsDeleted = false;
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [Display(Name ="�r�n Ad�")]
        [Required(ErrorMessage ="�r�n ad� bo� b�rak�lamaz")]
        [MaxLength(75,ErrorMessage ="�r�n ad� 75 karakterden fazla olamaz")]
        [RegularExpression("^[a-zA-Z������������]*$", ErrorMessage ="Sadece harflerden olu�mal�d�r")]
        public string Name { get; set; }

        [Required(ErrorMessage = "�r�n detay� bo� b�rak�lamaz")]
        [Display(Name = "Kategori")]

        public int? CategoryId { get; set; }

        [Column(TypeName = "text")]
        [Required(ErrorMessage = "�r�n detay� bo� b�rak�lamaz")]
        [AllowHtml]
        [Display(Name = "�r�n Detay�")]
        public string ProductDetail { get; set; }

        [Required(ErrorMessage = "�r�n fiyat� bo� b�rak�lamaz")]
        [RegularExpression("^[0-9]*$", ErrorMessage = "Sadece rakamdan olu�mal�d�r")]
        [Range(0, Double.PositiveInfinity, ErrorMessage = "Pozitif bir de�er girmelisiniz")]
        [Display(Name = "�r�n Fiyat�")]
        public int? Price { get; set; }

        [Required(ErrorMessage = "�r�n miktar� bo� b�rak�lamaz")]
        [RegularExpression("^[0-9]*$", ErrorMessage = "Sadece rakamdan olu�mal�d�r")]
        [Range(0, Double.PositiveInfinity, ErrorMessage = "Pozitif bir de�er girmelisiniz")]
        [Display(Name = "�r�n Miktar�")]
        public int? Amount { get; set; }


        [Display(Name = "G�r�nt�lenme Say�s�")]

        public int? Views { get; set; }

        [Display(Name = "Puan")]

        public int? Rating { get; set; }

        [Column(TypeName = "text")]
        [Display(Name = "Resim")]
        public string Image { get; set; }

        public bool IsDeleted { get; set; }
        [Required(ErrorMessage = "Pi�me s�resi bo� b�rak�lamaz")]
        [RegularExpression("^[0-9]*$", ErrorMessage = "Sadece rakamdan olu�mal�d�r")]
        [Range(0, Double.PositiveInfinity, ErrorMessage = "Pozitif bir de�er girmelisiniz")]
        [Display(Name = "Pi�irme S�resi")]

        public int? Time { get; set; }

        [NotMapped]
        public HttpPostedFileBase Images { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CampProduct> CampProduct { get; set; }

        public virtual Category Category { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Comment> Comment { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Order { get; set; }
    }
}
