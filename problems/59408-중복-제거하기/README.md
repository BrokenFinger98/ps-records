---
lessonId: 59408
title: "중복 제거하기"
language: "mysql"
kind: database
level: 2
part: "SUM, MAX, MIN"
acceptanceRate: 91
tags: ["implementation"]
verdict: PASS
attempts: 1
runCount: 1
elapsedSec: 44
focusedSec: 12
firstSeen: 2026-10-22
lastSubmit: 2026-10-22
---

# 중복 제거하기

#programmers #Lv2 #implementation

Tags: [implementation](../../tags/implementation.md)

## Attempt history

| # | Time | Verdict | Testcases | Since opened | Focused | Diff |
|---|---|---|---|---|---|---|
| 1 | 09:18 | PASS | 1/1 | 0m44s | 0m12s | no |

## Problem

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

| NAME | TYPE | NULLABLE |
| --- | --- | --- |
| ANIMAL_ID | VARCHAR(N) | FALSE |
| ANIMAL_TYPE | VARCHAR(N) | FALSE |
| DATETIME | DATETIME | FALSE |
| INTAKE_CONDITION | VARCHAR(N) | FALSE |
| NAME | VARCHAR(N) | TRUE |
| SEX_UPON_INTAKE | VARCHAR(N) | FALSE |

동물 보호소에 들어온 동물의 이름은 몇 개인지 조회하는 SQL 문을 작성해주세요. 이때 이름이 NULL인 경우는 집계하지 않으며 중복되는 이름은 하나로 칩니다.

##### 예시

예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면

| ANIMAL_ID | ANIMAL_TYPE | DATETIME | INTAKE_CONDITION | NAME | SEX_UPON_INTAKE |
| --- | --- | --- | --- | --- | --- |
| A562649 | Dog | 2014-03-20 18:06:00 | Sick | NULL | Spayed Female |
| A412626 | Dog | 2016-03-13 11:17:00 | Normal | *Sam | Neutered Male |
| A563492 | Dog | 2014-10-24 14:45:00 | Normal | *Sam | Neutered Male |
| A513956 | Dog | 2017-06-14 11:54:00 | Normal | *Sweetie | Spayed Female |

보호소에 들어온 동물의 이름은 NULL(없음), `*Sam`, `*Sam`, `*Sweetie`입니다. 이 중 NULL과 중복되는 이름을 고려하면, 보호소에 들어온 동물 이름의 수는 2입니다. 따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.

| count |
| --- |
| 2 |

※ 컬럼 이름(위 예제에서는 count)은 일치하지 않아도 됩니다.

---

본 문제는 [Kaggle의 "Austin Animal Center Shelter Intakes and Outcomes"](https://www.kaggle.com/aaronschlegel/austin-animal-center-shelter-intakes-and-outcomes)에서 제공하는 데이터를 사용하였으며 [ODbL](https://opendatacommons.org/licenses/odbl/1.0/)의 적용을 받습니다.
