﻿using CP.BusinessLayer.Repository.Abstract.Basic;
using CP.Entities.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CP.BusinessLayer.Repository.Abstract
{
    public interface ICartRepository : IRepository<Cart>
    {
        Task<List<Cart>> CartListAsync(int UserId);

        void CartConfirm(int CartId);

        Cart CartFind(int id);
    }
}
