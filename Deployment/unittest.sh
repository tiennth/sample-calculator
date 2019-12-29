#!/bin/bash 

echo "Hello World"

ROOT_FOLDER="$(pwd)/.."
echo "Root folder: ${ROOT_FOLDER}" 

JUNIT_REPORT_FOLDER="${ROOT_FOLDER}/Output"

PROJECT_FOLDER="${ROOT_FOLDER}/SampleCalculator"

XCPROJ_PATH="${PROJECT_FOLDER}/SampleCalculator.xcodeproj"

UT_SCHEME="SampleCalculatorTests"

DESTINATION_SIM="id=121C56F9-4A93-473D-88CF-5FD68FCF7D15"

function testAllSuites {
    echo "Test all suites"

    xcodebuild test \
    -project "${XCPROJ_PATH}" \
    -scheme "${UT_SCHEME}" \
    -destination "${DESTINATION_SIM}" \
     | xcpretty -r junit --output "${JUNIT_REPORT_FOLDER}/all_suites_report.xml"
}

function testParticularSuites {
    echo "Test particular test suites"

    xcodebuild test \
    -project "${XCPROJ_PATH}" \
    -scheme "${UT_SCHEME}" \
    -only-testing:"${UT_SCHEME}/SampleCalculatorTests" \
    -destination "${DESTINATION_SIM}" \
     | xcpretty -r junit --output "${JUNIT_REPORT_FOLDER}/particular_suites_report.xml"
}


function testParticularCases {
    echo "Test particular test cases"

    xcodebuild test \
    -project "${XCPROJ_PATH}" \
    -scheme "${UT_SCHEME}" \
    -destination "${DESTINATION_SIM}" \
    -only-testing:"${UT_SCHEME}/SampleCalculatorTests/testID01" \
    -only-testing:"${UT_SCHEME}/OtherTests/testID01" \
     | xcpretty -r junit --output "${JUNIT_REPORT_FOLDER}/particular_cases_report.xml"
}

function testExceptCases {
    echo "Test other cases except some cases"

    xcodebuild test \
    -project "${XCPROJ_PATH}" \
    -scheme "${UT_SCHEME}" \
    -destination "${DESTINATION_SIM}" \
    -skip-testing:"${UT_SCHEME}/SampleCalculatorTests/testID01" \
    -skip-testing:"${UT_SCHEME}/OtherTests/testID01" \
     | xcpretty -r junit --output "${JUNIT_REPORT_FOLDER}/except_cases_report.xml"
}

testAllSuites
testParticularSuites
testParticularCases
testExceptCases