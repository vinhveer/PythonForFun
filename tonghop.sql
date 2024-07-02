/****** Object:  Table dbo.HR_AdditionalTimeDependency    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_AdditionalTimeDependency(
	Index bigint 
	CompanyIndex int 
	EmployeeATID nvarchar(max) 
	FamilyInfoIndex int 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_AdditionalTimeDependency PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_AdditionalTimeDependency_Detail    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_AdditionalTimeDependency_Detail(
	Index bigint 
	CompanyIndex int 
	AdditionalTimeIndex bigint 
	FromTime datetime2(7) 
	ToTime datetime2(7) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_AdditionalTimeDependency_Detail PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_AdvancedDepartmentDefaultLevel    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_AdvancedDepartmentDefaultLevel(
	CompanyIndex int 
	DepartmentIndex bigint 
	Feature nvarchar(100) 
	HelperATID nvarchar(30) 
	Level1 nvarchar(50) 
	Level2 nvarchar(50) 
	Level3 nvarchar(50) 
	Level4 nvarchar(50) 
	Level5 nvarchar(50) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	CCMail nvarchar(max) 
	ConditionForLevel1 ntext 
	ConditionForLevel2 ntext 
	ConditionForLevel3 ntext 
	ConditionForLevel4 ntext 
	ConditionForLevel5 ntext 
	ExtendedData nvarchar(200) 
 CONSTRAINT PK_HR_AdvancedDepartmentDefaultLevel PRIMARY KEY CLUSTERED 
(
	DepartmentIndex ASC,
	Feature ASC,
	ExtendedData ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_AdvancedUser    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_AdvancedUser(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	Feature nvarchar(100) 
	HelperATID nvarchar(30) 
	Level1 nvarchar(50) 
	Level2 nvarchar(50) 
	Level3 nvarchar(50) 
	Level4 nvarchar(50) 
	Level5 nvarchar(50) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	CCMail nvarchar(max) 
	ConditionForLevel1 ntext 
	ConditionForLevel2 ntext 
	ConditionForLevel3 ntext 
	ConditionForLevel4 ntext 
	ConditionForLevel5 ntext 
	ExtendedData nvarchar(200) 
 CONSTRAINT PK_HR_AdvancedUser PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	Feature ASC,
	ExtendedData ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_ApproverGroup    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_ApproverGroup(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Description nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_ApproverGroup PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Archives    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Archives(
	Index int 
	CompanyIndex int 
	AreaIndex int 
	Name nvarchar(2000) 
	Number nvarchar(50) 
	Content text 
	PublishedDepartment bigint 
	AppliedDate smalldatetime 
	ToDate smalldatetime 
	SignedDate smalldatetime 
	SignedPerson nvarchar(100) 
	AttachedFile ntext 
	Note nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	ArchivesTypeIndex int 
 CONSTRAINT PK_HR_Archives PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_ArchivesType    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_ArchivesType(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_ArchivesType PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Area    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Area(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	RegionIndex int 
 CONSTRAINT PK_HR_Area PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_AreaToCompany    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_AreaToCompany(
	Index int 
	CompanyIndex int 
	Code nvarchar(max) 
	Name nvarchar(max) 
	Description nvarchar(max) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(max) 
	dDate datetime 
	dUser nvarchar(max) 
 CONSTRAINT PK_HR_AreaToCompany PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_AreaToDepartment    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_AreaToDepartment(
	Index int 
	CompanyIndex int 
	AreaToCompanyIndex int 
	DepartmentIndex bigint 
	StandardSalary real 
	StandardHourSalary real 
	WageHourlyRate real 
	NightAllowanceRate real 
	OvertimeShiftOT1 real 
	OvertimeShiftOT2 real 
	OvertimeShiftOT3 real 
	OvertimeShiftOT4 real 
	OvertimeShiftOT5 real 
	OvertimeShiftOT6 real 
	OvertimeShiftOT7 real 
	OvertimeShiftOT8 real 
	OvertimeShiftOT9 real 
	OvertimeShiftOT10 real 
	FromDate datetime2(7) 
	ToDate datetime2(7) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(max) 
	dDate datetime 
	dUser nvarchar(max) 
 CONSTRAINT PK_HR_AreaToDepartment PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Asset    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Asset(
	Index int 
	CompanyIndex int 
	AssetID nvarchar(50) 
	AssetName nvarchar(200) 
	PurchasedDate datetime 
	ExpiredDate datetime 
	Unit nvarchar(200) 
	NetPrice decimal(18, 2) 
	Status nvarchar(max) 
	Description nvarchar(max) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	AttachmentFile nvarchar(max) 
	TangibleAssets bit 
 CONSTRAINT PK_HR_Asset PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_AssetAllocation    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_AssetAllocation(
	Index int 
	CompanyIndex int 
	AssetAllocationID nvarchar(50) 
	EmployeeATID nvarchar(30) 
	AssetIndex int 
	DoerATID nvarchar(30) 
	IssuedDate datetime 
	ExpiredDate datetime 
	DebitMoney decimal(18, 2) 
	Size nvarchar(max) 
	Number int 
	Note nvarchar(max) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	AttachmentFile nvarchar(max) 
	DispensingStatus bit 
 CONSTRAINT PK_HR_AssetAllocation PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_AssetRecovery    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_AssetRecovery(
	Index int 
	CompanyIndex int 
	AssetAllocationID nvarchar(50) 
	Date datetime 
	DoerATID nvarchar(30) 
	Number int 
	Note nvarchar(max) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	AttachmentFile nvarchar(max) 
 CONSTRAINT PK_HR_AssetRecovery PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Bank    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Bank(
	Index bigint 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Note nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	SwiftCode nvarchar(50) 
 CONSTRAINT PK_HR_Bank PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_BiDashboard    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_BiDashboard(
	Index int 
	CompanyIndex int 
	Name nvarchar(300) 
	GroupUser nvarchar(max) 
	User nvarchar(max) 
	Url nvarchar(max) 
	Order int 
	dBy nvarchar(100) 
	dDate datetime 
	UpdatedUser nvarchar(100) 
	UpdatedDate datetime 
 CONSTRAINT PK_HR_BiDashboard PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_BranchOffice    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_BranchOffice(
	Index int 
	Code nvarchar(100) 
	Name nvarchar(500) 
	NameInEng nvarchar(500) 
	Address nvarchar(500) 
	Phone nvarchar(50) 
	Fax nvarchar(50) 
	Mail nvarchar(200) 
	Website nvarchar(200) 
	EstablishedDate datetime 
	SubordinateIndex int 
	Company int 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	CompanyIndex int 
 CONSTRAINT PK_HR_BranchOffice PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_BussinessAccountForEContract    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_BussinessAccountForEContract(
	Index int 
	CompanyIndex int 
	userName nvarchar(100) 
	password nvarchar(100) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	EmployeeATID nvarchar(30) 
	access_token nvarchar(max) 
	Date datetime2(7) 
	expires_in int 
	refresh_token nvarchar(max) 
	token_type nvarchar(max) 
	last_username nvarchar(max) 
	email nvarchar(max) 
	idUser nvarchar(max) 
	userType nvarchar(max) 
 CONSTRAINT PK_HR_BussinessAccountForEContract PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_CertificateType    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_CertificateType(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(200) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_CertificateType PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_ChildrenDiploma    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_ChildrenDiploma(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	ChildrenIndex int 
	TypeOfChildrenDiplomaIndex int 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_ChildrenDiploma PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_CitizenIdentificationPlace    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_CitizenIdentificationPlace(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_CitizenIdentificationPlace PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_City    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_City(
	Index int 
	CompanyIndex int 
	Code nvarchar(100) 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Description nvarchar(500) 
	AreaCode nvarchar(20) 
	CountryIndex int 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	CodeOfInsurance nvarchar(50) 
 CONSTRAINT PK_HR_City PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Company    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Company(
	ID nvarchar(200) 
	Name nvarchar(500) 
	NameInEng nvarchar(500) 
	Address nvarchar(500) 
	Phone1 nvarchar(50) 
	Phone2 nvarchar(50) 
	Fax nvarchar(50) 
	Mail nvarchar(200) 
	Website nvarchar(200) 
	TaxCode nvarchar(100) 
	Slogan nvarchar(200) 
	Description nvarchar(500) 
	Headquaters bit 
	EstablishedDate datetime 
	AccountNo nvarchar(50) 
	BankInfo nvarchar(200) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	Index int 
	Password nvarchar(100) 
	SecretKey nvarchar(100) 
	ATIDMinChar int 
	CompanyIndex int 
	PortalAccountWithoutConfirm bit 
 CONSTRAINT PK_HR_Company PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_ComplaintLetter    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_ComplaintLetter(
	Index int 
	CompanyIndex int 
	DocumentCode nvarchar(50) 
	EmployeeATID nvarchar(30) 
	SubmitDate smalldatetime 
	SolvedDate smalldatetime 
	ComplainedType nvarchar(200) 
	ComplainedContent ntext 
	Status int 
	FollowingEmployeeATID nvarchar(30) 
	ReplyContent ntext 
	Note ntext 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_ComplaintLetter PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_ComplaintType    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_ComplaintType(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	ParentType int 
	Description nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_ComplaintType PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Country    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Country(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(500) 
	NationalCode nvarchar(20) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	InsuranceCode nvarchar(30) 
 CONSTRAINT PK_HR_Country PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Covid    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Covid(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	Classification int 
	Date datetime 
	Vaccination1 nvarchar(100) 
	VaccinationDate1 datetime 
	Vaccination2 nvarchar(100) 
	VaccinationDate2 datetime 
	Vaccination3 nvarchar(100) 
	VaccinationDate3 datetime 
	BackgroundDisease nvarchar(500) 
	Note nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	ToDate datetime 
 CONSTRAINT PK_HR_Covid PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Criteria    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Criteria(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Description nvarchar(400) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	Scale real 
 CONSTRAINT PK_HR_Criteria PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_CriteriaByPosition    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_CriteriaByPosition(
	CompanyIndex int 
	PositionIndex bigint 
	CriteriaIndex int 
	MonthYear smalldatetime 
	Guide ntext 
	InternalRate bit 
	CrossRate bit 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	CriteriaRate ntext 
	CriteriaParentIndex int 
 CONSTRAINT PK_HR_CriteriaByPosition PRIMARY KEY CLUSTERED 
(
	CriteriaIndex ASC,
	MonthYear ASC,
	PositionIndex ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_CriteriaCrossRate    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_CriteriaCrossRate(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	CrossManager nvarchar(30) 
	MonthYear smalldatetime 
	Note nvarchar(200) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	ToMonth smalldatetime 
 CONSTRAINT PK_HR_CriteriaCrossRate PRIMARY KEY CLUSTERED 
(
	CrossManager ASC,
	EmployeeATID ASC,
	MonthYear ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_CriteriaRatingResult    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_CriteriaRatingResult(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	MonthYear smalldatetime 
	RatingEmployeeATID nvarchar(30) 
	CriteriaIndex int 
	LevelRating smallint 
	Rating float 
	Comment ntext 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_CriteriaRatingResult PRIMARY KEY CLUSTERED 
(
	CriteriaIndex ASC,
	EmployeeATID ASC,
	LevelRating ASC,
	MonthYear ASC,
	RatingEmployeeATID ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_DashboardV2    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_DashboardV2(
	Index int 
	CompanyIndex int 
	Name nvarchar(300) 
	GroupUser nvarchar(max) 
	User nvarchar(max) 
	Charts nvarchar(max) 
	UpdatedUser nvarchar(100) 
	UpdatedDate datetime 
	Bar nvarchar(max) 
	Order int 
 CONSTRAINT PK_HR_DashboardV2 PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_DefaultSystemWithDepartmentAndPortalFeature    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_DefaultSystemWithDepartmentAndPortalFeature(
	CompanyIndex int 
	PortalSystemFeature nvarchar(100) 
	Department bigint 
	Privilege smallint 
	Helper nvarchar(10) 
	Level1 nvarchar(10) 
	Level2 nvarchar(10) 
	Level3 nvarchar(10) 
	Level4 nvarchar(10) 
	Level5 nvarchar(10) 
	CCEmail nvarchar(50) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	DepartmentIndex nvarchar(10) 
 CONSTRAINT PK_HR_DefaultSystemWithDepartmentAndPortalFeature PRIMARY KEY CLUSTERED 
(
	Department ASC,
	PortalSystemFeature ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Department    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Department(
	Index bigint 
	CompanyIndex int 
	Name nvarchar(400) 
	NameInEng nvarchar(400) 
	Code nvarchar(100) 
	ParentIndex bigint 
	CompanyID nvarchar(200) 
	Description nvarchar(500) 
	WorkingDays float 
	WorkingHours float 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	Location nvarchar(300) 
	PhoneNumber nvarchar(20) 
	Note nvarchar(300) 
	ContactEmail nvarchar(100) 
	DateOfCreation smalldatetime 
	OrderCode nvarchar(50) 
	BranchOfficeIndex int 
	SubordinateIndex int 
	IsDepartmentOfTeacher bit 
 CONSTRAINT PK_HR_Department PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Diploma    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Diploma(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(100) 
	NameInEng nvarchar(100) 
	Description nvarchar(300) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	ExpiredMonth float 
	Infinite bit 
	DisplayOrder int 
 CONSTRAINT PK_HR_Diploma PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_District    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_District(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(100) 
	Description nvarchar(500) 
	CityIndex int 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	InsuranceCode nvarchar(30) 
 CONSTRAINT PK_HR_District PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EContract    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EContract(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	dDate datetime 
	AppliedDate datetime 
	ContractValue money 
	ContractType nvarchar(30) 
	ContractNumber nvarchar(100) 
	AutoExtend bit 
	Negotiation bit 
	Note nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	Status nvarchar(50) 
	ReportId nvarchar(max) 
	ReportUrl nvarchar(max) 
	contractId nvarchar(max) 
	email nvarchar(max) 
	idUser nvarchar(max) 
	userType nvarchar(max) 
 CONSTRAINT PK_HR_EContract PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_EContractEmployee    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EContractEmployee(
	Index int 
	CompanyIndex int 
	EContractIndex int 
	EmployeeATID nvarchar(30) 
	SignMethod nvarchar(30) 
	SignOrder int 
	ExpiredDate datetime 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EContractEmployee PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EContractParty    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EContractParty(
	CompanyIndex int 
	EContractIndex int 
	Email nvarchar(100) 
	AuthMethod nvarchar(30) 
	SignMethod nvarchar(30) 
	SignOrder int 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	EmployeeATID nvarchar(30) 
	IsDefault bit 
	Name nvarchar(300) 
	Type nvarchar(30) 
	Internal bit 
 CONSTRAINT PK_HR_EContractParty PRIMARY KEY CLUSTERED 
(
	CompanyIndex ASC,
	EContractIndex ASC,
	Email ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Education    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Education(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(200) 
	DisplayOrder int 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_Education PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EducationLevel    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EducationLevel(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(200) 
	DisplayOrder int 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EducationLevel PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Employee    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Employee(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	EmployeeCode nvarchar(50) 
	CardNumber nvarchar(50) 
	LastName nvarchar(100) 
	MidName nvarchar(150) 
	FirstName nvarchar(100) 
	NickName nvarchar(200) 
	Gender bit 
	JoinedDate datetime 
	DayOfBirth smallint 
	MonthOfBirth smallint 
	YearOfBirth smallint 
	PlaceOfBirth nvarchar(200) 
	Ethnic int 
	Religion int 
	Nationality int 
	HouseHold int 
	NativeCity nvarchar(200) 
	NRIC nvarchar(50) 
	DateOfNRIC datetime 
	PlaceOfNRIC nvarchar(200) 
	EmployeeKind int 
	EducationIndex int 
	EducationLevel nvarchar(100) 
	MaritalSatus smallint 
	TaxNumber nvarchar(50) 
	Active bit 
	MarkForDelete bit 
	MaritalDate smalldatetime 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	WorkingDate datetime 
	UnionJoinedDate smalldatetime 
	NativeCityIndex int 
	NativeCity_District nvarchar(100) 
	SocialInsNo nvarchar(30) 
	NativeCity_Wards nvarchar(100) 
	NativeCity_DistrictIndex int 
	NativeCity_WardIndex int 
	NativeCity_City nvarchar(100) 
	NativeCity_No nvarchar(100) 
	NativeCity_Street nvarchar(100) 
	EmergencyAddressPerson nvarchar(200) 
	EmergencyRelationShipIndex int 
	EducationLevelIndex int 
	CitizenIdentification nvarchar(max) 
	CitizenIdentificationPlaceIndex int 
	DateOfCitizenIdentification datetime2(7) 
	DateOfPassport datetime2(7) 
	IdentityCardPlaceIndex int 
	Passport nvarchar(max) 
	PassportPlaceIndex int 
	LocationIndex int 
	ExpiredDateOfCitizenIdentification datetime2(7) 
	ExpiredDateOfPassport datetime2(7) 
	FileAttachments nvarchar(max) 
	NativeCity_Address nvarchar(max) 
	UnSignFullName nvarchar(max) 
	FieldConfig6 nvarchar(200) 
	FieldConfig1 nvarchar(200) 
	FieldConfig2 nvarchar(200) 
	FieldConfig3 nvarchar(200) 
	FieldConfig4 nvarchar(200) 
	FieldConfig5 nvarchar(200) 
	PoliticalLevelIndex int 
	FieldConfig7 nvarchar(max) 
	FieldConfig8 nvarchar(max) 
	Image nvarchar(max) 
	TeacherQualificationIndex int 
	VisaExpirationDate datetime2(7) 
	VisaIssuanceDate datetime2(7) 
	VisaNumber nvarchar(20) 
 CONSTRAINT PK_HR_Employee PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Employee_ExtendedInfo_Lazada    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Employee_ExtendedInfo_Lazada(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	EdittedDate smalldatetime 
	EP_IN nvarchar(200) 
	C1 nvarchar(200) 
	C2 nvarchar(200) 
	C3 nvarchar(200) 
	Logistic nvarchar(200) 
	V_E nvarchar(200) 
	MOP nvarchar(200) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	EP_SF_No nvarchar(200) 
	LCT nvarchar(200) 
	Job_Grade nvarchar(200) 
	Dir_Indir nvarchar(200) 
	ToDate smalldatetime 
 CONSTRAINT PK_HR_Employee_ExtendedInfo_Lazada PRIMARY KEY CLUSTERED 
(
	EdittedDate ASC,
	EmployeeATID ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeAccount    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeAccount(
	Index bigint 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	AccountNumber nvarchar(100) 
	BranchName nvarchar(200) 
	MainAccount bit 
	Inheritance nvarchar(200) 
	DateOfIssue datetime 
	ExpiredDate datetime 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	Description nvarchar(500) 
	BankIndex bigint 
	BankName nvarchar(200) 
	Note nvarchar(500) 
	DisplayName nvarchar(200) 
 CONSTRAINT PK_HR_EmployeeAccount PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
-- Duy

/****** Object:  Table dbo.HR_EmployeeBehavior    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeBehavior(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	EdittedDate datetime 
	Behavior nvarchar(200) 
	Habit nvarchar(200) 
	Interests nvarchar(200) 
	DISC nvarchar(100) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	HRRating nvarchar(500) 
 CONSTRAINT PK_HR_EmployeeBehavior PRIMARY KEY CLUSTERED 
(
	EdittedDate ASC,
	EmployeeATID ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeBlackList    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeBlackList(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	FromDate smalldatetime 
	ToDate smalldatetime 
	Description nvarchar(300) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeeBlackList PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	FromDate ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeCertificate    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeCertificate(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	EducationIndex int 
	Major nvarchar(50) 
	GraduatedLevel nvarchar(100) 
	MainCertificate bit 
	DateOfIssue datetime 
	PlaceOfIssue nvarchar(200) 
	ValidToDate datetime 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	NumberOfDocument nvarchar(100) 
	AttachedFile ntext 
	CertificateTypeIndex int 
	SchoolIndex int 
 CONSTRAINT PK_HR_EmployeeCertificate PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeCompensation    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeCompensation(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	CompensationDate smalldatetime 
	Note nvarchar(300) 
	CompensationMoney money 
	Paid bit 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeeCompensation PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeComplaint    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeComplaint(
	Index bigint 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	Time smalldatetime 
	ComplaintTypeIndex int 
	Note nvarchar(400) 
	ReporterATID nvarchar(30) 
	Rating smallint 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeeComplaint PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeContactInfo    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeContactInfo(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	PermamentAddress nvarchar(200) 
	TemporaryAddress nvarchar(200) 
	HomePhone nvarchar(50) 
	MobilePhone nvarchar(50) 
	Email nvarchar(200) 
	YahooMessenger nvarchar(50) 
	Skype nvarchar(50) 
	Website nvarchar(50) 
	Fax nvarchar(50) 
	Description nvarchar(200) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	EmergencyContactPerson nvarchar(300) 
	EmergencyContactPersonMobile nvarchar(300) 
	Address_WardIndex int 
	Address_DistrictIndex int 
	Address_CityIndex int 
	Address_Ward nvarchar(100) 
	Address_District nvarchar(100) 
	Address_City nvarchar(100) 
	Address_No nvarchar(100) 
	Address_Street nvarchar(200) 
	Presenter nvarchar(30) 
	EmergencyContactPerson2 nvarchar(300) 
	EmergencyContactPersonMobile2 nvarchar(300) 
	PersonalEmail nvarchar(max) 
	AttachmentFile nvarchar(max) 
	PermamentAddress_Address nvarchar(max) 
	PermamentAddress_CityIndex int 
	PermamentAddress_DistrictIndex int 
	PermamentAddress_WardIndex int 
	TemporaryAddress_Address nvarchar(max) 
	TemporaryAddress_CityIndex int 
	TemporaryAddress_DistrictIndex int 
	TemporaryAddress_WardIndex int 
 CONSTRAINT PK_HR_EmployeeContactInfo PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeDiploma    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeDiploma(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	DiplomaIndex int 
	IssuedDate smalldatetime 
	ToDate smalldatetime 
	Note nvarchar(300) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	DiplomaType int 
	TrainedDate smalldatetime 
	TrainedShift int 
	Trainer nvarchar(30) 
	TotalDays float 
	Mark float 
	Rating smallint 
	RatingIndex int 
	Content ntext 
	Fee money 
	IssuePlace nvarchar(500) 
	OutsiteTrainer nvarchar(300) 
	TrainingToDate smalldatetime 
	AttachmentFile nvarchar(max) 
	DocumentCode nvarchar(100) 
 CONSTRAINT PK_HR_EmployeeDiploma PRIMARY KEY CLUSTERED 
(
	DiplomaIndex ASC,
	EmployeeATID ASC,
	IssuedDate ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeEvents    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeEvents(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	Date smalldatetime 
	EventIndex int 
	Fee money 
	Note nvarchar(100) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	Suggest bit 
	PT_EventIndex bigint 
	Quantity int 
 CONSTRAINT PK_HR_EmployeeEvents PRIMARY KEY CLUSTERED 
(
	Date ASC,
	EmployeeATID ASC,
	EventIndex ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeExaminationResult    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeExaminationResult(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	ExaminationIndex int 
	Date smalldatetime 
	Mark nvarchar(5) 
	Result nvarchar(50) 
	Note nvarchar(300) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(50) 
 CONSTRAINT PK_HR_EmployeeExaminationResult PRIMARY KEY CLUSTERED 
(
	Date ASC,
	EmployeeATID ASC,
	ExaminationIndex ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeExtendedInfo    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeExtendedInfo(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	Info1 nvarchar(500) 
	Info2 nvarchar(500) 
	Info3 nvarchar(500) 
	Info4 nvarchar(500) 
	Info5 nvarchar(500) 
	Info6 nvarchar(500) 
	Info7 nvarchar(500) 
	Info8 nvarchar(500) 
	Info9 nvarchar(500) 
	Info10 nvarchar(500) 
	Info11 nvarchar(500) 
	Info12 nvarchar(500) 
	Info13 nvarchar(500) 
	Info14 nvarchar(500) 
	Info15 nvarchar(500) 
	Info16 nvarchar(500) 
	Info17 nvarchar(500) 
	Info18 nvarchar(500) 
	Info19 nvarchar(500) 
	Info20 nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeeExtendedInfo PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeFamilyInfo    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeFamilyInfo(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	FamilyRelationshipTypeIndex int 
	FullName nvarchar(200) 
	Gender bit 
	NRIC varchar(50) 
	DayOfBirth smallint 
	MonthOfBirth smallint 
	YearOfBirth smallint 
	HomePhone nvarchar(50) 
	MobilePhone nvarchar(50) 
	Address nvarchar(200) 
	Career nvarchar(50) 
	WorkingPlace nvarchar(200) 
	Description nvarchar(200) 
	Alive bit 
	DependedOn bit 
	DependedFrom datetime 
	DependedTo datetime 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	TaxNumber nvarchar(50) 
	NumberInDocumentOfBirth nvarchar(50) 
	NumberOfDocumentOfBirth nvarchar(50) 
	PlaceOfBirth nvarchar(200) 
	DateOfNRIC datetime 
	PlaceOfNRIC nvarchar(200) 
	HeadOfHouseHold bit 
	NativeCity_DistrictIndex int 
	NativeCity_WardIndex int 
	NativeCity_CityIndex int 
	VNPT_DocumentTypeIndex int 
	VNPT_DocumentNumber nvarchar(50) 
	NativeCity_NationalityIndex int 
	CoEmployeeATID nvarchar(30) 
	DeathDate smalldatetime 
	SocialInsuranceCode nvarchar(50) 
	HeadOfHouseHoldRelationshipTypeIndex int 
	HouseHoldNumber nvarchar(100) 
	AttachmentFile nvarchar(max) 
	FieldConfig1 nvarchar(200) 
	FieldConfig2 nvarchar(200) 
	FieldConfig3 nvarchar(200) 
	FieldConfig4 nvarchar(200) 
	FieldConfig5 nvarchar(200) 
	FieldConfig6 nvarchar(200) 
	FieldConfig7 nvarchar(max) 
	FieldConfig8 nvarchar(max) 
 CONSTRAINT PK_HR_EmployeeFamilyInfo PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeFile    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeFile(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	FileName nvarchar(200) 
	FilePath ntext 
	AppliedDate smalldatetime 
	ToDate smalldatetime 
	SignedDate smalldatetime 
	SignedPeople nvarchar(200) 
	Note nvarchar(400) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	TypeOfFileIndex int 
 CONSTRAINT PK_HR_EmployeeFile PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeFireProtectionCertificate    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeFireProtectionCertificate(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	DateOfIssue smalldatetime 
	PlaceOfIssue nvarchar(200) 
	ValidToDate smalldatetime 
	Note nvarchar(300) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	AttachmentFile nvarchar(max) 
 CONSTRAINT PK_HR_EmployeeFireProtectionCertificate PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeFoodSafety    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeFoodSafety(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	FromDate smalldatetime 
	ToDate smalldatetime 
	TypeOfCard int 
	Place nvarchar(200) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	Note nvarchar(max) 
	Index int 
	AttachmentFile nvarchar(max) 
 CONSTRAINT PK_HR_EmployeeFoodSafety PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeForeignLanguage    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeForeignLanguage(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	LanguageIndex int 
	Listen smallint 
	Speak smallint 
	Read smallint 
	Write smallint 
	EdittedDate datetime 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	Note nvarchar(300) 
 CONSTRAINT PK_HR_EmployeeForeignLanguage PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeFunction    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeFunction(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	FromDate datetime 
	ToDate datetime 
	FunctionIndex int 
	Description nvarchar(300) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeeFunction PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeHealthCard    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeHealthCard(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	FromDate smalldatetime 
	ToDate smalldatetime 
	TypeOfCard int 
	HospitalPlace int 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	Note nvarchar(max) 
	Index bigint 
 CONSTRAINT PK_HR_EmployeeHealthCard PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeHealthInfo    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeHealthInfo(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	EdittedDate smalldatetime 
	Type nvarchar(50) 
	Note nvarchar(200) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	TypeOfBlood nvarchar(10) 
	Height float 
	Weight float 
 CONSTRAINT PK_HR_EmployeeHealthInfo PRIMARY KEY CLUSTERED 
(
	EdittedDate ASC,
	EmployeeATID ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeHouse    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeHouse(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	SupportedDate smalldatetime 
	FinishedDate smalldatetime 
	SupportedMoney money 
	Note nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeeHouse PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	SupportedDate ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeInApproverGroup    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeInApproverGroup(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	ApproverGroupIndex int 
	FromDate date 
	ToDate date 
	Description nvarchar(300) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeeInApproverGroup PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	ApproverGroupIndex ASC,
	FromDate ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeInfoHistory    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeInfoHistory(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	ChangedDate smalldatetime 
	NRIC nvarchar(50) 
	DateOfNRIC smalldatetime 
	PlaceOfNRIC nvarchar(200) 
	PermamentAddress nvarchar(200) 
	TemporaryAddress nvarchar(200) 
	TaxNumber nvarchar(50) 
	SocialInsNo nvarchar(30) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeeInfoHistory PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeInsurancePayment    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeInsurancePayment(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	Date smalldatetime 
	InsurancePaymentTypeIndex int 
	Money money 
	Note nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeeInsurancePayment PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeKPI    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeKPI(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	AppliedDate smalldatetime 
	KPITypeIndex int 
	ToDate smalldatetime 
	KPI real 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	Note nvarchar(500) 
 CONSTRAINT PK_HR_EmployeeKPI PRIMARY KEY CLUSTERED 
(
	AppliedDate ASC,
	EmployeeATID ASC,
	KPITypeIndex ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeLaborPermit    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeLaborPermit(
	Index bigint 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	Number nvarchar(50) 
	DateOfIssue datetime 
	ExpiredDate datetime 
	Description nvarchar(200) 
	TypeOfLaborPermit smallint 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	Nationality int 
	AttachmentFile nvarchar(max) 
	TypeOfResidence int 
 CONSTRAINT PK_HR_EmployeeLaborPermit PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeNoAutoSendMail    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeNoAutoSendMail(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	FromMonth smalldatetime 
	ToMonth smalldatetime 
	Note nvarchar(300) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeeNoAutoSendMail PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	FromMonth ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeOptionalInfo    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeOptionalInfo(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	OptionalText1 nvarchar(200) 
	OptionalText2 nvarchar(200) 
	OptionalText3 nvarchar(200) 
	OptionalNumber1 float 
	OptionalNumber2 float 
	OptionalNumber3 float 
	OptionalDateTime1 datetime 
	OptionalDateTime2 datetime 
	OptionalDateTime3 datetime 
	OptionalCatalog1 int 
	OptionalCatalog2 int 
	OptionalCatalog3 int 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeeOptionalInfo PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeePartyInfo    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeePartyInfo(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	FromDate smalldatetime 
	ToDate smalldatetime 
	PartyNumber varchar(20) 
	JoinedDate smalldatetime 
	PartyPlace nvarchar(300) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	Note nvarchar(500) 
 CONSTRAINT PK_HR_EmployeePartyInfo PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	FromDate ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeePlanning    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeePlanning(
	Index int 
	CompanyIndex int 
	DepartmentIndex bigint 
	Year int 
	Month datetime 
	Number int 
	Description nvarchar(max) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeePlanning PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeePlanningByTitles    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeePlanningByTitles(
	Index int 
	CompanyIndex int 
	DepartmentIndex bigint 
	TitlesIndex bigint 
	MonthYear datetime 
	Number int 
	LaborContractTypeIndex int 
	EstimatedWorkingHours real 
	EstimatedSalary money 
	Note nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeePlanningByTitles PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeePlanningByTitlesStatistic    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeePlanningByTitlesStatistic(
	Index int 
	CompanyIndex int 
	DepartmentIndex bigint 
	TitlesIndex bigint 
	Year int 
	Month datetime 
	NumberOfPlanning int 
	NumberOfCurrent int 
	NumberOfNewEmployee int 
	NumberOfTransferEmployee int 
	NumberOfRemaining int 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeePlanningByTitlesStatistic PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeePlanningStatistic    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeePlanningStatistic(
	Index int 
	CompanyIndex int 
	DepartmentIndex bigint 
	Year int 
	Month datetime 
	NumberOfPlanning int 
	NumberOfCurrent int 
	NumberOfNewEmployee int 
	NumberOfTransferEmployee int 
	NumberOfRemaining int 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeePlanningStatistic PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeePolicy    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeePolicy(
	Index int 
	CompanyIndex int 
	Code nvarchar(200) 
	Name nvarchar(500) 
	FromDate datetime 
	ToDate datetime 
	DepartmentIndex bigint 
	TitlesIndex bigint 
	PositionIndex bigint 
	WorkingLevelIndex int 
	KindOfEmployeeIndex int 
	Editable bit 
	Note nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	PT_AdvanceAccount bit 
	HR_LaborContract bit 
	HR_LocationForEmployee bit 
	PT_Account bit 
	HR_LaborContract_Data nvarchar(max) 
	HR_LocationForEmployee_Data nvarchar(max) 
	PT_Account_Data nvarchar(max) 
	PT_AdvanceAccount_Data nvarchar(max) 
	TA_EmployeeLeaveYear bit 
	TA_EmployeeLeaveYear_Data nvarchar(max) 
	TA_EmployeeShift bit 
	TA_EmployeeShift_Data nvarchar(max) 
	PR_SalaryInfo bit 
	PR_SalaryInfo_Data nvarchar(max) 
	PT_MobileAccount bit 
	PT_MobileAccount_Data nvarchar(max) 
	PR_Pension bit 
	PR_Pension_Data nvarchar(max) 
	PR_Allowance bit 
	PR_Allowance_Data nvarchar(max) 
	PR_Bonus bit 
	PR_Bonus_Data nvarchar(max) 
	PR_Deduct bit 
	PR_Deduct_Data nvarchar(max) 
 CONSTRAINT PK_HR_EmployeePolicy PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeRating    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeRating(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	RatingDate smalldatetime 
	RatingIndex int 
	Money money 
	Note nvarchar(200) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	Mark decimal(18, 4) 
	DirectorMark decimal(18, 4) 
	DirectorRatingIndex int 
 CONSTRAINT PK_HR_EmployeeRating PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	RatingDate ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeRatingYearly    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeRatingYearly(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	Year int 
	FromDate smalldatetime 
	ToDate smalldatetime 
	Mark decimal(18, 4) 
	RatingResult nvarchar(200) 
	RatingResultCode nvarchar(50) 
	Note ntext 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	DirectorMark decimal(18, 4) 
 CONSTRAINT PK_HR_EmployeeRatingYearly PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	Year ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeSkill    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeSkill(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	SkillIndex int 
	EdittedDate smalldatetime 
	Note nvarchar(200) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	Mark real 
 CONSTRAINT PK_HR_EmployeeSkill PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	SkillIndex ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeStoppedWorkingInfo    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeStoppedWorkingInfo(
	Index bigint 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	StartedDate datetime 
	ReturnedDate datetime 
	StoppedReasonIndex int 
	ReturnHealthInsCard datetime 
	ReturnSocialInsCard datetime 
	Description nvarchar(max) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	NumberOfDoc nvarchar(100) 
	SignedDate smalldatetime 
	ViewedInSystemToDate smalldatetime 
	ApplymentDate smalldatetime 
	SignedPersion nvarchar(50) 
	AttachedFile ntext 
	SynchErrorDevices ntext 
	ApprovedEmployeeATID nvarchar(30) 
	ApprovedDate smalldatetime 
	Synched smallint 
	SalaryDetained bit 
	InBlackList bit 
	InBlackListReason nvarchar(500) 
	IsHandoverAsset bit 
	HandoverDate datetime2(7) 
	HandoverDetail nvarchar(500) 
	Receiver nvarchar(max) 
 CONSTRAINT PK_HR_EmployeeStoppedWorkingInfo PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeStoppedWorkingInfo_TypeOfQuitJob    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeStoppedWorkingInfo_TypeOfQuitJob(
	Index int 
	CompanyIndex int 
	EmployeeStoppedWorkingInfoIndex bigint 
	TypeOfQuitJobIndex int 
	NotificationDate datetime2(7) 
	HrNotificationDate datetime2(7) 
	UpdatedDate datetime2(7) 
	UpdatedUser nvarchar(50) 
	dDate datetime2(7) 
	dUser nvarchar(50) 
 CONSTRAINT PK_HR_EmployeeStoppedWorkingInfo_TypeOfQuitJob PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeSystem    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeSystem(
	Index bigint 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	SystemIndex bigint 
	AccountName nvarchar(100) 
	Password varchar(100) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	Helper nvarchar(30) 
	ResetPasswordCode datetime 
	Level1 nvarchar(30) 
	Level2 nvarchar(30) 
	Level3 nvarchar(30) 
	Level4 nvarchar(30) 
	Level5 nvarchar(30) 
	Active bit 
	HRPro7Portal smallint 
	TrainingPortal smallint 
	EvaluationPortal smallint 
	PleasureEstimatingPortal smallint 
	EclaimPortal smallint 
	RecruitmentPortal smallint 
	SystemGroup int 
 CONSTRAINT PK_HR_EmployeeSystem PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeSystemGroup    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeSystemGroup(
	Index int 
	CompanyIndex int 
	Name nvarchar(300) 
	NameInEng nvarchar(300) 
	Description nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeeSystemGroup PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeSystemGroupDetail    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeSystemGroupDetail(
	CompanyIndex int 
	SystemGroup int 
	PortalSystemFeature nvarchar(100) 
	Privilege smallint 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_EmployeeSystemGroupDetail PRIMARY KEY CLUSTERED 
(
	PortalSystemFeature ASC,
	SystemGroup ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeSystemWithPortalFeature    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeSystemWithPortalFeature(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	PortalSystemFeature nvarchar(100) 
	Helper nvarchar(10) 
	Level1 nvarchar(10) 
	Level2 nvarchar(10) 
	Level3 nvarchar(10) 
	Level4 nvarchar(10) 
	Level5 nvarchar(10) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	CCEmail nvarchar(50) 
 CONSTRAINT PK_HR_EmployeeSystemWithPortalFeature PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	PortalSystemFeature ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeUnionInfo    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeUnionInfo(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	FromDate smalldatetime 
	ToDate smalldatetime 
	UnionNumber varchar(20) 
	JoinedDate smalldatetime 
	UnionPlace nvarchar(300) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	Note nvarchar(500) 
 CONSTRAINT PK_HR_EmployeeUnionInfo PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	FromDate ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_EmployeeWorkingExperience    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EmployeeWorkingExperience(
	Index bigint 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	Company nvarchar(100) 
	Position nvarchar(100) 
	JobDescription nvarchar(200) 
	Description nvarchar(500) 
	Salary money 
	FromDate datetime 
	ToDate datetime 
	ReferPerson nvarchar(200) 
	ReferPosition nvarchar(100) 
	ReferTel nvarchar(50) 
	ReferEmail nvarchar(100) 
	ReferContacted bit 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	OtherInfo nvarchar(500) 
	IsStoppedWorking bit 
	AttachmentFile nvarchar(max) 
 CONSTRAINT PK_HR_EmployeeWorkingExperience PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_EquipmentAllocation    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_EquipmentAllocation(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	EquipmentID nvarchar(50) 
	EquipmentType nvarchar(200) 
	Unit nvarchar(100) 
	Number real 
	InUse bit 
	Status nvarchar(100) 
	Reason nvarchar(300) 
	Solution nvarchar(300) 
	AllocatedDate smalldatetime 
	DueDate smalldatetime 
	MoreDescription nvarchar(500) 
	Note nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	NumberOfDocument nvarchar(100) 
	AttachedFile ntext 
 CONSTRAINT PK_HR_EquipmentAllocation PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	EquipmentID ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Ethnic    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Ethnic(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	InsuranceCode nvarchar(30) 
 CONSTRAINT PK_HR_Ethnic PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Events    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Events(
	Index int 
	CompanyIndex int 
	Code nvarchar(100) 
	Name nvarchar(200) 
	NamInEng nvarchar(200) 
	Description nvarchar(500) 
	Active bit 
	Fee money 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_Events PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Examination    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Examination(
	Index int 
	CompanyIndex int 
	Name nvarchar(100) 
	NameInEng nvarchar(100) 
	Code nvarchar(50) 
	Description nvarchar(300) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(50) 
 CONSTRAINT PK_HR_Examination PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_FamilyRelationshipType    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_FamilyRelationshipType(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Description nvarchar(200) 
	DisplayOrder int 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	ParentNode int 
	MotherNode int 
	SpouseNode int 
	IsChild bit 
	IsSpouse bit 
	IsFather bit 
	IsMother bit 
	Code nvarchar(50) 
 CONSTRAINT PK_HR_FamilyRelationshipType PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Feedback    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Feedback(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(max) 
	Date datetime2(7) 
	FeedbackTypeIndex int 
	Content nvarchar(max) 
	Suggest nvarchar(max) 
	FilePath nvarchar(max) 
	UpdatedDate datetime2(7) 
	UpdatedUser nvarchar(max) 
	LastResponder smallint 
 CONSTRAINT PK_HR_Feedback PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_FeedbackNote    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_FeedbackNote(
	Index int 
	CompanyIndex int 
	FeedbackIndex int 
	CCEmail nvarchar(max) 
	Note nvarchar(500) 
	DeadlineDate datetime 
	EndDate datetime 
	Priority int 
	dDate datetime 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	dUser nvarchar(100) 
 CONSTRAINT PK_HR_FeedbackNote PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_FeedBackResponseHistory    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_FeedBackResponseHistory(
	Index int 
	CompanyIndex int 
	FeedbackIndex int 
	EmployeeATID nvarchar(max) 
	Content nvarchar(max) 
	UpdatedDate datetime2(7) 
	UpdatedUser nvarchar(max) 
 CONSTRAINT PK_HR_FeedBackResponseHistory PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_FeedbackType    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_FeedbackType(
	Index int 
	CompanyIndex int 
	Code nvarchar(100) 
	Name nvarchar(200) 
	Screen nvarchar(max) 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_FeedbackType PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Functions    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Functions(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(100) 
	NameEng nvarchar(100) 
	Active bit 
	Description nvarchar(300) 
	UpdatedDate datetime 
	UPdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_Functions PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_GroupUser    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_GroupUser(
	Index int 
	CompanyIndex int 
	GroupName nvarchar(100) 
	IsActive bit 
	Description nvarchar(300) 
	UpdatedUser nvarchar(100) 
	UpdatedDate datetime 
 CONSTRAINT PK_HR_GroupUser PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_HealthInsurance    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_HealthInsurance(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	HealthInsuaraceID nvarchar(50) 
	PlaceOfIssue nvarchar(200) 
	DateOfIssue datetime 
	RegisteredHospital int 
	ExpiredDate datetime 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_HealthInsurance PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_HistoryUserLog    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_HistoryUserLog(
	Index int 
	CompanyIndex int 
	UserName nvarchar(max) 
	Operation nvarchar(max) 
	Environment nvarchar(max) 
	ImplementationDate datetime2(7) 
 CONSTRAINT PK_HR_HistoryUserLog PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_HospitalPlace    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_HospitalPlace(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(500) 
	CityIndex int 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	Address nvarchar(500) 
 CONSTRAINT PK_HR_HospitalPlace PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_HumanResourcePolicy    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_HumanResourcePolicy(
	Index int 
	CompanyIndex int 
	Name nvarchar(500) 
	TypeOfHumanResourcePolicy int 
	MarkFomular ntext 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_HumanResourcePolicy PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_IdentityCardPlace    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_IdentityCardPlace(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_IdentityCardPlace PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_InsurancePaymentType    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_InsurancePaymentType(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Note nvarchar(300) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_InsurancePaymentType PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_InterviewPlace    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_InterviewPlace(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_InterviewPlace PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_InvisibleinReport    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_InvisibleinReport(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	FromDate smalldatetime 
	ToDate smalldatetime 
	Description nvarchar(300) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_InvisibleinReport PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	FromDate ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_JobManager    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_JobManager(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	JobTypeIndex  int 
	ManagerATID  nvarchar(30) 
	FromDate smalldatetime 
	ToDate smalldatetime 
	Note nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_JobManager PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_JobType    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_JobType(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(300) 
	NameInEng nvarchar(300) 
	Description nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	Address nvarchar(500) 
	AllowanceTypes nvarchar(max) 
 CONSTRAINT PK_HR_JobType PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_KindOfEmployee    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_KindOfEmployee(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	TeachingManagement bit 
 CONSTRAINT PK_HR_KindOfEmployee PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_KindOfEmployeePermission    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_KindOfEmployeePermission(
	Index int 
	CompanyIndex int 
	GroupUserIndex int 
	KindOfEmployeeIndex int 
	dBy nvarchar(50) 
	dDate datetime 
	UpdatedUser nvarchar(50) 
	UpdatedDate datetime 
 CONSTRAINT PK_HR_KindOfEmployeePermission PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_KPIRate    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_KPIRate(
	Index int 
	CompanyIndex int 
	WageGroupIndex int 
	WageLevelIndex int 
	MinKPI decimal(18, 3) 
	MaxKPI decimal(18, 3) 
	Percentage real 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_KPIRate PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_KPIType    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_KPIType(
	Index int 
	CompanyIndex int 
	Name nvarchar(400) 
	NameInEng nvarchar(400) 
	Code nvarchar(50) 
	Description nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_KPIType PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_LaborContract    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_LaborContract(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	LaborContractID nvarchar(50) 
	SignedDate datetime 
	FromDate datetime 
	ToDate datetime 
	Description nvarchar(500) 
	Payment nvarchar(100) 
	LaborContractTypeIndex int 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	WorkingDescription nvarchar(max) 
	AttachmentFile nvarchar(max) 
	WithoutPersonalIncomeTax bit 
	WorkingLocation nvarchar(300) 
	SignedPerson nvarchar(100) 
	SignedPersonOutSystem nvarchar(100) 
	ResignRequested bit 
	IsIncludeProbationPeriod bit 
	IsJoinHealthInsurance bit 
	IsJoinSocialInsurance bit 
	IsJoinTax bit 
	IsJoinUnemployeeInsurance bit 
	IsJoinUnion bit 
	IsThirteenthMonthlySalary bit 
	ProbationaryEndDate datetime 
	AgreementBonus bit 
	CommitSaleMonth real 
	CommitSaleQuarterly real 
	CommitSaleYear real 
	MommissionRateMonth real 
	MommissionRateQuarterly real 
	MommissionRateYear real 
	PercentageMonth real 
	PercentageQuarterly real 
	PercentageYear real 
	TaxPercent int 
	LocationContractIndex int 
	IsTerminationAheadOfTime bit 
	OldToDate datetime 
 CONSTRAINT PK_HR_LaborContract PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_LaborContract_Subordinate    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_LaborContract_Subordinate(
	Index int 
	CompanyIndex int 
	LaborContractIndex int 
	SubordinateIndex int 
	UpdatedDate datetime2(7) 
	UpdatedUser nvarchar(100) 
	dDate datetime2(7) 
	dUser nvarchar(100) 
 CONSTRAINT PK_HR_LaborContract_Subordinate PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_LaborContractType    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_LaborContractType(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(200) 
	JoinedHealthIns bit 
	JoinedUnempIns bit 
	JoinedSocialIns bit 
	ExpiredMonth float 
	SalaryPercent float 
	JoinedTax bit 
	JoinedUnion bit 
	ThirteenthMonth bit 
	UpdatedDate datetime 
	UpdateUser nvarchar(100) 
	Probation bit 
	TaxPercentage float 
	ExpiredDay float 
	NoPaymentContract bit 
	ReportTemplate nvarchar(max) 
 CONSTRAINT PK_HR_LaborContractType PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Language    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Language(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(100) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_Language PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_LegalRecord    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_LegalRecord(
	Index int 
	NumberOfDocument nvarchar(50) 
	CompanyIndex int 
	EmployeeATID nvarchar(max) 
	Title nvarchar(200) 
	FromDate datetime2(7) 
	ToDate datetime2(7) 
	UpdatedUser nvarchar(100) 
	UpdatedDate datetime 
 CONSTRAINT PK_HR_LegalRecord PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Library    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Library(
	Index int 
	CompanyIndex int 
	Name nvarchar(300) 
	GroupUser nvarchar(max) 
	User nvarchar(max) 
	Url nvarchar(max) 
	UpdatedUser nvarchar(100) 
	UpdatedDate datetime 
	Order int 
 CONSTRAINT PK_HR_Library PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Location    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Location(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Title nvarchar(300) 
	Longitude float 
	Latitude float 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	Address nvarchar(500) 
	Note nvarchar(500) 
	Radius real 
	RouterWifi nvarchar(100) 
 CONSTRAINT PK_HR_Location PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_LocationContract    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_LocationContract(
	Index int 
	CompanyIndex int 
	LocationName nvarchar(500) 
	City int 
	District int 
	Ward int 
	Address nvarchar(500) 
	dDate smalldatetime 
	dUser nvarchar(100) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_LocationContract PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_LocationForDepartment    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_LocationForDepartment(
	LocationIndex int 
	DepartmentIndex bigint 
	CompanyIndex int 
	AppliedFrom smalldatetime 
	ToDate smalldatetime 
	UpdatedDate datetime2(7) 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_LocationForDepartment PRIMARY KEY CLUSTERED 
(
	LocationIndex ASC,
	DepartmentIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_LocationForEmployee    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_LocationForEmployee(
	LocationIndex int 
	EmployeeATID nvarchar(450) 
	CompanyIndex int 
	AppliedFrom smalldatetime 
	ToDate smalldatetime 
	UpdatedDate datetime2(7) 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_LocationForEmployee PRIMARY KEY CLUSTERED 
(
	LocationIndex ASC,
	EmployeeATID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_LocationPermission    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_LocationPermission(
	CompanyIndex int 
	GroupUserIndex int 
	LocationIndex int 
	UpdatedDate datetime2(7) 
	UpdatedUser nvarchar(max) 
 CONSTRAINT PK_HR_LocationPermission PRIMARY KEY CLUSTERED 
(
	CompanyIndex ASC,
	GroupUserIndex ASC,
	LocationIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_ManagerTemplate    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_ManagerTemplate(
	Index int 
	CompanyIndex int 
	TableName nvarchar(100) 
	Content nvarchar(max) 
	Note nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	dDate datetime 
	dUser nvarchar(100) 
 CONSTRAINT PK_HR_ManagerTemplate PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_MaritalStatus    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_MaritalStatus(
	Index int 
	CompanyIndex int 
	Name nvarchar(300) 
	NameInEng nvarchar(300) 
	Code nvarchar(50) 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_MaritalStatus PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Maternity    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Maternity(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(max) 
	PregnantDate datetime2(7) 
	ExpectedDateOfBirth datetime2(7) 
	UpdatedDate datetime2(7) 
	UpdatedUser nvarchar(max) 
	State nvarchar(max) 
	EventPregnantInex bigint 
	EventMaternityIndex bigint 
	EventChildIndex bigint 
	RegisterToDate datetime2(7) 
	BenefitType nvarchar(max) 
	BornDate datetime2(7) 
	NumberOfChilds int 
	RegisterFromDate datetime2(7) 
	WorkingEnviroment nvarchar(max) 
	EndOfMaternityDate datetime2(7) 
	EventEndOfMaternityIndex bigint 
	NumberOfBaby int 
	NumberOfWeek int 
 CONSTRAINT PK_HR_Maternity PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_MaternityDetail    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_MaternityDetail(
	Index int 
	MaternityIndex int 
	EffectiveFrom datetime2(7) 
	EffectiveTo datetime2(7) 
 CONSTRAINT PK_HR_MaternityDetail PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_MaternityType    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_MaternityType(
	Index int 
	CompanyIndex int 
	Code nvarchar(max) 
	TypeIndex tinyint 
	EnvironmentIndex tinyint 
	CheckinIndex tinyint 
	UpdatedDate datetime2(7) 
	UpdatedUser nvarchar(max) 
 CONSTRAINT PK_HR_MaternityType PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Mission    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Mission(
	Index bigint 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	Date datetime 
	Reason nvarchar(300) 
	Place nvarchar(200) 
	MissionFee money 
	FromDate datetime 
	ToDate datetime 
	SignedDate datetime 
	SignedPerson nvarchar(200) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	EventIndex bigint 
	Suggest bit 
	MissionAllowanceGroupIndex int 
	Note nvarchar(200) 
	MissionRoadIndex int 
	Address nvarchar(400) 
	ContactPerson nvarchar(200) 
	ContactInfo nvarchar(200) 
	TransportVehicle nvarchar(300) 
	MissionTypeIndex int 
	WorkPlaceIndex int 
 CONSTRAINT PK_HR_Mission PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_MissionAllowanceGroup    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_MissionAllowanceGroup(
	Index int 
	CompanyIndex int 
	GroupName nvarchar(400) 
	NameInEng nvarchar(400) 
	Description nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	Code nvarchar(50) 
	MissionTypeIndex int 
	WorkPlaceIndex nvarchar(max) 
	WorkingLevelIndex nvarchar(max) 
 CONSTRAINT PK_HR_MissionAllowanceGroup PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_MissionAllowanceGroupDetail    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_MissionAllowanceGroupDetail(
	CompanyIndex int 
	GroupIndex int 
	AllowaceIndex int 
 CONSTRAINT PK_HR_MissionAllowanceGroupDetail PRIMARY KEY CLUSTERED 
(
	AllowaceIndex ASC,
	GroupIndex ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_MissionAllowanceType    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_MissionAllowanceType(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Description nvarchar(200) 
	DefaultValue money 
	InTax bit 
	CalculateSalary bit 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_MissionAllowanceType PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_MissionRoad    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_MissionRoad(
	Index int 
	CompanyIndex int 
	FromPlace nvarchar(300) 
	ToPlace nvarchar(300) 
	Distance float 
	Money money 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_MissionRoad PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_MissionType    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_MissionType(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Description nvarchar(max) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_MissionType PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_News    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_News(
	Index int 
	CompanyIndex int 
	CategoryIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	DepartmentIndexs text 
	dDate datetime2(7) 
	PublishDate datetime2(7) 
	Content ntext 
	Attachments ntext 
	Status smallint 
	Author nvarchar(100) 
	ExpiresIn int 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_News PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_NewsCategory    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_NewsCategory(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Description nvarchar(max) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_NewsCategory PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_NewsForEmployee    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_NewsForEmployee(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	EmployeeATID text 
	dDate datetime2(7) 
	PublishDate datetime2(7) 
	Content ntext 
	Attachments ntext 
	Status smallint 
	Author nvarchar(100) 
	ExpiresIn int 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_NewsForEmployee PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_NumberOfEmpsByDepartment    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_NumberOfEmpsByDepartment(
	CompanyIndex int 
	DepartmentIndex bigint 
	FromDate smalldatetime 
	PositionIndex bigint 
	LaborContractTypeIndex int 
	ToDate smalldatetime 
	NumberOfEmps int 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	Note nvarchar(500) 
	ExpectedSalary money 
	TitlesIndex bigint 
	ExpectedWorkingHours float 
	Index int 
 CONSTRAINT PK_HR_NumberOfEmpsByDepartment PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_NumberOfEmpsByTitles    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_NumberOfEmpsByTitles(
	CompanyIndex int 
	TitlesIndex bigint 
	MonthYear smalldatetime 
	Note nvarchar(500) 
	NumberOfEmps int 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_NumberOfEmpsByTitles PRIMARY KEY CLUSTERED 
(
	TitlesIndex ASC,
	MonthYear ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_OpenResource    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_OpenResource(
	CompanyIndex int 
	ResourceName varchar(100) 
	VN nvarchar(300) 
	EN nvarchar(300) 
 CONSTRAINT PK_HR_OpenResource PRIMARY KEY CLUSTERED 
(
	ResourceName ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Optional1    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Optional1(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(200) 
	UpdateDate datetime 
	UpdateUser nvarchar(100) 
 CONSTRAINT PK_HR_Optional1 PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Optional2    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Optional2(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(200) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_Optional2 PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Optional3    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Optional3(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(200) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_Optional3 PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_OtherInsurance    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_OtherInsurance(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	OtherInsuraceID nvarchar(50) 
	PlaceOfIssue nvarchar(200) 
	DateOfIssue datetime 
	ValueInsurance float 
	ExpiredDate datetime 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_OtherInsurance PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_OtherInsurance_QSR    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_OtherInsurance_QSR(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	StartedDate smalldatetime 
	InsuranceID nvarchar(50) 
	PlaceOfIssue nvarchar(200) 
	StartedMoney money 
	EndedDate smalldatetime 
	EndedMoney money 
	Note nvarchar(300) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	CardType int 
 CONSTRAINT PK_HR_OtherInsurance_QSR PRIMARY KEY CLUSTERED 
(
	EmployeeATID ASC,
	StartedDate ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_OtherInsurance_QSR_CardType    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_OtherInsurance_QSR_CardType(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_OtherInsurance_QSR_CardType PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_PageDemo    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_PageDemo(
	Index int 
	CompanyIndex int 
	Name nvarchar(300) 
	GroupUser nvarchar(max) 
	User nvarchar(max) 
	Url nvarchar(max) 
	Order int 
	dBy nvarchar(100) 
	dDate datetime 
	UpdatedUser nvarchar(100) 
	UpdatedDate datetime 
 CONSTRAINT PK_HR_PageDemo PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_PassportPlace    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_PassportPlace(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_PassportPlace PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_PoliticalLevel    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_PoliticalLevel(
	Index int 
	CompanyIndex int 
	Name nvarchar(max) 
	NameInEng nvarchar(max) 
	Description nvarchar(max) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	dDate smalldatetime 
	dUser nvarchar(100) 
 CONSTRAINT PK_HR_PoliticalLevel PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_PortalLinks    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_PortalLinks(
	CompanyIndex int 
	Name nvarchar(200) 
	Link nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	AutoSynchTimePos varchar(100) 
 CONSTRAINT PK_HR_PortalLinks PRIMARY KEY CLUSTERED 
(
	Name ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Position    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Position(
	Index bigint 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(200) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	MaxOvertimeInYear float 
	DefaultTitlesIndex bigint 
 CONSTRAINT PK_HR_Position PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_PositionSkill    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_PositionSkill(
	CompanyIndex int 
	PositionIndex bigint 
	SkillIndex int 
	Note nvarchar(200) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	MinMark real 
 CONSTRAINT PK_HR_PositionSkill PRIMARY KEY CLUSTERED 
(
	PositionIndex ASC,
	SkillIndex ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Pregnancy_Sync    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Pregnancy_Sync(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	StartDate datetime 
	OffDate datetime 
	OnDate datetime 
	EndDate datetime 
	dDate datetime 
	SynchedDate smalldatetime 
	ErrorMessage ntext 
	ID_Ref int 
 CONSTRAINT PK_HR_Pregnancy_Sync PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Project    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Project(
	Index int 
	CompanyIndex int 
	Code nvarchar(100) 
	Name nvarchar(500) 
	NameInEng nvarchar(500) 
	Description nvarchar(500) 
	FromDate smalldatetime 
	ToDate smalldatetime 
	OfficalFromTime smalldatetime 
	OfficalToTime smalldatetime 
	NonOfficalFromTime smalldatetime 
	NonOfficalToTime smalldatetime 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_Project PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Rating    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Rating(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(200) 
	DefaultMoney money 
	Ordering smallint 
	ActiveTo smalldatetime 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	MinMark float 
	MaxMark float 
 CONSTRAINT PK_HR_Rating PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Region    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Region(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Note nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	InsuranceCode nvarchar(30) 
 CONSTRAINT PK_HR_Region PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Religion    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Religion(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(200) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_Religion PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Representive    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Representive(
	Index bigint 
	CompanyIndex int 
	FromDate smalldatetime 
	ToDate smalldatetime 
	FullName nvarchar(300) 
	Title nvarchar(300) 
	No nvarchar(50) 
	Note nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_Representive PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_RequiredDiplomaByTitles    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_RequiredDiplomaByTitles(
	CompanyIndex int 
	TitlesIndex bigint 
	DiplomaIndex int 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_RequiredDiplomaByTitles PRIMARY KEY CLUSTERED 
(
	TitlesIndex ASC,
	DiplomaIndex ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Reward_Discipline    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Reward_Discipline(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	Reward smallint 
	AppliedDate smalldatetime 
	Reason ntext 
	Value money 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	RewardDisciplineType int 
	EndedDate smalldatetime 
	Note nvarchar(1000) 
	SignedPerson nvarchar(100) 
	SignedDate smalldatetime 
	NumberOfDocument nvarchar(100) 
	AttachedFile ntext 
	Formality smallint 
	NoOfReport nvarchar(100) 
	Note2 nvarchar(1000) 
	Reward_Discipline_LevelIndex int 
	Reward_Discipline_RuleIndex int 
	OtherType ntext 
 CONSTRAINT PK_HR_Reward_Discipline PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Reward_Discipline_Level    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Reward_Discipline_Level(
	Index int 
	CompanyIndex int 
	Reward smallint 
	Code nvarchar(50) 
	Name nvarchar(300) 
	NameInEng nvarchar(300) 
	Note ntext 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_Reward_Discipline_Level PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Reward_Discipline_Rule    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Reward_Discipline_Rule(
	Index int 
	CompanyIndex int 
	Reward_Discipline_Level int 
	Code nvarchar(50) 
	Name nvarchar(300) 
	NameInEng nvarchar(300) 
	Note ntext 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_Reward_Discipline_Rule PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Reward_DisciplineType    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Reward_DisciplineType(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(1000) 
	NameInEng nvarchar(1000) 
	Note nvarchar(1000) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	StandardValue money 
	Reward smallint 
 CONSTRAINT PK_HR_Reward_DisciplineType PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_SalaryPlanning    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_SalaryPlanning(
	Index int 
	CompanyIndex int 
	DepartmentIndex bigint 
	Year int 
	Month datetime 
	Number decimal(18, 2) 
	Description nvarchar(max) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_SalaryPlanning PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_SalaryPlanningByPosition    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_SalaryPlanningByPosition(
	Index int 
	CompanyIndex int 
	DepartmentIndex bigint 
	MonthYear datetime 
	TitlesIndex bigint 
	PositionIndex bigint 
	SampleData datetime 
	EmployeeSalary decimal(18, 2) 
	Note nvarchar(max) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_SalaryPlanningByPosition PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_School    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_School(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(200) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_School PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_SendNotificationMedia    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_SendNotificationMedia(
	Index int 
	CompanyIndex int 
	NotificationName nvarchar(max) 
	Channel int 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	dDate smalldatetime 
	dUser nvarchar(100) 
	CategoryIndex int 
 CONSTRAINT PK_HR_SendNotificationMedia PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Skill    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Skill(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Note nvarchar(200) 
	ActiveTo smalldatetime 
	Reserve nvarchar(200) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	MarkNote1 ntext 
	MarkNote2 ntext 
	MarkNote3 ntext 
	MarkNote4 ntext 
	MarkNote5 ntext 
	MarkNote6 ntext 
	MarkNote7 ntext 
	MarkNote8 ntext 
	MarkNote9 ntext 
	MarkNote10 ntext 
 CONSTRAINT PK_HR_Skill PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_SkillGroup    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_SkillGroup(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Note nvarchar(200) 
	Reserve nvarchar(200) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_SkillGroup PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_SkillInGroup    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_SkillInGroup(
	CompanyIndex int 
	SkillIndex int 
	SkillGroupIndex int 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_SkillInGroup PRIMARY KEY CLUSTERED 
(
	SkillGroupIndex ASC,
	SkillIndex ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_SocialInsurance    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_SocialInsurance(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	SocialInsuranceID nvarchar(50) 
	PlaceOfIssue nvarchar(500) 
	DateOfIssue datetime 
	ExpiredDate datetime 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	DistrictIndex int 
	CityIndex int 
	IssuedPlaceIndex int 
	Status int 
	FillingDateByEmployee datetime 
	ReceivedDate datetime 
	ReceivedPerson nvarchar(300) 
	ReturnedDateByOffical datetime 
	ReturnedForm nvarchar(300) 
 CONSTRAINT PK_HR_SocialInsurance PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_SocialInsuranceIssuePlace    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_SocialInsuranceIssuePlace(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(500) 
	Description nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	NameInEng nvarchar(500) 
 CONSTRAINT PK_HR_SocialInsuranceIssuePlace PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Status    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Status(
	Index int 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(200) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_Status PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_StoppedReason    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_StoppedReason(
	Index int 
	CompanyIndex int 
	Reason nvarchar(200) 
	ReasonInEng nvarchar(200) 
	ContinueJoinIns bit 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	Voluntary bit 
 CONSTRAINT PK_HR_StoppedReason PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_StoppedReason_TypeOfQuitJob    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_StoppedReason_TypeOfQuitJob(
	Index int 
	CompanyIndex int 
	StoppedReatonIndex int 
	TypeOfQuitJobIndex int 
	UpdatedDate datetime2(7) 
	UpdatedUser nvarchar(100) 
	dDate datetime2(7) 
	dUser nvarchar(100) 
 CONSTRAINT PK_HR_StoppedReason_TypeOfQuitJob PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_SubLaborContract    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_SubLaborContract(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	LaborContractIndex int 
	SubLaborContractID nvarchar(50) 
	SignedDate datetime 
	FromDate datetime 
	ToDate datetime 
	Description nvarchar(2000) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	AttachmentFile nvarchar(max) 
	SignedPerson nvarchar(100) 
	RefSubLaborContractIndex int 
	SignedPersonOutSystem nvarchar(100) 
	MonthNumber smallint 
	SubLaborContractTypeIndex int 
 CONSTRAINT PK_HR_SubLaborContract PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_SubLaborContractType    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_SubLaborContractType(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	ReportTemplate nvarchar(max) 
 CONSTRAINT PK_HR_SubLaborContractType PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Subordinate    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Subordinate(
	Index int 
	Company int 
	ID nvarchar(200) 
	Name nvarchar(500) 
	NameInEng nvarchar(500) 
	Address nvarchar(500) 
	Phone1 nvarchar(50) 
	Phone2 nvarchar(50) 
	Fax nvarchar(50) 
	Mail nvarchar(200) 
	Website nvarchar(200) 
	TaxCode nvarchar(100) 
	Slogan nvarchar(200) 
	Description nvarchar(500) 
	Headquaters bit 
	EstablishedDate datetime 
	AccountNo nvarchar(50) 
	BankInfo nvarchar(200) 
	SecretKey nvarchar(100) 
	Password nvarchar(100) 
	ATIDMinChar int 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_Subordinate PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_System    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_System(
	Index bigint 
	CompanyIndex int 
	System nvarchar(200) 
	NameInEng nvarchar(200) 
	Description nvarchar(200) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_System PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_TargetManagement    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_TargetManagement(
	Index int 
	CompanyIndex int 
	Name nvarchar(300) 
	GroupUser nvarchar(max) 
	User nvarchar(max) 
	Url nvarchar(max) 
	Order int 
	Top nvarchar(10) 
	Left nvarchar(10) 
	UpdatedUser nvarchar(100) 
	UpdatedDate datetime 
	Bottom nvarchar(10) 
 CONSTRAINT PK_HR_TargetManagement PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_TaxCommitment    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_TaxCommitment(
	Index int 
	CompanyIndex int 
	FromMonth datetime2(7) 
	ToMonth datetime2(7) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	LaborContractIndex int 
 CONSTRAINT PK_HR_TaxCommitment PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_TeacherClassification    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_TeacherClassification(
	Index int 
	CompanyIndex int 
	Name nvarchar(max) 
	NameInEng nvarchar(max) 
	Description nvarchar(max) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	dDate smalldatetime 
	dUser nvarchar(100) 
 CONSTRAINT PK_HR_TeacherClassification PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Teaching    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Teaching(
	Index int 
	CompanyIndex int 
	Name nvarchar(max) 
	NameInEng nvarchar(max) 
	Description nvarchar(max) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	dDate smalldatetime 
	dUser nvarchar(100) 
 CONSTRAINT PK_HR_Teaching PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_TimeCardUnconfirmReason    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_TimeCardUnconfirmReason(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	Description nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_TimeCardUnconfirmReason PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Titles    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Titles(
	Index bigint 
	CompanyIndex int 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Code nvarchar(50) 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	DefaultPosition bigint 
	SalaryIns money 
	SalaryBasic money 
	SalaryForTax money 
	WageScaleIndex int 
	InsWageScaleIndex int 
	TaxWageScaleIndex int 
	WageGroupIndex int 
	WageLevelIndex int 
	MaxPerson int 
 CONSTRAINT PK_HR_Titles PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_ToolAllocation    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_ToolAllocation(
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	AllocatedDate smalldatetime 
	DueDate smalldatetime 
	Deposit money 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	Note nvarchar(300) 
	Size nvarchar(10) 
	Number smallint 
	TypeOfToolAllocation int 
	ReturnedDate datetime 
	DocumentCode nvarchar(50) 
	AttachedFile ntext 
 CONSTRAINT PK_HR_ToolAllocation PRIMARY KEY CLUSTERED 
(
	AllocatedDate ASC,
	EmployeeATID ASC,
	CompanyIndex ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_TransferLabours    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_TransferLabours(
	Index bigint 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	TemporaryDepartmentIndex bigint 
	Date datetime 
	FromTime smalldatetime 
	ToTime smalldatetime 
	UseWeeklyShiftOfDept bit 
	Description nvarchar(200) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	SeparatedSalary bit 
	TransferOnDevices bit 
	NonOT real 
	OT1 real 
	OT2 real 
	OT3 real 
	OT4 real 
	OT5 real 
	OT6 real 
	OT7 real 
	OT8 real 
	OT9 real 
	OT10 real 
	BeginOfDay bit 
	EndOfDay bit 
	Synched smallint 
	NightHours real 
	NightNonOT real 
	SynchErrorDevices ntext 
	AttachmentFile nvarchar(max) 
 CONSTRAINT PK_HR_TransferLabours PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_TransferLabours_Suggest    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_TransferLabours_Suggest(
	Index bigint 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	TemporaryDepartmentIndex bigint 
	Date datetime 
	FromTime datetime 
	ToTime datetime 
	UseWeeklyShiftOfDept bit 
	Description nvarchar(200) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	SeparatedSalary bit 
	TransferOnDevices bit 
	EventIndex bigint 
	Status smallint 
 CONSTRAINT PK_HR_TransferLabours_Suggest PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_TypeOfChildrenDiploma    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_TypeOfChildrenDiploma(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(300) 
	NameInEng nvarchar(300) 
	Description nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_TypeOfChildrenDiploma PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_TypeOfDocument    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_TypeOfDocument(
	Index int 
	CompanyIndex int 
	Name nvarchar(100) 
	NameInEng nvarchar(100) 
	InsuranceCode nvarchar(50) 
	Description nvarchar(300) 
	UpdatedDate datetime2(7) 
	UpdatedUser nvarchar(100) 
	dDate datetime2(7) 
	dUser nvarchar(100) 
 CONSTRAINT PK_HR_TypeOfDocument PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_TypeOfFile    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_TypeOfFile(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(300) 
	NameInEng nvarchar(300) 
	Description nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_TypeOfFile PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_TypeOfFoodSafetyCard    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_TypeOfFoodSafetyCard(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Note nvarchar(300) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_TypeOfFoodSafetyCard PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_TypeOfHealthCard    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_TypeOfHealthCard(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Note nvarchar(300) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_TypeOfHealthCard PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_TypeOfHumanResourcePolicy    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_TypeOfHumanResourcePolicy(
	Index int 
	CompanyIndex int 
	Name nvarchar(300) 
	NameInEng nvarchar(300) 
	Description nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_TypeOfHumanResourcePolicy PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_TypeOfLabor    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_TypeOfLabor(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(50) 
	NameInEng nvarchar(50) 
	Description nvarchar(300) 
	UpdatedDate datetime2(7) 
	UpdatedUser nvarchar(100) 
	dDate datetime2(7) 
	dUser nvarchar(100) 
 CONSTRAINT PK_HR_TypeOfLabor PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_TypeOfQuitJob    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_TypeOfQuitJob(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(50) 
	NameInEng nvarchar(50) 
	Description nvarchar(300) 
	UpdatedDate datetime2(7) 
	UpdatedUser nvarchar(100) 
	dDate datetime2(7) 
	dUser nvarchar(100) 
 CONSTRAINT PK_HR_TypeOfQuitJob PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_TypeOfToolAllocation    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_TypeOfToolAllocation(
	Index int 
	CompanyIndex int 
	Name nvarchar(300) 
	NameInEng nvarchar(300) 
	Code nvarchar(50) 
	Description nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	Value money 
	Deposit money 
	ExpiredMonth float 
 CONSTRAINT PK_HR_TypeOfToolAllocation PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_TypeOfWorkDecision    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_TypeOfWorkDecision(
	Index int 
	Code nvarchar(50) 
	Name nvarchar(300) 
	NameInEng nvarchar(300) 
	Description nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	CompanyIndex int 
 CONSTRAINT PK_HR_TypeOfWorkDecision PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_UnemploymentInsurance    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_UnemploymentInsurance(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	DateOfIssue datetime 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_UnemploymentInsurance PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_User    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_User(
	UserName varchar(300) 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	GroupUser int 
	IsActive bit 
	Description nvarchar(max) 
	UpdatedUser nvarchar(100) 
	UpdatedDate datetime 
	ConfirmEmailCount int 
	ConfirmedEmail bit 
	CodeExpire datetime2(7) 
	TwoFactorEnabled bit 
 CONSTRAINT PK_HR_User PRIMARY KEY CLUSTERED 
(
	UserName ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_Vehicle    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Vehicle(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_Vehicle PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_VNPT_Insurance    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_VNPT_Insurance(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	FromDate smalldatetime 
	ToDate smalldatetime 
	Note nvarchar(500) 
	DeclerationTypeIndex int 
	PlanTypeIndex int 
	InsurancePaymentLevelIndex int 
	LivingAreaIndex int 
	MinSalaryByAreaIndex int 
	FamilyCode nvarchar(20) 
	HospitalIndex int 
	RegisteredAddress nvarchar(500) 
	RegisteredMoney money 
	PaymentMethodInMonth int 
	ChangingContentNote nvarchar(50) 
	AttachedDocument nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_VNPT_Insurance PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_WaitingLaborContract    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_WaitingLaborContract(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(max) 
	LaborContractTypeIndex int 
	ToDate datetime2(7) 
	UpdatedDate datetime2(7) 
	UpdatedUser nvarchar(100) 
	Status int 
	ExpiredDate datetime2(7) 
	EvaluationStatus smallint 
	Level smallint 
	NextUser nvarchar(100) 
 CONSTRAINT PK_HR_WaitingLaborContract PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_WaitingLaborContractDetail    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_WaitingLaborContractDetail(
	Index int 
	WaitingLaborContractIndex int 
	CriteriaForEvaluatingRenewalIndex int 
	Type smallint 
 CONSTRAINT PK_HR_WaitingLaborContractDetail PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_WaitingLaborContractHistory    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_WaitingLaborContractHistory(
	Index int 
	WaitingLaborContractIndex int 
	EmployeeATID nvarchar(100) 
	Time datetime2(7) 
	Result bit 
	Note nvarchar(500) 
	Action smallint 
	EvaluationLevel smallint 
	IsDelete bit 
 CONSTRAINT PK_HR_WaitingLaborContractHistory PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_Wards    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_Wards(
	Index int 
	CompanyIndex int 
	Name nvarchar(300) 
	NameInEng nvarchar(300) 
	Code nvarchar(50) 
	Description nvarchar(500) 
	DistrictIndex int 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
	InsuranceCode nvarchar(30) 
 CONSTRAINT PK_HR_Wards PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_WorkingInfo    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_WorkingInfo(
	Index bigint 
	CompanyIndex int 
	EmployeeATID nvarchar(30) 
	DepartmentIndex bigint 
	PositionIndex bigint 
	TitlesIndex bigint 
	IsManager bit 
	ManagedDepartment bigint 
	DirectManager nvarchar(max) 
	FromDate datetime 
	ToDate datetime 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
	SeparatedSalary bit 
	ManagedOtherDepartments nvarchar(max) 
	Note nvarchar(200) 
	EmployeeKind int 
	Synched smallint 
	JobDescription nvarchar(1000) 
	NumberOfDocument nvarchar(50) 
	AttachmentFile nvarchar(1000) 
	SignedPerson nvarchar(100) 
	SignedDate smalldatetime 
	ReasonIndex int 
	EmployeeCodeByWorking nvarchar(50) 
	SynchErrorDevices ntext 
	ProductProcessIndex int 
	WorkingLevelIndex int 
	EmployeeCode nvarchar(max) 
	TypeOfWorkDecisionIndex int 
	StatusIndex int 
	TeacherClassificationIndex int 
	TeachingIndex int 
 CONSTRAINT PK_HR_WorkingInfo PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_WorkingInfo_TypeOfLabor    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_WorkingInfo_TypeOfLabor(
	Index int 
	CompanyIndex int 
	WorkingInfoIndex bigint 
	TypeOfLaborIndex int 
	FromDate datetime2(7) 
	UpdatedDate datetime2(7) 
	UpdatedUser nvarchar(100) 
	dDate datetime2(7) 
	dUser nvarchar(100) 
 CONSTRAINT PK_HR_WorkingInfo_TypeOfLabor PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_WorkingInfoReason    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_WorkingInfoReason(
	Index int 
	CompanyIndex int 
	Code nvarchar(100) 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Description nvarchar(500) 
	UpdatedDate smalldatetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_WorkingInfoReason PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_WorkingLevel    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_WorkingLevel(
	Index int 
	CompanyIndex int 
	Code nvarchar(50) 
	Name nvarchar(200) 
	NameInEng nvarchar(200) 
	Description nvarchar(500) 
	UpdatedDate datetime 
	UpdatedUser nvarchar(100) 
 CONSTRAINT PK_HR_WorkingLevel PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table dbo.HR_WorkingType    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_WorkingType(
	Index int 
	CompanyIndex int 
	EmployeeATID nvarchar(max) 
	WorkingType int 
	PayrollMonth datetime2(7) 
	Year int 
 CONSTRAINT PK_HR_WorkingType PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table dbo.HR_WorkPlace    Script Date: 26/06/2024 11:34:34 pm ******/

 TABLE dbo.HR_WorkPlace(
	Index int 
	CompanyIndex int 
	Name nvarchar(max) 
	NameInEng nvarchar(max) 
	Description nvarchar(max) 
 CONSTRAINT PK_HR_WorkPlace PRIMARY KEY CLUSTERED 
(
	Index ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
ALTER TABLE dbo.HR_AdvancedDepartmentDefaultLevel ADD  CONSTRAINT DF__HR_Advanc__Compa__5D21AF45  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_AdvancedUser ADD  CONSTRAINT DF__HR_Advanc__Compa__12C8C788  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_ApproverGroup ADD  CONSTRAINT DF__HR_Approv__Compa__15A53433  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_AssetAllocation ADD  DEFAULT (CONVERT(bit,(0))) FOR DispensingStatus
GO
ALTER TABLE dbo.HR_BussinessAccountForEContract ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_CertificateType ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_City ADD  CONSTRAINT DF__HR_City__Company__07B7078F  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Company ADD  CONSTRAINT DF__HR_Compan__ATIDM__27C3E46E  DEFAULT ((5)) FOR ATIDMinChar
GO
ALTER TABLE dbo.HR_Company ADD  DEFAULT ((0)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Company ADD  DEFAULT (CONVERT(bit,(0))) FOR PortalAccountWithoutConfirm
GO
ALTER TABLE dbo.HR_ComplaintType ADD  CONSTRAINT DF__HR_Compla__Compa__2C88998B  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Country ADD  CONSTRAINT DF__HR_Countr__Compa__2F650636  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Covid ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Criteria ADD  CONSTRAINT DF__HR_Criter__Compa__324172E1  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_CriteriaByPosition ADD  CONSTRAINT DF__HR_Criter__Compa__351DDF8C  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_CriteriaCrossRate ADD  CONSTRAINT DF__HR_Criter__Compa__37FA4C37  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_CriteriaRatingResult ADD  CONSTRAINT DF__HR_Criter__Compa__3AD6B8E2  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_DashboardV2 ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_DefaultSystemWithDepartmentAndPortalFeature ADD  CONSTRAINT DF__HR_Defaul__Compa__408F9238  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Department ADD  CONSTRAINT DF__HR_Depart__Compa__39D87308  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Department ADD  CONSTRAINT DF__HR_Depart__Order__3ACC9741  DEFAULT ('') FOR OrderCode
GO
ALTER TABLE dbo.HR_Department ADD  DEFAULT (CONVERT(bit,(0))) FOR IsDepartmentOfTeacher
GO
ALTER TABLE dbo.HR_Diploma ADD  CONSTRAINT DF__HR_Diplom__Compa__436BFEE3  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_District ADD  CONSTRAINT DF__HR_Distri__Compa__46486B8E  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EContract ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EContractEmployee ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EContractParty ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EContractParty ADD  DEFAULT ((0)) FOR EContractIndex
GO
ALTER TABLE dbo.HR_EContractParty ADD  DEFAULT (N'') FOR Email
GO
ALTER TABLE dbo.HR_Education ADD  CONSTRAINT DF__HR_Educat__Compa__4924D839  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EducationLevel ADD  CONSTRAINT DF__HR_Educat__Compa__4C0144E4  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Employee ADD  CONSTRAINT DF__HR_Employ__Compa__630F92C5  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Employee ADD  DEFAULT (N'') FOR FieldConfig6
GO
ALTER TABLE dbo.HR_Employee_ExtendedInfo_Lazada ADD  CONSTRAINT DF__HR_Employ__Compa__4EDDB18F  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeAccount ADD  CONSTRAINT DF__HR_Employ__Compa__51BA1E3A  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeAccount ADD  CONSTRAINT DF__HR_Employ__BankI__52AE4273  DEFAULT ((0)) FOR BankIndex
GO
ALTER TABLE dbo.HR_EmployeeBehavior ADD  CONSTRAINT DF__HR_Employ__Compa__558AAF1E  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeBlackList ADD  CONSTRAINT DF__HR_Employ__Compa__58671BC9  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeCertificate ADD  CONSTRAINT DF__HR_Employ__Compa__5B438874  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeCompensation ADD  CONSTRAINT DF__HR_Employ__Compa__5E1FF51F  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeComplaint ADD  CONSTRAINT DF__HR_Employ__Compa__60FC61CA  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeContactInfo ADD  CONSTRAINT DF__HR_Employ__Compa__63D8CE75  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeDiploma ADD  CONSTRAINT DF__HR_Employ__Compa__66B53B20  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeEvents ADD  CONSTRAINT DF__HR_Employ__Compa__6991A7CB  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeExaminationResult ADD  CONSTRAINT DF__HR_Employ__Compa__6C6E1476  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeFamilyInfo ADD  CONSTRAINT DF__HR_Employ__Compa__7132C993  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeFamilyInfo ADD  CONSTRAINT DF__HR_Employ__House__7226EDCC  DEFAULT ('') FOR HouseHoldNumber
GO
ALTER TABLE dbo.HR_EmployeeFile ADD  CONSTRAINT DF__HR_Employ__Compa__75035A77  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeFireProtectionCertificate ADD  CONSTRAINT DF__HR_Employ__Compa__77DFC722  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeFoodSafety ADD  CONSTRAINT DF__HR_Employ__Compa__40FA71E3  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeFoodSafety ADD  DEFAULT ((0)) FOR TypeOfCard
GO
ALTER TABLE dbo.HR_EmployeeForeignLanguage ADD  CONSTRAINT DF__HR_Employ__Compa__2CE88C3E  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeFunction ADD  CONSTRAINT DF__HR_Employ__Compa__141CDE74  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeHealthCard ADD  CONSTRAINT DF__HR_Employ__Compa__3F914C5E  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeHealthInfo ADD  CONSTRAINT DF__HR_Employ__Compa__7D98A078  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeHouse ADD  CONSTRAINT DF__HR_Employ__Compa__00750D23  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeInsurancePayment ADD  CONSTRAINT DF__HR_Employ__Compa__0539C240  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeKPI ADD  CONSTRAINT DF__HR_Employ__Compa__08162EEB  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeLaborPermit ADD  CONSTRAINT DF__HR_Employ__Compa__0B879873  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeLaborPermit ADD  CONSTRAINT DF__HR_Employ__TypeO__0C7BBCAC  DEFAULT ((0)) FOR TypeOfLaborPermit
GO
ALTER TABLE dbo.HR_EmployeeLaborPermit ADD  DEFAULT ('') FOR AttachmentFile
GO
ALTER TABLE dbo.HR_EmployeeNoAutoSendMail ADD  CONSTRAINT DF__HR_Employ__Compa__0AF29B96  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeOptionalInfo ADD  CONSTRAINT DF__HR_Employ__Compa__3C2ACFCE  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeePartyInfo ADD  CONSTRAINT DF__HR_Employ__Compa__0DCF0841  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeePlanningByTitles ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeePlanningByTitlesStatistic ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeePolicy ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeePolicy ADD  DEFAULT (CONVERT(bit,(0))) FOR HR_LaborContract
GO
ALTER TABLE dbo.HR_EmployeePolicy ADD  DEFAULT (CONVERT(bit,(0))) FOR HR_LocationForEmployee
GO
ALTER TABLE dbo.HR_EmployeePolicy ADD  DEFAULT (CONVERT(bit,(0))) FOR PT_Account
GO
ALTER TABLE dbo.HR_EmployeePolicy ADD  DEFAULT (CONVERT(bit,(0))) FOR TA_EmployeeLeaveYear
GO
ALTER TABLE dbo.HR_EmployeePolicy ADD  DEFAULT (CONVERT(bit,(0))) FOR TA_EmployeeShift
GO
ALTER TABLE dbo.HR_EmployeePolicy ADD  DEFAULT (CONVERT(bit,(0))) FOR PR_SalaryInfo
GO
ALTER TABLE dbo.HR_EmployeePolicy ADD  DEFAULT (CONVERT(bit,(0))) FOR PT_MobileAccount
GO
ALTER TABLE dbo.HR_EmployeePolicy ADD  DEFAULT (CONVERT(bit,(0))) FOR PR_Pension
GO
ALTER TABLE dbo.HR_EmployeePolicy ADD  DEFAULT (CONVERT(bit,(0))) FOR PR_Allowance
GO
ALTER TABLE dbo.HR_EmployeePolicy ADD  DEFAULT (CONVERT(bit,(0))) FOR PR_Bonus
GO
ALTER TABLE dbo.HR_EmployeePolicy ADD  DEFAULT (CONVERT(bit,(0))) FOR PR_Deduct
GO
ALTER TABLE dbo.HR_EmployeeRating ADD  CONSTRAINT DF__HR_Employ__Compa__10AB74EC  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeRating ADD  CONSTRAINT DF__HR_Employ__Direc__119F9925  DEFAULT ((0)) FOR DirectorMark
GO
ALTER TABLE dbo.HR_EmployeeRatingYearly ADD  CONSTRAINT DF__HR_Employ__Compa__147C05D0  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeRatingYearly ADD  CONSTRAINT DF__HR_Employ__Direc__15702A09  DEFAULT ((0)) FOR DirectorMark
GO
ALTER TABLE dbo.HR_EmployeeSkill ADD  CONSTRAINT DF__HR_Employ__Compa__184C96B4  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeStoppedWorkingInfo ADD  CONSTRAINT DF__HR_Employ__Compa__4984CAEC  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeStoppedWorkingInfo ADD  CONSTRAINT DF__HR_Employ__Synch__4A78EF25  DEFAULT ('') FOR SynchErrorDevices
GO
ALTER TABLE dbo.HR_EmployeeStoppedWorkingInfo ADD  DEFAULT (CONVERT(bit,(0))) FOR InBlackList
GO
ALTER TABLE dbo.HR_EmployeeStoppedWorkingInfo ADD  DEFAULT (CONVERT(bit,(0))) FOR IsHandoverAsset
GO
ALTER TABLE dbo.HR_EmployeeStoppedWorkingInfo_TypeOfQuitJob ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR dDate
GO
ALTER TABLE dbo.HR_EmployeeSystem ADD  CONSTRAINT DF__HR_Employ__Compa__4E498009  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeSystemGroup ADD  CONSTRAINT DF__HR_Employ__Compa__1B29035F  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeSystemGroupDetail ADD  CONSTRAINT DF__HR_Employ__Compa__1E05700A  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeSystemWithPortalFeature ADD  CONSTRAINT DF__HR_Employ__Compa__20E1DCB5  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeUnionInfo ADD  CONSTRAINT DF__HR_Employ__Compa__23BE4960  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EmployeeWorkingExperience ADD  CONSTRAINT DF__HR_Employ__Compa__269AB60B  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_EquipmentAllocation ADD  CONSTRAINT DF__HR_Equipm__Compa__297722B6  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Ethnic ADD  CONSTRAINT DF__HR_Ethnic__Compa__2C538F61  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Events ADD  CONSTRAINT DF__HR_Events__Compa__2F2FFC0C  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Examination ADD  CONSTRAINT DF__HR_Examin__Compa__320C68B7  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_FamilyRelationshipType ADD  CONSTRAINT DF__HR_Family__Compa__34E8D562  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Feedback ADD  DEFAULT (CONVERT(smallint,(0))) FOR LastResponder
GO
ALTER TABLE dbo.HR_FeedbackNote ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_FeedbackType ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Functions ADD  CONSTRAINT DF__HR_Functi__Compa__37C5420D  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_HealthInsurance ADD  CONSTRAINT DF__HR_Health__Compa__3C89F72A  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_HospitalPlace ADD  CONSTRAINT DF__HR_Hospit__Compa__6E814571  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_InsurancePaymentType ADD  CONSTRAINT DF__HR_Insura__Compa__4336F4B9  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_InvisibleinReport ADD  CONSTRAINT DF__HR_Invisi__Compa__47FBA9D6  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_JobManager ADD  CONSTRAINT DF__HR_JobMan__Compa__4AD81681  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_JobType ADD  CONSTRAINT DF__HR_JobTyp__Compa__4DB4832C  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_KindOfEmployee ADD  CONSTRAINT DF__HR_KindOf__Compa__5090EFD7  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_KindOfEmployee ADD  DEFAULT (CONVERT(bit,(0))) FOR TeachingManagement
GO
ALTER TABLE dbo.HR_KPIRate ADD  CONSTRAINT DF__HR_KPIRat__Compa__536D5C82  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_LaborContract ADD  CONSTRAINT DF__HR_LaborC__Compa__2917FB5A  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_LaborContract ADD  CONSTRAINT DF__HR_LaborC__Attac__232AE331  DEFAULT ('') FOR AttachmentFile
GO
ALTER TABLE dbo.HR_LaborContract ADD  CONSTRAINT DF__HR_LaborC__Witho__612815AA  DEFAULT (CONVERT(bit,(0))) FOR WithoutPersonalIncomeTax
GO
ALTER TABLE dbo.HR_LaborContract ADD  DEFAULT (CONVERT(bit,(0))) FOR IsIncludeProbationPeriod
GO
ALTER TABLE dbo.HR_LaborContract ADD  DEFAULT (CONVERT(bit,(0))) FOR IsJoinHealthInsurance
GO
ALTER TABLE dbo.HR_LaborContract ADD  DEFAULT (CONVERT(bit,(0))) FOR IsJoinSocialInsurance
GO
ALTER TABLE dbo.HR_LaborContract ADD  DEFAULT (CONVERT(bit,(0))) FOR IsJoinTax
GO
ALTER TABLE dbo.HR_LaborContract ADD  DEFAULT (CONVERT(bit,(0))) FOR IsJoinUnemployeeInsurance
GO
ALTER TABLE dbo.HR_LaborContract ADD  DEFAULT (CONVERT(bit,(0))) FOR IsJoinUnion
GO
ALTER TABLE dbo.HR_LaborContract ADD  DEFAULT (CONVERT(bit,(0))) FOR IsThirteenthMonthlySalary
GO
ALTER TABLE dbo.HR_LaborContract ADD  DEFAULT (CONVERT(bit,(0))) FOR AgreementBonus
GO
ALTER TABLE dbo.HR_LaborContract ADD  DEFAULT (CONVERT(real,(0))) FOR CommitSaleMonth
GO
ALTER TABLE dbo.HR_LaborContract ADD  DEFAULT (CONVERT(real,(0))) FOR CommitSaleQuarterly
GO
ALTER TABLE dbo.HR_LaborContract ADD  DEFAULT (CONVERT(real,(0))) FOR CommitSaleYear
GO
ALTER TABLE dbo.HR_LaborContract ADD  DEFAULT ((10)) FOR TaxPercent
GO
ALTER TABLE dbo.HR_LaborContract ADD  DEFAULT (CONVERT(bit,(0))) FOR IsTerminationAheadOfTime
GO
ALTER TABLE dbo.HR_LaborContractType ADD  CONSTRAINT DF__HR_LaborC__Compa__5832119F  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Language ADD  CONSTRAINT DF__HR_Langua__Compa__5B0E7E4A  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Library ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_LocationContract ADD  DEFAULT ((0)) FOR City
GO
ALTER TABLE dbo.HR_LocationContract ADD  DEFAULT ((0)) FOR District
GO
ALTER TABLE dbo.HR_LocationContract ADD  DEFAULT ((0)) FOR Ward
GO
ALTER TABLE dbo.HR_LocationPermission ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_MaritalStatus ADD  CONSTRAINT DF__HR_Marita__Compa__61BB7BD9  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Mission ADD  CONSTRAINT DF__HR_Missio__Compa__6497E884  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_MissionAllowanceGroup ADD  CONSTRAINT DF__HR_Missio__Compa__6774552F  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_MissionAllowanceGroup ADD  CONSTRAINT DF__HR_Mission__Code__68687968  DEFAULT (N'') FOR Code
GO
ALTER TABLE dbo.HR_MissionAllowanceGroupDetail ADD  CONSTRAINT DF__HR_Missio__Compa__6B44E613  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_MissionAllowanceType ADD  CONSTRAINT DF__HR_Missio__Compa__6E2152BE  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_MissionType ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_NewsCategory ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_NumberOfEmpsByDepartment ADD  CONSTRAINT DF__HR_Number__Compa__74CE504D  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_NumberOfEmpsByTitles ADD  CONSTRAINT DF__HR_Number__Compa__77AABCF8  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_OpenResource ADD  CONSTRAINT DF__HR_OpenRe__Compa__7A8729A3  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Optional1 ADD  CONSTRAINT DF__HR_Option__Compa__7D63964E  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Optional2 ADD  CONSTRAINT DF__HR_Option__Compa__004002F9  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Optional3 ADD  CONSTRAINT DF__HR_Option__Compa__031C6FA4  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_OtherInsurance ADD  CONSTRAINT DF__HR_OtherI__Compa__05F8DC4F  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_OtherInsurance_QSR ADD  CONSTRAINT DF__HR_OtherI__Compa__08D548FA  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_OtherInsurance_QSR_CardType ADD  CONSTRAINT DF__HR_OtherI__Compa__0BB1B5A5  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_PortalLinks ADD  CONSTRAINT DF__HR_Portal__Compa__10766AC2  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Position ADD  CONSTRAINT DF__HR_Positi__Compa__55EAA1D1  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_PositionSkill ADD  CONSTRAINT DF__HR_Positi__Compa__1352D76D  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Rating ADD  CONSTRAINT DF__HR_Rating__Compa__19FFD4FC  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Region ADD  CONSTRAINT DF__HR_Region__Compa__1CDC41A7  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Religion ADD  CONSTRAINT DF__HR_Religi__Compa__1FB8AE52  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Representive ADD  CONSTRAINT DF__HR_Repres__Compa__22951AFD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Reward_Discipline ADD  CONSTRAINT DF__HR_Reward__Compa__2759D01A  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Reward_DisciplineType ADD  CONSTRAINT DF__HR_Reward__Compa__2E06CDA9  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_School ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Skill ADD  CONSTRAINT DF__HR_Skill__Compan__30E33A54  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_SkillGroup ADD  CONSTRAINT DF__HR_SkillG__Compa__33BFA6FF  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_SkillInGroup ADD  CONSTRAINT DF__HR_SkillI__Compa__369C13AA  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_SocialInsurance ADD  CONSTRAINT DF__HR_Social__Compa__39788055  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Status ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_StoppedReason ADD  CONSTRAINT DF__HR_Stoppe__Compa__3E3D3572  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_SubLaborContract ADD  CONSTRAINT DF__HR_SubLab__Compa__0564AAC9  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_SubLaborContract ADD  CONSTRAINT DF__HR_SubLab__Attac__2236BEF8  DEFAULT ('') FOR AttachmentFile
GO
ALTER TABLE dbo.HR_SubLaborContract ADD  CONSTRAINT DF__HR_SubLab__Month__0658CF02  DEFAULT ((0)) FOR MonthNumber
GO
ALTER TABLE dbo.HR_Subordinate ADD  CONSTRAINT DF__HR_Subord__ATIDM__03E676AB  DEFAULT ((5)) FOR ATIDMinChar
GO
ALTER TABLE dbo.HR_System ADD  CONSTRAINT DF__HR_System__Compa__4301EA8F  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_TaxCommitment ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_TimeCardUnconfirmReason ADD  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_Titles ADD  CONSTRAINT DF__HR_Titles__Compa__45DE573A  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_ToolAllocation ADD  CONSTRAINT DF__HR_ToolAl__Compa__48BAC3E5  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_TransferLabours ADD  CONSTRAINT DF__HR_Transf__Compa__66AB197F  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_TransferLabours ADD  CONSTRAINT DF__HR_Transf__Synch__679F3DB8  DEFAULT ('') FOR SynchErrorDevices
GO
ALTER TABLE dbo.HR_TransferLabours_Suggest ADD  CONSTRAINT DF__HR_Transf__Compa__4B973090  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_TypeOfFoodSafetyCard ADD  CONSTRAINT DF__HR_TypeOf__Compa__52442E1F  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_TypeOfHealthCard ADD  CONSTRAINT DF__HR_TypeOf__Compa__55209ACA  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_TypeOfToolAllocation ADD  CONSTRAINT DF__HR_TypeOf__Compa__59E54FE7  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_UnemploymentInsurance ADD  CONSTRAINT DF__HR_Unempl__Compa__5EAA0504  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_User ADD  DEFAULT (CONVERT(bit,(0))) FOR TwoFactorEnabled
GO
ALTER TABLE dbo.HR_VNPT_Insurance ADD  CONSTRAINT DF__HR_VNPT_I__Compa__636EBA21  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_WaitingLaborContract ADD  DEFAULT (CONVERT(smallint,(0))) FOR EvaluationStatus
GO
ALTER TABLE dbo.HR_Wards ADD  CONSTRAINT DF__HR_Wards__Compan__664B26CC  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_WorkingInfo ADD  CONSTRAINT DF__HR_Workin__Compa__12BEA5E7  DEFAULT ((1)) FOR CompanyIndex
GO
ALTER TABLE dbo.HR_WorkingInfo ADD  CONSTRAINT DF__HR_Workin__IsMan__13B2CA20  DEFAULT ((0)) FOR IsManager
GO
ALTER TABLE dbo.HR_WorkingInfo ADD  CONSTRAINT DF__HR_Workin__Synch__14A6EE59  DEFAULT ('') FOR SynchErrorDevices
GO
ALTER TABLE dbo.HR_AdditionalTimeDependency  WITH CHECK ADD  CONSTRAINT FK_HR_AdditionalTimeDependency_HR_EmployeeFamilyInfo_FamilyInfoIndex FOREIGN KEY(FamilyInfoIndex)
REFERENCES dbo.HR_EmployeeFamilyInfo (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_AdditionalTimeDependency CHECK CONSTRAINT FK_HR_AdditionalTimeDependency_HR_EmployeeFamilyInfo_FamilyInfoIndex
GO
ALTER TABLE dbo.HR_AdditionalTimeDependency_Detail  WITH CHECK ADD  CONSTRAINT FK_HR_AdditionalTimeDependency_Detail_HR_AdditionalTimeDependency_AdditionalTimeIndex FOREIGN KEY(AdditionalTimeIndex)
REFERENCES dbo.HR_AdditionalTimeDependency (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_AdditionalTimeDependency_Detail CHECK CONSTRAINT FK_HR_AdditionalTimeDependency_Detail_HR_AdditionalTimeDependency_AdditionalTimeIndex
GO
ALTER TABLE dbo.HR_AdvancedDepartmentDefaultLevel  WITH CHECK ADD  CONSTRAINT FK_HR_AdvancedDepartmentDefaultLevel_HR_Department_DepartmentIndex FOREIGN KEY(DepartmentIndex)
REFERENCES dbo.HR_Department (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_AdvancedDepartmentDefaultLevel CHECK CONSTRAINT FK_HR_AdvancedDepartmentDefaultLevel_HR_Department_DepartmentIndex
GO
ALTER TABLE dbo.HR_AssetAllocation  WITH CHECK ADD  CONSTRAINT FK_HR_AssetAllocation_HR_Asset_AssetIndex FOREIGN KEY(AssetIndex)
REFERENCES dbo.HR_Asset (Index)
GO
ALTER TABLE dbo.HR_AssetAllocation CHECK CONSTRAINT FK_HR_AssetAllocation_HR_Asset_AssetIndex
GO
ALTER TABLE dbo.HR_BranchOffice  WITH CHECK ADD  CONSTRAINT FK_HR_BranchOffice_HR_Company_Company FOREIGN KEY(Company)
REFERENCES dbo.HR_Company (Index)
GO
ALTER TABLE dbo.HR_BranchOffice CHECK CONSTRAINT FK_HR_BranchOffice_HR_Company_Company
GO
ALTER TABLE dbo.HR_BranchOffice  WITH CHECK ADD  CONSTRAINT FK_HR_BranchOffice_HR_Subordinate_SubordinateIndex FOREIGN KEY(SubordinateIndex)
REFERENCES dbo.HR_Subordinate (Index)
GO
ALTER TABLE dbo.HR_BranchOffice CHECK CONSTRAINT FK_HR_BranchOffice_HR_Subordinate_SubordinateIndex
GO
ALTER TABLE dbo.HR_City  WITH CHECK ADD  CONSTRAINT FK_HR_City_HR_Country_CountryIndex FOREIGN KEY(CountryIndex)
REFERENCES dbo.HR_Country (Index)
GO
ALTER TABLE dbo.HR_City CHECK CONSTRAINT FK_HR_City_HR_Country_CountryIndex
GO
ALTER TABLE dbo.HR_Department  WITH CHECK ADD  CONSTRAINT FK_HR_Department_HR_BranchOffice_BranchOfficeIndex FOREIGN KEY(BranchOfficeIndex)
REFERENCES dbo.HR_BranchOffice (Index)
GO
ALTER TABLE dbo.HR_Department CHECK CONSTRAINT FK_HR_Department_HR_BranchOffice_BranchOfficeIndex
GO
ALTER TABLE dbo.HR_Department  WITH CHECK ADD  CONSTRAINT FK_HR_Department_HR_Subordinate_SubordinateIndex FOREIGN KEY(SubordinateIndex)
REFERENCES dbo.HR_Subordinate (Index)
GO
ALTER TABLE dbo.HR_Department CHECK CONSTRAINT FK_HR_Department_HR_Subordinate_SubordinateIndex
GO
ALTER TABLE dbo.HR_Employee  WITH CHECK ADD  CONSTRAINT FK_HR_Employee_HR_CitizenIdentificationPlace_CitizenIdentificationPlaceIndex FOREIGN KEY(CitizenIdentificationPlaceIndex)
REFERENCES dbo.HR_CitizenIdentificationPlace (Index)
GO
ALTER TABLE dbo.HR_Employee CHECK CONSTRAINT FK_HR_Employee_HR_CitizenIdentificationPlace_CitizenIdentificationPlaceIndex
GO
ALTER TABLE dbo.HR_Employee  WITH CHECK ADD  CONSTRAINT FK_HR_Employee_HR_City_HouseHold FOREIGN KEY(HouseHold)
REFERENCES dbo.HR_City (Index)
GO
ALTER TABLE dbo.HR_Employee CHECK CONSTRAINT FK_HR_Employee_HR_City_HouseHold
GO
ALTER TABLE dbo.HR_Employee  WITH CHECK ADD  CONSTRAINT FK_HR_Employee_HR_Country_Nationality FOREIGN KEY(Nationality)
REFERENCES dbo.HR_Country (Index)
GO
ALTER TABLE dbo.HR_Employee CHECK CONSTRAINT FK_HR_Employee_HR_Country_Nationality
GO
ALTER TABLE dbo.HR_Employee  WITH CHECK ADD  CONSTRAINT FK_HR_Employee_HR_Education_EducationIndex FOREIGN KEY(EducationIndex)
REFERENCES dbo.HR_Education (Index)
GO
ALTER TABLE dbo.HR_Employee CHECK CONSTRAINT FK_HR_Employee_HR_Education_EducationIndex
GO
ALTER TABLE dbo.HR_Employee  WITH CHECK ADD  CONSTRAINT FK_HR_Employee_HR_EducationLevel_EducationLevelIndex FOREIGN KEY(EducationLevelIndex)
REFERENCES dbo.HR_EducationLevel (Index)
GO
ALTER TABLE dbo.HR_Employee CHECK CONSTRAINT FK_HR_Employee_HR_EducationLevel_EducationLevelIndex
GO
ALTER TABLE dbo.HR_Employee  WITH CHECK ADD  CONSTRAINT FK_HR_Employee_HR_IdentityCardPlace_IdentityCardPlaceIndex FOREIGN KEY(IdentityCardPlaceIndex)
REFERENCES dbo.HR_IdentityCardPlace (Index)
GO
ALTER TABLE dbo.HR_Employee CHECK CONSTRAINT FK_HR_Employee_HR_IdentityCardPlace_IdentityCardPlaceIndex
GO
ALTER TABLE dbo.HR_Employee  WITH CHECK ADD  CONSTRAINT FK_HR_Employee_HR_KindOfEmployee_EmployeeKind FOREIGN KEY(EmployeeKind)
REFERENCES dbo.HR_KindOfEmployee (Index)
GO
ALTER TABLE dbo.HR_Employee CHECK CONSTRAINT FK_HR_Employee_HR_KindOfEmployee_EmployeeKind
GO
ALTER TABLE dbo.HR_Employee  WITH CHECK ADD  CONSTRAINT FK_HR_Employee_HR_Location_LocationIndex FOREIGN KEY(LocationIndex)
REFERENCES dbo.HR_Location (Index)
GO
ALTER TABLE dbo.HR_Employee CHECK CONSTRAINT FK_HR_Employee_HR_Location_LocationIndex
GO
ALTER TABLE dbo.HR_Employee  WITH CHECK ADD  CONSTRAINT FK_HR_Employee_HR_PassportPlace_PassportPlaceIndex FOREIGN KEY(PassportPlaceIndex)
REFERENCES dbo.HR_PassportPlace (Index)
GO
ALTER TABLE dbo.HR_Employee CHECK CONSTRAINT FK_HR_Employee_HR_PassportPlace_PassportPlaceIndex
GO
ALTER TABLE dbo.HR_Employee  WITH CHECK ADD  CONSTRAINT FK_HR_Employee_TM_TeacherQualifications_TeacherQualificationIndex FOREIGN KEY(TeacherQualificationIndex)
REFERENCES dbo.TM_TeacherQualifications (Index)
GO
ALTER TABLE dbo.HR_Employee CHECK CONSTRAINT FK_HR_Employee_TM_TeacherQualifications_TeacherQualificationIndex
GO
ALTER TABLE dbo.HR_EmployeeCertificate  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeeCertificate_HR_CertificateType_CertificateTypeIndex FOREIGN KEY(CertificateTypeIndex)
REFERENCES dbo.HR_CertificateType (Index)
GO
ALTER TABLE dbo.HR_EmployeeCertificate CHECK CONSTRAINT FK_HR_EmployeeCertificate_HR_CertificateType_CertificateTypeIndex
GO
ALTER TABLE dbo.HR_EmployeeCertificate  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeeCertificate_HR_School_SchoolIndex FOREIGN KEY(SchoolIndex)
REFERENCES dbo.HR_School (Index)
GO
ALTER TABLE dbo.HR_EmployeeCertificate CHECK CONSTRAINT FK_HR_EmployeeCertificate_HR_School_SchoolIndex
GO
ALTER TABLE dbo.HR_EmployeeForeignLanguage  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeeForeignLanguage_HR_Language_LanguageIndex FOREIGN KEY(LanguageIndex)
REFERENCES dbo.HR_Language (Index)
GO
ALTER TABLE dbo.HR_EmployeeForeignLanguage CHECK CONSTRAINT FK_HR_EmployeeForeignLanguage_HR_Language_LanguageIndex
GO
ALTER TABLE dbo.HR_EmployeeFunction  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeeFunction_HR_Functions_FunctionIndex FOREIGN KEY(FunctionIndex)
REFERENCES dbo.HR_Functions (Index)
GO
ALTER TABLE dbo.HR_EmployeeFunction CHECK CONSTRAINT FK_HR_EmployeeFunction_HR_Functions_FunctionIndex
GO
ALTER TABLE dbo.HR_EmployeeHealthCard  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeeHealthCard_HR_HospitalPlace_HospitalPlace FOREIGN KEY(HospitalPlace)
REFERENCES dbo.HR_HospitalPlace (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_EmployeeHealthCard CHECK CONSTRAINT FK_HR_EmployeeHealthCard_HR_HospitalPlace_HospitalPlace
GO
ALTER TABLE dbo.HR_EmployeeHealthCard  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeeHealthCard_HR_TypeOfHealthCard_TypeOfCard FOREIGN KEY(TypeOfCard)
REFERENCES dbo.HR_TypeOfHealthCard (Index)
GO
ALTER TABLE dbo.HR_EmployeeHealthCard CHECK CONSTRAINT FK_HR_EmployeeHealthCard_HR_TypeOfHealthCard_TypeOfCard
GO
ALTER TABLE dbo.HR_EmployeeInApproverGroup  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeeInApproverGroup_HR_ApproverGroup_ApproverGroupIndex FOREIGN KEY(ApproverGroupIndex)
REFERENCES dbo.HR_ApproverGroup (Index)
GO
ALTER TABLE dbo.HR_EmployeeInApproverGroup CHECK CONSTRAINT FK_HR_EmployeeInApproverGroup_HR_ApproverGroup_ApproverGroupIndex
GO
ALTER TABLE dbo.HR_EmployeeLaborPermit  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeeLaborPermit_HR_Country_Nationality FOREIGN KEY(Nationality)
REFERENCES dbo.HR_Country (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_EmployeeLaborPermit CHECK CONSTRAINT FK_HR_EmployeeLaborPermit_HR_Country_Nationality
GO
ALTER TABLE dbo.HR_EmployeeOptionalInfo  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeeOptionalInfo_HR_Optional1_OptionalCatalog1 FOREIGN KEY(OptionalCatalog1)
REFERENCES dbo.HR_Optional1 (Index)
GO
ALTER TABLE dbo.HR_EmployeeOptionalInfo CHECK CONSTRAINT FK_HR_EmployeeOptionalInfo_HR_Optional1_OptionalCatalog1
GO
ALTER TABLE dbo.HR_EmployeeOptionalInfo  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeeOptionalInfo_HR_Optional2_OptionalCatalog2 FOREIGN KEY(OptionalCatalog2)
REFERENCES dbo.HR_Optional2 (Index)
GO
ALTER TABLE dbo.HR_EmployeeOptionalInfo CHECK CONSTRAINT FK_HR_EmployeeOptionalInfo_HR_Optional2_OptionalCatalog2
GO
ALTER TABLE dbo.HR_EmployeeOptionalInfo  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeeOptionalInfo_HR_Optional3_OptionalCatalog3 FOREIGN KEY(OptionalCatalog3)
REFERENCES dbo.HR_Optional3 (Index)
GO
ALTER TABLE dbo.HR_EmployeeOptionalInfo CHECK CONSTRAINT FK_HR_EmployeeOptionalInfo_HR_Optional3_OptionalCatalog3
GO
ALTER TABLE dbo.HR_EmployeePlanning  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeePlanning_HR_Department_DepartmentIndex FOREIGN KEY(DepartmentIndex)
REFERENCES dbo.HR_Department (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_EmployeePlanning CHECK CONSTRAINT FK_HR_EmployeePlanning_HR_Department_DepartmentIndex
GO
ALTER TABLE dbo.HR_EmployeePlanningByTitles  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeePlanningByTitles_HR_Department_DepartmentIndex FOREIGN KEY(DepartmentIndex)
REFERENCES dbo.HR_Department (Index)
GO
ALTER TABLE dbo.HR_EmployeePlanningByTitles CHECK CONSTRAINT FK_HR_EmployeePlanningByTitles_HR_Department_DepartmentIndex
GO
ALTER TABLE dbo.HR_EmployeePlanningByTitles  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeePlanningByTitles_HR_LaborContractType_LaborContractTypeIndex FOREIGN KEY(LaborContractTypeIndex)
REFERENCES dbo.HR_LaborContractType (Index)
GO
ALTER TABLE dbo.HR_EmployeePlanningByTitles CHECK CONSTRAINT FK_HR_EmployeePlanningByTitles_HR_LaborContractType_LaborContractTypeIndex
GO
ALTER TABLE dbo.HR_EmployeePlanningByTitles  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeePlanningByTitles_HR_Titles_TitlesIndex FOREIGN KEY(TitlesIndex)
REFERENCES dbo.HR_Titles (Index)
GO
ALTER TABLE dbo.HR_EmployeePlanningByTitles CHECK CONSTRAINT FK_HR_EmployeePlanningByTitles_HR_Titles_TitlesIndex
GO
ALTER TABLE dbo.HR_EmployeePlanningByTitlesStatistic  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeePlanningByTitlesStatistic_HR_Department_DepartmentIndex FOREIGN KEY(DepartmentIndex)
REFERENCES dbo.HR_Department (Index)
GO
ALTER TABLE dbo.HR_EmployeePlanningByTitlesStatistic CHECK CONSTRAINT FK_HR_EmployeePlanningByTitlesStatistic_HR_Department_DepartmentIndex
GO
ALTER TABLE dbo.HR_EmployeePlanningByTitlesStatistic  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeePlanningByTitlesStatistic_HR_Titles_TitlesIndex FOREIGN KEY(TitlesIndex)
REFERENCES dbo.HR_Titles (Index)
GO
ALTER TABLE dbo.HR_EmployeePlanningByTitlesStatistic CHECK CONSTRAINT FK_HR_EmployeePlanningByTitlesStatistic_HR_Titles_TitlesIndex
GO
ALTER TABLE dbo.HR_EmployeePlanningStatistic  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeePlanningStatistic_HR_Department_DepartmentIndex FOREIGN KEY(DepartmentIndex)
REFERENCES dbo.HR_Department (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_EmployeePlanningStatistic CHECK CONSTRAINT FK_HR_EmployeePlanningStatistic_HR_Department_DepartmentIndex
GO
ALTER TABLE dbo.HR_EmployeeStoppedWorkingInfo  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeeStoppedWorkingInfo_HR_StoppedReason_StoppedReasonIndex FOREIGN KEY(StoppedReasonIndex)
REFERENCES dbo.HR_StoppedReason (Index)
GO
ALTER TABLE dbo.HR_EmployeeStoppedWorkingInfo CHECK CONSTRAINT FK_HR_EmployeeStoppedWorkingInfo_HR_StoppedReason_StoppedReasonIndex
GO
ALTER TABLE dbo.HR_EmployeeSystem  WITH CHECK ADD  CONSTRAINT FK_HR_EmployeeSystem_HR_System_SystemIndex FOREIGN KEY(SystemIndex)
REFERENCES dbo.HR_System (Index)
GO
ALTER TABLE dbo.HR_EmployeeSystem CHECK CONSTRAINT FK_HR_EmployeeSystem_HR_System_SystemIndex
GO
ALTER TABLE dbo.HR_Feedback  WITH CHECK ADD  CONSTRAINT FK_HR_Feedback_HR_FeedbackType_FeedbackTypeIndex FOREIGN KEY(FeedbackTypeIndex)
REFERENCES dbo.HR_FeedbackType (Index)
GO
ALTER TABLE dbo.HR_Feedback CHECK CONSTRAINT FK_HR_Feedback_HR_FeedbackType_FeedbackTypeIndex
GO
ALTER TABLE dbo.HR_HospitalPlace  WITH CHECK ADD  CONSTRAINT FK_HR_HospitalPlace_HR_City_CityIndex FOREIGN KEY(CityIndex)
REFERENCES dbo.HR_City (Index)
GO
ALTER TABLE dbo.HR_HospitalPlace CHECK CONSTRAINT FK_HR_HospitalPlace_HR_City_CityIndex
GO
ALTER TABLE dbo.HR_LaborContract  WITH CHECK ADD  CONSTRAINT FK_HR_LaborContract_HR_LaborContractType_LaborContractTypeIndex FOREIGN KEY(LaborContractTypeIndex)
REFERENCES dbo.HR_LaborContractType (Index)
GO
ALTER TABLE dbo.HR_LaborContract CHECK CONSTRAINT FK_HR_LaborContract_HR_LaborContractType_LaborContractTypeIndex
GO
ALTER TABLE dbo.HR_LocationForDepartment  WITH CHECK ADD  CONSTRAINT FK_HR_LocationForDepartment_HR_Location_LocationIndex FOREIGN KEY(LocationIndex)
REFERENCES dbo.HR_Location (Index)
GO
ALTER TABLE dbo.HR_LocationForDepartment CHECK CONSTRAINT FK_HR_LocationForDepartment_HR_Location_LocationIndex
GO
ALTER TABLE dbo.HR_LocationForEmployee  WITH CHECK ADD  CONSTRAINT FK_HR_LocationForEmployee_HR_Location_LocationIndex FOREIGN KEY(LocationIndex)
REFERENCES dbo.HR_Location (Index)
GO
ALTER TABLE dbo.HR_LocationForEmployee CHECK CONSTRAINT FK_HR_LocationForEmployee_HR_Location_LocationIndex
GO
ALTER TABLE dbo.HR_LocationPermission  WITH CHECK ADD  CONSTRAINT FK_HR_LocationPermission_HR_GroupUser_GroupUserIndex FOREIGN KEY(GroupUserIndex)
REFERENCES dbo.HR_GroupUser (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_LocationPermission CHECK CONSTRAINT FK_HR_LocationPermission_HR_GroupUser_GroupUserIndex
GO
ALTER TABLE dbo.HR_LocationPermission  WITH CHECK ADD  CONSTRAINT FK_HR_LocationPermission_HR_Location_LocationIndex FOREIGN KEY(LocationIndex)
REFERENCES dbo.HR_Location (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_LocationPermission CHECK CONSTRAINT FK_HR_LocationPermission_HR_Location_LocationIndex
GO
ALTER TABLE dbo.HR_MaternityDetail  WITH CHECK ADD  CONSTRAINT FK_HR_MaternityDetail_HR_Maternity_MaternityIndex FOREIGN KEY(MaternityIndex)
REFERENCES dbo.HR_Maternity (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_MaternityDetail CHECK CONSTRAINT FK_HR_MaternityDetail_HR_Maternity_MaternityIndex
GO
ALTER TABLE dbo.HR_Mission  WITH CHECK ADD  CONSTRAINT FK_HR_Mission_HR_MissionType_MissionTypeIndex FOREIGN KEY(MissionTypeIndex)
REFERENCES dbo.HR_MissionType (Index)
GO
ALTER TABLE dbo.HR_Mission CHECK CONSTRAINT FK_HR_Mission_HR_MissionType_MissionTypeIndex
GO
ALTER TABLE dbo.HR_News  WITH CHECK ADD  CONSTRAINT FK_HR_News_HR_NewsCategory_CategoryIndex FOREIGN KEY(CategoryIndex)
REFERENCES dbo.HR_NewsCategory (Index)
GO
ALTER TABLE dbo.HR_News CHECK CONSTRAINT FK_HR_News_HR_NewsCategory_CategoryIndex
GO
ALTER TABLE dbo.HR_Position  WITH CHECK ADD  CONSTRAINT FK_HR_Position_HR_Titles_DefaultTitlesIndex FOREIGN KEY(DefaultTitlesIndex)
REFERENCES dbo.HR_Titles (Index)
GO
ALTER TABLE dbo.HR_Position CHECK CONSTRAINT FK_HR_Position_HR_Titles_DefaultTitlesIndex
GO
ALTER TABLE dbo.HR_SalaryPlanning  WITH CHECK ADD  CONSTRAINT FK_HR_SalaryPlanning_HR_Department_DepartmentIndex FOREIGN KEY(DepartmentIndex)
REFERENCES dbo.HR_Department (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_SalaryPlanning CHECK CONSTRAINT FK_HR_SalaryPlanning_HR_Department_DepartmentIndex
GO
ALTER TABLE dbo.HR_SalaryPlanningByPosition  WITH CHECK ADD  CONSTRAINT FK_HR_SalaryPlanningByPosition_HR_Department_DepartmentIndex FOREIGN KEY(DepartmentIndex)
REFERENCES dbo.HR_Department (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_SalaryPlanningByPosition CHECK CONSTRAINT FK_HR_SalaryPlanningByPosition_HR_Department_DepartmentIndex
GO
ALTER TABLE dbo.HR_SalaryPlanningByPosition  WITH CHECK ADD  CONSTRAINT FK_HR_SalaryPlanningByPosition_HR_Position_PositionIndex FOREIGN KEY(PositionIndex)
REFERENCES dbo.HR_Position (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_SalaryPlanningByPosition CHECK CONSTRAINT FK_HR_SalaryPlanningByPosition_HR_Position_PositionIndex
GO
ALTER TABLE dbo.HR_SalaryPlanningByPosition  WITH CHECK ADD  CONSTRAINT FK_HR_SalaryPlanningByPosition_HR_Titles_TitlesIndex FOREIGN KEY(TitlesIndex)
REFERENCES dbo.HR_Titles (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_SalaryPlanningByPosition CHECK CONSTRAINT FK_HR_SalaryPlanningByPosition_HR_Titles_TitlesIndex
GO
ALTER TABLE dbo.HR_SubLaborContract  WITH CHECK ADD  CONSTRAINT FK_HR_SubLaborContract_HR_LaborContract_LaborContractIndex FOREIGN KEY(LaborContractIndex)
REFERENCES dbo.HR_LaborContract (Index)
GO
ALTER TABLE dbo.HR_SubLaborContract CHECK CONSTRAINT FK_HR_SubLaborContract_HR_LaborContract_LaborContractIndex
GO
ALTER TABLE dbo.HR_SubLaborContract  WITH CHECK ADD  CONSTRAINT FK_HR_SubLaborContract_HR_SubLaborContractType_SubLaborContractTypeIndex FOREIGN KEY(SubLaborContractTypeIndex)
REFERENCES dbo.HR_SubLaborContractType (Index)
GO
ALTER TABLE dbo.HR_SubLaborContract CHECK CONSTRAINT FK_HR_SubLaborContract_HR_SubLaborContractType_SubLaborContractTypeIndex
GO
ALTER TABLE dbo.HR_Subordinate  WITH CHECK ADD  CONSTRAINT FK_HR_Subordinate_HR_Company_Company FOREIGN KEY(Company)
REFERENCES dbo.HR_Company (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_Subordinate CHECK CONSTRAINT FK_HR_Subordinate_HR_Company_Company
GO
ALTER TABLE dbo.HR_TransferLabours  WITH CHECK ADD  CONSTRAINT FK_HR_TransferLabours_HR_Department_TemporaryDepartmentIndex FOREIGN KEY(TemporaryDepartmentIndex)
REFERENCES dbo.HR_Department (Index)
GO
ALTER TABLE dbo.HR_TransferLabours CHECK CONSTRAINT FK_HR_TransferLabours_HR_Department_TemporaryDepartmentIndex
GO
ALTER TABLE dbo.HR_User  WITH CHECK ADD  CONSTRAINT FK_HR_User_HR_GroupUser_GroupUser FOREIGN KEY(GroupUser)
REFERENCES dbo.HR_GroupUser (Index)
GO
ALTER TABLE dbo.HR_User CHECK CONSTRAINT FK_HR_User_HR_GroupUser_GroupUser
GO
ALTER TABLE dbo.HR_WaitingLaborContractDetail  WITH CHECK ADD  CONSTRAINT FK_HR_WaitingLaborContractDetail_HR_WaitingLaborContract_WaitingLaborContractIndex FOREIGN KEY(WaitingLaborContractIndex)
REFERENCES dbo.HR_WaitingLaborContract (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_WaitingLaborContractDetail CHECK CONSTRAINT FK_HR_WaitingLaborContractDetail_HR_WaitingLaborContract_WaitingLaborContractIndex
GO
ALTER TABLE dbo.HR_WaitingLaborContractHistory  WITH CHECK ADD  CONSTRAINT FK_HR_WaitingLaborContractHistory_HR_WaitingLaborContract_WaitingLaborContractIndex FOREIGN KEY(WaitingLaborContractIndex)
REFERENCES dbo.HR_WaitingLaborContract (Index)
ON DELETE CASCADE
GO
ALTER TABLE dbo.HR_WaitingLaborContractHistory CHECK CONSTRAINT FK_HR_WaitingLaborContractHistory_HR_WaitingLaborContract_WaitingLaborContractIndex
GO
ALTER TABLE dbo.HR_WorkingInfo  WITH CHECK ADD  CONSTRAINT FK_HR_WorkingInfo_HR_Position_PositionIndex FOREIGN KEY(PositionIndex)
REFERENCES dbo.HR_Position (Index)
GO
ALTER TABLE dbo.HR_WorkingInfo CHECK CONSTRAINT FK_HR_WorkingInfo_HR_Position_PositionIndex
GO
ALTER TABLE dbo.HR_WorkingInfo  WITH CHECK ADD  CONSTRAINT FK_HR_WorkingInfo_HR_Status_StatusIndex FOREIGN KEY(StatusIndex)
REFERENCES dbo.HR_Status (Index)
GO
ALTER TABLE dbo.HR_WorkingInfo CHECK CONSTRAINT FK_HR_WorkingInfo_HR_Status_StatusIndex
GO
ALTER TABLE dbo.HR_WorkingInfo  WITH CHECK ADD  CONSTRAINT FK_HR_WorkingInfo_HR_Titles_TitlesIndex FOREIGN KEY(TitlesIndex)
REFERENCES dbo.HR_Titles (Index)
GO
ALTER TABLE dbo.HR_WorkingInfo CHECK CONSTRAINT FK_HR_WorkingInfo_HR_Titles_TitlesIndex
GO
ALTER TABLE dbo.HR_WorkingInfo  WITH CHECK ADD  CONSTRAINT FK_HR_WorkingInfo_HR_TypeOfWorkDecision_TypeOfWorkDecisionIndex FOREIGN KEY(TypeOfWorkDecisionIndex)
REFERENCES dbo.HR_TypeOfWorkDecision (Index)
GO
ALTER TABLE dbo.HR_WorkingInfo CHECK CONSTRAINT FK_HR_WorkingInfo_HR_TypeOfWorkDecision_TypeOfWorkDecisionIndex
GO
ALTER TABLE dbo.HR_WorkingInfo  WITH CHECK ADD  CONSTRAINT FK_HR_WorkingInfo_HR_WorkingLevel_WorkingLevelIndex FOREIGN KEY(WorkingLevelIndex)
REFERENCES dbo.HR_WorkingLevel (Index)
GO
ALTER TABLE dbo.HR_WorkingInfo CHECK CONSTRAINT FK_HR_WorkingInfo_HR_WorkingLevel_WorkingLevelIndex
GO
ALTER TABLE dbo.HR_WorkingInfo_TypeOfLabor  WITH CHECK ADD  CONSTRAINT FK_HR_WorkingInfo_TypeOfLabor_HR_WorkingInfo_WorkingInfoIndex FOREIGN KEY(WorkingInfoIndex)
REFERENCES dbo.HR_WorkingInfo (Index)
GO
ALTER TABLE dbo.HR_WorkingInfo_TypeOfLabor CHECK CONSTRAINT FK_HR_WorkingInfo_TypeOfLabor_HR_WorkingInfo_WorkingInfoIndex
GO