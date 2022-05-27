// Copyright (c) 2022 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/test;

@test:Config {}
isolated function testPackDouble() returns Error? {

    string typeUrl = "type.googleapis.com/google.protobuf.DoubleValue";
    float value = 10.5f;
    string content = check getSerializedString(value, typeUrl);
    string expected = "090000000000002540";
    test:assertEquals(content, expected);
}

@test:Config {}
isolated function testPackInt32() returns Error? {

    string typeUrl = "type.googleapis.com/google.protobuf.Int32Value";
    int value = 11;
    string content = check getSerializedString(value, typeUrl);
    string expected = "080B";
    test:assertEquals(content, expected);
}

@test:Config {}
isolated function testPackUInt32() returns Error? {

    string typeUrl = "type.googleapis.com/google.protobuf.UInt32Value";
    int value = 11;
    string content = check getSerializedString(value, typeUrl);
    string expected = "080B";
    test:assertEquals(content, expected);
}

@test:Config {}
isolated function testPackUInt64() returns Error? {

    string typeUrl = "type.googleapis.com/google.protobuf.UInt64Value";
    int value = 10;
    string content = check getSerializedString(value, typeUrl);
    string expected = "080A";
    test:assertEquals(content, expected);
}
