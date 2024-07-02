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