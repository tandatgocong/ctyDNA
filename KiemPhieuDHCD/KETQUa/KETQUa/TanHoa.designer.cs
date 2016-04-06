﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18444
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace KETQUa
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="DH_CODONG")]
	public partial class TanHoaDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertDSCODONG_THAMDU(DSCODONG_THAMDU instance);
    partial void UpdateDSCODONG_THAMDU(DSCODONG_THAMDU instance);
    partial void DeleteDSCODONG_THAMDU(DSCODONG_THAMDU instance);
    #endregion
		
		public TanHoaDataContext() : 
				base(global::KETQUa.Properties.Settings.Default.DH_CODONGConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public TanHoaDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public TanHoaDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public TanHoaDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public TanHoaDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<DSCODONG_THAMDU> DSCODONG_THAMDUs
		{
			get
			{
				return this.GetTable<DSCODONG_THAMDU>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.DSCODONG_THAMDU")]
	public partial class DSCODONG_THAMDU : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _STT;
		
		private int _STTCD;
		
		private string _MACD;
		
		private string _TENCD;
		
		private string _CMND;
		
		private System.Nullable<System.DateTime> _NGAYCAP;
		
		private string _NOICAP;
		
		private string _DIACHI;
		
		private System.Nullable<int> _CDGD;
		
		private System.Nullable<int> _PHONGTOA;
		
		private System.Nullable<int> _TONGCD;
		
		private System.Nullable<System.DateTime> _NGAYVAO;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnSTTChanging(int value);
    partial void OnSTTChanged();
    partial void OnSTTCDChanging(int value);
    partial void OnSTTCDChanged();
    partial void OnMACDChanging(string value);
    partial void OnMACDChanged();
    partial void OnTENCDChanging(string value);
    partial void OnTENCDChanged();
    partial void OnCMNDChanging(string value);
    partial void OnCMNDChanged();
    partial void OnNGAYCAPChanging(System.Nullable<System.DateTime> value);
    partial void OnNGAYCAPChanged();
    partial void OnNOICAPChanging(string value);
    partial void OnNOICAPChanged();
    partial void OnDIACHIChanging(string value);
    partial void OnDIACHIChanged();
    partial void OnCDGDChanging(System.Nullable<int> value);
    partial void OnCDGDChanged();
    partial void OnPHONGTOAChanging(System.Nullable<int> value);
    partial void OnPHONGTOAChanged();
    partial void OnTONGCDChanging(System.Nullable<int> value);
    partial void OnTONGCDChanged();
    partial void OnNGAYVAOChanging(System.Nullable<System.DateTime> value);
    partial void OnNGAYVAOChanged();
    #endregion
		
		public DSCODONG_THAMDU()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_STT", DbType="Int NOT NULL")]
		public int STT
		{
			get
			{
				return this._STT;
			}
			set
			{
				if ((this._STT != value))
				{
					this.OnSTTChanging(value);
					this.SendPropertyChanging();
					this._STT = value;
					this.SendPropertyChanged("STT");
					this.OnSTTChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_STTCD", DbType="Int NOT NULL")]
		public int STTCD
		{
			get
			{
				return this._STTCD;
			}
			set
			{
				if ((this._STTCD != value))
				{
					this.OnSTTCDChanging(value);
					this.SendPropertyChanging();
					this._STTCD = value;
					this.SendPropertyChanged("STTCD");
					this.OnSTTCDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MACD", DbType="VarChar(20) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string MACD
		{
			get
			{
				return this._MACD;
			}
			set
			{
				if ((this._MACD != value))
				{
					this.OnMACDChanging(value);
					this.SendPropertyChanging();
					this._MACD = value;
					this.SendPropertyChanged("MACD");
					this.OnMACDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TENCD", DbType="NVarChar(MAX)")]
		public string TENCD
		{
			get
			{
				return this._TENCD;
			}
			set
			{
				if ((this._TENCD != value))
				{
					this.OnTENCDChanging(value);
					this.SendPropertyChanging();
					this._TENCD = value;
					this.SendPropertyChanged("TENCD");
					this.OnTENCDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CMND", DbType="NVarChar(MAX)")]
		public string CMND
		{
			get
			{
				return this._CMND;
			}
			set
			{
				if ((this._CMND != value))
				{
					this.OnCMNDChanging(value);
					this.SendPropertyChanging();
					this._CMND = value;
					this.SendPropertyChanged("CMND");
					this.OnCMNDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NGAYCAP", DbType="Date")]
		public System.Nullable<System.DateTime> NGAYCAP
		{
			get
			{
				return this._NGAYCAP;
			}
			set
			{
				if ((this._NGAYCAP != value))
				{
					this.OnNGAYCAPChanging(value);
					this.SendPropertyChanging();
					this._NGAYCAP = value;
					this.SendPropertyChanged("NGAYCAP");
					this.OnNGAYCAPChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NOICAP", DbType="NVarChar(MAX)")]
		public string NOICAP
		{
			get
			{
				return this._NOICAP;
			}
			set
			{
				if ((this._NOICAP != value))
				{
					this.OnNOICAPChanging(value);
					this.SendPropertyChanging();
					this._NOICAP = value;
					this.SendPropertyChanged("NOICAP");
					this.OnNOICAPChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DIACHI", DbType="NVarChar(MAX)")]
		public string DIACHI
		{
			get
			{
				return this._DIACHI;
			}
			set
			{
				if ((this._DIACHI != value))
				{
					this.OnDIACHIChanging(value);
					this.SendPropertyChanging();
					this._DIACHI = value;
					this.SendPropertyChanged("DIACHI");
					this.OnDIACHIChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CDGD", DbType="Int")]
		public System.Nullable<int> CDGD
		{
			get
			{
				return this._CDGD;
			}
			set
			{
				if ((this._CDGD != value))
				{
					this.OnCDGDChanging(value);
					this.SendPropertyChanging();
					this._CDGD = value;
					this.SendPropertyChanged("CDGD");
					this.OnCDGDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PHONGTOA", DbType="Int")]
		public System.Nullable<int> PHONGTOA
		{
			get
			{
				return this._PHONGTOA;
			}
			set
			{
				if ((this._PHONGTOA != value))
				{
					this.OnPHONGTOAChanging(value);
					this.SendPropertyChanging();
					this._PHONGTOA = value;
					this.SendPropertyChanged("PHONGTOA");
					this.OnPHONGTOAChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TONGCD", DbType="Int")]
		public System.Nullable<int> TONGCD
		{
			get
			{
				return this._TONGCD;
			}
			set
			{
				if ((this._TONGCD != value))
				{
					this.OnTONGCDChanging(value);
					this.SendPropertyChanging();
					this._TONGCD = value;
					this.SendPropertyChanged("TONGCD");
					this.OnTONGCDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NGAYVAO", DbType="DateTime")]
		public System.Nullable<System.DateTime> NGAYVAO
		{
			get
			{
				return this._NGAYVAO;
			}
			set
			{
				if ((this._NGAYVAO != value))
				{
					this.OnNGAYVAOChanging(value);
					this.SendPropertyChanging();
					this._NGAYVAO = value;
					this.SendPropertyChanged("NGAYVAO");
					this.OnNGAYVAOChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591