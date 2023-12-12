      *****************************************************************
      * Program name:    SALARY-TOTAL                               
      * Original author: RENÉE                                
      *
      * Maintenence Log                                              
      * Date      Author        Maintenance Requirement               
      * --------- ------------  --------------------------------------- 
      * 09/12/23 RENÉE  Created for COBOL class         
      *                                                               
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  SALARY-TOTAL.
       AUTHOR. RENÉE. 
       INSTALLATION. COBOL DEVELOPMENT CENTER. 
       DATE-WRITTEN. 09/12/23. 
       DATE-COMPILED. 00/00/00. 
       SECURITY. NON-CONFIDENTIAL.
      * This program accumulates salary details
      * Modelled on Melinda Fisher's Computer Programming in Cobol
      *****************************************************************
       ENVIRONMENT DIVISION. 
       CONFIGURATION SECTION. 
       SOURCE-COMPUTER. ICL-2972.
       OBJECT-COMPUTER. ICL-2972.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL. 
           SELECT SALARY-FILE ASSIGN TO MS DA01
                 ORGANIZATION IS SEQUENTIAL
                 ACCESS MODE IS SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION. 
       FD  SALARY-FILE
           RECORDING MODE IS F
           RECORD IS VARYING FROM 7 TO 7 CHARACTERS.
       01 SALARY-RECORD.
           03 RECORD-TYPE PIC X.
           03 SALARY PIC 9(6).

       PROCEDURE DIVISION.
       READ-RECORD.
           READ SALARY-FILE
               AT END
                   DISPLAY 'End of file'
               NOT AT END
                   DISPLAY 'Record read successfully'
           END-READ.
           STOP RUN.