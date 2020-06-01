namespace CP.Entities.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web;

    [Table("Product")]
    public partial class Product : BaseEntity<int>
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            Cart = new HashSet<Cart>();
            Comment = new HashSet<Comment>();
            Rate = new HashSet<Rate>();

            Views = 0;

            Preference = false;
            Choose = false;
        }

        [Required(ErrorMessage = "�r�n ad� bo� b�rak�lamaz.")]
        [StringLength(75)]
        [Display(Name = "Ad�")]
        [RegularExpression(@"^[a-zA-Z��Ii��������]*$", ErrorMessage = "�r�n ad� sadece harflerden olu�mal�d�r.")]
        public string Name { get; set; }

        [Display(Name = "Kategori")]
        [Required(ErrorMessage = "Kategori bo� b�rak�lamaz")]
        public int? CategoryId { get; set; }

        [Column(TypeName = "text")]
        [Required(ErrorMessage = "�r�n detay� bo� b�rak�lamaz")]
        [Display(Name = "�r�n Detay�")]
        public string ProductDetail { get; set; }

        [Display(Name = "Fiyat")]
        [Required(ErrorMessage = "�r�n fiyat� bo� b�rak�lamaz")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "�r�n fiyat� sadece rakamlardan olu�mal�d�r")]
        public int? Price { get; set; }
        [Display(Name = "Miktar")]
        [Required(ErrorMessage = "�r�n miktar� bo� b�rak�lamaz")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = " �r�n fiyat� sadece rakamlardan olu�mal�d�r")]
        public int? Amount { get; set; }

        public int? Views { get; set; }

        [Column(TypeName = "text")]
        [Display(Name = "�r�n Resmi")]
        public string Image { get; set; }

        public bool IsDeleted { get; set; }
        [Display(Name = "Zaman")]
        [Required(ErrorMessage = "�r�n zaman� bo� b�rak�lamaz")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = " �r�n zaman� sadece rakamlardan olu�mal�d�r")]

        public int Time { get; set; }

        public DateTime? AddedDate { get; set; }

        [Display(Name = "Tercih")]
        [Required(ErrorMessage ="L�tfen belli ediniz")]
        public bool? Preference { get; set; }
        [Display(Name = "Kafe")]
        [Required(ErrorMessage = "L�tfen belli ediniz")]
        public bool? Choose { get; set; }

        [NotMapped]
        [Display(Name = "�r�n Resmi")]

        public HttpPostedFileBase Images { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Cart> Cart { get; set; }

        public virtual Category Category { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Comment> Comment { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Rate> Rate { get; set; }
    }
}
