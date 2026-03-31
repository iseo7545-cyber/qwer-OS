# 🚀 qwer OS 실전 빌드 & 인스톨 가이드

이 가이드는 Windows에서 작업한 `qwer-os` 설정을 바탕으로 실제 부팅 가능한 ISO 파일을 만드는 과정을 담고 있습니다.

## 🛠 1단계: 빌드 환경 준비 (Gentoo VM)
1. **VirtualBox 설정**: 
   - CPU: 4코어 이상 권장
   - RAM: 8GB 이상 권장
   - Disk: 60GB 이상 (VDI 동적 할당)
2. **공유 폴더 연결**:
   ```bash
   mkdir -p /mnt/qwer_os
   mount -t vboxsf qwer_os /mnt/qwer_os
   cp -r /mnt/qwer_os ~/qwer-os
   cd ~/qwer-os
   ```

## ⚡ 2단계: 초고속 동기화 및 바이너리 설정
시간 단축을 위해 소스 컴파일 대신 이미 빌드된 패키지를 사용합니다.
1. **Portage 동기화**:
   ```bash
   emerge-webrsync
   ```
2. **바이너리 서버 활성화** (이미 `make.conf`에 포함됨):
   - `FEATURES="getbinpkg"` 설정 확인

## 🏗 3단계: qwer OS 빌드 시작
제가 만들어 드린 스크립트를 실행하여 모든 과정을 자동화합니다.
```bash
chmod +x scripts/build_iso.sh
chmod +x src/ilo.sh
./scripts/build_iso.sh
```
*이 과정에서 Zen Kernel 빌드와 KDE/GNOME 패키지 구성이 진행됩니다.*

## 💿 4단계: ISO 파일 꺼내기
빌드가 완료되면 `build/qwer-os.iso` 파일이 생성됩니다. 이를 다시 윈도우로 옮깁니다.
```bash
cp ~/qwer-os/build/qwer-os.iso /mnt/qwer_os/
```

## 💻 5단계: 실제 설치 (Calamares)
1. 새 가상 머신을 만들고 `qwer-os.iso`로 부팅합니다.
2. 부팅 로고를 감상한 후 바탕화면의 **'Install qwer OS'**를 실행합니다.
3. **5단계 마법사**를 따라가세요:
   - 언어 -> 미러 -> 키보드 -> 파티션(전체 디스크) -> 설치 완료!

---
**축하합니다! 이제 당신만의 qwer OS가 탄생했습니다.**
사용 중 패키지 관리는 `ilo install <패키지명>`을 사용하세요.
