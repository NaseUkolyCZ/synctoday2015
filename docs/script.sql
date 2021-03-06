USE [SyncToday2015]
GO
/****** Object:  Table [dbo].[Action_UpdateAccount]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Action_UpdateAccount](
	[internalid] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](max) NULL,
	[ico] [nvarchar](max) NULL,
	[dic] [nvarchar](max) NULL,
	[externalid] [nvarchar](400) NULL,
	[email] [nvarchar](max) NULL,
	[PrimaryPhonenumber] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Street] [nvarchar](max) NULL,
	[Region] [nvarchar](max) NULL,
	[Postcode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[internalid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[actions.Accounts.create]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actions.Accounts.create](
	[AccountId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IC] [nvarchar](max) NULL,
	[DIC] [nvarchar](max) NULL,
	[ExternalId] [nvarchar](400) NULL,
	[Email] [nvarchar](max) NULL,
	[PrimaryPhonenumber] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Street] [nvarchar](max) NULL,
	[Region] [nvarchar](max) NULL,
	[Postcode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[CreateAccountId] [uniqueidentifier] NOT NULL,
	[ChangedOn] [datetimeoffset](7) NULL,
	[AdapterId] [uniqueidentifier] NOT NULL,
	[FormattedAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_CreateAccountId] PRIMARY KEY CLUSTERED 
(
	[CreateAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[actions.Accounts.update]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actions.Accounts.update](
	[AccountId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IC] [nvarchar](max) NULL,
	[DIC] [nvarchar](max) NULL,
	[ExternalId] [nvarchar](400) NULL,
	[Email] [nvarchar](max) NULL,
	[PrimaryPhonenumber] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Street] [nvarchar](max) NULL,
	[Region] [nvarchar](max) NULL,
	[Postcode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[AdapterId] [uniqueidentifier] NOT NULL,
	[UpdateAccountId] [uniqueidentifier] NOT NULL,
	[ChangedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_UpdateAccountId] PRIMARY KEY CLUSTERED 
(
	[UpdateAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.geis.Expeditions]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[adapters.geis.Expeditions](
	[ExpeditionId] [uniqueidentifier] NOT NULL,
	[isCargo] [bit] NULL,
	[number] [int] IDENTITY(1,1) NOT NULL,
	[customerReference] [nvarchar](max) NULL,
	[sendName] [nvarchar](max) NULL,
	[sendStreet] [nvarchar](max) NULL,
	[sendStreetNumOri] [nvarchar](max) NULL,
	[sendStreetNumDesc] [nvarchar](max) NULL,
	[sendCity] [nvarchar](max) NULL,
	[sendZipCode] [nvarchar](max) NULL,
	[sendCountry] [nvarchar](max) NULL,
	[sendContactName] [nvarchar](max) NULL,
	[sendContactEmail] [nvarchar](max) NULL,
	[sendContactPhone] [nvarchar](max) NULL,
	[recName] [nvarchar](max) NULL,
	[recStreet] [nvarchar](max) NULL,
	[recStreetNumOri] [nvarchar](max) NULL,
	[recStreetNumDesc] [nvarchar](max) NULL,
	[recCity] [nvarchar](max) NULL,
	[recZipCode] [nvarchar](max) NULL,
	[recCountry] [nvarchar](max) NULL,
	[recNote] [nvarchar](max) NULL,
	[addrCode] [nvarchar](max) NULL,
	[recContactPhone] [nvarchar](max) NULL,
	[recContactEmail] [nvarchar](max) NULL,
	[pickUpDate] [nvarchar](max) NULL,
	[row_count] [nvarchar](max) NULL,
	[row_weight] [nvarchar](max) NULL,
	[AdapterId] [uniqueidentifier] NULL,
	[Fakturace_FakturaVydana_ID] [uniqueidentifier] NULL,
	[VariabilniSymbol] [varchar](20) NULL,
	[CisloRady] [int] NULL,
	[ExportId] [uniqueidentifier] NULL,
	[recContactName] [nvarchar](max) NULL,
	[ZpusobPlatby_ID] [uniqueidentifier] NULL,
	[SumaCelkem] [decimal](18, 4) NULL,
PRIMARY KEY CLUSTERED 
(
	[ExpeditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[adapters.geis.Export]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.geis.Export](
	[ExportId] [uniqueidentifier] NOT NULL,
	[FileName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ExportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.google.Addresses]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.google.Addresses](
	[AddressId] [uniqueidentifier] NOT NULL,
	[City] [nvarchar](max) NULL,
	[Street] [nvarchar](max) NULL,
	[Region] [nvarchar](max) NULL,
	[Postcode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Formatted] [nvarchar](max) NULL,
	[Label] [nvarchar](max) NULL,
	[ContactId] [uniqueidentifier] NOT NULL,
	[Usage] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.google.Contacts]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.google.Contacts](
	[ExternalId] [nvarchar](400) NOT NULL,
	[ChangedOn] [datetimeoffset](7) NULL,
	[Content] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[GivenName] [nvarchar](max) NULL,
	[FamilyName] [nvarchar](max) NULL,
	[OrgDepartment] [nvarchar](max) NULL,
	[OrgJobDescription] [nvarchar](max) NULL,
	[OrgName] [nvarchar](max) NULL,
	[OrgTitle] [nvarchar](max) NULL,
	[PrimaryPhonenumber] [nvarchar](max) NULL,
	[postalAddressCity] [nvarchar](max) NULL,
	[postalAddressStreet] [nvarchar](max) NULL,
	[postalAddressRegion] [nvarchar](max) NULL,
	[postalAddressPostcode] [nvarchar](max) NULL,
	[postalAddressCountry] [nvarchar](max) NULL,
	[postalAddressFormattedAddress] [nvarchar](max) NULL,
	[ContactId] [uniqueidentifier] NOT NULL,
	[AdapterId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.google.Contacts.changes]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.google.Contacts.changes](
	[ExternalId] [nvarchar](400) NOT NULL,
	[ChangedOn] [datetimeoffset](7) NULL,
	[Content] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[GivenName] [nvarchar](max) NULL,
	[FamilyName] [nvarchar](max) NULL,
	[OrgDepartment] [nvarchar](max) NULL,
	[OrgJobDescription] [nvarchar](max) NULL,
	[OrgName] [nvarchar](max) NULL,
	[OrgTitle] [nvarchar](max) NULL,
	[PrimaryPhonenumber] [nvarchar](max) NULL,
	[postalAddressCity] [nvarchar](max) NULL,
	[postalAddressStreet] [nvarchar](max) NULL,
	[postalAddressRegion] [nvarchar](max) NULL,
	[postalAddressPostcode] [nvarchar](max) NULL,
	[postalAddressCountry] [nvarchar](max) NULL,
	[postalAddressFormattedAddress] [nvarchar](max) NULL,
	[ContactId] [uniqueidentifier] NOT NULL,
	[AdapterId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.google.Emails]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.google.Emails](
	[EmailId] [uniqueidentifier] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Label] [nvarchar](max) NULL,
	[Home] [bit] NULL,
	[Other] [bit] NULL,
	[Work] [bit] NULL,
	[ContactId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.google.GroupMemberships]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.google.GroupMemberships](
	[ContactId] [uniqueidentifier] NOT NULL,
	[GroupId] [uniqueidentifier] NOT NULL,
	[GroupMembershipId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupMembershipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.google.Groups]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.google.Groups](
	[ExternalId] [nvarchar](400) NOT NULL,
	[ChangedOn] [datetimeoffset](7) NULL,
	[Title] [nvarchar](max) NULL,
	[GroupId] [uniqueidentifier] NOT NULL,
	[AdapterId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.google.PartialAccounts]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.google.PartialAccounts](
	[PartialAccountId] [uniqueidentifier] NOT NULL,
	[ChangedOn] [datetimeoffset](7) NULL,
	[ExternalId] [nvarchar](800) NULL,
	[AdapterId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IC] [nvarchar](max) NULL,
	[DIC] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PrimaryPhonenumber] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Street] [nvarchar](max) NULL,
	[Region] [nvarchar](max) NULL,
	[Postcode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[FormattedAddress] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[TransformTag] [nvarchar](100) NULL,
	[AccountId] [uniqueidentifier] NULL,
	[Telephone2] [nvarchar](max) NULL,
	[Telephone3] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[PartialAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.google.PhoneNumbers]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.google.PhoneNumbers](
	[PhoneNumberId] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](max) NULL,
	[Label] [nvarchar](max) NULL,
	[Home] [bit] NULL,
	[Other] [bit] NULL,
	[Work] [bit] NULL,
	[ContactId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PhoneNumberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.hikashop.Address]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.hikashop.Address](
	[address_id] [int] NOT NULL,
	[address_user_id] [int] NULL,
	[address_title] [nvarchar](max) NULL,
	[address_firstname] [nvarchar](max) NULL,
	[address_middle_name] [nvarchar](max) NULL,
	[address_lastname] [nvarchar](max) NULL,
	[address_company] [nvarchar](max) NULL,
	[address_street] [nvarchar](max) NULL,
	[address_post_code] [nvarchar](max) NULL,
	[address_city] [nvarchar](max) NULL,
	[address_telephone] [nvarchar](max) NULL,
	[address_telephone2] [nvarchar](max) NULL,
	[address_fax] [nvarchar](max) NULL,
	[address_state] [nvarchar](max) NULL,
	[address_country] [nvarchar](max) NULL,
	[address_published] [int] NULL,
	[address_vat] [nvarchar](max) NULL,
	[address_default] [int] NULL,
	[address_street2] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.hikashop.Order]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.hikashop.Order](
	[order_id] [int] NOT NULL,
	[order_billing_address_id] [int] NOT NULL,
	[order_shipping_address_id] [int] NOT NULL,
	[order_user_id] [int] NOT NULL,
	[order_status] [nvarchar](255) NOT NULL,
	[order_discount_code] [nvarchar](255) NOT NULL,
	[order_created] [int] NOT NULL,
	[order_ip] [nvarchar](255) NOT NULL,
	[order_currency_id] [int] NOT NULL,
	[order_shipping_price] [decimal](17, 5) NOT NULL,
	[order_discount_price] [decimal](17, 5) NOT NULL,
	[order_shipping_id] [nvarchar](255) NOT NULL,
	[order_shipping_method] [nvarchar](255) NOT NULL,
	[order_payment_id] [nvarchar](255) NOT NULL,
	[order_payment_method] [nvarchar](255) NOT NULL,
	[order_full_price] [decimal](17, 5) NOT NULL,
	[order_modified] [int] NOT NULL,
	[order_partner_id] [int] NOT NULL,
	[order_partner_price] [decimal](17, 5) NOT NULL,
	[order_partner_paid] [int] NOT NULL,
	[order_type] [nvarchar](255) NOT NULL,
	[order_partner_currency_id] [int] NOT NULL,
	[order_shipping_tax] [decimal](17, 5) NOT NULL,
	[order_discount_tax] [decimal](17, 5) NOT NULL,
	[order_number] [nvarchar](255) NOT NULL,
	[order_tax_info] [text] NOT NULL,
	[order_payment_price] [decimal](17, 5) NOT NULL,
	[order_invoice_id] [int] NOT NULL,
	[order_invoice_number] [nvarchar](255) NOT NULL,
	[order_invoice_created] [int] NOT NULL,
	[order_shipping_params] [text] NOT NULL,
	[order_payment_params] [text] NOT NULL,
	[order_site_id] [nvarchar](255) NOT NULL,
	[PartialOrderId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.hikashop.OrderProduct]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.hikashop.OrderProduct](
	[order_product_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[order_product_quantity] [int] NOT NULL,
	[order_product_name] [nvarchar](255) NOT NULL,
	[order_product_code] [nvarchar](255) NOT NULL,
	[order_product_price] [decimal](17, 5) NOT NULL,
	[order_product_tax] [decimal](17, 5) NOT NULL,
	[order_product_options] [text] NOT NULL,
	[order_product_option_parent_id] [int] NULL,
	[order_product_tax_info] [text] NOT NULL,
	[order_product_wishlist_id] [int] NOT NULL,
	[order_product_shipping_id] [nvarchar](255) NOT NULL,
	[order_product_shipping_method] [nvarchar](255) NOT NULL,
	[order_product_shipping_price] [decimal](17, 5) NOT NULL,
	[order_product_shipping_tax] [decimal](17, 5) NOT NULL,
	[order_product_shipping_params] [nvarchar](255) NOT NULL,
	[OrderProductId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.hikashop.PartialAccounts]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.hikashop.PartialAccounts](
	[PartialAccountId] [uniqueidentifier] NOT NULL,
	[ChangedOn] [datetimeoffset](7) NULL,
	[ExternalId] [nvarchar](800) NULL,
	[AdapterId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IC] [nvarchar](max) NULL,
	[DIC] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PrimaryPhonenumber] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Street] [nvarchar](max) NULL,
	[Region] [nvarchar](max) NULL,
	[Postcode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[FormattedAddress] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[TransformTag] [nvarchar](100) NULL,
	[AccountId] [uniqueidentifier] NULL,
	[IsOriginal] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PartialAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.hikashop.Product]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.hikashop.Product](
	[product_id] [int] NOT NULL,
	[product_parent_id] [int] NOT NULL,
	[product_name] [nvarchar](255) NOT NULL,
	[product_description] [nvarchar](max) NOT NULL,
	[product_quantity] [int] NOT NULL,
	[product_code] [nvarchar](255) NOT NULL,
	[product_published] [int] NOT NULL,
	[product_hit] [int] NOT NULL,
	[product_created] [int] NOT NULL,
	[product_sale_start] [int] NOT NULL,
	[product_sale_end] [int] NOT NULL,
	[product_delay_id] [int] NOT NULL,
	[product_tax_id] [int] NOT NULL,
	[product_type] [nvarchar](255) NOT NULL,
	[product_vendor_id] [int] NOT NULL,
	[product_manufacturer_id] [int] NOT NULL,
	[product_url] [nvarchar](255) NOT NULL,
	[product_weight] [decimal](12, 3) NOT NULL,
	[product_keywords] [nvarchar](255) NOT NULL,
	[product_weight_unit] [nvarchar](255) NOT NULL,
	[product_modified] [int] NOT NULL,
	[product_meta_description] [nvarchar](155) NOT NULL,
	[product_dimension_unit] [nvarchar](255) NOT NULL,
	[product_width] [decimal](12, 3) NOT NULL,
	[product_length] [decimal](12, 3) NOT NULL,
	[product_height] [decimal](12, 3) NOT NULL,
	[product_max_per_order] [int] NULL,
	[product_access] [nvarchar](255) NOT NULL,
	[product_group_after_purchase] [nvarchar](255) NOT NULL,
	[product_min_per_order] [int] NULL,
	[product_contact] [int] NOT NULL,
	[product_last_seen_date] [int] NULL,
	[product_sales] [int] NULL,
	[product_waitlist] [int] NOT NULL,
	[product_layout] [nvarchar](255) NOT NULL,
	[product_average_score] [float] NOT NULL,
	[product_total_vote] [int] NOT NULL,
	[product_page_title] [nvarchar](255) NOT NULL,
	[product_alias] [nvarchar](255) NOT NULL,
	[product_price_percentage] [decimal](15, 7) NOT NULL,
	[product_canonical] [nvarchar](255) NOT NULL,
	[product_msrp] [decimal](15, 7) NULL,
	[product_display_quantity_field] [int] NULL,
	[product_warehouse_id] [int] NOT NULL,
	[product_quantity_layout] [nvarchar](255) NOT NULL,
	[PartialProductId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PartialProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.hikashop.User]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.hikashop.User](
	[user_id] [int] NOT NULL,
	[user_cms_id] [int] NULL,
	[user_email] [nvarchar](max) NULL,
	[user_partner_email] [nvarchar](max) NULL,
	[user_params] [nvarchar](max) NULL,
	[user_partner_id] [int] NULL,
	[user_partner_price] [decimal](18, 0) NULL,
	[user_partner_paid] [int] NULL,
	[user_created_ip] [nvarchar](max) NULL,
	[user_unpaid_amount] [decimal](18, 0) NULL,
	[user_partner_currency_id] [int] NULL,
	[user_created] [int] NULL,
	[user_currency_id] [int] NULL,
	[user_partner_activated] [int] NULL,
	[EmailSpojeni_ID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.moneys4.PartialAccounts]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.moneys4.PartialAccounts](
	[PartialAccountId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IC] [nvarchar](max) NULL,
	[DIC] [nvarchar](max) NULL,
	[ExternalId] [nvarchar](400) NULL,
	[Email] [nvarchar](max) NULL,
	[PrimaryPhonenumber] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Street] [nvarchar](max) NULL,
	[Region] [nvarchar](max) NULL,
	[Postcode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[FormattedAddress] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[ChangedOn] [datetimeoffset](7) NULL,
	[AdapterId] [uniqueidentifier] NULL,
	[OldAccountId] [uniqueidentifier] NULL,
	[Telephone2] [nvarchar](max) NULL,
	[Telephone3] [nvarchar](max) NULL,
	[new_cislo_uctu] [nvarchar](max) NULL,
	[new_vs] [nvarchar](max) NULL,
	[new_banka] [nvarchar](max) NULL,
	[AccountId] [uniqueidentifier] NULL,
	[telefonSpojeni1id] [uniqueidentifier] NOT NULL,
	[telefonSpojeni2id] [uniqueidentifier] NOT NULL,
	[telefonSpojeni3id] [uniqueidentifier] NOT NULL,
	[emailSpojeniId] [uniqueidentifier] NOT NULL,
	[wwwSpojeniId] [uniqueidentifier] NOT NULL,
	[bankovniSpojeniId] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PartialAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.moneys4.PartialContacts]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.moneys4.PartialContacts](
	[PartialContactId] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[Firstname] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[ParentAccountId] [uniqueidentifier] NULL,
	[JobTitle] [nvarchar](max) NULL,
	[EmailAddress1] [nvarchar](max) NULL,
	[EmailAddress2] [nvarchar](max) NULL,
	[EmailAddress3] [nvarchar](max) NULL,
	[MobilePhone] [nvarchar](max) NULL,
	[Telephone1] [nvarchar](max) NULL,
	[Telephone2] [nvarchar](max) NULL,
	[Telephone3] [nvarchar](max) NULL,
	[AdapterId] [uniqueidentifier] NOT NULL,
	[StateCode] [int] NULL,
	[StatusCode] [int] NULL,
	[ContactId] [uniqueidentifier] NULL,
	[telefonSpojeni1id] [uniqueidentifier] NOT NULL,
	[telefonSpojeni2id] [uniqueidentifier] NOT NULL,
	[telefonSpojeni3id] [uniqueidentifier] NOT NULL,
	[emailSpojeniId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PartialContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.moneys4.PartialProduct]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.moneys4.PartialProduct](
	[PartialProductId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[product_code] [nvarchar](255) NOT NULL,
	[AdapterId] [uniqueidentifier] NULL,
	[ProductId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[PartialProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.mscrm.PartialAccounts]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.mscrm.PartialAccounts](
	[PartialAccountId] [uniqueidentifier] NOT NULL,
	[AccountCategoryCode] [int] NULL,
	[TerritoryId] [uniqueidentifier] NULL,
	[DefaultPriceLevelId] [uniqueidentifier] NULL,
	[CustomerSizeCode] [int] NULL,
	[PreferredContactMethodCode] [int] NULL,
	[CustomerTypeCode] [int] NULL,
	[AccountRatingCode] [int] NULL,
	[IndustryCode] [int] NULL,
	[TerritoryCode] [int] NULL,
	[AccountClassificationCode] [int] NULL,
	[BusinessTypeCode] [int] NULL,
	[OwningBusinessUnit] [uniqueidentifier] NULL,
	[OriginatingLeadId] [uniqueidentifier] NULL,
	[PaymentTermsCode] [int] NULL,
	[ShippingMethodCode] [int] NULL,
	[PrimaryContactId] [uniqueidentifier] NULL,
	[Name] [nvarchar](max) NULL,
	[AccountNumber] [nvarchar](max) NULL,
	[Revenue] [money] NULL,
	[NumberOfEmployees] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[SIC] [nvarchar](max) NULL,
	[OwnershipCode] [int] NULL,
	[MarketCap] [money] NULL,
	[SharesOutstanding] [int] NULL,
	[TickerSymbol] [nvarchar](max) NULL,
	[StockExchange] [nvarchar](max) NULL,
	[WebSiteURL] [nvarchar](max) NULL,
	[FtpSiteURL] [nvarchar](max) NULL,
	[EMailAddress1] [nvarchar](max) NULL,
	[EMailAddress2] [nvarchar](max) NULL,
	[EMailAddress3] [nvarchar](max) NULL,
	[DoNotPhone] [bit] NULL,
	[DoNotFax] [bit] NULL,
	[Telephone1] [nvarchar](max) NULL,
	[DoNotEMail] [bit] NULL,
	[Telephone2] [nvarchar](max) NULL,
	[Fax] [nvarchar](max) NULL,
	[Telephone3] [nvarchar](max) NULL,
	[DoNotPostalMail] [bit] NULL,
	[DoNotBulkEMail] [bit] NULL,
	[DoNotBulkPostalMail] [bit] NULL,
	[CreditLimit] [money] NULL,
	[CreditOnHold] [bit] NULL,
	[IsPrivate] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[VersionNumber] [timestamp] NULL,
	[ParentAccountId] [uniqueidentifier] NULL,
	[Aging30] [money] NULL,
	[StateCode] [int] NOT NULL,
	[Aging60] [money] NULL,
	[StatusCode] [int] NULL,
	[Aging90] [money] NULL,
	[PreferredAppointmentDayCode] [int] NULL,
	[PreferredSystemUserId] [uniqueidentifier] NULL,
	[PreferredAppointmentTimeCode] [int] NULL,
	[Merged] [bit] NULL,
	[DoNotSendMM] [bit] NULL,
	[MasterId] [uniqueidentifier] NULL,
	[LastUsedInCampaign] [datetime] NULL,
	[PreferredServiceId] [uniqueidentifier] NULL,
	[PreferredEquipmentId] [uniqueidentifier] NULL,
	[ExchangeRate] [decimal](23, 10) NULL,
	[UTCConversionTimeZoneCode] [int] NULL,
	[OverriddenCreatedOn] [datetime] NULL,
	[TimeZoneRuleVersionNumber] [int] NULL,
	[ImportSequenceNumber] [int] NULL,
	[TransactionCurrencyId] [uniqueidentifier] NULL,
	[CreditLimit_Base] [money] NULL,
	[Aging30_Base] [money] NULL,
	[Revenue_Base] [money] NULL,
	[Aging90_Base] [money] NULL,
	[MarketCap_Base] [money] NULL,
	[Aging60_Base] [money] NULL,
	[YomiName] [nvarchar](max) NULL,
	[OwnerId] [uniqueidentifier] NOT NULL,
	[ModifiedOnBehalfBy] [uniqueidentifier] NULL,
	[CreatedOnBehalfBy] [uniqueidentifier] NULL,
	[OwnerIdType] [int] NOT NULL,
	[StageId] [uniqueidentifier] NULL,
	[ProcessId] [uniqueidentifier] NULL,
	[EntityImageId] [uniqueidentifier] NULL,
	[new_dic] [nvarchar](max) NULL,
	[new_ic] [nvarchar](max) NULL,
	[AccountId] [uniqueidentifier] NULL,
	[address1_city] [nvarchar](max) NULL,
	[address1_country] [nvarchar](max) NULL,
	[address1_line1] [nvarchar](max) NULL,
	[address1_postalcode] [nvarchar](max) NULL,
	[address1_telephone1] [nvarchar](max) NULL,
	[adapterid] [uniqueidentifier] NULL,
	[new_Zdroj] [nvarchar](100) NULL,
	[new_cislo_uctu] [nvarchar](max) NULL,
	[new_vs] [nvarchar](max) NULL,
	[new_banka] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[PartialAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[adapters.mscrm.PartialContacts]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.mscrm.PartialContacts](
	[PartialContactId] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[Firstname] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[ParentCustomerId] [uniqueidentifier] NULL,
	[JobTitle] [nvarchar](max) NULL,
	[EmailAddress1] [nvarchar](max) NULL,
	[EmailAddress2] [nvarchar](max) NULL,
	[EmailAddress3] [nvarchar](max) NULL,
	[MobilePhone] [nvarchar](max) NULL,
	[Telephone1] [nvarchar](max) NULL,
	[Telephone2] [nvarchar](max) NULL,
	[Telephone3] [nvarchar](max) NULL,
	[AdapterId] [uniqueidentifier] NOT NULL,
	[StateCode] [int] NULL,
	[StatusCode] [int] NULL,
	[ContactId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[PartialContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[entities.Accounts]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entities.Accounts](
	[AccountId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IC] [nvarchar](max) NULL,
	[DIC] [nvarchar](max) NULL,
	[ExternalId] [nvarchar](400) NULL,
	[Email] [nvarchar](max) NULL,
	[PrimaryPhonenumber] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Street] [nvarchar](max) NULL,
	[Region] [nvarchar](max) NULL,
	[Postcode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[FormattedAddress] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[ChangedOn] [datetimeoffset](7) NULL,
	[AdapterId] [uniqueidentifier] NULL,
	[OldAccountId] [uniqueidentifier] NULL,
	[Telephone2] [nvarchar](max) NULL,
	[Telephone3] [nvarchar](max) NULL,
	[new_cislo_uctu] [nvarchar](max) NULL,
	[new_vs] [nvarchar](max) NULL,
	[new_banka] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[entities.Contacts]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entities.Contacts](
	[ContactId] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[Firstname] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[ParentAccountId] [uniqueidentifier] NULL,
	[JobTitle] [nvarchar](max) NULL,
	[EmailAddress1] [nvarchar](max) NULL,
	[EmailAddress2] [nvarchar](max) NULL,
	[EmailAddress3] [nvarchar](max) NULL,
	[MobilePhone] [nvarchar](max) NULL,
	[Telephone1] [nvarchar](max) NULL,
	[Telephone2] [nvarchar](max) NULL,
	[Telephone3] [nvarchar](max) NULL,
	[AdapterId] [uniqueidentifier] NOT NULL,
	[StateCode] [int] NULL,
	[StatusCode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[entities.Order]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entities.Order](
	[OrderId] [uniqueidentifier] NOT NULL,
	[AccountId] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[PaymentMethodId] [uniqueidentifier] NOT NULL,
	[Number] [nvarchar](255) NULL,
	[AdapterId] [uniqueidentifier] NOT NULL,
	[KoncovyPrijemce_Email] [nvarchar](max) NULL,
	[KoncovyPrijemce_KontaktniOsobaNazev] [nvarchar](max) NULL,
	[KoncovyPrijemce_Misto] [nvarchar](max) NULL,
	[KoncovyPrijemce_Nazev] [nvarchar](max) NULL,
	[KoncovyPrijemce_PSC] [nvarchar](max) NULL,
	[KoncovyPrijemce_Stat] [nvarchar](max) NULL,
	[KoncovyPrijemce_Telefon] [nvarchar](max) NULL,
	[KoncovyPrijemce_Ulice] [nvarchar](max) NULL,
	[OrderStatusId] [uniqueidentifier] NULL,
	[KoncovyPrijemce_AddressID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[entities.OrderProduct]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entities.OrderProduct](
	[OrderProductId] [uniqueidentifier] NOT NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [decimal](17, 5) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[entities.OrderStatus]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entities.OrderStatus](
	[OrderStatusId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[entities.PaymentMethod]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entities.PaymentMethod](
	[PaymentMethodId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[entities.Product]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entities.Product](
	[ProductId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[product_code] [nvarchar](255) NOT NULL,
	[AdapterId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sync.Adapters]    Script Date: 25. 1. 2015 0:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sync.Adapters](
	[AdapterId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[AdapterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[adapters.geis.Expeditions] ADD  DEFAULT (newid()) FOR [ExpeditionId]
GO
ALTER TABLE [dbo].[adapters.geis.Export] ADD  DEFAULT (newid()) FOR [ExportId]
GO
ALTER TABLE [dbo].[adapters.google.Addresses] ADD  DEFAULT (newid()) FOR [AddressId]
GO
ALTER TABLE [dbo].[adapters.google.Emails] ADD  DEFAULT (newid()) FOR [EmailId]
GO
ALTER TABLE [dbo].[adapters.google.GroupMemberships] ADD  DEFAULT (newid()) FOR [GroupMembershipId]
GO
ALTER TABLE [dbo].[adapters.google.Groups] ADD  DEFAULT (newid()) FOR [GroupId]
GO
ALTER TABLE [dbo].[adapters.google.PartialAccounts] ADD  DEFAULT (newid()) FOR [PartialAccountId]
GO
ALTER TABLE [dbo].[adapters.google.PhoneNumbers] ADD  DEFAULT (newid()) FOR [PhoneNumberId]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0') FOR [order_billing_address_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0') FOR [order_shipping_address_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0') FOR [order_user_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('') FOR [order_status]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('') FOR [order_discount_code]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0') FOR [order_created]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('') FOR [order_ip]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0') FOR [order_currency_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0.00000') FOR [order_shipping_price]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0.00000') FOR [order_discount_price]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('') FOR [order_shipping_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('') FOR [order_shipping_method]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('') FOR [order_payment_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('') FOR [order_payment_method]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0.00000') FOR [order_full_price]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0') FOR [order_modified]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0') FOR [order_partner_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0.00000') FOR [order_partner_price]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0') FOR [order_partner_paid]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('sale') FOR [order_type]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0') FOR [order_partner_currency_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0.00000') FOR [order_shipping_tax]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0.00000') FOR [order_discount_tax]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('') FOR [order_number]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0.00000') FOR [order_payment_price]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0') FOR [order_invoice_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('') FOR [order_invoice_number]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('0') FOR [order_invoice_created]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT ('') FOR [order_site_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.Order] ADD  DEFAULT (newid()) FOR [PartialOrderId]
GO
ALTER TABLE [dbo].[adapters.hikashop.OrderProduct] ADD  DEFAULT ('0') FOR [order_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.OrderProduct] ADD  DEFAULT ('0') FOR [product_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.OrderProduct] ADD  DEFAULT ('1') FOR [order_product_quantity]
GO
ALTER TABLE [dbo].[adapters.hikashop.OrderProduct] ADD  DEFAULT ('') FOR [order_product_name]
GO
ALTER TABLE [dbo].[adapters.hikashop.OrderProduct] ADD  DEFAULT ('') FOR [order_product_code]
GO
ALTER TABLE [dbo].[adapters.hikashop.OrderProduct] ADD  DEFAULT ('0.00000') FOR [order_product_price]
GO
ALTER TABLE [dbo].[adapters.hikashop.OrderProduct] ADD  DEFAULT ('0.00000') FOR [order_product_tax]
GO
ALTER TABLE [dbo].[adapters.hikashop.OrderProduct] ADD  DEFAULT ('0') FOR [order_product_option_parent_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.OrderProduct] ADD  DEFAULT ('0') FOR [order_product_wishlist_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.OrderProduct] ADD  DEFAULT ('') FOR [order_product_shipping_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.OrderProduct] ADD  DEFAULT ('') FOR [order_product_shipping_method]
GO
ALTER TABLE [dbo].[adapters.hikashop.OrderProduct] ADD  DEFAULT ('0.00000') FOR [order_product_shipping_price]
GO
ALTER TABLE [dbo].[adapters.hikashop.OrderProduct] ADD  DEFAULT ('0.00000') FOR [order_product_shipping_tax]
GO
ALTER TABLE [dbo].[adapters.hikashop.OrderProduct] ADD  DEFAULT ('') FOR [order_product_shipping_params]
GO
ALTER TABLE [dbo].[adapters.hikashop.OrderProduct] ADD  DEFAULT (newid()) FOR [OrderProductId]
GO
ALTER TABLE [dbo].[adapters.hikashop.PartialAccounts] ADD  DEFAULT (newid()) FOR [PartialAccountId]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_parent_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('-1') FOR [product_quantity]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_published]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_hit]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_created]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_sale_start]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_sale_end]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_delay_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_tax_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('') FOR [product_type]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_vendor_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_manufacturer_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0.000') FOR [product_weight]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('kg') FOR [product_weight_unit]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_modified]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('') FOR [product_meta_description]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('m') FOR [product_dimension_unit]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0.000') FOR [product_width]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0.000') FOR [product_length]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0.000') FOR [product_height]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_max_per_order]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('all') FOR [product_access]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('') FOR [product_group_after_purchase]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_min_per_order]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_contact]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_last_seen_date]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_sales]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_waitlist]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('') FOR [product_layout]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_total_vote]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('') FOR [product_page_title]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('') FOR [product_alias]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0.0000000') FOR [product_price_percentage]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('') FOR [product_canonical]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0.0000000') FOR [product_msrp]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_display_quantity_field]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('0') FOR [product_warehouse_id]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT ('') FOR [product_quantity_layout]
GO
ALTER TABLE [dbo].[adapters.hikashop.Product] ADD  DEFAULT (newid()) FOR [PartialProductId]
GO
ALTER TABLE [dbo].[adapters.hikashop.User] ADD  DEFAULT (newid()) FOR [EmailSpojeni_ID]
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialAccounts] ADD  DEFAULT (newid()) FOR [PartialAccountId]
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialAccounts] ADD  DEFAULT (newid()) FOR [telefonSpojeni1id]
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialAccounts] ADD  DEFAULT (newid()) FOR [telefonSpojeni2id]
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialAccounts] ADD  DEFAULT (newid()) FOR [telefonSpojeni3id]
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialAccounts] ADD  DEFAULT (newid()) FOR [emailSpojeniId]
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialAccounts] ADD  DEFAULT (newid()) FOR [wwwSpojeniId]
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialAccounts] ADD  DEFAULT (newid()) FOR [bankovniSpojeniId]
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialAccounts] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialContacts] ADD  DEFAULT (newid()) FOR [telefonSpojeni1id]
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialContacts] ADD  DEFAULT (newid()) FOR [telefonSpojeni2id]
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialContacts] ADD  DEFAULT (newid()) FOR [telefonSpojeni3id]
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialContacts] ADD  DEFAULT (newid()) FOR [emailSpojeniId]
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialProduct] ADD  DEFAULT (newid()) FOR [PartialProductId]
GO
ALTER TABLE [dbo].[adapters.mscrm.PartialAccounts] ADD  CONSTRAINT [DF_AccountBase_DoNotPhone]  DEFAULT ((0)) FOR [DoNotPhone]
GO
ALTER TABLE [dbo].[adapters.mscrm.PartialAccounts] ADD  CONSTRAINT [DF_AccountBase_DoNotFax]  DEFAULT ((0)) FOR [DoNotFax]
GO
ALTER TABLE [dbo].[adapters.mscrm.PartialAccounts] ADD  CONSTRAINT [DF_AccountBase_DoNotEMail]  DEFAULT ((0)) FOR [DoNotEMail]
GO
ALTER TABLE [dbo].[adapters.mscrm.PartialAccounts] ADD  CONSTRAINT [DF_AccountBase_DoNotPostalMail]  DEFAULT ((0)) FOR [DoNotPostalMail]
GO
ALTER TABLE [dbo].[adapters.mscrm.PartialAccounts] ADD  CONSTRAINT [DF_AccountBase_DoNotBulkEMail]  DEFAULT ((0)) FOR [DoNotBulkEMail]
GO
ALTER TABLE [dbo].[adapters.mscrm.PartialAccounts] ADD  CONSTRAINT [DF_AccountBase_DoNotBulkPostalMail]  DEFAULT ((0)) FOR [DoNotBulkPostalMail]
GO
ALTER TABLE [dbo].[adapters.mscrm.PartialAccounts] ADD  CONSTRAINT [Set_To_Zero94]  DEFAULT ((0)) FOR [IsPrivate]
GO
ALTER TABLE [dbo].[entities.Accounts] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[entities.Order] ADD  DEFAULT (newid()) FOR [OrderId]
GO
ALTER TABLE [dbo].[entities.Order] ADD  DEFAULT (newid()) FOR [KoncovyPrijemce_AddressID]
GO
ALTER TABLE [dbo].[entities.OrderProduct] ADD  DEFAULT (newid()) FOR [OrderProductId]
GO
ALTER TABLE [dbo].[entities.OrderStatus] ADD  DEFAULT (newid()) FOR [OrderStatusId]
GO
ALTER TABLE [dbo].[entities.PaymentMethod] ADD  DEFAULT (newid()) FOR [PaymentMethodId]
GO
ALTER TABLE [dbo].[entities.Product] ADD  DEFAULT (newid()) FOR [ProductId]
GO
ALTER TABLE [dbo].[sync.Adapters] ADD  DEFAULT (newid()) FOR [AdapterId]
GO
ALTER TABLE [dbo].[actions.Accounts.create]  WITH CHECK ADD FOREIGN KEY([AccountId])
REFERENCES [dbo].[entities.Accounts] ([AccountId])
GO
ALTER TABLE [dbo].[actions.Accounts.create]  WITH CHECK ADD FOREIGN KEY([AdapterId])
REFERENCES [dbo].[sync.Adapters] ([AdapterId])
GO
ALTER TABLE [dbo].[actions.Accounts.update]  WITH CHECK ADD FOREIGN KEY([AccountId])
REFERENCES [dbo].[entities.Accounts] ([AccountId])
GO
ALTER TABLE [dbo].[actions.Accounts.update]  WITH CHECK ADD FOREIGN KEY([AdapterId])
REFERENCES [dbo].[sync.Adapters] ([AdapterId])
GO
ALTER TABLE [dbo].[adapters.geis.Expeditions]  WITH CHECK ADD FOREIGN KEY([AdapterId])
REFERENCES [dbo].[sync.Adapters] ([AdapterId])
GO
ALTER TABLE [dbo].[adapters.geis.Expeditions]  WITH CHECK ADD FOREIGN KEY([ExportId])
REFERENCES [dbo].[adapters.geis.Export] ([ExportId])
GO
ALTER TABLE [dbo].[adapters.google.Emails]  WITH CHECK ADD FOREIGN KEY([ContactId])
REFERENCES [dbo].[adapters.google.Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[adapters.google.GroupMemberships]  WITH CHECK ADD FOREIGN KEY([ContactId])
REFERENCES [dbo].[adapters.google.Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[adapters.google.GroupMemberships]  WITH CHECK ADD FOREIGN KEY([GroupId])
REFERENCES [dbo].[adapters.google.Groups] ([GroupId])
GO
ALTER TABLE [dbo].[adapters.google.PartialAccounts]  WITH CHECK ADD FOREIGN KEY([AccountId])
REFERENCES [dbo].[entities.Accounts] ([AccountId])
GO
ALTER TABLE [dbo].[adapters.google.PartialAccounts]  WITH CHECK ADD FOREIGN KEY([AdapterId])
REFERENCES [dbo].[sync.Adapters] ([AdapterId])
GO
ALTER TABLE [dbo].[adapters.google.PhoneNumbers]  WITH CHECK ADD FOREIGN KEY([ContactId])
REFERENCES [dbo].[adapters.google.Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[adapters.hikashop.PartialAccounts]  WITH CHECK ADD FOREIGN KEY([AccountId])
REFERENCES [dbo].[entities.Accounts] ([AccountId])
GO
ALTER TABLE [dbo].[adapters.hikashop.PartialAccounts]  WITH CHECK ADD FOREIGN KEY([AdapterId])
REFERENCES [dbo].[sync.Adapters] ([AdapterId])
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialAccounts]  WITH CHECK ADD FOREIGN KEY([AdapterId])
REFERENCES [dbo].[sync.Adapters] ([AdapterId])
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialAccounts]  WITH CHECK ADD  CONSTRAINT [fk_money_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[entities.Accounts] ([AccountId])
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialAccounts] CHECK CONSTRAINT [fk_money_AccountId]
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialContacts]  WITH CHECK ADD FOREIGN KEY([AdapterId])
REFERENCES [dbo].[sync.Adapters] ([AdapterId])
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialContacts]  WITH CHECK ADD FOREIGN KEY([ContactId])
REFERENCES [dbo].[entities.Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialContacts]  WITH CHECK ADD FOREIGN KEY([ParentAccountId])
REFERENCES [dbo].[adapters.moneys4.PartialAccounts] ([PartialAccountId])
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialProduct]  WITH NOCHECK ADD FOREIGN KEY([AdapterId])
REFERENCES [dbo].[sync.Adapters] ([AdapterId])
GO
ALTER TABLE [dbo].[adapters.moneys4.PartialProduct]  WITH NOCHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[entities.Product] ([ProductId])
GO
ALTER TABLE [dbo].[adapters.mscrm.PartialAccounts]  WITH CHECK ADD  CONSTRAINT [fk_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[entities.Accounts] ([AccountId])
GO
ALTER TABLE [dbo].[adapters.mscrm.PartialAccounts] CHECK CONSTRAINT [fk_AccountId]
GO
ALTER TABLE [dbo].[adapters.mscrm.PartialContacts]  WITH CHECK ADD FOREIGN KEY([AdapterId])
REFERENCES [dbo].[sync.Adapters] ([AdapterId])
GO
ALTER TABLE [dbo].[adapters.mscrm.PartialContacts]  WITH CHECK ADD FOREIGN KEY([ContactId])
REFERENCES [dbo].[entities.Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[adapters.mscrm.PartialContacts]  WITH CHECK ADD FOREIGN KEY([ParentCustomerId])
REFERENCES [dbo].[adapters.mscrm.PartialAccounts] ([PartialAccountId])
GO
ALTER TABLE [dbo].[entities.Accounts]  WITH CHECK ADD FOREIGN KEY([AdapterId])
REFERENCES [dbo].[sync.Adapters] ([AdapterId])
GO
ALTER TABLE [dbo].[entities.Contacts]  WITH CHECK ADD FOREIGN KEY([AdapterId])
REFERENCES [dbo].[sync.Adapters] ([AdapterId])
GO
ALTER TABLE [dbo].[entities.Contacts]  WITH CHECK ADD FOREIGN KEY([ParentAccountId])
REFERENCES [dbo].[entities.Accounts] ([AccountId])
GO
ALTER TABLE [dbo].[entities.Order]  WITH NOCHECK ADD FOREIGN KEY([AccountId])
REFERENCES [dbo].[entities.Accounts] ([AccountId])
GO
ALTER TABLE [dbo].[entities.Order]  WITH NOCHECK ADD FOREIGN KEY([AdapterId])
REFERENCES [dbo].[sync.Adapters] ([AdapterId])
GO
ALTER TABLE [dbo].[entities.Order]  WITH NOCHECK ADD FOREIGN KEY([OrderStatusId])
REFERENCES [dbo].[entities.OrderStatus] ([OrderStatusId])
GO
ALTER TABLE [dbo].[entities.Order]  WITH NOCHECK ADD FOREIGN KEY([PaymentMethodId])
REFERENCES [dbo].[entities.PaymentMethod] ([PaymentMethodId])
GO
ALTER TABLE [dbo].[entities.OrderProduct]  WITH NOCHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[entities.Order] ([OrderId])
GO
ALTER TABLE [dbo].[entities.OrderProduct]  WITH NOCHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[entities.Product] ([ProductId])
GO
ALTER TABLE [dbo].[entities.Product]  WITH NOCHECK ADD FOREIGN KEY([AdapterId])
REFERENCES [dbo].[sync.Adapters] ([AdapterId])
GO
