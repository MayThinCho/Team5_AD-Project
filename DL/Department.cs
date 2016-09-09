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
    
    public partial class Department
    {
        public Department()
        {
            this.Disbursements = new HashSet<Disbursement>();
            this.Requisitions = new HashSet<Requisition>();
            this.Retrievals = new HashSet<Retrieval>();
            this.Shortages = new HashSet<Shortage>();
        }
    
        public string departmentCode { get; set; }
        public string name { get; set; }
        public string contactName { get; set; }
        public string phoneNo { get; set; }
        public string fax { get; set; }
        public string headName { get; set; }
        public int collectionPointID { get; set; }
        public string representativeName { get; set; }
    
        public virtual CollectionPoint CollectionPoint { get; set; }
        public virtual ICollection<Disbursement> Disbursements { get; set; }
        public virtual ICollection<Requisition> Requisitions { get; set; }
        public virtual ICollection<Retrieval> Retrievals { get; set; }
        public virtual ICollection<Shortage> Shortages { get; set; }
    }
}