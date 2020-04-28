namespace CP.Entities.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class UserRoles
    {
        public int Id { get; set; }

        public int? UserId { get; set; }

        public int? RoleId { get; set; }

        public virtual Roles Roles { get; set; }

        public virtual User User { get; set; }
    }
}
