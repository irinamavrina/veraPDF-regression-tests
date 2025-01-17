<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">


    <!-- File: PDFUA-Ref-2-09_Scanned.pdf -->


    <sch:pattern>name = "Checking the validationReport: document is not compliant"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the validationReport: rules"
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '7')">Failed check, Expected: 7</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '4.1.2' and @testNumber = '9' and @failedChecks = '15') or 
            (@clause = '4.1.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '4.1.2' and @testNumber = '21' and @failedChecks = '26') or 
            (@clause = '4.1.2' and @testNumber = '22' and @failedChecks = '2') or 
            (@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '27') or 
            (@clause = '1.4.3' and @testNumber = '1' and @failedChecks = '80') or 
            (@clause = '4.1.2' and @testNumber = '20' and @failedChecks = '3')">Failed rules, Expected: 
            4.1.2-9, 15 checks, or 
            4.1.2-1, 1 check, or 
            4.1.2-21, 26 checks, or 
            4.1.2-22, 2 checks, or 
            1.3.1-4, 27 checks, or 
            1.4.3-1, 80 checks, or 
            4.1.2-20, 3 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
