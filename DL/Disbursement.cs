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
    
    public partial class Disbursement
    {
        public Disbursement()
        {
            this.DisbursementDetails = new HashSet<DisbursementDetail>();
        }
    
        public string disbursementID { get; set; }
        public int userID { get; set; }
        public string departmentCode { get; set; }
        public System.DateTime date { get; set; }
        public string status { get; set; }
    
        public virtual Department Department { get; set; }
        public virtual User User { get; set; }
        public virtual ICollection<DisbursementDetail> DisbursementDetails { get; set; }
    }
}
