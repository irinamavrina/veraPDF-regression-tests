<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">


    <!-- File: PDFUA-Ref-2-03_AcademicAbstract.pdf -->


    <sch:pattern>name = "Checking the validationReport: document is not compliant"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the validationReport: rules"
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '3')">Failed check, Expected: 3</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '4.1.2' and @testNumber = '21' and @failedChecks = '1') or 
            (@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '38') or 
            (@clause = '2.4.9' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            4.1.2-21, 1 check, or 
            1.3.1-4, 38 checks, or 
            2.4.9-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
