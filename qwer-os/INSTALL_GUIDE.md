english

Creating a qwer OS Installation ISO

If you want to waste your time, use this method. If you just want a normal installation, download the .iso file from the releases page.
Step 1: Prepare the Build Environment (Gentoo VM)

0. download the zip file on release

1. VM Configuration

CPU: 4+ cores recommended
RAM: 8GB+ recommended
Disk: 60GB+ (VDI dynamic allocation)

2. Connect Shared Folder (you need to extract .zip file and select shared folder on vm
   mkdir -p /mnt/qwer_os

   mount -t vboxsf qwer_os /mnt/qwer_os

   cp -r /mnt/qwer_os ~/qwer-os

   cd ~/qwer-os

Step 2: Fast Sync and Binary Configuration
To save time, we use pre-built packages instead of compiling from source.
1. Sync Portage
   emerge-webrsync or emerge --sync
   

3. Enable Binary Server

Open /etc/portage/make.conf with nano and add the following line at the bottom:

   FEATURES="getbinpkg"

This setting dramatically reduces build time by downloading pre-compiled packages instead of building them from source.

Step 3: Start the qwer OS Build
Run the script to start building qwer OS. Go take a dump cuz it takes so long like 67 years
   chmod +x scripts/build_iso.sh
   
   chmod +x src/ilo.sh
   
   ./scripts/build_iso.sh
This process handles the Zen Kernel build and KDE/GNOME package configuration.
Step 4: Extract the ISO File
Once the build is complete, a build/qwer-os.iso file will be generated. Copy it back to Windows:
   cp ~/qwer-os/build/qwer-os.iso /mnt/qwer_os/

Step 5: Installation

Windows: Use Rufus or BalenaEtcher to create a bootable USB.
Linux: Use Ventoy or BalenaEtcher to create a bootable USB.
Then boot from it.
Enjoy the boot logo, then run Install qwer OS from the desktop.
Done.

Step 6: Post-Installation
Basic programs like a file manager probably aren't installed by default maybe?

command lists

   ilo install <package>      program install                ilo install firefox 
   ilo remove <package>       program delete                 ilo remove vlc      
   ilo update                 system update (it updates all thing of the system)           
   ilo search <package>       program search                 ilo search gimp     
   ilo info                   system info                      
   ilo clean                  delete unneeded files                              
   ilo kernel-update          Zen Kernel update & rebuild        

   service start: sudo rc-service <서비스명> start
   service stop: sudo rc-service <서비스명> stop
   service status config: sudo rc-service <서비스명> status
   set the service when computor starts running: sudo rc-update add <서비스명> default




______________________________________________________________________________________________________________________________________________________________________________________________________________________________





한국어

qwer OS 설치 ISO 파일을 만드는 과정입니다. 시간을 낭비하고싶다면 이 방법을 쓰시고 일반적인 설치를 하고싶으면 릴리스에서 .iso 파일을 받으세요.

0.릴리스에서 .zip파일을 다운로드하세요

1단계: 빌드 환경 준비 (Gentoo VM)
1. VM 설정 
   - CPU: 4코어 이상 권장
   - RAM: 8GB 이상 권장
   - Disk: 60GB 이상 (VDI 동적 할당)
  
2..zip 파일을 압축 해제한다

3. 공유 폴더 연결과 qwer OS 빌드 파일 다운로드

vm에 .zip 파일을 해제한걸 공유 폴더로 설정 한다.
   
   mkdir -p /mnt/qwer_os
   
   mount -t vboxsf qwer_os /mnt/qwer_os
   
   cp -r /mnt/qwer_os ~/qwer-os
   
   cd ~/qwer-os
  

4단계: 초고속 동기화 및 바이너리 설정
시간 단축을 위해 소스 컴파일 대신 이미 빌드된 패키지를 사용합니다.
1. Portage 동기화
   
   emerge-webrsync
   
2. 바이너리 서버 활성화
    
   nano /etc/portage/make.conf를 하여 맨 아래 줄에  - FEATURES="getbinpkg" 이라고 입력합니다. 이 설정은 패키지를 다운 받을때 미리 컴파일 된걸 다운해 시간을 획기적으로 단축 합니다.

3단계: qwer OS 빌드 시작
스크립트를 실행하여 qwer OS 빌드를 시작합니다. 똥싸고오세요 겁나오래걸림 아마도

chmod +x scripts/build_iso.sh

chmod +x src/ilo.sh

./scripts/build_iso.sh

이 과정에서 Zen Kernel 빌드와 KDE/GNOME 패키지 구성이 진행됩니다.

4단계: ISO 파일 꺼내기
빌드가 완료되면 build/qwer-os.iso 파일이 생성됩니다. 이를 다시 윈도우로 옮깁니다.

cp ~/qwer-os/build/qwer-os.iso /mnt/qwer_os/


5단계: 설치
1. 윈도우라면 Rufus 나 BalenaEtcher로 부팅 USB를 만드시고 리눅스라면 ventoy 또는 BalenaEtcher로 부팅 USB를 만드세요 만들었다면 부팅하세요
  
2.  부팅 로고를 감상한 후 바탕화면의 Install qwer OS를 실행합니다.
  
3. 완료

6단계: 마무리 작업
   파일 매니저같은 기본 프로그램들은 설치가 안되있을걸요?






   명령어 목록

  
      

   ilo install <패키지>      프로그램 설치                ilo install firefox 
   ilo remove <패키지>      프로그램 삭제                 ilo remove vlc      
   ilo update              시스템 전체 업데이트           ilo update          
   ilo search <패키지>      프로그램 검색                 ilo search gimp     
   ilo info                시스템 상세 정보 확인                      
   ilo clean               불필요한 의존성 파일 정리                          
   ilo kernel-update       Zen Kernel 최신 버전 업데이트 및 재빌드    

 서비스 시작: sudo rc-service <서비스명> start
 서비스 중지: sudo rc-service <서비스명> stop
 서비스 상태 확인: sudo rc-service <서비스명> status
 부팅 시 자동 실행 등록: sudo rc-update add <서비스명> default
