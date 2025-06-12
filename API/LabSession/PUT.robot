*** Settings ***
Library     RequestsLibrary

*** Variables ***
${base_url}     https://reqres.in/
${Servicename}     api/users/2
${sample_json}       {"category": "Platform","name": "Mario","rating": "Mature","releaseDate": "2012-05-04","reviewScore": 85}
&{body}
&{headers}
&{response}



*** Test Cases ***
POST request example
        RequestsLibrary.Create Session      baseURI     ${base_url}     verify=True
        &{body}=        Create Dictionary   category=Platform   name=Mario  rating=Mature   releaseDate=2012-05-04  reviewScore=85
        &{headers}=     Create Dictionary       content-type=application/json
        &{headers}=     Create Dictionary       x-api-key=reqres-free-v1
        ${response}=        PUT On Session      baseURI     ${Servicename}        json=${body}        headers=${headers}
        Log    ${response}
        Log    ${response.status_code}
        #Should Be Equal As Numbers    ${response.status_code}    201