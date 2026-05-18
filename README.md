# SecureZip

브라우저에서 바로 실행되는 암호 ZIP 압축/해제 도구.
서버로 파일이 전송되지 않으며 모든 처리가 클라이언트에서 이루어집니다.

**https://securezip.sagevee.com**

## 기능

- ZIP 압축 (AES-256 암호화 옵션)
- ZIP 압축 해제 (암호 ZIP 지원)
- 파일 여러 개 선택 및 순서 변경 (드래그앤드롭)
- 압축 해제 시 파일 목록 미리보기
- 압축 해제 시 파일 여러 개면 ZIP으로 묶어서 다운로드
- 비밀번호 강도 표시
- 한국어/영어 자동 전환 (`navigator.language` 기반)
- iPhone · iPad · PC 모두 지원

## 기술 스택

- 순수 HTML/CSS/JS (빌드 없음, 단일 파일)
- [@zip.js/zip.js](https://gildas-lormeau.github.io/zip.js/) v2.7.52
- Obsidian Prism 다크 테마 디자인 시스템
- Docker (nginx:alpine) + kamal-proxy 배포

## 배포

```bash
./deploy.sh
```

Hetzner 서버(`5.223.72.224`)에 Docker 컨테이너로 배포되며,
kamal-proxy가 `securezip.sagevee.com` 요청을 라우팅합니다.
