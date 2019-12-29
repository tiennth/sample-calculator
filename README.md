# unit-test-ios-jenkins
This is a demo for unit testing an iOS application, generate JUnit compatible report to integrate with Jenkins.

The script to execute unit test is placed under Deployment folder.

#Device:
To get list of device IDs, run the below command:
```
instruments -s devices
```

Sample output:
```
Apple TV (13.3) [9B33E2AC-74E9-4F10-A804-50B5978C1A0A] (Simulator)
Apple TV 4K (13.3) [1CEEDE1D-DD59-4867-8F6E-FECEEDEF566D] (Simulator)
Apple TV 4K (at 1080p) (13.3) [B7836CB9-3476-4A03-A863-A4C39F0A7B39] (Simulator)
Apple Watch Series 4 - 40mm (6.1.1) [AF478220-16E1-4636-8414-04E7C781A00C] (Simulator)
Apple Watch Series 4 - 44mm (6.1.1) [A08F8867-93B7-4A95-8358-003749ECC9D2] (Simulator)
iPad (7th generation) (13.3) [AD90F81E-B6B7-4B33-98B8-82C7DA3463AF] (Simulator)
iPad Air (3rd generation) (13.3) [CD4AEE73-688C-47CC-88B8-9FC696CC276F] (Simulator)
iPad Pro (11-inch) (13.3) [F007F74A-A553-444A-A4D1-7158FC2F55B6] (Simulator)
iPad Pro (12.9-inch) (3rd generation) (13.3) [D73E977E-BC94-4B46-A7DF-51ECEFBC0598] (Simulator)
iPad Pro (9.7-inch) (13.3) [D3D72517-BF52-4FA1-B212-BAF262E05C65] (Simulator)
iPhone 11 (13.3) [121C56F9-4A93-473D-88CF-5FD68FCF7D15] (Simulator)
iPhone 11 Pro (13.3) [A8F2C8C8-1EFE-4446-9067-F247E14EF88A] (Simulator)
iPhone 11 Pro (13.3) + Apple Watch Series 5 - 40mm (6.1.1) [AC6B1972-BDCE-4A81-87FC-03D73725368F] (Simulator)
iPhone 11 Pro Max (13.3) [DECE0F19-8049-4C11-84F1-1AE3057203E7] (Simulator)
iPhone 11 Pro Max (13.3) + Apple Watch Series 5 - 44mm (6.1.1) [1A8181CF-3F0F-4220-937C-2A81CD2A708A] (Simulator)
iPhone 8 (13.3) [33BD633A-E8B1-401A-89B4-A8161FB265A1] (Simulator)
iPhone 8 Plus (13.3) [A8EEC64A-29EA-4B9A-B001-9AAF5D7BEACE] (Simulator)
```