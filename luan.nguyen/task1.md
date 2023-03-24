### project
---
---
task1

bopiz@lab:~/Downloads$ df

Filesystem     1K-blocks     Used Available Use% Mounted on

tmpfs            1629304     2332   1626972   1% /run

/dev/sda4      253274848 17782996 222553408   8% /

tmpfs            8146508   115692   8030816   2% /dev/shm

tmpfs               5120        4      5116   1% /run/lock

/dev/nvme0n1p1     98304    31854     66450  33% /boot/efi

tmpfs            1629300     4752   1624548   1% /run/user/1000

----

bopiz@lab:~/Downloads$ df -a

df: /run/user/1000/doc: Operation not permitted

Filesystem     1K-blocks     Used Available Use% Mounted on

sysfs                  0        0         0    - /sys

proc                   0        0         0    - /proc

udev             8107588        0   8107588   0% /dev

devpts                 0        0         0    - /dev/pts

tmpfs            1629304     2332   1626972   1% /run

/dev/sda4      253274848 17783072 222553332   8% /

securityfs             0        0         0    - /sys/kernel/security

tmpfs            8146508   115692   8030816   2% /dev/shm

tmpfs               5120        4      5116   1% /run/lock

cgroup2                0        0         0    - /sys/fs/cgroup

pstore                 0        0         0    - /sys/fs/pstore

efivarfs               0        0         0    - /sys/firmware/efi/efivars

bpf                    0        0         0    - /sys/fs/bpf

systemd-1              -        -         -    - /proc/sys/fs/binfmt_misc

mqueue                 0        0         0    - /dev/mqueue


hugetlbfs              0        0         0    - /dev/hugepages

fusectl                0        0         0    - /sys/fs/fuse/connections

----

 bopiz@lab:~$ df -ha

 df: /run/user/1000/doc: Operation not permitted


 Filesystem      Size  Used Avail Use% Mounted on

 proc               0     0     0    - /proc

 udev            7.8G     0  7.8G   0% /dev

 devpts             0     0     0    - /dev/pts

 tmpfs           1.6G  2.3M  1.6G   1% /run

 /dev/sda4       242G   17G  213G   8% /

 securityfs         0     0     0    - /sys/kernel/security

 tmpfs           7.8G   38M  7.8G   1% /dev/shm

 tmpfs           5.0M  4.0K  5.0M   1% /run/lock

 cgroup2            0     0     0    - /sys/fs/cgroup

 pstore             0     0     0    - /sys/fs/pstore

 efivarfs           0     0     0    - /sys/firmware/efi/efivars

 bpf                0     0     0    - /sys/fs/bpf

 systemd-1          -     -     -    - /proc/sys/fs/binfmt_misc

 mqueue             0     0     0    - /dev/mqueue

 hugetlbfs          0     0     0    - /dev/hugepages

 fusectl            0     0     0    - /sys/fs/fuse/connections

 tracefs            0     0     0    - /sys/kernel/tracing

 debugfs            0     0     0    - /sys/kernel/debug

 configfs           0     0     0    - /sys/kernel/config

 ramfs              0     0     0    - /run/credentials/systemd-sysusers.service

 /dev/loop1       56M   56M     0 100% /snap/core18/2714

 ---

 bopiz@lab:~$ df -hT /home/

 Filesystem     Type  Size  Used Avail Use% Mounted on

 /dev/sda4      ext4  242G   17G  213G   8% /

 ---

 bopiz@lab:~$ df -k


 Filesystem     1K-blocks     Used Available Use% Mounted on

 tmpfs            1629304     2332   1626972   1% /run

 /dev/sda4      253274848 17817560 222518844   8% /

 tmpfs            8146508    11392   8135116   1% /dev/shm

 /dev/nvme0n1p1     98304    31854     66450  33% /boot/efi

 tmpfs            1629300     4748   1624552   1% /run/user/1000

 /dev/nvme0n1p1     98304    31854     66450  33% /boot/efi

 ---

 bopiz@lab:~$ df -i

 Filesystem       Inodes  IUsed    IFree IUse% Mounted on

 tmpfs           2036627   1376  2035251    1% /run

 /dev/sda4      16154624 263154 15891470    2% /

 tmpfs           2036627     32  2036595    1% /dev/shm

 tmpfs           2036627      4  2036623    1% /run/lock

 /dev/nvme0n1p1        0      0        0     - /boot/efi

 tmpfs            407325    175   407150    1% /run/user/1000

 ---

 bopiz@lab:~$ df -Th

 Filesystem     Type   Size  Used Avail Use% Mounted on

 tmpfs          tmpfs  1.6G  2.3M  1.6G   1% /run

 /dev/sda4      ext4   242G   17G  213G   8% /

 tmpfs          tmpfs  7.8G   12M  7.8G   1% /dev/shm

 tmpfs          tmpfs  5.0M  4.0K  5.0M   1% /run/lock

 /dev/nvme0n1p1 vfat    96M   32M   65M  33% /boot/efi

 tmpfs          tmpfs  1.6G  4.7M  1.6G   1% /run/user/1000

 ---

 xem cac phan vung

 bopiz@lab:~$ sudo fdisk -l

 [sudo] password for bopiz:

 Disk /dev/loop0: 4 KiB, 4096 bytes, 8 sectors

 Units: sectors of 1 * 512 = 512 bytes

 Sector size (logical/physical): 512 bytes / 512 bytes

 I/O size (minimum/optimal): 512 bytes / 512 bytes

 Disk /dev/loop1: 55.61 MiB, 58310656 bytes, 113888 sectors

 Units: sectors of 1 * 512 = 512 bytes

 Sector size (logical/physical): 512 bytes / 512 bytes

 I/O size (minimum/optimal): 512 bytes / 512 bytes

 Disk /dev/loop2: 63.28 MiB, 66355200 bytes, 129600 sectors

 Units: sectors of 1 * 512 = 512 bytes

 Sector size (logical/physical): 512 bytes / 512 bytes

 I/O size (minimum/optimal): 512 bytes / 512 bytes

 Disk /dev/loop3: 240.61 MiB, 252301312 bytes, 492776 sectors

 Units: sectors of 1 * 512 = 512 bytes

 Sector size (logical/physical): 512 bytes / 512 bytes

 I/O size (minimum/optimal): 512 bytes / 512 bytes

 Disk /dev/loop4: 164.76 MiB, 172761088 bytes, 337424 sectors

 Units: sectors of 1 * 512 = 512 bytes

 Sector size (logical/physical): 512 bytes / 512 bytes

 I/O size (minimum/optimal): 512 bytes / 512 bytes

 Disk /dev/loop5: 346.33 MiB, 363151360 bytes, 709280 sectors

 Units: sectors of 1 * 512 = 512 bytes

 Sector size (logical/physical): 512 bytes / 512 bytes

 I/O size (minimum/optimal): 512 bytes / 512 bytes


 ---

bopiz@lab:~$ sudo sfdisk -l /dev/sda

Disk /dev/sda: 931.51 GiB, 1000204886016 bytes, 1953525168 sectors

Disk model: WDC WD10SPZX-24Z

Units: sectors of 1 * 512 = 512 bytes

Sector size (logical/physical): 512 bytes / 4096 bytes

I/O size (minimum/optimal): 4096 bytes / 4096 bytes

Disklabel type: gpt

Disk identifier: 4EE13EA2-24D4-40FA-AD41-0CE19BBB0744

Device          Start        End   Sectors   Size Type

/dev/sda1       32768  649010280 648977513 309.5G Microsoft basic data

/dev/sda2  1166944256 1953521663 786577408 375.1G Microsoft basic data

/dev/sda3   649011200  650061823   1050624   513M EFI System

/dev/sda4   650061824 1166944255 516882432 246.5G Linux filesystem

Partition table entries are not in disk order.

---

bopiz@lab:~$ sudo parted -l

Model: ATA WDC WD10SPZX-24Z (scsi)

Disk /dev/sda: 1000GB

Sector size (logical/physical): 512B/4096B

Partition Table: gpt

Disk Flags: 

Number  Start   End     Size   File system  Name                  Flags

1      16.8MB  332GB   332GB  ntfs         Basic data partition  msftdata

 3      332GB   333GB   538MB  fat32        EFI System Partition  boot, esp

 4      333GB   597GB   265GB  ext4

 2      597GB   1000GB  403GB  ntfs         Basic data partition  msftdata

 Model: WDC PC SN520 SDAPMUW-128G-1101 (nvme)

 Disk /dev/nvme0n1: 128GB
 
 Sector size (logical/physical): 512B/512B

 Partition Table: gpt

 Disk Flags: 

 Number  Start   End    Size    File system  Name                          Flags

  1      1049kB  106MB  105MB   fat32        EFI system partition          boot, esp

   2      106MB   123MB  16.8MB               Microsoft reserved partition  msftres

   3      123MB   127GB  127GB   ntfs         Basic data partition          msftdata

   4      128GB   128GB  534MB   ntfs                                       hidden, diag

   ---

   bopiz@lab:~$ cat  /proc/cpuinfo

   processor	: 0

   vendor_id	: GenuineIntel

   cpu family	: 6

   model		: 158

   model name	: Intel(R) Core(TM) i5-9300H CPU @ 2.40GHz

   stepping	: 10

   microcode	: 0xf0

   cpu MHz		: 800.608

   cache size	: 8192 KB

   physical id	: 0

siblings	: 8

core id		: 0

cpu cores	: 4

apicid		: 0

initial apicid	: 0

fpu		: yes

fpu_exception	: yes

cpuid level	: 22

wp		: yes

flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb invpcid_single pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt xsavec xgetbv1 xsaves dtherm ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp md_clear flush_l1d arch_capabilities

vmx flags	: vnmi preemption_timer invvpid ept_x_only ept_ad ept_1gb flexpriority tsc_offset vtpr mtf vapic ept vpid unrestricted_guest ple pml ept_mode_based_exec

bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs itlb_multihit srbds mmio_stale_data retbleed

bogomips	: 4800.00

clflush size	: 64

cache_alignment	: 64

address sizes	: 39 bits physical, 48 bits virtual

power management:

processor	: 1

vendor_id	: GenuineIntel

cpu family	: 6

model		: 158

model name	: Intel(R) Core(TM) i5-9300H CPU @ 2.40GHz

stepping	: 10

microcode	: 0xf0

cpu MHz		: 800.045

cache size	: 8192 KB

physical id	: 0

siblings	: 8

core id		: 1

cpu cores	: 4

apicid		: 2

initial apicid	: 2

fpu		: yes

fpu_exception	: yes

cpuid level	: 22

wp		: yes

---

bopiz@lab:~$ lscpu

Architecture:            x86_64

  CPU op-mode(s):        32-bit, 64-bit

    Address sizes:         39 bits physical, 48 bits virtual

      Byte Order:            Little Endian

CPU(s):                  8


  On-line CPU(s) list:   0-7

Vendor ID:               GenuineIntel

  Model name:            Intel(R) Core(TM) i5-9300H CPU @ 2.40GHz

 CPU family:          6

 Model:               158

 Thread(s) per core:  2

Core(s) per socket:  4

Socket(s):           1

 Stepping:            10

CPU max MHz:         4100.0000

CPU min MHz:         800.0000

BogoMIPS:            4800.00

---

bopiz@lab:~$ lscpu | grep max

CPU max MHz:                     4100.0000

---
bopiz@lab:~$ free

               total        used        free      shared  buff/cache   availae


Mem:         16293020      4581960      5403456       313272      6307604     11072324

Swap:        2097148           0     2097148

---

bopiz@lab:~$ free -m

               total        used        free      shared  buff/cache   available
             Mem:           15911        4489        5250         316        6171       10787

Swap:           2047           0        2047

---


bopiz@lab:~$ free -h

               total        used        free      shared  buff/cache   available

Mem:            15Gi       4.4Gi       5.1Gi       304Mi       6.0Gi        10Gi

Swap:          2.0Gi          0B       2.0Gi

bopiz@lab:~$ sudo lshw -short -C memory

H/W path           Device          Class          Description

=============================================================

/0/0                               memory         128KiB BIOS

/0/4/5                             memory         256KiB L1 cache

/0/4/6                             memory         1MiB L2 cache

/0/4/7                             memory         8MiB L3 cache

/0/26                              memory         16GiB System Memory

/0/26/0                            memory         8GiB SODIMM DDR4 Synchronous 2

/0/26/1                            memory         8GiB SODIMM DDR4 Synchronous 2

/0/100/14.2                        memory         RAM memory

---

bopiz@lab:~$ ip a

1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000

link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00

inet 127.0.0.1/8 scope host lo

valid_lft forever preferred_lft forever

 inet6 ::1/128 scope host 

valid_lft forever preferred_lft forever

2: enp7s0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc fq_codel state DOWN group default qlen 1000

---

bopiz@lab:~$ sudo lshw -class network

 *-network   

description: Wireless interface

product: Cannon Lake PCH CNVi WiFi

vendor: Intel Corporation

 physical id: 14.3

bus info: pci@0000:00:14.3

logical name: wlp0s20f3

version: 10

serial: 54:8d:5a:88:24:17

width: 64 bits

clock: 33MHz

capabilities: pm msi pciexpress msix bus_master cap_list ethernet physical wireless

---

bopiz@lab:~$ ps aux | grep 'opera'

bopiz      27313  0.0  0.0  17768  2440 pts/1    S+   14:57   0:00 grep --color=auto opera

---

liet ke danh sach

bopiz@lab:~$ ls ~

Desktop    file.txt     my_movie  snap           Videos      VMWARE.priv

Documents  Music        Pictures  symbolic_link  vmware

Downloads  my_link.txt  Public    Templates      VMWARE.der

bopiz@lab:~$ ls /

bin    dev   lib    libx32      mnt   root  snap      sys  var

boot   etc   lib32  lost+found  opt   run   srv       tmp

cdrom  home  lib64  media       proc  sbin  swapfile  usr

---

bopiz@lab:~$ ls -a
.              Downloads         .pki                       .vmware

..             file.txt          .profile                   vmware

.bash_history  .gnupg           Public                     VMWARE.der

.bash_logout   .local            snap                       VMWARE.priv

.bashrc        .mozilla          .ssh                       .vscode

.cache         Music             .sudo_as_admin_successful  .wget-hsts

.config        my_link.txt       symbolic_link              .xinputrc

Desktop        my_movie          Templates

Documents      .pam_environment  .thunderbird

.dotnet        Pictures          Videos

---
bopiz@lab:~$ ls -r

VMWARE.priv  Videos         snap      my_movie     file.txt   Desktop

VMWARE.der   Templates      Public    my_link.txt  Downloads

vmware       symbolic_link  Pictures  Music        Documents

---

bopiz@lab:~$ ls -l

total 52

drwxr-xr-x 3 bopiz bopiz 4096 Mar 20 11:04 Desktop

drwxr-xr-x 2 bopiz bopiz 4096 Mar 20 10:37 Documents

drwxr-xr-x 3 bopiz bopiz 4096 Mar 20 14:01 Downloads

-rw-rw-r-- 1 bopiz bopiz   81 Mar 20 12:01 file.txt

drwxr-xr-x 2 bopiz bopiz 4096 Mar 20 10:37 Music

lrwxrwxrwx 1 bopiz bopiz   11 Mar 20 12:31 my_link.txt -> my_file.txt

lrwxrwxrwx 1 bopiz bopiz   20 Mar 20 12:32 my_movie -> /mnt/my_drive/movies

drwxr-xr-x 2 bopiz bopiz 4096 Mar 20 10:37 Pictures

drwxr-xr-x 2 bopiz bopiz 4096 Mar 20 10:37 Public

drwx------ 5 bopiz bopiz 4096 Mar 20 11:52 snap

lrwxrwxrwx 1 bopiz bopiz   11 Mar 20 12:06 symbolic_link -> source_file

---

Mount/Umount



bopiz@lab:~$ sudo parted -ls

[sudo] password for bopiz:

Model: ATA WDC WD10SPZX-24Z (scsi)

Disk /dev/sda: 1000GB

Sector size (logical/physical): 512B/4096B

Partition Table: gpt

Disk Flags: 

Number  Start   End     Size   File system  Name                  Flags

 1      16.8MB  332GB   332GB  ntfs         Basic data partition  msftdata

  3      332GB   333GB   538MB  fat32        EFI System Partition  boot, esp

   4      333GB   597GB   265GB  ext4

 2      597GB   1000GB  403GB  ntfs         Basic data partition  msftdata



 Model: WDC PC SN520 SDAPMUW-128G-1101 (nvme)

 Disk /dev/nvme0n1: 128GB

 Sector size (logical/physical): 512B/512B

 Partition Table: gpt

 Disk Flags: 

 Number  Start   End    Size    File system  Name                          Flags


 1      1049kB  106MB  105MB   fat32        EFI system partition          boot, esp

  2      106MB   123MB  16.8MB               Microsoft reserved partition  msftres

  3      123MB   127GB  127GB   ntfs         Basic data partition          msftdata


 4      128GB   128GB  534MB   ntfs                                       hidden, diag

---

bopiz@lab:~$ ls -l

bopiz@lab:~$ touch luan1.txt

bopiz@lab:~$ ln -s luan1.txt softlink.txt

bopiz@lab:~$ ls -i luan1.txt softlink.txt

9199580 luan1.txt  9199581 softlink.txt

bopiz@lab:~$ 

bopiz@lab:~$ echo "luan run fast" > luan1.txt

bopiz@lab:~$ rm luan1.txt

bopiz@lab:~$ cat softlink.txt

cat: softlink.txt: No such file or directory

---

bopiz@lab:~$ sudo apt-get install rar unrar unace zip unzip p7zip-full p7zip-rar sharutils mpack arj cabextract file-roller uudeview

bopiz@lab:~$ sudo apt install vnstat

Reading package lists... Done

Building dependency tree... Done

Reading state information... Done

- Zip and Unzip

root@lab:/home/bopiz/Downloads# tar -vczf tsetup.4.7.0.tar.xz file3.txt

root@lab:/home/bopiz/Downloads# ls

64bit.7z

CentOS-7-x86_64-DVD-2207-02.iso

CentOS-Stream-8-20230308.3-x86_64-boot.iso

'code_1.76.2-1678817801_amd64(1).deb'

code_1.76.2-1678817801_amd64.deb

'google-chrome-stable_current_amd64(1).deb'

google-chrome-stable_current_amd64.deb

project.md

'Telegram Desktop'

tsetup.4.7.0.tar.xz

ubuntu-22.04.2-live-server-amd64.iso

virtualbox-7.0_7.0.6-155176_Ubuntu_jammy_amd64.deb

'VMware-Player-15.1.0-13591040.x86_64_ttmt (1).bundle'

VMware-Player-15.1.0-13591040.x86_64_ttmt.bundle

VMware-Workstation-Full-17.0.0-20800274.x86_64.bundle

wordpress-6.1.1.tar.gz

---

- Các lệnh - Đổ nội dung 1 chuỗi vào cuối file

bopiz@lab:~/Desktop$ find -name test\*

./test

bopiz@lab:~/Desktop$ locate -b 'test.txt'

/usr/share/doc/php-tcpdf/examples/data/utf8test.txt

bopiz@lab:~$ which -a telegram-desktop

/usr/bin/telegram-desktop

/bin/telegram-desktop

bopiz@lab:~$ whereis telegram-desktop

telegram-desktop: /usr/bin/telegram-desktop /usr/share/man/man1/telegram-desktop.1.gz

---


bopiz@lab:~$ sudo ufw status verbose

Status: inactive

bopiz@lab:~$ sudo ufw allow 22/tcp

Skipping adding existing rule

Skipping adding existing rule (v6)

bopiz@lab:~$ sudo ufw allow from 192.168.1.10 to any port 22

bopiz@lab:~$ sudo ufw allow from any to 74.86.26.69 port 443 proto tcp

bopiz@lab:~$ ufw allow from 192.168.1.0/24 to any app Samba

bopiz@lab:~$ sudo ufw delete 5

Deleting:

allow 53

Proceed with operation (y|n)? y

Rules updated

---

gen keyssh

bopiz@lab:~$ ssh-keygen -t rsa

Generating public/private rsa key pair.

Enter file in which to save the key (/home/bopiz/.ssh/id_rsa):

/home/bopiz/.ssh/id_rsa already exists

Overwrite (y/n)? y

Enter passphrase (empty for no passphrase): 

Enter same passphrase again: 

Your identification has been saved in /home/bopiz/.ssh/id_rsa

Your public key has been saved in /home/bopiz/.ssh/id_rsa.pub

The key fingerprint is:

SHA256:REnSK6EQTBScpnC93by4AIE7jK+JzbNss7bwbIh6AdE bopiz@lab.cenubuntu

The key's randomart image is:

+---[RSA 3072]----+

| B==  .oo.       |

|+ E . .oo        |

|+* o + +..       |

|*.. o o.+        |

| + .   oS.       |

|  o . . .        |

|+* . . .         |

|*=X   .          |

|o=B*             |

+----[SHA256]-----+

---

find, grep, awk, sed, tr, head, tail, less, more, sort, uniq, cut, join, diff, xargs, traceroute, netstat, kill, pkill, wc, wget, git, rsyn, ping, tee, ln, mkdir

bopiz@lab:~$ tall sample.txt

Command 'tall' not found, did you mean:

command 'tali' from snap tali (40.8)

command 'pall' from snap pall (3.0.1)

command 'tail' from deb coreutils (8.32-4.1ubuntu1)

command 'wall' from deb bsdutils (1:2.37.2-4ubuntu3)

command 'taql' from deb casacore-tools (3.4.0-2build1)

command 'talk' from deb inetutils-talk (2:2.2-2)

command 'talk' from deb talk (0.17-17)

See 'snap info <snapname>' for additional versions.

---

bopiz@lab:~$ sort mix.txt

abc

apple

ball

bat

bopiz@lab:~$ sort inputfile.txt > filenaem.txt

bopiz@lab:~$ cat > file.txt

abhishek

chitransh

satish

rajan

naveen

divyam

harsh

---

bopiz@lab:~$ pkill -15 firefox

bopiz@lab:~$ pkill -HUP nginx

bopiz@lab:~$ pkill '^ssh$'

bopiz@lab:~$ pkill -9 -f "ping 8.8.8.8"

bopiz@lab:~$ pkill -u mark

---

bopiz@lab:~$ sudo apt install rsync

Reading package lists... Done

Building dependency tree... Done

Reading state information... Done

Suggested packages:

python3-braceexpand

The following packages will be upgraded:

rsync

bopiz@lab:~$ sudo nano /etc/rsyncd.conf # save and close it

bopiz@lab:~$ sudo cp /lib/systemd/system/rsync.service /etc/systemd/system/rsync.service

bopiz@lab:~$ sudo systemctl restart rsync

bopiz@lab:~$ sudo nano /etc/rsyncd.conf

bopiz@lab:~$ sudo nano /etc/rsyncd.passwd

bopiz@lab:~$ sudo chmod 0600 /etc/rsyncd.passwd

bopiz@lab:~$ sudo systemctl restart rsync

---

bopiz@lab:~$ sudo apt install traceroute

Reading package lists... Done

Building dependency tree... Done

Reading state information... Done

The following NEW packages will be installed:

traceroute

0 upgraded, 1 newly installed, 0 to remove and 74 not upgraded.

Need to get 45.4 kB of archives

After this operation, 152 kB of additional disk space will be used.

Get:1 http://kh.archive.ubuntu.com/ubuntu jammy/universe amd64 traceroute amd64 1:2.1.0-2 [45.4 kB]

Fetched 45.4 kB in 2s (18.3 kB/s) 

Selecting previously unselected package traceroute.

(Reading database ... 216676 files and directories currently installed.)

Preparing to unpack .../traceroute_1%3a2.1.0-2_amd64.deb ...

---

bopiz@lab:~$ traceroute youtube.com

traceroute to youtube.com (172.217.24.110), 30 hops max, 60 byte packets

1  192.168.1.1 (192.168.1.1)  2.777 ms  2.857 ms  2.839 ms

2  localhost (27.71.251.149)  4.611 ms  4.593 ms  5.128 ms

3  10.255.39.245 (10.255.39.245)  3.990 ms  4.053 ms 10.255.39.241 (10.255.39.241)  3.956 ms

4  localhost (27.68.208.72)  5.061 ms  7.821 ms  5.027 ms

5  localhost (27.68.237.138)  3.970 ms  5.124 ms localhost (27.68.237.140)  5.107 ms

6  localhost (27.68.250.253)  31.643 ms localhost (117.1.220.252)  38.567 ms  38.115 ms

7  72.14.196.68 (72.14.196.68)  34.145 ms 72.14.195.97 (72.14.195.97)  31.577 ms 72.14.196.68 (72.14.196.68)  34.104 ms

8  * * 108.170.240.172 (108.170.240.172)  36.146 ms

bopiz@lab:~$ traceroute www.youtube.com

traceroute to www.youtube.com (142.250.66.46), 30 hops max, 60 byte packets

1  192.168.1.1 (192.168.1.1)  1.613 ms  3.997 ms  3.975 ms

2  localhost (27.71.251.149)  4.950 ms  4.929 ms  4.906 ms

3  10.255.39.245 (10.255.39.245)  4.885 ms 10.255.39.247 (10.255.39.247)  4.864 ms 10.255.39.241 (10.255.39.241)  4.843 ms

4  * * *

5  localhost (27.68.237.140)  4.790 ms  4.768 ms localhost (27.68.237.138)  5.709 ms


6  localhost (27.68.250.253)  32.669 ms localhost (117.1.220.252)  38.294 ms localhost (27.68.250.253)  32.130 ms

7  72.14.196.68 (72.14.196.68)  33.917 ms  34.765 ms  34.750 ms

8  * * *

9  108.170.240.225 (108.170.240.225)  32.933 ms 108.170.254.225 (108.170.254.225)  30.917 ms 108.170.240.225 (108.170.240.225)  35.929 ms

10  108.170.240.172 (108.170.240.172)  39.926 ms 108.170.240.164 (108.170.240.164)  34.116 ms 142.251.68.126 (142.251.68.126)  49.782 ms

11  172.253.64.173 (172.253.64.173)  50.616 ms * *

---

bopiz@lab:~$ sudo apt-get install wget

Reading package lists... Done

Building dependency tree... Done

Reading state information... Done

bopiz@lab:~$ wget -r http://www.example.com

--2023-03-20 16:12:32--  http://www.example.com/

Resolving www.example.com (www.example.com)... 2606:2800:220:1:248:1893:25c8:1946, 93.184.216.34

Connecting to www.example.com (www.example.com)|2606:2800:220:1:248:1893:25c8:1946|:80... connected.

HTTP request sent, awaiting response... 200 OK

Length: 1256 (1.2K) [text/html]

Saving to: ‘www.example.com/index.html’

www.example.com/ind 100%[===================>]   1.23K  --.-KB/s    in 0s  

2023-03-20 16:12:33 (48.8 MB/s) - ‘www.example.com/index.html’ saved [1256/1256]

FINISHED --2023-03-20 16:12:33--

Total wall clock time: 0.4s

Downloaded: 1 files, 1.2K in 0s (48.8 MB/s)

bopiz@lab:~$ wget -r -H http://www.example.com

--2023-03-20 16:13:11--  http://www.example.com/

Resolving www.example.com (www.example.com)... 2606:2800:220:1:248:1893:25c8:1946, 93.184.216.34

Connecting to www.example.com (www.example.com)|2606:2800:220:1:248:1893:25c8:1946|:80... connected.

HTTP request sent, awaiting response... 200 OK

Length: 1256 (1.2K) [text/html]

Saving to: ‘www.example.com/index.html’

---

ping

bopiz@lab:~$ ping vietnix.vn

PING vietnix.vn (103.90.224.90) 56(84) bytes of data.

64 bytes from 103.90.224.90 (103.90.224.90): icmp_seq=1 ttl=54 time=4.18 ms

64 bytes from 103.90.224.90 (103.90.224.90): icmp_seq=2 ttl=54 time=3.50 ms

64 bytes from 103.90.224.90 (103.90.224.90): icmp_seq=3 ttl=54 time=6.58 ms

64 bytes from 103.90.224.90 (103.90.224.90): icmp_seq=4 ttl=54 time=5.52 ms

---

bopiz@lab:~$ sudo apt-get install net-tools

Reading package lists... Done

Building dependency tree... Done

Reading state information... Done

The following NEW packages will be installed:

---

bopiz@lab:~$ sudo netstat

Active Internet connections (w/o servers)

Proto Recv-Q Send-Q Local Address           Foreign Address         State   

tcp        0      0 192.168.1.254:37918     ec2-35-73-25-124.:https ESTABLISHED

tcp        0      0 192.168.1.254:36962     69.173.158.64:https     TIME_WAIT

tcp        0      0 192.168.1.254:58530     server-108-157-30:https ESTABLISHED

tcp        0      0 192.168.1.254:56092     af721359bfd441050:https ESTABLISHED

tcp        0      0 192.168.1.254:52402     103.231.98.193:https    ESTABLISHED

tcp        0      0 192.168.1.254:46128     server-108-157-30:https ESTABLISHED

tcp        0      0 192.168.1.254:53140     server-108-157-31:https TIME_WAIT 

bopiz@lab:~$ netstat -t

Active Internet connections (w/o servers)

Proto Recv-Q Send-Q Local Address           Foreign Address         State 

tcp        0      0 192.168.1.254:37918     ec2-35-73-25-124.:https ESTABLISHED

tcp        0      0 192.168.1.254:56092     af721359bfd441050:https ESTABLISHED

tcp        0      0 192.168.1.254:52402     103.231.98.193:https    ESTABLISHED

tcp        0      0 192.168.1.254:46128     server-108-157-30:https ESTABLISHED

---

bopiz@lab:~$ netstat -tu

Active Internet connections (w/o servers)

Proto Recv-Q Send-Q Local Address           Foreign Address         State   

tcp        0      0 192.168.1.254:37918     ec2-35-73-25-124.:https ESTABLISHED

tcp        0      0 192.168.1.254:52402     103.231.98.193:https    ESTABLISHED

tcp        0      0 192.168.1.254:46128     server-108-157-30:https ESTABLISHED

tcp        0      0 192.168.1.254:39358     ec2-54-200-169-22:https ESTABLISHED

---

bopiz@lab:~$ find . -type f -name "postgis-2.0.0"

opiz@lab:~$ $cat > geekfile.txt

bopiz@lab:~$ $sed 's/unix/linux/' geekfile.txt

bash: s/unix/linux/: No such file or directory

bopiz@lab:~$ sed 's/unix/linux/' geekfile.txt

bopiz@lab:~$ sed 's/unix/linux/3g' geekfile.txt

bopiz@lab:~$ echo "Welcome To The Geek Stuff" | sed 's/\(\b[A-Z]\)/\(\1\)/g'

(W)elcome (T)o (T)he (G)eek (S)tuff

bopiz@lab:~$ sudo pam-auth-update

 ---


bopiz@lab:~/Desktop$ find -name filehinh\*

 ./filehinh

 bopiz@lab:~/Desktop/filehinh$  grep 'chan' filehinh.txt

bopiz@lab:~/Desktop/filehinh$ cat filehinh.txt
 
 bopiz@lab:~$ ps
 
 
 PID TTY          TIME CMD
 
 662954 pts/1    00:00:00 bash
 
 739098 pts/1    00:00:00 ps

bopiz@lab:~$ ps
 
 PID TTY          TIME CMD
 
 662954 pts/1    00:00:00 bash
 
 739098 pts/1    00:00:00 ps
 
 --

bopiz@lab:~/Desktop$ mkdir demo_1
 

 bopiz@lab:~/Desktop$ mkdir demo_2

 bopiz@lab:~/Desktop$ mkdir demo_1/demo{1..4}

 bopiz@lab:~/Desktop$ ls ./demo_1/

 demo1  demo2  demo3  demo4

 
 
---

Standard output

Trong terminal, đầu ra tiêu chuẩn (standard output) được mặc định cho màn hình (screen) của người dùng (user). Standard output còn được gọi là stdout là file descriptor mặc định một tiến trình (process) trình có thể ghi đầu ra (output).

Standard Error

Sai số chuẩn trong tiếng Anh là Standard Error, viết tắt là SE.

Sai số chuẩn (SE) là một thuật ngữ thống kê đo lường độ chính xác mà phân phối mẫu đại diện cho một tổng thể bằng cách sử dụng độ lệch chuẩn. Trong thống kê, nếu một giá trị trung bình mẫu khác với giá trị trung bình thực tế của tổng thể, sự chênh lệch này được gọi là sai số chuẩn của giá trị trung bình.

Heading 20 Redirecting Standard Output,Redireacting Standard Error

Một chương trình chạy trên Linux sẽ gửi đầu ra vào một file đặc biệt là stdout (standard output) và error messages đến stderr (standard error). Hai file này được link đến màn hình và không được save lại trong file.Rediretion cho phép chúng ta thay đổi nơi output ra và nơi input đến.Thay vì xuất ra màn hình (terminal), output có thể ghi vào tập tin, hoặc truyền cho process khác xử lý tiếp,Thay vì xuất thông tin lỗi ra màn hình, thì chuyển hướng lỗi giúp xuất thông tin lỗi ra tệp tin.

 /dev/null

 bopiz@lab:~/Desktop$ grep -r power /sys 2>/dev/null


  là một file thiết bị ảo. Đối với các chương trình có liên quan, chúng được coi như những file thực sự. Các tiện ích có thể yêu cầu dữ liệu từ loại nguồn này và hệ điều hành sẽ cung cấp dữ liệu cho chúng. Nhưng, thay vì đọc từ ổ đĩa, hệ điều hành sẽ tạo ra dữ liệu này một cách linh hoạt.

  Redirecting Standard Input

  Thiết bị vào tiêu chuẩn (standard input device) còn được gọi là stdin, là thiết bị mà nó nhận đầu vào (input). Thông thường, đây là bàn phím (keyboard) nhưng bạn có thể chỉ định rằng đầu vào đến từ cổng nối tiếp (serial port) hoặc tập tin đĩa (disk file) chẳng hạn.
