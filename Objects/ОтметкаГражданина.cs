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
    /// Отметка гражданина.
    /// </summary>
    //  *** Start programmer edit section *** (ОтметкаГражданина CustomAttributes)

    //  *** End programmer edit section *** (ОтметкаГражданина CustomAttributes)
    [AutoAltered()]
    [Caption("Отметка гражданина")]
    [AccessType(ICSSoft.STORMNET.AccessType.none)]
    [View("ОтметкаГражданинаE", new string[0])]
    public class ОтметкаГражданина : ICSSoft.STORMNET.DataObject
    {
        
        private IIS.CZN.Карточка гражданина fКарточка гражданина;
        
        //  *** Start programmer edit section *** (ОтметкаГражданина CustomMembers)

        //  *** End programmer edit section *** (ОтметкаГражданина CustomMembers)

        
        /// <summary>
        /// мастеровая ссылка на шапку IIS.CZN.Карточка гражданина.
        /// </summary>
        //  *** Start programmer edit section *** (ОтметкаГражданина.Карточка гражданина CustomAttributes)

        //  *** End programmer edit section *** (ОтметкаГражданина.Карточка гражданина CustomAttributes)
        [Agregator()]
        [NotNull()]
        public virtual IIS.CZN.Карточка гражданина Карточка гражданина
        {
            get
            {
                //  *** Start programmer edit section *** (ОтметкаГражданина.Карточка гражданина Get start)

                //  *** End programmer edit section *** (ОтметкаГражданина.Карточка гражданина Get start)
                IIS.CZN.Карточка гражданина result = this.fКарточка гражданина;
                //  *** Start programmer edit section *** (ОтметкаГражданина.Карточка гражданина Get end)

                //  *** End programmer edit section *** (ОтметкаГражданина.Карточка гражданина Get end)
                return result;
            }
            set
            {
                //  *** Start programmer edit section *** (ОтметкаГражданина.Карточка гражданина Set start)

                //  *** End programmer edit section *** (ОтметкаГражданина.Карточка гражданина Set start)
                this.fКарточка гражданина = value;
                //  *** Start programmer edit section *** (ОтметкаГражданина.Карточка гражданина Set end)

                //  *** End programmer edit section *** (ОтметкаГражданина.Карточка гражданина Set end)
            }
        }
        
        /// <summary>
        /// Class views container.
        /// </summary>
        public class Views
        {
            
            /// <summary>
            /// "ОтметкаГражданинаE" view.
            /// </summary>
            public static ICSSoft.STORMNET.View ОтметкаГражданинаE
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("ОтметкаГражданинаE", typeof(IIS.CZN.ОтметкаГражданина));
                }
            }
        }
    }
    
    /// <summary>
    /// Detail array of ОтметкаГражданина.
    /// </summary>
    //  *** Start programmer edit section *** (DetailArrayDetailArrayOfОтметкаГражданина CustomAttributes)

    //  *** End programmer edit section *** (DetailArrayDetailArrayOfОтметкаГражданина CustomAttributes)
    public class DetailArrayOfОтметкаГражданина : ICSSoft.STORMNET.DetailArray
    {
        
        //  *** Start programmer edit section *** (IIS.CZN.DetailArrayOfОтметкаГражданина members)

        //  *** End programmer edit section *** (IIS.CZN.DetailArrayOfОтметкаГражданина members)

        
        /// <summary>
        /// Construct detail array.
        /// </summary>
        /// <summary>
        /// Returns object with type ОтметкаГражданина by index.
        /// </summary>
        /// <summary>
        /// Adds object with type ОтметкаГражданина.
        /// </summary>
        public DetailArrayOfОтметкаГражданина(IIS.CZN.Карточка гражданина fКарточка гражданина) : 
                base(typeof(ОтметкаГражданина), ((ICSSoft.STORMNET.DataObject)(fКарточка гражданина)))
        {
        }
        
        public IIS.CZN.ОтметкаГражданина this[int index]
        {
            get
            {
                return ((IIS.CZN.ОтметкаГражданина)(this.ItemByIndex(index)));
            }
        }
        
        public virtual void Add(IIS.CZN.ОтметкаГражданина dataobject)
        {
            this.AddObject(((ICSSoft.STORMNET.DataObject)(dataobject)));
        }
    }
}
