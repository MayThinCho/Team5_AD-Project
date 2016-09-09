//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DL
{
    using System;
    using System.Collections.Generic;
    
    public partial class User
    {
        public User()
        {
            this.Disbursements = new HashSet<Disbursement>();
            this.Discrepancies = new HashSet<Discrepancy>();
            this.Requisitions = new HashSet<Requisition>();
        }
    
        public int userID { get; set; }
        public string name { get; set; }
        public string employeeID { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string departmentCode { get; set; }
        public int roleID { get; set; }
    
        public virtual ICollection<Disbursement> Disbursements { get; set; }
        public virtual ICollection<Discrepancy> Discrepancies { get; set; }
        public virtual ICollection<Requisition> Requisitions { get; set; }
    }
}