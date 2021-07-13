-- Keep a log of any SQL queries you execute as you solve the mystery.

.tables
SELECT * FROM crime_scene_reports;
SELECT * FROM crime_scene_reports WHERE street = 'Chamberlin Street';
SELECT * FROM interviews WHERE day = 28 AND month = 7; 
SELECT * FROM courthouse_security_logs WHERE day = 28 AND month = 7;

254 | 2020 | 7 | 28 | 9 | 14 | entrance | 4328GD8
255 | 2020 | 7 | 28 | 9 | 15 | entrance | 5P2BI95
256 | 2020 | 7 | 28 | 9 | 20 | entrance | 6P58WS2
257 | 2020 | 7 | 28 | 9 | 28 | entrance | G412CB7
258 | 2020 | 7 | 28 | 10 | 8 | entrance | R3G7486
259 | 2020 | 7 | 28 | 10 | 14 | entrance | 13FNH73
260 | 2020 | 7 | 28 | 10 | 16 | exit | 5P2BI95
261 | 2020 | 7 | 28 | 10 | 18 | exit | 94KL13X
262 | 2020 | 7 | 28 | 10 | 18 | exit | 6P58WS2
263 | 2020 | 7 | 28 | 10 | 19 | exit | 4328GD8
264 | 2020 | 7 | 28 | 10 | 20 | exit | G412CB7
265 | 2020 | 7 | 28 | 10 | 21 | exit | L93JTIZ
266 | 2020 | 7 | 28 | 10 | 23 | exit | 322W7JE
267 | 2020 | 7 | 28 | 10 | 23 | exit | 0NTHK55
268 | 2020 | 7 | 28 | 10 | 35 | exit | 1106N58

SELECT * FROM people WHERE name = 'Eugene'; 47592FJ
SELECT * FROM courthouse_security_logs  WHERE license_plate = '47592FJ';
SELECT * FROM atm_transactions WHERE atm_location = 'Fifer Street' AND day = 28 AND month = 7;
246 | 28500762 | 2020 | 7 | 28 | Fifer Street | withdraw | 48
264 | 28296815 | 2020 | 7 | 28 | Fifer Street | withdraw | 20
266 | 76054385 | 2020 | 7 | 28 | Fifer Street | withdraw | 60
267 | 49610011 | 2020 | 7 | 28 | Fifer Street | withdraw | 50
269 | 16153065 | 2020 | 7 | 28 | Fifer Street | withdraw | 80
275 | 86363979 | 2020 | 7 | 28 | Fifer Street | deposit | 10
288 | 25506511 | 2020 | 7 | 28 | Fifer Street | withdraw | 20
313 | 81061156 | 2020 | 7 | 28 | Fifer Street | withdraw | 30
336 | 26013199 | 2020 | 7 | 28 | Fifer Street | withdraw | 35
SELECT * FROM bank_accounts JOIN people ON people.id = bank_accounts.person_id
WHERE account_number = 28500762;
28500762 | 467400 | 2014 | 467400 | Danielle | (389) 555-5198 | 8496433585 | 4328GD8
SELECT * FROM bank_accounts JOIN people ON people.id = bank_accounts.person_id
WHERE account_number = 28296815;
28296815 | 395717 | 2014 | 395717 | Bobby | (826) 555-1652 | 9878712108 | 30G67EN
SELECT * FROM bank_accounts JOIN people ON people.id = bank_accounts.person_id
WHERE account_number = 76054385;
76054385 | 449774 | 2015 | 449774 | Madison | (286) 555-6063 | 1988161715 | 1106N58
SELECT * FROM bank_accounts JOIN people ON people.id = bank_accounts.person_id
WHERE account_number = 49610011;
49610011 | 686048 | 2010 | 686048 | Ernest | (367) 555-5533 | 5773159633 | 94KL13X
SELECT * FROM bank_accounts JOIN people ON people.id = bank_accounts.person_id
WHERE account_number = 16153065;
16153065 | 458378 | 2012 | 458378 | Roy | (122) 555-4581 | 4408372428 | QX4YZN3
SELECT * FROM bank_accounts JOIN people ON people.id = bank_accounts.person_id
WHERE account_number = 86363979 ;
86363979 | 948985 | 2010 | 948985 | Robert | (098) 555-1164 | 8304650265 | I449449
SELECT * FROM bank_accounts JOIN people ON people.id = bank_accounts.person_id
WHERE account_number = 25506511;
25506511 | 396669 | 2014 | 396669 | Elizabeth | (829) 555-5269 | 7049073643 | L93JTIZ
SELECT * FROM bank_accounts JOIN people ON people.id = bank_accounts.person_id
WHERE account_number = 81061156 ;
81061156 | 438727 | 2018 | 438727 | Victoria | (338) 555-6650 | 9586786673 | 8X428L0
SELECT * FROM bank_accounts JOIN people ON people.id = bank_accounts.person_id
WHERE account_number = 26013199;
26013199 | 514354 | 2012 | 514354 | Russell | (770) 555-1861 | 3592750733 | 322W7JE


SELECT * FROM phone_calls WHERE day = 28 AND month = 7 AND year = 2020 aND duration <= 60;

221 | (130) 555-0289 | (996) 555-8899 | 2020 | 7 | 28 | 51
224 | (499) 555-9472 | (892) 555-8872 | 2020 | 7 | 28 | 36
233 | (367) 555-5533 | (375) 555-8161 | 2020 | 7 | 28 | 45
234 | (609) 555-5876 | (389) 555-5198 | 2020 | 7 | 28 | 60
251 | (499) 555-9472 | (717) 555-1342 | 2020 | 7 | 28 | 50
254 | (286) 555-6063 | (676) 555-6554 | 2020 | 7 | 28 | 43
255 | (770) 555-1861 | (725) 555-3243 | 2020 | 7 | 28 | 49
261 | (031) 555-6622 | (910) 555-3251 | 2020 | 7 | 28 | 38
279 | (826) 555-1652 | (066) 555-9701 | 2020 | 7 | 28 | 55
281 | (338) 555-6650 | (704) 555-2131 | 2020 | 7 | 28 | 54

Ernest, Madison, Russel - 3 sus

SELECT * FROM people WHERE phone_number = '(375) 555-8161';
864400 | Berthold | (375) 555-8161 |  | 4V16VO0
SELECT * FROM people WHERE phone_number = '(676) 555-6554';
250277 | James | (676) 555-6554 | 2438825627 | Q13SVG6
SELECT * FROM people WHERE phone_number = '(725) 555-3243';
847116 | Philip | (725) 555-3243 | 3391710505 | GW362R6

SELECT * FROM airports WHERE city = 'Fiftyville';
8 | CSF | Fiftyville Regional Airport | Fiftyville

SELECT * FROM flights JOIN airports ON airports.id = flights.origin_airport_id
WHERE year = 2020 AND day = 29 AND month = 7 AND origin_airport_id = 8;
SELECT * FROM flights WHERE origin_airport_id = 8;
23 | 8 | 11 | 2020 | 7 | 29 | 12 | 15 | 8 | CSF | Fiftyville Regional Airport | Fiftyville
36 | 8 | 4 | 2020 | 7 | 29 | 8 | 20 | 8 | CSF | Fiftyville Regional Airport | Fiftyville
43 | 8 | 1 | 2020 | 7 | 29 | 9 | 30 | 8 | CSF | Fiftyville Regional Airport | Fiftyville

Ernest - 5773159633 
Madison - 1988161715
Russel - 3592750733

SELECT * FROM passengers JOIN flights ON flights.id = passengers.flight_id WHERE
passport_number = 5773159633; - 36
SELECT * FROM passengers JOIN flights ON flights.id = passengers.flight_id WHERE
passport_number = 1988161715;
SELECT * FROM passengers JOIN flights ON flights.id = passengers.flight_id WHERE
passport_number = 3592750733;

Madison or Ernest

SELECT * FROM passengers JOIN flights ON flights.id = passengers.flight_id WHERE
passport_number = 2438825627;

SELECT * FROM passengers JOIN flights ON flights.id = passengers.flight_id WHERE
passport_number = NULL;

It is Ernest and Berthold.

SELECT * FROM airports WHERE airports.id = 4;
4 | LHR | Heathrow Airport | London