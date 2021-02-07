*** Settings ***
Library    SeleniumLibrary    
Library    DatabaseLibrary    
Library    OperatingSystem 
Resource    ../Testdata/Common_data.robot   

*** Variables ***
${DBName}    DB_9B4693_MCQ    
${DBUser}    DB_9B4693_MCQ_admin
${DBPass}    P@ssw0rd
${DBHost}    sql5045.site4now.net
${DBPort}    1433        

*** Test Cases ***
Connect to the database
    Connect To Database   pymssql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
    
Delete the record from InvoiceSupplierAttendance 
    
    ${TblInvoiceSupplierAttendance}    Query    select top 1 invoiceid from TblInvoiceSupplierAttendance order by CreatedDate desc
    Sleep     ${minWait}
    ${TblInvoiceSupplierAttendance_DBValue}=    Set Variable    ${TblInvoiceSupplierAttendance[0][0]}
    Log To Console    ${TblInvoiceSupplierAttendance_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from TblInvoiceSupplierAttendance where invoiceid = ${TblInvoiceSupplierAttendance_DBValue}
    
Delete the record from Invoiceattendancedetail
    
    ${tblinvoiceattendancedetail}    Query    select top 1 invoiceid from tblinvoiceattendancedetail order by CreatedDate desc
    Sleep     ${minWait}
    ${tblinvoiceattendancedetail_DBValue}=    Set Variable    ${tblinvoiceattendancedetail[0][0]}
    Log To Console    ${tblinvoiceattendancedetail_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from tblinvoiceattendancedetail where invoiceid = ${tblinvoiceattendancedetail_DBValue}
    
Delete the record from TblinvoiceMaster    
    
    ${TblinvoiceMaster}    Query    select top 1 invoiceid from TblinvoiceMaster order by CreatedDate desc
    Sleep     ${minWait}
    ${TblinvoiceMaster_DBValue}=    Set Variable    ${TblinvoiceMaster[0][0]}
    Log To Console    ${TblinvoiceMaster_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from TblinvoiceMaster where invoiceid = ${TblinvoiceMaster_DBValue}
    
Delete the record from TblQuotationHeader

    ${TblQuotationHeader}    Query    select top 1 quotationheaderid from TblQuotationHeader order by CreatedDate desc
    Sleep    ${minWait}
    ${Tblquotationheaderid_dbvalue}=    Set Variable    ${TblQuotationHeader[0][0]}      
    log to console    ${Tblquotationheaderid_dbvalue}
    Sleep    ${minWait}
    Execute Sql String   delete from TblQuotationHeader where quotationheaderid = ${Tblquotationheaderid_dbvalue}
    
Delete the record from TblQuotationDetail
    
    ${TblQuotationDetail}    Query    select top 1 quotationdetailid from TblQuotationDetail order by CreatedDate desc
    Sleep     ${minWait}
    ${TblQuotationDetail_DBValue}=    Set Variable    ${TblQuotationDetail[0][0]}
    Log To Console    ${TblQuotationDetail_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from TblQuotationDetail where quotationdetailid = ${TblQuotationDetail_DBValue}
    
Delete the record from Tblquotationjobdetails 
         
    ${quotationJobheaderid}    Query    select top 1 quotationheaderid from Tblquotationjobdetails order by QuotationHeaderID desc
    Sleep    ${minWait}
    ${Tblquotationjobdetails_dbvalue}=    Set Variable    ${quotationJobheaderid[0][0]}      
    log to console    ${Tblquotationjobdetails_dbvalue}
    Sleep    ${minWait}
    Execute Sql String   delete from Tblquotationjobdetails where quotationheaderid = ${Tblquotationjobdetails_dbvalue}
    
Delete the record from quotationtermsdetails 
    
    ${quotationTermheaderid}    Query    select top 1 quotationheaderid from Tblquotationtermsdetails order by QuotationHeaderID desc
    Sleep    ${minWait}
    ${TblquotationTermdetails_dbvalue}=    Set Variable    ${quotationTermheaderid[0][0]}      
    log to console    ${TblquotationTermdetails_dbvalue}
    Sleep    ${minWait}
    Execute Sql String   delete from Tblquotationtermsdetails where quotationheaderid = ${TblquotationTermdetails_dbvalue}
    
Delete the record from Tblquotationtemplate
    
    ${Tblquotationtemplate}    Query    select top 1 templateid from Tblquotationtemplate order by CreatedDate desc
    Sleep     ${minWait}
    ${Tblquotationtemplate_DBValue}=    Set Variable    ${Tblquotationtemplate[0][0]}
    Log To Console    ${Tblquotationtemplate_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from Tblquotationtemplate where templateid = ${Tblquotationtemplate_DBValue}
    
Delete the record from TblBusinessHoursMaster 
    
    ${TblBusinessHoursMaster}    Query    select top 1 BusinessCompanyID from TblBusinessHoursMaster order by CreatedDate desc
    Sleep     ${minWait}
    ${TblBusinessHoursMaster_DBValue}=    Set Variable    ${TblBusinessHoursMaster[0][0]}
    Log To Console    ${TblBusinessHoursMaster_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from TblBusinessHoursMaster where BusinessCompanyID = ${TblBusinessHoursMaster_DBValue}
    
Delete the record from Tblcompanysite
    
    ${Tblcompanysite}    Query    select top 1 companyid from Tblcompanysite order by CreatedDate desc
    Sleep     ${minWait}
    ${Tblcompanysite_DBValue}=    Set Variable    ${Tblcompanysite[0][0]}
    Log To Console    ${Tblcompanysite_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from Tblcompanysite where companyid = ${Tblcompanysite_DBValue}
    
Delete the record from tblcompanyproject
    
    ${tblcompanyproject}    Query    select top 1 companyid from tblcompanyproject order by CreatedDate desc
    Sleep     ${minWait}
    ${tblcompanyproject_DBValue}=    Set Variable    ${tblcompanyproject[0][0]}
    Log To Console    ${tblcompanyproject_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from tblcompanyproject where companyid = ${tblcompanyproject_DBValue}
    
Delete the record from TblCompanyMaster
    
    ${TblCompanyMaster}    Query    select top 1 companyid from TblCompanyMaster order by CreatedDate desc
    Sleep     ${minWait}
    ${TblCompanyMaster_DBValue}=    Set Variable    ${TblCompanyMaster[0][0]}
    Log To Console    ${TblCompanyMaster_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from TblCompanyMaster where companyid = ${TblCompanyMaster_DBValue}
    
Delete the record from tblEmployeesalary
    
    ${tblEmployeesalary}    Query    Select top 1 EmployeeID from tblEmployeesalary order by Employeeid desc
    Sleep     ${minWait}
    ${tblEmployeesalary_DBValue}=    Set Variable    ${tblEmployeesalary[0][0]}
    Log To Console    ${tblEmployeesalary_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from tblEmployeesalary where EmployeeID = ${tblEmployeesalary_DBValue}
    
Delete the record from TblPassportDetail
    
    ${TblPassportDetail}    Query    select top 1 EmployeeID from TblPassportDetail order by CreatedDate desc
    Sleep     ${minWait}
    ${TblPassportDetail_DBValue}=    Set Variable    ${TblPassportDetail[0][0]}
    Log To Console    ${TblPassportDetail_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from TblPassportDetail where EmployeeID = ${TblPassportDetail_DBValue}
    
Delete the record from tblworkpassdetails
    
    ${tblworkpassdetails}    Query    select top 1 EmployeeID from tblworkpassdetails order by CreatedDate desc
    Sleep    ${minWait}
    ${tblworkpassdetails_DBValue}=    Set Variable    ${tblworkpassdetails[0][0]}
    Log To Console    ${tblworkpassdetails_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from tblworkpassdetails where EmployeeID = ${tblworkpassdetails_DBValue}
    
Delete the record from tblcoursedetail
    
    ${tblcoursedetail}    Query    select top 1 EmployeeID from tblcoursedetail order by CreatedDate desc
    Sleep     ${minWait}
    ${tblcoursedetail_DBValue}=    Set Variable    ${tblcoursedetail[0][0]}
    Log To Console    ${tblcoursedetail_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from tblcoursedetail where EmployeeID = ${tblcoursedetail_DBValue}
    
Delete the record from tblemployeemaster
    
    ${tblemployeemaster}    Query    select top 1 employeeid from tblemployeemaster order by CreatedDate desc
    Sleep     ${minWait}
    ${tblemployeemaster_DBValue}=    Set Variable    ${tblemployeemaster[0][0]}
    Log To Console    ${tblemployeemaster_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from tblemployeemaster where EmployeeID = ${tblemployeemaster_DBValue}
    
Delete the record from TblExpensesDetails
    
    ${TblExpensesDetails}    Query    select top 1 ExpensesID from TblExpensesDetails order by CreatedDate desc
    Sleep    ${minWait}
    ${TblExpensesDetails_DBValue}=    Set Variable    ${TblExpensesDetails[0][0]}
    Log To Console    ${TblExpensesDetails_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from TblExpensesDetails where ExpensesID = ${TblExpensesDetails_DBValue}
    
Delete the record from TblUserMaster
    
    ${TblUserMaster}    Query    select top 1 userid from tblusermaster order by createddate desc
    Sleep     ${minWait}
    ${TblUserMaster_DBValue}=    Set Variable    ${TblUserMaster[0][0]}
    Log To Console    ${TblUserMaster_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from TblUserMaster where userid = ${TblUserMaster_DBValue} 
    
Delete the record from TblRoleMaster
    
    ${TblRoleMaster}    Query    select top 1 roleid from tblrolemaster order by createddate desc
    Sleep     ${minWait}
    ${TblRoleMaster_SetValue}=    Set Variable    ${TblRoleMaster[0][0]}
    ${TblRoleMaster_DBValue}=    Set Variable    '${TblRoleMaster_SetValue}'    
    Log To Console    ${TblRoleMaster_DBValue}     
    Sleep    ${minWait}  
    Execute Sql String    delete from TblRoleMaster where RoleID = ${TblRoleMaster_DBValue}
    
Disconnect the database
    Disconnect From Database 