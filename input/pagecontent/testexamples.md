> Include this page if relevant. E.g:

The examples presented below are intended to be used in the test protocol for receiving HospitalNotification. Testprotocols can be found on the [GitHub pages for HospitalNotificaton](https://medcomdk.github.io/dk-medcom-hospitalnotification/#2-test-and-certification). All test examples are created by MedCom. 

#### Test patient/citizens
All examples include, except TEK_LOV are based on the test patient:
* Name: Elmer
* CPR-nr.: 250947-9989
For the example TEK_LOV, the follwoing patient is used:
* Name: Kaje Test Hansen
* CPR-nr.: 210300-9996 

#### Test examples for receiving HospitalNotification

|  Test example     |     Description     |
|---|---|
| [STIN_A](./Bundle-a5e5b880-c087-4055-b9ec-99108695f81d.html) | Notification with   information that a citizen has been admitted to hospital (including request   for XDIS16)    |
| [STIN_B1](./Bundle-3c4c04ea-a622-4c6e-8e62-307a62d4c851.html)<br> [STIN_B2](./Bundle-64e7f154-668d-4d2a-bf76-2cec049b3252.html)    | Notification   with information that a citizen has been admitted to hospital X, region X   (including request for XDIS16) <br> Notification with   information that the same citizen has now been admitted to hospital Y, region   Y (does not include a request for XDIS16)    |
| [STIN_C1](./Bundle-f628d121-52f5-401b-a195-3492b3fec614.html)<br> [STIN_C2](./Bundle-8111a01d-eed2-4244-b079-00afe30d99bd.html)    | Notification with information that a citizen has been admitted to hospital X, region X   (including request for XDIS16) <br> Notification with   information that the same citizen has now been admitted to hospital Y, region   X (does not include a request for XDIS16)    |
| [STAA_D](./Bundle-2cadabe8-9349-4b2e-9b5e-4441c9aeef4b.html)    | Notification with information that a citizen is admitted as an acute outpatient   at the hospital (Including request for XDIS16)     |
| [STAA_E](./Bundle-d434d732-951c-4dd3-aeb8-2e18f1c81942.html)<br> [STIN_E](./Bundle-ff90d6fc-fa84-4c0f-969d-84510b0ef7e3.html)    | Notification   with information that a citizen is admitted to hospital as an acute ambulant   patient (including request for XDIS16) <br> Notification with   information that the same citizen has now been admitted to hospital (does not   include a request for XDIS16)    |
| [STIN_F](./Bundle-ce5cf7e2-3a37-4b95-9d2c-268c8ec3c576.html)<br> [STOR_F](./Bundle-91a204af-471b-4ce2-b19f-c458e3716070.html)    | Notification with   information that a citizen has been admitted to hospital (including request   for XDIS16) <br> Notification   with information that the same citizen is taking leave from the hospital stay   (does not include a request for XDIS16)    |
