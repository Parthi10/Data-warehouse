USE [Car Parts Datamart]
GO
/****** Object:  Table [dbo].[_Fact_Table_2]    Script Date: 10/31/2019 8:56:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Fact_Table_2](
	[part_id] [int] NOT NULL,
	[pManufacturer_code] [int] NOT NULL,
	[car_id] [int] NOT NULL,
	[model_code] [int] NOT NULL,
	[cManufacturer_code] [int] NOT NULL,
	[quantity] [int] NULL,
	[cost] [int] NULL,
	[profit] [int] NULL,
 CONSTRAINT [XPK_Fact_Table_2] PRIMARY KEY CLUSTERED 
(
	[part_id] ASC,
	[pManufacturer_code] ASC,
	[car_id] ASC,
	[model_code] ASC,
	[cManufacturer_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Car]    Script Date: 10/31/2019 8:56:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Car](
	[car_id] [int] NOT NULL,
	[car_year_of_manufacture] [int] NULL,
	[other_car_details] [varchar](20) NULL,
 CONSTRAINT [XPKCar] PRIMARY KEY CLUSTERED 
(
	[car_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Car_Manufacturer]    Script Date: 10/31/2019 8:56:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Car_Manufacturer](
	[cManufacturer_code] [int] NOT NULL,
	[Manufacturer_Name] [varchar](20) NULL,
	[other_details] [varchar](20) NULL,
 CONSTRAINT [XPKCar_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[cManufacturer_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fact_Table_1]    Script Date: 10/31/2019 8:56:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Table_1](
	[supplier_id] [int] NOT NULL,
	[pManufacturer_code] [int] NOT NULL,
	[car_id] [int] NOT NULL,
	[part_id] [int] NOT NULL,
	[cManufacturer_code] [int] NOT NULL,
	[quantity] [int] NULL,
	[cost] [int] NULL,
	[profit] [int] NULL,
 CONSTRAINT [XPKFact_Table_1] PRIMARY KEY CLUSTERED 
(
	[supplier_id] ASC,
	[pManufacturer_code] ASC,
	[car_id] ASC,
	[part_id] ASC,
	[cManufacturer_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fact_Table_3]    Script Date: 10/31/2019 8:56:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Table_3](
	[part_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[car_id] [int] NOT NULL,
	[cManufacturer_code] [int] NOT NULL,
	[quantity] [int] NULL,
	[cost] [int] NULL,
	[profit] [int] NULL,
 CONSTRAINT [XPKFact_Table_3] PRIMARY KEY CLUSTERED 
(
	[part_id] ASC,
	[supplier_id] ASC,
	[car_id] ASC,
	[cManufacturer_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fact_Table_4]    Script Date: 10/31/2019 8:56:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Table_4](
	[part_id] [int] NOT NULL,
	[pManufacturer_code] [int] NOT NULL,
	[car_id] [int] NOT NULL,
	[quantity] [int] NULL,
	[cost] [int] NULL,
	[profit] [int] NULL,
 CONSTRAINT [XPKFact_Table_4] PRIMARY KEY CLUSTERED 
(
	[part_id] ASC,
	[pManufacturer_code] ASC,
	[car_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Parts]    Script Date: 10/31/2019 8:56:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parts](
	[part_id] [int] NOT NULL,
	[part_type_code] [int] NOT NULL,
	[part_level_code] [int] NOT NULL,
	[parent_part_id] [int] NULL,
	[part_name] [varchar](20) NULL,
	[weight] [varchar](20) NULL,
	[condition] [varchar](20) NULL,
	[mileage_donor_vehicle] [varchar](20) NULL,
	[other_part_details] [varchar](20) NULL,
 CONSTRAINT [XPKParts] PRIMARY KEY CLUSTERED 
(
	[part_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parts_Level]    Script Date: 10/31/2019 8:56:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parts_Level](
	[part_level_code] [int] NOT NULL,
	[part_level_description] [varchar](20) NULL,
 CONSTRAINT [XPKParts_Level] PRIMARY KEY CLUSTERED 
(
	[part_level_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parts_Manufacturer]    Script Date: 10/31/2019 8:56:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parts_Manufacturer](
	[pManufacturer_code] [int] NOT NULL,
	[Manufacturer_Name] [varchar](20) NULL,
	[other_details] [varchar](20) NULL,
 CONSTRAINT [XPKParts_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[pManufacturer_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parts_Type]    Script Date: 10/31/2019 8:56:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parts_Type](
	[part_type_code] [int] NOT NULL,
	[part_type_description] [varchar](20) NULL,
 CONSTRAINT [XPKParts_Type] PRIMARY KEY CLUSTERED 
(
	[part_type_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 10/31/2019 8:56:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supplier](
	[supplier_id] [int] NOT NULL,
	[supplier_details] [varchar](20) NULL,
 CONSTRAINT [XPKSupplier] PRIMARY KEY CLUSTERED 
(
	[supplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[_Fact_Table_2]  WITH CHECK ADD  CONSTRAINT [R_149] FOREIGN KEY([part_id])
REFERENCES [dbo].[Parts] ([part_id])
GO
ALTER TABLE [dbo].[_Fact_Table_2] CHECK CONSTRAINT [R_149]
GO
ALTER TABLE [dbo].[_Fact_Table_2]  WITH CHECK ADD  CONSTRAINT [R_151] FOREIGN KEY([pManufacturer_code])
REFERENCES [dbo].[Parts_Manufacturer] ([pManufacturer_code])
GO
ALTER TABLE [dbo].[_Fact_Table_2] CHECK CONSTRAINT [R_151]
GO
ALTER TABLE [dbo].[_Fact_Table_2]  WITH CHECK ADD  CONSTRAINT [R_152] FOREIGN KEY([car_id])
REFERENCES [dbo].[Car] ([car_id])
GO
ALTER TABLE [dbo].[_Fact_Table_2] CHECK CONSTRAINT [R_152]
GO
ALTER TABLE [dbo].[_Fact_Table_2]  WITH CHECK ADD  CONSTRAINT [R_154] FOREIGN KEY([cManufacturer_code])
REFERENCES [dbo].[Car_Manufacturer] ([cManufacturer_code])
GO
ALTER TABLE [dbo].[_Fact_Table_2] CHECK CONSTRAINT [R_154]
GO
ALTER TABLE [dbo].[Fact_Table_1]  WITH CHECK ADD  CONSTRAINT [R_142] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[Supplier] ([supplier_id])
GO
ALTER TABLE [dbo].[Fact_Table_1] CHECK CONSTRAINT [R_142]
GO
ALTER TABLE [dbo].[Fact_Table_1]  WITH CHECK ADD  CONSTRAINT [R_143] FOREIGN KEY([pManufacturer_code])
REFERENCES [dbo].[Parts_Manufacturer] ([pManufacturer_code])
GO
ALTER TABLE [dbo].[Fact_Table_1] CHECK CONSTRAINT [R_143]
GO
ALTER TABLE [dbo].[Fact_Table_1]  WITH CHECK ADD  CONSTRAINT [R_144] FOREIGN KEY([car_id])
REFERENCES [dbo].[Car] ([car_id])
GO
ALTER TABLE [dbo].[Fact_Table_1] CHECK CONSTRAINT [R_144]
GO
ALTER TABLE [dbo].[Fact_Table_1]  WITH CHECK ADD  CONSTRAINT [R_145] FOREIGN KEY([part_id])
REFERENCES [dbo].[Parts] ([part_id])
GO
ALTER TABLE [dbo].[Fact_Table_1] CHECK CONSTRAINT [R_145]
GO
ALTER TABLE [dbo].[Fact_Table_1]  WITH CHECK ADD  CONSTRAINT [R_146] FOREIGN KEY([cManufacturer_code])
REFERENCES [dbo].[Car_Manufacturer] ([cManufacturer_code])
GO
ALTER TABLE [dbo].[Fact_Table_1] CHECK CONSTRAINT [R_146]
GO
ALTER TABLE [dbo].[Fact_Table_3]  WITH CHECK ADD  CONSTRAINT [R_160] FOREIGN KEY([part_id])
REFERENCES [dbo].[Parts] ([part_id])
GO
ALTER TABLE [dbo].[Fact_Table_3] CHECK CONSTRAINT [R_160]
GO
ALTER TABLE [dbo].[Fact_Table_3]  WITH CHECK ADD  CONSTRAINT [R_161] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[Supplier] ([supplier_id])
GO
ALTER TABLE [dbo].[Fact_Table_3] CHECK CONSTRAINT [R_161]
GO
ALTER TABLE [dbo].[Fact_Table_3]  WITH CHECK ADD  CONSTRAINT [R_163] FOREIGN KEY([car_id])
REFERENCES [dbo].[Car] ([car_id])
GO
ALTER TABLE [dbo].[Fact_Table_3] CHECK CONSTRAINT [R_163]
GO
ALTER TABLE [dbo].[Fact_Table_3]  WITH CHECK ADD  CONSTRAINT [R_165] FOREIGN KEY([cManufacturer_code])
REFERENCES [dbo].[Car_Manufacturer] ([cManufacturer_code])
GO
ALTER TABLE [dbo].[Fact_Table_3] CHECK CONSTRAINT [R_165]
GO
ALTER TABLE [dbo].[Fact_Table_4]  WITH CHECK ADD  CONSTRAINT [R_166] FOREIGN KEY([part_id])
REFERENCES [dbo].[Parts] ([part_id])
GO
ALTER TABLE [dbo].[Fact_Table_4] CHECK CONSTRAINT [R_166]
GO
ALTER TABLE [dbo].[Fact_Table_4]  WITH CHECK ADD  CONSTRAINT [R_168] FOREIGN KEY([pManufacturer_code])
REFERENCES [dbo].[Parts_Manufacturer] ([pManufacturer_code])
GO
ALTER TABLE [dbo].[Fact_Table_4] CHECK CONSTRAINT [R_168]
GO
ALTER TABLE [dbo].[Fact_Table_4]  WITH CHECK ADD  CONSTRAINT [R_171] FOREIGN KEY([car_id])
REFERENCES [dbo].[Car] ([car_id])
GO
ALTER TABLE [dbo].[Fact_Table_4] CHECK CONSTRAINT [R_171]
GO
ALTER TABLE [dbo].[Parts]  WITH CHECK ADD  CONSTRAINT [R_134] FOREIGN KEY([part_type_code])
REFERENCES [dbo].[Parts_Type] ([part_type_code])
GO
ALTER TABLE [dbo].[Parts] CHECK CONSTRAINT [R_134]
GO
ALTER TABLE [dbo].[Parts]  WITH CHECK ADD  CONSTRAINT [R_135] FOREIGN KEY([part_level_code])
REFERENCES [dbo].[Parts_Level] ([part_level_code])
GO
ALTER TABLE [dbo].[Parts] CHECK CONSTRAINT [R_135]
GO
