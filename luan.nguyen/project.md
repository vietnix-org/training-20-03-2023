#### project
---
--- bash 
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
tracefs                0        0         0    - /sys/kernel/tracing
debugfs                0        0         0    - /sys/kernel/debug
configfs               0        0         0    - /sys/kernel/config
ramfs                  0        0         0    - /run/credentials/systemd-sysusers.service
/dev/loop1         56960    56960         0 100% /snap/core18/2714
/dev/loop0           128      128         0 100% /snap/bare/5
/dev/loop2         64896    64896         0 100% /snap/core20/1822
/dev/loop3        246400   246400         0 100% /snap/firefox/2356
/dev/loop5        354688   354688         0 100% /snap/gnome-3-38-2004/119
/dev/loop9           384      384         0 100% /snap/snapd-desktop-integration/49
/dev/loop7         47104    47104         0 100% /snap/snap-store/638
/dev/loop8         51072    51072         0 100% /snap/snapd/18357
/dev/loop6         93952    93952         0 100% /snap/gtk-common-themes/1535
/dev/sda4      253274848 17783072 222553332   8% /var/snap/firefox/common/host-hunspell
/dev/loop4        168832   168832         0 100% /snap/gnome-3-28-1804/161
/dev/loop10       173568   173568         0 100% /snap/spotify/60
/dev/nvme0n1p1     98304    31854     66450  33% /boot/efi
binfmt_misc            0        0         0    - /proc/sys/fs/binfmt_misc
tmpfs            1629304     2332   1626972   1% /run/snapd/ns
nsfs                   0        0         0    - /run/snapd/ns/snapd-desktop-integration.mnt
tmpfs            1629300     4752   1624548   1% /run/user/1000
gvfsd-fuse             0        0         0    - /run/user/1000/gvfs
nsfs                   0        0         0    - /run/snapd/ns/snap-store.mnt
nsfs                   0        0         0    - /run/snapd/ns/firefox.mnt
/dev/loop11        64896    64896         0 100% /snap/core20/1828
/dev/loop12       119680   119680         0 100% /snap/core/14784
/dev/loop13       244352   244352         0 100% /snap/code/122
---
 bopiz@lab:~$ df -ha
df: /run/user/1000/doc: Operation not permitted
Filesystem      Size  Used Avail Use% Mounted on
sysfs              0     0     0    - /sys
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
/dev/loop0      128K  128K     0 100% /snap/bare/5
/dev/loop2       64M   64M     0 100% /snap/core20/1822
/dev/loop3      241M  241M     0 100% /snap/firefox/2356
/dev/loop5      347M  347M     0 100% /snap/gnome-3-38-2004/119
/dev/loop9      384K  384K     0 100% /snap/snapd-desktop-integration/49
/dev/loop7       46M   46M     0 100% /snap/snap-store/638
/dev/loop8       50M   50M     0 100% /snap/snapd/18357
/dev/loop6       92M   92M     0 100% /snap/gtk-common-themes/1535
/dev/sda4       242G   17G  213G   8% /var/snap/firefox/common/host-hunspell
/dev/loop4      165M  165M     0 100% /snap/gnome-3-28-1804/161
/dev/loop10     170M  170M     0 100% /snap/spotify/60
/dev/nvme0n1p1   96M   32M   65M  33% /boot/efi
binfmt_misc        0     0     0    - /proc/sys/fs/binfmt_misc
tmpfs           1.6G  2.3M  1.6G   1% /run/snapd/ns
nsfs               0     0     0    - /run/snapd/ns/snapd-desktop-integration.mnt
tmpfs           1.6G  4.7M  1.6G   1% /run/user/1000
gvfsd-fuse         0     0     0    - /run/user/1000/gvfs
nsfs               0     0     0    - /run/snapd/ns/snap-store.mnt
nsfs               0     0     0    - /run/snapd/ns/firefox.mnt
/dev/loop11      64M   64M     0 100% /snap/core20/1828
/dev/loop12     117M  117M     0 100% /snap/core/14784
/dev/loop13     239M  239M     0 100% /snap/code/122
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
tmpfs               5120        4      5116   1% /run/lock
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


Disk /dev/loop6: 91.69 MiB, 96141312 bytes, 187776 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop7: 45.93 MiB, 48160768 bytes, 94064 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/nvme0n1: 119.24 GiB, 128035676160 bytes, 250069680 sectors
Disk model: WDC PC SN520 SDAPMUW-128G-1101          
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: 4E9BB10C-0118-4AD5-B831-3E23E19019B7

Device             Start       End   Sectors   Size Type
/dev/nvme0n1p1      2048    206847    204800   100M EFI System
/dev/nvme0n1p2    206848    239615     32768    16M Microsoft reserved
/dev/nvme0n1p3    239616 249023116 248783501 118.6G Microsoft basic data
/dev/nvme0n1p4 249024512 250066943   1042432   509M Windows recovery environment


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


Disk /dev/loop8: 49.84 MiB, 52260864 bytes, 102072 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop9: 304 KiB, 311296 bytes, 608 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop10: 169.42 MiB, 177647616 bytes, 346968 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop11: 63.29 MiB, 66359296 bytes, 129608 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop12: 116.79 MiB, 122458112 bytes, 239176 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop13: 238.58 MiB, 250171392 bytes, 488616 sectors
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
---
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
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb invpcid_single pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt xsavec xgetbv1 xsaves dtherm ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp md_clear flush_l1d arch_capabilities
vmx flags	: vnmi preemption_timer invvpid ept_x_only ept_ad ept_1gb flexpriority tsc_offset vtpr mtf vapic ept vpid unrestricted_guest ple pml ept_mode_based_exec
bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs itlb_multihit srbds mmio_stale_data retbleed
bogomips	: 4800.00
clflush size	: 64
cache_alignment	: 64
address sizes	: 39 bits physical, 48 bits virtual
power management:

processor	: 2
vendor_id	: GenuineIntel
cpu family	: 6
model		: 158
model name	: Intel(R) Core(TM) i5-9300H CPU @ 2.40GHz
stepping	: 10
microcode	: 0xf0
cpu MHz		: 800.002
cache size	: 8192 KB
physical id	: 0
siblings	: 8
core id		: 2
cpu cores	: 4
apicid		: 4
initial apicid	: 4
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

processor	: 3
vendor_id	: GenuineIntel
cpu family	: 6
model		: 158
model name	: Intel(R) Core(TM) i5-9300H CPU @ 2.40GHz
stepping	: 10
microcode	: 0xf0
cpu MHz		: 800.005
cache size	: 8192 KB
physical id	: 0
siblings	: 8
core id		: 3
cpu cores	: 4
apicid		: 6
initial apicid	: 6
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

processor	: 4
vendor_id	: GenuineIntel
cpu family	: 6
model		: 158
model name	: Intel(R) Core(TM) i5-9300H CPU @ 2.40GHz
stepping	: 10
microcode	: 0xf0
cpu MHz		: 800.002
cache size	: 8192 KB
physical id	: 0
siblings	: 8
core id		: 0
cpu cores	: 4
apicid		: 1
initial apicid	: 1
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

processor	: 5
vendor_id	: GenuineIntel
cpu family	: 6
model		: 158
model name	: Intel(R) Core(TM) i5-9300H CPU @ 2.40GHz
stepping	: 10
microcode	: 0xf0
cpu MHz		: 800.000
cache size	: 8192 KB
physical id	: 0
siblings	: 8
core id		: 1
cpu cores	: 4
apicid		: 3
initial apicid	: 3
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

processor	: 6
vendor_id	: GenuineIntel
cpu family	: 6
model		: 158
model name	: Intel(R) Core(TM) i5-9300H CPU @ 2.40GHz
stepping	: 10
microcode	: 0xf0
cpu MHz		: 800.022
cache size	: 8192 KB
physical id	: 0
siblings	: 8
core id		: 2
cpu cores	: 4
apicid		: 5
initial apicid	: 5
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

processor	: 7
vendor_id	: GenuineIntel
cpu family	: 6
model		: 158
model name	: Intel(R) Core(TM) i5-9300H CPU @ 2.40GHz
stepping	: 10
microcode	: 0xf0
cpu MHz		: 799.995
cache size	: 8192 KB
physical id	: 0
siblings	: 8
core id		: 3
cpu cores	: 4
apicid		: 7
initial apicid	: 7
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
    Flags:               fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mc
                         a cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss 
                         ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc art
                          arch_perfmon pebs bts rep_good nopl xtopology nonstop_
                         tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cp
                         l vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1
                          sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsav
                         e avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault
                          epb invpcid_single pti ssbd ibrs ibpb stibp tpr_shadow
                          vnmi flexpriority ept vpid ept_ad fsgsbase tsc_adjust 
                         bmi1 avx2 smep bmi2 erms invpcid mpx rdseed adx smap cl
                         flushopt intel_pt xsaveopt xsavec xgetbv1 xsaves dtherm
                          ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp
                          md_clear flush_l1d arch_capabilities
Virtualization features: 
  Virtualization:        VT-x
Caches (sum of all):     
  L1d:                   128 KiB (4 instances)
  L1i:                   128 KiB (4 instances)
  L2:                    1 MiB (4 instances)
  L3:                    8 MiB (1 instance)
NUMA:                    
  NUMA node(s):          1
  NUMA node0 CPU(s):     0-7
Vulnerabilities:         
  Itlb multihit:         KVM: Mitigation: VMX disabled
  L1tf:                  Mitigation; PTE Inversion; VMX conditional cache flushe
                         s, SMT vulnerable
  Mds:                   Mitigation; Clear CPU buffers; SMT vulnerable
  Meltdown:              Mitigation; PTI
  Mmio stale data:       Mitigation; Clear CPU buffers; SMT vulnerable
  Retbleed:              Mitigation; IBRS
  Spec store bypass:     Mitigation; Speculative Store Bypass disabled via prctl
  Spectre v1:            Mitigation; usercopy/swapgs barriers and __user pointer
                          sanitization
  Spectre v2:            Mitigation; IBRS, IBPB conditional, RSB filling, PBRSB-
                         eIBRS Not affected
  Srbds:                 Mitigation; Microcode
  Tsx async abort:       Not affected
---
bopiz@lab:~$ lscpu | grep max
CPU max MHz:                     4100.0000
---
bopiz@lab:~$ free
               total        used        free      shared  buff/cache   available
Mem:        16293020     4581960     5403456      313272     6307604    11072324
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
    link/ether f8:75:a4:a5:87:38 brd ff:ff:ff:ff:ff:ff
3: wlp0s20f3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 54:8d:5a:88:24:17 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.254/24 brd 192.168.1.255 scope global dynamic noprefixroute wlp0s20f3
       valid_lft 2401sec preferred_lft 2401sec
    inet6 2402:800:63b8:adfc:f180:b1ad:3075:9b8e/64 scope global temporary dynamic 
       valid_lft 66149sec preferred_lft 66149sec
    inet6 2402:800:63b8:adfc:4d6:d5a3:4716:835b/64 scope global dynamic mngtmpaddr noprefixroute 
       valid_lft 66149sec preferred_lft 66149sec
    inet6 fe80::c8c7:fa92:7089:f6bf/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
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
       configuration: broadcast=yes driver=iwlwifi driverversion=5.19.0-35-generic firmware=46.fae53a8b.0 9000-pu-b0-jf-b0- ip=192.168.1.254 latency=0 link=yes multicast=yes wireless=IEEE 802.11
       resources: irq:16 memory:b3418000-b341bfff
  *-network
       description: Ethernet interface
       product: RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller
       vendor: Realtek Semiconductor Co., Ltd.
       physical id: 0
       bus info: pci@0000:07:00.0
       logical name: enp7s0
       version: 15
       serial: f8:75:a4:a5:87:38
       capacity: 1Gbit/s
       width: 64 bits
       clock: 33MHz
       capabilities: pm msi pciexpress msix bus_master cap_list ethernet physical tp mii 10bt 10bt-fd 100bt 100bt-fd 1000bt-fd autonegotiation
       configuration: autonegotiation=on broadcast=yes driver=r8169 driverversion=5.19.0-35-generic firmware=rtl8168h-2_0.0.2 02/26/15 latency=0 link=no multicast=yes port=twisted pair
       resources: irq:17 ioport:3000(size=256) memory:b3204000-b3204fff memory:b3200000-b3203fff
---
theo doi tieng trinh
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
.bash_history  .gnupg            Public                     VMWARE.der
.bash_logout   .local            snap                       VMWARE.priv
.bashrc        .mozilla          .ssh                       .vscode
.cache         Music             .sudo_as_admin_successful  .wget-hsts
.config        my_link.txt       symbolic_link              .xinputrc
Desktop        my_movie          Templates
Documents      .pam_environment  .thunderbird
.dotnet        Pictures          Videos
bopiz@lab:~$ ls -r
VMWARE.priv  Videos         snap      my_movie     file.txt   Desktop
VMWARE.der   Templates      Public    my_link.txt  Downloads
vmware       symbolic_link  Pictures  Music        Documents
---
### phan quyen
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
drwxr-xr-x 2 bopiz bopiz 4096 Mar 20 10:37 Templates
drwxr-xr-x 2 bopiz bopiz 4096 Mar 20 10:37 Videos
drwxrwxr-x 3 bopiz bopiz 4096 Mar 20 13:41 vmware
-rw-rw-r-- 1 bopiz bopiz  777 Mar 20 13:44 VMWARE.der
-rw------- 1 bopiz bopiz 1704 Mar 20 13:44 VMWARE.priv

### Mount/Umount
---
--- 
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

Symbolic Links Hard Links
---
bopiz@lab:~$ ls -l
total 52
drwxr-xr-x 3 bopiz bopiz 4096 Mar 20 15:08 Desktop
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
drwxr-xr-x 2 bopiz bopiz 4096 Mar 20 10:37 Templates
drwxr-xr-x 2 bopiz bopiz 4096 Mar 20 10:37 Videos
drwxrwxr-x 3 bopiz bopiz 4096 Mar 20 13:41 vmware
-rw-rw-r-- 1 bopiz bopiz  777 Mar 20 13:44 VMWARE.der
-rw------- 1 bopiz bopiz 1704 Mar 20 13:44 VMWARE.priv
---
bopiz@lab:~$ ls -i
9175078 Desktop       9182557 my_link.txt    9199287 trans.txt
9175082 Documents     9182545 my_movie       9197816 viblo.txt
9175079 Downloads     9175084 Pictures       9175085 Videos
9184356 file.txt      9175081 Public         9190768 vmware
9197816 hardlink.txt  9175257 snap           9190459 VMWARE.der
9198398 luan.txt      9186398 symbolic_link  9188202 VMWARE.priv
9175083 Music         9175080 Templates
bopiz@lab:~$ touch viblo.txt
bopiz@lab:~$ ln viblo.txt hardlink.txt
bopiz@lab:~$ ls -i
9175078 Desktop       9182545 my_movie       9197816 viblo.txt
9175082 Documents     9175084 Pictures       9175085 Videos
9175079 Downloads     9175081 Public         9190768 vmware
9184356 file.txt      9175257 snap           9190459 VMWARE.der
9197816 hardlink.txt  9186398 symbolic_link  9188202 VMWARE.priv
9175083 Music         9175080 Templates
9182557 my_link.txt   9199287 trans.txt
---
bopiz@lab:~$ touch luan1.txt
bopiz@lab:~$ ln -s luan1.txt softlink.txt
bopiz@lab:~$ ls -i luan1.txt softlink.txt
9199580 luan1.txt  9199581 softlink.txt
bopiz@lab:~$ 

bopiz@lab:~$ echo "luan run fast" > luan1.txt
bopiz@lab:~$ rm luan1.txt
bopiz@lab:~$ cat softlink.txt
cat: softlink.txt: No such file or directory
bopiz@lab:~$ 
###
nen,giai nen
--- 
bopiz@lab:~$ sudo apt-get install rar unrar unace zip unzip p7zip-full p7zip-rar sharutils mpack arj cabextract file-roller uudeview

###
do luong bang thong su dung
bopiz@lab:~$ sudo apt install vnstat
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
bopiz@lab:~$ vnstat --help
vnStat 2.9 by Teemu Toivola <tst at iki dot fi>

      -5,  --fiveminutes [limit]   show 5 minutes
      -h,  --hours [limit]         show hours
      -hg, --hoursgraph            show hours graph
      -d,  --days [limit]          show days
      -m,  --months [limit]        show months
      -y,  --years [limit]         show years
      -t,  --top [limit]           show top days
      -b, --begin <date>           set list begin date
      -e, --end <date>             set list end date
bopiz@lab:~$ sudo ufw status verbose
Status: inactive
bopiz@lab:~$ sudo ufw allow 22/tcp
Skipping adding existing rule
Skipping adding existing rule (v6)
bopiz@lab:~$ sudo ufw allow http
Rules updated
Rules updated (v6)
bopiz@lab:~$  sudo ufw allow https
Rules updated
Rules updated (v6)
bopiz@lab:~$ sudo ufw allow 80/tcp
Skipping adding existing rule
Skipping adding existing rule (v6)
bopiz@lab:~$  sudo ufw allow 443/tcp
Rules updated
Rules updated (v6)
bopiz@lab:~$ sudo ufw allow 53
Rules updated
Rules updated (v6)
bopiz@lab:~$ sudo ufw status verbose
Status: inactive
bopiz@lab:~$ sudo ufw allow from 192.168.1.10 to any port 22
Rules updated
bopiz@lab:~$ sudo ufw allow from any to 74.86.26.69 port 443 proto tcp
Rules updated
bopiz@lab:~$ ufw allow from 192.168.1.0/24 to any app Samba
ERROR: You need to be root to run this script
bopiz@lab:~$ sudo ufw delete 5
Deleting:
 allow 53
Proceed with operation (y|n)? y
Rules updated

###
--- 
gen keyssh
bopiz@lab:~$ ssh-keygen -t rsa
Generating public/private rsa key pair.
Enter file in which to save the key (/home/bopiz/.ssh/id_rsa): 
/home/bopiz/.ssh/id_rsa already exists.
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
###
xem nội dung của file mà không cần dùng editor
bopiz@lab:~$ tall sample.txt
Command 'tall' not found, did you mean:
  command 'tali' from snap tali (40.8)
  command 'pall' from snap pall (3.0.1)
  command 'tali' from deb tali (1:40.6-1)
  command 'tail' from deb coreutils (8.32-4.1ubuntu1)
  command 'wall' from deb bsdutils (1:2.37.2-4ubuntu3)
  command 'taql' from deb casacore-tools (3.4.0-2build1)
  command 'talk' from deb inetutils-talk (2:2.2-2)
  command 'talk' from deb talk (0.17-17)
See 'snap info <snapname>' for additional versions.
###
find, grep, awk, sed, tr, head, tail, less, more, sort, uniq, cut, join, diff, xargs, traceroute, netstat, kill, pkill, wc, wget, git, rsyn, ping, tee, ln, mkdir 
bopiz@lab:~$ sort mix.txt
abc
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
Need to get 45.4 kB of archives.
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
 9  142.251.240.252 (142.251.240.252)  34.845 ms 216.239.50.55 (216.239.50.55)  33.059 ms 108.170.240.225 (108.170.240.225)  33.069 ms
10  108.170.240.242 (108.170.240.242)  33.026 ms 108.170.240.164 (108.170.240.164)  35.679 ms 74.125.242.34 (74.125.242.34)  36.846 ms
11  209.85.250.132 (209.85.250.132)  48.134 ms 72.14.234.96 (72.14.234.96)  33.607 ms  38.635 ms
12  142.251.68.128 (142.251.68.128)  48.630 ms 142.251.230.182 (142.251.230.182)  53.590 ms 142.251.68.128 (142.251.68.128)  48.428 ms
13  108.170.233.31 (108.170.233.31)  48.103 ms  48.936 ms 209.85.250.132 (209.85.250.132)  52.484 ms
14  108.170.241.65 (108.170.241.65)  47.731 ms 108.170.241.97 (108.170.241.97)  52.438 ms 108.170.241.65 (108.170.241.65)  51.393 ms
15  hkg12s33-in-f14.1e100.net (172.217.24.110)  48.685 ms 216.239.43.61 (216.239.43.61)  48.364 ms  47.795 ms

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
12  142.251.68.128 (142.251.68.128)  50.343 ms  49.472 ms  59.199 ms
13  108.170.232.111 (108.170.232.111)  48.251 ms 74.125.251.2 (74.125.251.2)  51.055 ms 209.85.250.132 (209.85.250.132)  52.855 ms
14  108.170.241.65 (108.170.241.65)  48.202 ms 108.170.241.97 (108.170.241.97)  52.834 ms  52.789 ms
15  108.170.232.111 (108.170.232.111)  49.013 ms hkg12s26-in-f14.1e100.net (142.250.66.46)  49.044 ms 142.250.225.255 (142.250.225.255)  48.112 ms
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

www.example.com/ind 100%[===================>]   1.23K  --.-KB/s    in 0s      

2023-03-20 16:13:11 (69.4 MB/s) - ‘www.example.com/index.html’ saved [1256/1256]

Loading robots.txt; please ignore errors.

### ping 

bopiz@lab:~$ ping vietnix.vn
PING vietnix.vn (103.90.224.90) 56(84) bytes of data.
64 bytes from 103.90.224.90 (103.90.224.90): icmp_seq=1 ttl=54 time=4.18 ms
64 bytes from 103.90.224.90 (103.90.224.90): icmp_seq=2 ttl=54 time=3.50 ms
64 bytes from 103.90.224.90 (103.90.224.90): icmp_seq=3 ttl=54 time=6.58 ms
64 bytes from 103.90.224.90 (103.90.224.90): icmp_seq=4 ttl=54 time=5.52 ms
64 bytes from 103.90.224.90 (103.90.224.90): icmp_seq=5 ttl=54 time=5.45 ms
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
tcp        0      0 192.168.1.254:55320     52.46.128.147:https     TIME_WAIT 
bopiz@lab:~$ netstat -t
Active Internet connections (w/o servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State      
tcp        0      0 192.168.1.254:37918     ec2-35-73-25-124.:https ESTABLISHED
tcp        0      0 192.168.1.254:56092     af721359bfd441050:https ESTABLISHED
tcp        0      0 192.168.1.254:52402     103.231.98.193:https    ESTABLISHED
tcp        0      0 192.168.1.254:46128     server-108-157-30:https ESTABLISHED
tcp        0      0 192.168.1.254:53140     server-108-157-31:https TIME_WAIT  
tcp        0      0 192.168.1.254:34090     ec2-52-220-77-120:https TIME_WAIT 
bopiz@lab:~$ netstat -tu
Active Internet connections (w/o servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State      
tcp        0      0 192.168.1.254:37918     ec2-35-73-25-124.:https ESTABLISHED
tcp        0      0 192.168.1.254:52402     103.231.98.193:https    ESTABLISHED
tcp        0      0 192.168.1.254:46128     server-108-157-30:https ESTABLISHED
tcp        0      0 192.168.1.254:39358     ec2-54-200-169-22:https ESTABLISHED
tcp        0      0 192.168.1.254:43252     server-108-157-30:https ESTABLISHED
tcp        0      0 192.168.1.254:49594     server-108-157-36:https ESTABLISHED
###
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
###
Redirecting Standard Output
bopiz@lab:~$ ls -la
total 136
drwxr-x--- 23 bopiz bopiz 4096 Mar 20 15:49 .
drwxr-xr-x  3 root  root  4096 Mar 20 10:16 ..
-rw-------  1 bopiz bopiz 5266 Mar 20 15:14 .bash_history
-rw-r--r--  1 bopiz bopiz  220 Mar 20 10:16 .bash_logout
-rw-r--r--  1 bopiz bopiz 3771 Mar 20 10:16 .bashrc
drwx------ 18 bopiz bopiz 4096 Mar 20 14:15 .cache
drwx------ 21 bopiz bopiz 4096 Mar 20 15:08 .config
drwxr-xr-x  3 bopiz bopiz 4096 Mar 20 15:08 Desktop
drwxr-xr-x  2 bopiz bopiz 4096 Mar 20 10:37 Documents
drwxrwxr-x  3 bopiz bopiz 4096 Mar 20 14:15 .dotnet
drwxr-xr-x  3 bopiz bopiz 4096 Mar 20 14:01 Downloads
-rw-rw-r--  1 bopiz bopiz   81 Mar 20 12:01 file.txt
-rw-rw-r--  1 bopiz bopiz    0 Mar 20 15:49 geekfile.txt
drwx------  2 bopiz bopiz 4096 Mar 20 15:18 .gnupg
-rw-rw-r--  2 bopiz bopiz    0 Mar 20 15:27 hardlink.txt
drwx------  3 bopiz bopiz 4096 Mar 20 10:37 .local
-rw-rw-r--  1 bopiz bopiz    0 Mar 20 15:28 luan.txt
drwx------  3 bopiz bopiz 4096 Mar 20 10:39 .mozilla
drwxr-xr-x  2 bopiz bopiz 4096 Mar 20 10:37 Music
lrwxrwxrwx  1 bopiz bopiz   11 Mar 20 12:31 my_link.txt -> my_file.txt
lrwxrwxrwx  1 bopiz bopiz   20 Mar 20 12:32 my_movie -> /mnt/my_drive/movies
-rw-r--r--  1 bopiz bopiz  310 Mar 20 11:20 .pam_environment
drwxr-xr-x  2 bopiz bopiz 4096 Mar 20 10:37 Pictures
drwx------  3 bopiz bopiz 4096 Mar 20 14:12 .pki
-rw-r--r--  1 bopiz bopiz  807 Mar 20 10:16 .profile
drwxr-xr-x  2 bopiz bopiz 4096 Mar 20 10:37 Public
drwx------  5 bopiz bopiz 4096 Mar 20 11:52 snap
lrwxrwxrwx  1 bopiz bopiz    9 Mar 20 15:29 softlink.txt -> luan1.txt
drwx------  2 bopiz bopiz 4096 Mar 20 13:21 .ssh
-rw-r--r--  1 bopiz bopiz    0 Mar 20 10:43 .sudo_as_admin_successful
lrwxrwxrwx  1 bopiz bopiz   11 Mar 20 12:06 symbolic_link -> source_file
drwxr-xr-x  2 bopiz bopiz 4096 Mar 20 10:37 Templates
drwx------  6 bopiz bopiz 4096 Mar 20 10:39 .thunderbird
lrwxrwxrwx  1 bopiz bopiz   28 Mar 20 15:25 trans.txt -> /home/james/transactions.txt
-rw-rw-r--  2 bopiz bopiz    0 Mar 20 15:27 viblo.txt
drwxr-xr-x  2 bopiz bopiz 4096 Mar 20 10:37 Videos
drwxr-xr-x  2 bopiz bopiz 4096 Mar 20 15:08 .vmware
drwxrwxr-x  3 bopiz bopiz 4096 Mar 20 13:41 vmware
-rw-rw-r--  1 bopiz bopiz  777 Mar 20 13:44 VMWARE.der
-rw-------  1 bopiz bopiz 1704 Mar 20 13:44 VMWARE.priv
drwxrwxr-x  3 bopiz bopiz 4096 Mar 20 14:12 .vscode
-rw-rw-r--  1 bopiz bopiz  177 Mar 20 13:58 .wget-hsts
-rw-rw-r--  1 bopiz bopiz  131 Mar 20 12:42 .xinputrc
bopiz@lab:~$ echo Hello World > file.txt
bopiz@lab:~$ sudo apt-cache pkgnames > packegNames
bopiz@lab:~$ cat file.txt
Hello World
bopiz@lab:~$ cat pakegName
cat: pakegName: No such file or directory
bopiz@lab:~$ less < /etc/passwd

[1]+  Stopped                 less < /etc/passwd
bopiz@lab:~$ 
Redireacting Standard Error
bopiz@lab:~$ command > out 2>error
bopiz@lab:~$ command >out 2>&1
bopiz@lab:~$ command &> out

dev/null
bopiz@lab:~$ cat /dev/null
bopiz@lab:~$ stat /dev/null
  File: /dev/null
  Size: 0         	Blocks: 0          IO Block: 4096   character special file
Device: 5h/5d	Inode: 5           Links: 1     Device type: 1,3
Access: (0666/crw-rw-rw-)  Uid: (    0/    root)   Gid: (    0/    root)
Access: 2023-03-20 15:16:46.555572591 +0700
Modify: 2023-03-20 15:16:46.555572591 +0700
Change: 2023-03-20 15:16:46.555572591 +0700
 Birth: 2023-03-20 15:16:20.404000000 +0700
bopiz@lab:~$ 
bopiz@lab:~$ echo 'Hello from luan' > /dev/null
bopiz@lab:~$ cat --INCORRECT_OPTION > /dev/null
cat: unrecognized option '--INCORRECT_OPTION'
Try 'cat --help' for more information.
bopiz@lab:~$ cat --INCORRECT_OPTION > /dev/null 2>/dev/null
bopiz@lab:~$ command > /dev/null 2>&1
bopiz@lab:~$ cat --INCORRECT_OPTION > dev/null 2>&1
bash: dev/null: No such file or directory
bopiz@lab:~$ 

