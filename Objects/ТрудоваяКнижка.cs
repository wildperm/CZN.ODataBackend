﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IIS.CZN
{
    using System;
    using System.Xml;
    using ICSSoft.STORMNET;
    
    
    //  *** Start programmer edit section *** (Using statements)

    //  *** End programmer edit section *** (Using statements)


    /// <summary>
    /// Трудовая книжка.
    /// </summary>
    //  *** Start programmer edit section *** (ТрудоваяКнижка CustomAttributes)

    //  *** End programmer edit section *** (ТрудоваяКнижка CustomAttributes)
    [AutoAltered()]
    [Caption("Трудовая книжка")]
    [AccessType(ICSSoft.STORMNET.AccessType.none)]
    [View("ТрудоваяКнижкаE", new string[0])]
    public class ТрудоваяКнижка : ICSSoft.STORMNET.DataObject
    {
        
        private string fТрудоваяКнижка;
        
        private IIS.CZN.Личность fЛичность;
        
        //  *** Start programmer edit section *** (ТрудоваяКнижка CustomMembers)

        //  *** End programmer edit section *** (ТрудоваяКнижка CustomMembers)

        
        /// <summary>
        /// ТрудоваяКнижка.
        /// </summary>
        //  *** Start programmer edit section *** (ТрудоваяКнижка.ТрудоваяКнижка CustomAttributes)

        //  *** End programmer edit section *** (ТрудоваяКнижка.ТрудоваяКнижка CustomAttributes)
        [StrLen(255)]
        public virtual string ТрудоваяКнижка
        {
            get
            {
                //  *** Start programmer edit section *** (ТрудоваяКнижка.ТрудоваяКнижка Get start)

                //  *** End programmer edit section *** (ТрудоваяКнижка.ТрудоваяКнижка Get start)
                string result = this.fТрудоваяКнижка;
                //  *** Start programmer edit section *** (ТрудоваяКнижка.ТрудоваяКнижка Get end)

                //  *** End programmer edit section *** (ТрудоваяКнижка.ТрудоваяКнижка Get end)
                return result;
            }
            set
            {
                //  *** Start programmer edit section *** (ТрудоваяКнижка.ТрудоваяКнижка Set start)

                //  *** End programmer edit section *** (ТрудоваяКнижка.ТрудоваяКнижка Set start)
                this.fТрудоваяКнижка = value;
                //  *** Start programmer edit section *** (ТрудоваяКнижка.ТрудоваяКнижка Set end)

                //  *** End programmer edit section *** (ТрудоваяКнижка.ТрудоваяКнижка Set end)
            }
        }
        
        /// <summary>
        /// мастеровая ссылка на шапку IIS.CZN.Личность.
        /// </summary>
        //  *** Start programmer edit section *** (ТрудоваяКнижка.Личность CustomAttributes)

        //  *** End programmer edit section *** (ТрудоваяКнижка.Личность CustomAttributes)
        [Agregator()]
        [NotNull()]
        public virtual IIS.CZN.Личность Личность
        {
            get
            {
                //  *** Start programmer edit section *** (ТрудоваяКнижка.Личность Get start)

                //  *** End programmer edit section *** (ТрудоваяКнижка.Личность Get start)
                IIS.CZN.Личность result = this.fЛичность;
                //  *** Start programmer edit section *** (ТрудоваяКнижка.Личность Get end)

                //  *** End programmer edit section *** (ТрудоваяКнижка.Личность Get end)
                return result;
            }
            set
            {
                //  *** Start programmer edit section *** (ТрудоваяКнижка.Личность Set start)

                //  *** End programmer edit section *** (ТрудоваяКнижка.Личность Set start)
                this.fЛичность = value;
                //  *** Start programmer edit section *** (ТрудоваяКнижка.Личность Set end)

                //  *** End programmer edit section *** (ТрудоваяКнижка.Личность Set end)
            }
        }
        
        /// <summary>
        /// Class views container.
        /// </summary>
        public class Views
        {
            
            /// <summary>
            /// "ТрудоваяКнижкаE" view.
            /// </summary>
            public static ICSSoft.STORMNET.View ТрудоваяКнижкаE
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("ТрудоваяКнижкаE", typeof(IIS.CZN.ТрудоваяКнижка));
                }
            }
        }
    }
    
    /// <summary>
    /// Detail array of ТрудоваяКнижка.
    /// </summary>
    //  *** Start programmer edit section *** (DetailArrayDetailArrayOfТрудоваяКнижка CustomAttributes)

    //  *** End programmer edit section *** (DetailArrayDetailArrayOfТрудоваяКнижка CustomAttributes)
    public class DetailArrayOfТрудоваяКнижка : ICSSoft.STORMNET.DetailArray
    {
        
        //  *** Start programmer edit section *** (IIS.CZN.DetailArrayOfТрудоваяКнижка members)

        //  *** End programmer edit section *** (IIS.CZN.DetailArrayOfТрудоваяКнижка members)

        
        /// <summary>
        /// Construct detail array.
        /// </summary>
        /// <summary>
        /// Returns object with type ТрудоваяКнижка by index.
        /// </summary>
        /// <summary>
        /// Adds object with type ТрудоваяКнижка.
        /// </summary>
        public DetailArrayOfТрудоваяКнижка(IIS.CZN.Личность fЛичность) : 
                base(typeof(ТрудоваяКнижка), ((ICSSoft.STORMNET.DataObject)(fЛичность)))
        {
        }
        
        public IIS.CZN.ТрудоваяКнижка this[int index]
        {
            get
            {
                return ((IIS.CZN.ТрудоваяКнижка)(this.ItemByIndex(index)));
            }
        }
        
        public virtual void Add(IIS.CZN.ТрудоваяКнижка dataobject)
        {
            this.AddObject(((ICSSoft.STORMNET.DataObject)(dataobject)));
        }
    }
}
