view: member {
  # # You can specify the table name if it's different from the view name:
   sql_table_name: gurufit_to_looker.es_member ;;
  #
  label: "Member"
  # # dimension 정의
  dimension: memNo {
    hidden: yes
    primary_key: yes
    label: "회원번호"
    type: number
    sql: ${TABLE}.memNo ;;
  }

  dimension: address {
    hidden: yes
    label: "주소"
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: addressSub {
    hidden: yes
    label: "상세주소"
    type: string
    sql: ${TABLE}.addressSub ;;
  }

  dimension: zipcode {
    hidden: yes
    label: "우편번호"
    type: string
    sql: ${TABLE}.zipcode ;;
  }

  dimension: zonecode {
    hidden: yes
    label: "우편번호(5자리)"
    type: string
    sql: ${TABLE}.zonecode ;;
  }

  dimension: birthDt {
    hidden: yes
    label: "생년월일"
    type: date
    sql: ${TABLE}.birthDt ;;
  }

  dimension_group: entryDt {
    label: "가입일"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.entryDt ;;
  }

  dimension: lastLoginDt {
    hidden: yes
    label: "최종로그인"
    type: date
    sql: ${TABLE}.lastLoginDt ;;
  }

  dimension_group: lastSaleDt {
    label: "최종구매일"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.lastSaleDt ;;
  }

  dimension: regDt {
    hidden: yes
    label: "등록일"
    type: date
    sql: ${TABLE}.regDt ;;
  }

  dimension: memPw {
    hidden: yes
    label: "비밀번호"
    type: string
    sql: ${TABLE}.memPw ;;
  }

  dimension: nickNm {
    hidden: yes
    label: "닉네임"
    type: string
    sql: ${TABLE}.nickNm ;;
  }

  dimension: memId {
    label: "아이디"
    type: string
    sql: ${TABLE}.memId ;;
  }

  dimension: memNm {
    label: "이름"
    type: string
    sql: ${TABLE}.memNm ;;
  }

  dimension: cellPhone {
    hidden: yes
    label: "핸드폰"
    type: string
    sql: ${TABLE}.cellPhone ;;
  }

  dimension: email {
    hidden: yes
    label: "이메일"
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: phone {
    hidden: yes
    label: "전화번호"
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: sexFl {
    label: "성별"
    type: string
    sql: CASE WHEN ${TABLE}.sexFl = 'w' THEN '여' ELSE '남' END ;;
  }

  dimension: entryPath {
    label: "가입경로"
    type: string
    sql: ${TABLE}.entryPath ;;
  }

  dimension: groupSno {
    hidden: yes
    label: "회원등급"
    type: string
    sql: ${TABLE}.groupSno ;;
  }

  dimension: rncheck {
    hidden: yes
    label: "본인확인방법"
    type: string
    sql: ${TABLE}.rncheck ;;
  }

  dimension: recommFl {
    hidden: yes
    label: "추천인등록여부"
    type: yesno
    sql: ${TABLE}.recommFl ;;
  }

  dimension: recommId {
    hidden: yes
    label: "추천인id"
    type: string
    sql: ${TABLE}.recommId ;;
  }

  dimension: loginCnt {
    hidden: yes
    label: "로그인횟수"
    type: number
    sql: ${TABLE}.loginCnt ;;
  }

  dimension: loginLimit {
    hidden: yes
    label: "로그인제한"
    type: string
    sql: ${TABLE}.loginLimit ;;
  }

  dimension: lastLoginIp {
    hidden: yes
    label: "최종로그인IP"
    type: string
    sql: ${TABLE}.lastLoginIp ;;
  }

  dimension: mileage {
    hidden: yes
    label: "적립금"
    type: number
    sql: ${TABLE}.mileage ;;
  }

  dimension: saleAmt {
    hidden: yes
    label: "총구매금액"
    type: number
    sql: ${TABLE}.saleAmt ;;
  }

  dimension: saleCnt {
    hidden: yes
    label: "구매횟수"
    type: number
    sql: ${TABLE}.saleCnt ;;
  }

  dimension: deposit {
    hidden: yes
    label: "예치금"
    type: number
    sql: ${TABLE}.deposit ;;
  }

  dimension: sleepFl {
    hidden: yes
    label: "휴면회원여부"
    type: yesno
    sql: ${TABLE}.sleepFl ;;
  }

  dimension: adultConfirmDt {
    hidden: yes
    label: "성인여부인증시간"
    type: date
    sql: ${TABLE}.adultConfirmDt ;;
  }

  dimension: adultFl {
    label: "성인여부"
    type: yesno
    sql: CASE WHEN ${TABLE}.adultFl ='yes' then '성인' ELSE '미성년' END ;;
  }

  dimension: appFl {
    hidden: yes
    label: "승인여부"
    type: yesno
    sql: ${TABLE}.appFl ;;
  }

  dimension: groupModDt {
    hidden: yes
    label: "등급수정일"
    type: date
    sql: ${TABLE}.groupModDt ;;
  }

  dimension: groupValidDt {
    hidden: yes
    label: "등급유효일"
    type: date
    sql: ${TABLE}.groupValidDt ;;
  }

  dimension: guidePasswordDt {
    hidden: yes
    label: "비밀번호변경안내일"
    type: date
    sql: ${TABLE}.guidePasswordDt ;;
  }

  dimension_group: approvalDt {
    #hidden: yes
    label: "가입일"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.approvalDt ;;
  }

  dimension_group: birthEventFl {
    hidden: yes
    label: "생일 이벤트 처리일자"
    description: "sms,쿠폰 등 처리일자"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.birthEventFl ;;
  }

  dimension_group: changePasswordDt {
    hidden: yes
    label: "비밀번호변경일"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.changePasswordDt ;;
  }

  dimension_group: entryBenefitOfferDt {
    hidden: yes
    label: "가입혜택지급일"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.entryBenefitOfferDt ;;
  }

  dimension: modDt {
    hidden: yes
    label: "수정일"
    type: date
    sql: ${TABLE}.modDt ;;
  }

  dimension: dupeinfo {
    hidden: yes
    label: "중복가입확인정보"
    type: string
    sql: ${TABLE}.dupeinfo ;;
  }

  dimension: marriFl {
    label: "결혼여부"
    type: yesno
    sql: CASE WHEN ${TABLE}.marriFl ='yes' then '기혼' ELSE '미혼' END ;;
  }

  dimension: expirationFl {
    hidden: yes
    label: "개인정보유효기간"
    type: string
    sql: ${TABLE}.expirationFl ;;
  }

  dimension: interest {
    hidden: yes
    label: "관심분야"
    type: string
    sql: ${TABLE}.interest ;;
  }

  dimension: item {
    hidden: yes
    label: "종목"
    type: string
    sql: ${TABLE}.item ;;
  }

  dimension: memberFl {
    label: "회원구분"
    type: string
    sql: ${TABLE}.memberFl ;;
  }

  dimension: age {
    label: "나이"
    type: number
    sql: (TIMESTAMPDIFF(YEAR, ${birthDt},curdate() )) + 1 ;;
  }

  dimension: age_tier {
    label: "연령대"
    type: tier
    tiers: [0, 10, 20, 30, 40, 50, 60, 70,80,90]
    style: integer
    sql: ${age} ;;
  }

  measure: count {
    label : "회원 수"
    type: count
  }

  measure: depositSum {
    label: "예치금"
    type: sum
    sql: ${deposit} ;;
  }

  measure: saleAmtSum {
    label: "구매금액"
    type: sum
    sql: ${saleAmt} ;;
  }

  measure: saleCntSum {
    label: "구매회수"
    type: sum
    sql: ${saleCnt} ;;
  }

  measure: mileageSum {
    label: "적립금"
    type: sum
    sql: ${mileage} ;;
  }

  measure: recommFlCnt {
    #hidden: yes
    label: "추천인등록 수"
    type: sum
    sql: CASE WHEN ${recommFl} = 'y' THEN 1 ELSE 0 END ;;
  }

  measure: sleepFlCnt {
    #hidden: yes
    label: "휴먼회원 수"
    type: sum
    sql: CASE WHEN ${sleepFl} = 'y' THEN 1 ELSE 0 END ;;
  }

}
