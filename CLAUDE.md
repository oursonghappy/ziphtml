# CLAUDE.md — SecureZip

## 프로젝트 개요

브라우저 기반 암호 ZIP 압축/해제 웹앱. 단일 HTML 파일(`index.html`)로 구성.

- **URL**: https://securezip.sagevee.com
- **서버**: Hetzner `5.223.72.224`, 계정 `bori`
- **배포**: `./deploy.sh` (Docker + kamal-proxy)

## 파일 구조

```
ziphtml/
├── index.html          # 앱 전체 (HTML + CSS + JS 단일 파일)
├── Dockerfile          # nginx:alpine 기반
├── deploy.sh           # 배포 스크립트
├── config/deploy.yml   # Kamal 설정 (참고용)
└── .kamal/secrets      # 로컬 전용, git 제외
```

## 기술 스택

- 순수 HTML/CSS/JS, 빌드 없음
- `@zip.js/zip.js` v2.7.52 (CDN) — ZIP 생성/해제, AES-256 암호화
- 폰트: Inter, JetBrains Mono (Google Fonts CDN)

## 주요 구조 (index.html)

- `i18n` 객체: 한국어/영어 번역. `navigator.language`가 `ko`면 한국어, 나머지는 영어
- `applyI18n()`: 페이지 로드 시 정적 텍스트 일괄 적용
- `renderFiles()`: 압축 파일 목록 렌더링. HTML5 드래그앤드롭 + 터치 이벤트로 순서 변경 지원
- `setExtractFile()`: ZIP 선택 시 내부 파일 목록 미리보기 (비동기)
- 압축 해제 시 파일 1개 → 직접 다운로드, 여러 개 → `_extracted.zip`으로 묶어서 다운로드

## 배포 방식

kamal-proxy가 이미 실행 중인 서버에 수동으로 컨테이너를 등록하는 방식.
(`kamal deploy`는 로컬 Docker 필요로 사용 불가)

1. `scp`로 파일 전송
2. 서버에서 `docker build`
3. `docker run --network kamal`
4. `docker exec kamal-proxy kamal-proxy deploy` 로 라우팅 등록

## 주의사항

- `index.html`은 단일 파일이므로 CSS/JS 분리 금지
- CDN 의존성 2개 (zip.js, Google Fonts) — 오프라인 환경에서는 동작 안 함
- `.kamal/secrets`는 git에 포함하지 말 것
