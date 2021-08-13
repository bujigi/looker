view: member {
  # # You can specify the table name if it's different from the view name:
   sql_table_name: gurufit_to_looker.es_member ;;
  #

  # # dimension 정의
  dimension: memNo {
    hidden: yes
    primary_key: yes
    label: "회원번호"
    type: number
    sql: ${TABLE}.memNo ;;
  }

  dimension: address {
    label: "주소"
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: addressSub {
    label: "상세주소"
    type: string
    sql: ${TABLE}.addressSub ;;
  }

  dimension: zipcode {
    label: "우편번호"
    type: string
    sql: ${TABLE}.zipcode ;;
  }

  dimension: zonecode {
    label: "우편번호(5자리)"
    type: string
    sql: ${TABLE}.zonecode ;;
  }

  dimension: birthDt {
    label: "생년월일"
    type: date
    sql: ${TABLE}.birthDt ;;
  }

  dimension: entryDt {
    label: "가입일"
    type: date
    sql: ${TABLE}.entryDt ;;
  }

  dimension: lastLoginDt {
    label: "최종로그인"
    type: date
    sql: ${TABLE}.lastLoginDt ;;
  }

  dimension: lastSaleDt {
    label: "최종구매일"
    type: date
    sql: ${TABLE}.lastSaleDt ;;
  }

  dimension: regDt {
    label: "등록일"
    type: date
    sql: ${TABLE}.regDt ;;
  }

  dimension: memPw {
    label: "비밀번호"
    type: string
    sql: ${TABLE}.memPw ;;
  }

  dimension: nickNm {
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
    label: "핸드폰"
    type: string
    sql: ${TABLE}.cellPhone ;;
  }

  dimension: email {
    label: "이메일"
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: phone {
    label: "전화번호"
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: sexFl {
    label: "성별"
    type: string
    sql: ${TABLE}.sexFl ;;
  }

  dimension: entryPath {
    label: "가입경로"
    type: string
    sql: ${TABLE}.entryPath ;;
  }

  dimension: groupSno {
    label: "회원등급sno"
    type: string
    sql: ${TABLE}.groupSno ;;
  }

  dimension: rncheck {
    label: "본인확인방법"
    type: string
    sql: ${TABLE}.rncheck ;;
  }

  dimension: recommFl {
    label: "추천인등록여부"
    type: yesno
    sql: ${TABLE}.recommFl ;;
  }

  dimension: recommId {
    label: "추천인id"
    type: string
    sql: ${TABLE}.recommId ;;
  }

  dimension: loginCnt {
    label: "로그인횟수"
    type: number
    sql: ${TABLE}.loginCnt ;;
  }

  dimension: loginLimit {
    label: "로그인제한"
    type: string
    sql: ${TABLE}.loginLimit ;;
  }

  dimension: lastLoginIp {
    label: "최종로그인IP"
    type: string
    sql: ${TABLE}.lastLoginIp ;;
  }

  dimension: mileage {
    label: "적립금"
    type: number
    sql: ${TABLE}.mileage ;;
  }

  dimension: saleAmt {
    label: "총구매금액"
    type: number
    sql: ${TABLE}.saleAmt ;;
  }

  dimension: saleCnt {
    label: "구매횟수"
    type: number
    sql: ${TABLE}.saleCnt ;;
  }

  dimension: deposit {
    label: "예치금"
    type: number
    sql: ${TABLE}.deposit ;;
  }

  dimension: sleepFl {
    label: "휴면회원여부"
    type: yesno
    sql: ${TABLE}.sleepFl ;;
  }

  dimension: adultConfirmDt {
    label: "성인여부인증시간"
    type: date
    sql: ${TABLE}.adultConfirmDt ;;
  }

  dimension: adultFl {
    label: "성인여부"
    type: yesno
    sql: ${TABLE}.adultFl ;;
  }

  dimension: appFl {
    label: "승인여부"
    type: yesno
    sql: ${TABLE}.appFl ;;
  }

  dimension: groupModDt {
    label: "등급수정일"
    type: date
    sql: ${TABLE}.groupModDt ;;
  }

  dimension: groupValidDt {
    label: "등급유효일"
    type: date
    sql: ${TABLE}.groupValidDt ;;
  }

  dimension: guidePasswordDt {
    label: "비밀번호변경안내일"
    type: date
    sql: ${TABLE}.guidePasswordDt ;;
  }

  dimension: approvalDt {
    label: "가입 승인 일"
    type: date
    sql: ${TABLE}.approvalDt ;;
  }

  dimension: birthEventFl {
    label: "생일 이벤트 처리일자"
    description: "sms,쿠폰 등 처리일자"
    type: date
    sql: ${TABLE}.birthEventFl ;;
  }

  dimension: changePasswordDt {
    label: "비밀번호변경일"
    type: date
    sql: ${TABLE}.changePasswordDt ;;
  }

  dimension: entryBenefitOfferDt {
    label: "가입혜택지급일"
    type: date
    sql: ${TABLE}.entryBenefitOfferDt ;;
  }

  dimension: modDt {
    label: "수정일"
    type: date
    sql: ${TABLE}.modDt ;;
  }

  dimension: dupeinfo {
    label: "중복가입확인정보"
    type: string
    sql: ${TABLE}.dupeinfo ;;
  }

  dimension: marriFl {
    label: "결혼여부"
    type: yesno
    sql: ${TABLE}.marriFl ;;
  }

  dimension: expirationFl {
    label: "개인정보유효기간"
    type: string
    sql: ${TABLE}.expirationFl ;;
  }

  dimension: interest {
    label: "관심분야"
    type: string
    sql: ${TABLE}.interest ;;
  }

  dimension: item {
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



}
