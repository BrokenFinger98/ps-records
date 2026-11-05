---
lessonId: 59412
title: "입양 시각 구하기(1)"
language: "mysql"
kind: database
level: 2
part: "GROUP BY"
acceptanceRate: 89
tags: ["implementation"]
verdict: PASS
attempts: 1
runCount: 2
elapsedSec: 115
focusedSec: 90
firstSeen: 2026-11-05
lastSubmit: 2026-11-05
---

# 입양 시각 구하기(1)

#programmers #Lv2 #implementation

Tags: [implementation](../../tags/implementation.md)

## Attempt history

| # | Time | Verdict | Testcases | Since opened | Focused | Diff |
|---|---|---|---|---|---|---|
| 1 | 16:13 | PASS | 1/1 | 1m55s | 1m30s | no |

## Problem

`ANIMAL_OUTS` 테이블은 동물 보호소에서 입양 보낸 동물의 정보를 담은 테이블입니다. `ANIMAL_OUTS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `NAME`, `SEX_UPON_OUTCOME`는 각각 동물의 아이디, 생물 종, 입양일, 이름, 성별 및 중성화 여부를 나타냅니다.

| NAME | TYPE | NULLABLE |
| --- | --- | --- |
| ANIMAL_ID | VARCHAR(N) | FALSE |
| ANIMAL_TYPE | VARCHAR(N) | FALSE |
| DATETIME | DATETIME | FALSE |
| NAME | VARCHAR(N) | TRUE |
| SEX_UPON_OUTCOME | VARCHAR(N) | FALSE |

보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 09:00부터 19:59까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.

##### 예시

SQL문을 실행하면 다음과 같이 나와야 합니다.

| HOUR | COUNT |
| --- | --- |
| 9 | 1 |
| 10 | 2 |
| 11 | 13 |
| 12 | 10 |
| 13 | 14 |
| 14 | 9 |
| 15 | 7 |
| 16 | 10 |
| 17 | 12 |
| 18 | 16 |
| 19 | 2 |

---

본 문제는 [Kaggle의 "Austin Animal Center Shelter Intakes and Outcomes"](https://www.kaggle.com/aaronschlegel/austin-animal-center-shelter-intakes-and-outcomes)에서 제공하는 데이터를 사용하였으며 [ODbL](https://opendatacommons.org/licenses/odbl/1.0/)의 적용을 받습니다.
