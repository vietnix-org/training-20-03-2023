Heading 1 	Xem dung lượng disk

Xem dung lượng ổ đĩa đã sử dụng
![df](./Pictures/Screenshot%20from%202023-03-20%2014-09-10.png)
Heading 2  Xem các phân vùng

Xem phân vùng ổ đĩa sda,sdb
![lsblk](./Pictures/Screenshot%20from%202023-03-20%2014-22-50.png)
Heading 3 Xem cpu, ram, network

Heading 3.1 Xem CPU 

Kiểm tra thông số cpu
![lscpu](./Pictures/Screenshot%20from%202023-03-20%2014-25-11.png)

Heading 3.2 Xem RAM 

Kiểm tra dung lượng và bộ nhớ RAM
![lscpu](./Pictures/Screenshot%20from%202023-03-20%2014-34-24.png)

Heading 3.3 Xem Card mạng(Network)

Kiểm tra trạng thái dịch vụ Network
![systemctl status NetworkManager.service](Pictures/Screenshot%20from%202023-03-20%2014-39-27.png)

Kiểm tra trạng thái các card đang kết nối
![nmcli dev status](Pictures/Screenshot%20from%202023-03-20%2014-40-00.png)

Kiểm tra danh sách card mạng đang kết nối
![nmcli connection show](Pictures/Screenshot%20from%202023-03-20%2014-41-05.png)

Heading 4 Theo dõi chi tiết tiến trình

Kiểm tra tiến trình đang hoạt động
![top,htop](Pictures/Screenshot%20from%202023-03-20%2015-03-58.png)

Kiểm tra thông số tíến trình
![ps](Pictures/Screenshot%20from%202023-03-20%2015-05-27.png)

Heading 5 Liệt kê danh sách file/thư mục

Liệt kê tập tin/thư mục
![ls](Pictures/Screenshot%20from%202023-03-20%2015-13-23.png)

Liệt kê chi tiết quyền tập tin/thư mục
![ll](Pictures/Screenshot%20from%202023-03-20%2015-13-39.png)

Heading 6 Tìm kiếm, copy, di chuyển,... file/thư mục

Copy file/thư mục
![cp -r](Pictures/Screenshot%20from%202023-03-20%2015-19-39.png)

Di chuyển file/thư mục
![mv](Pictures/Screenshot%20from%202023-03-20%2015-22-34.png)

Tìm kiếm file/thư mục
![locate](Pictures/Screenshot%20from%202023-03-20%2015-28-16.png)

![find](Pictures/Screenshot%20from%202023-03-20%2015-30-00.png)

Heading 7 Phân quyền cơ bản và phân quyền nâng cao

Phân quyền cơ bản, chỉ cho admin chỉnh sửa và truy cập
![chmod -R](Pictures/Screenshot%20from%202023-03-20%2015-36-00.png)

Phân quyền tập tin/thư mục thuộc nhóm
![chpgrp](Pictures/Screenshot%20from%202023-03-20%2015-50-20.png)

Heading 8 Làm quen với trình editor vim, vi,...

Sử dụng vi và vim để truy cập trình editor
![vi](Pictures/Screenshot%20from%202023-03-20%2015-55-26.png)

![vim](Pictures/Screenshot%20from%202023-03-20%2015-56-09.png)

Heading 9 Mount và Unmount

Tạo Mount và Unmont
![mkdir/mnt/sd(x),mount /dev/sdb1 /mnt/sd1,umount /mnt/sd1](Pictures/Screenshot%20from%202023-03-20%2016-02-30.png)

Heading 10 Symbolic Links

Tạo Symbolic Links
![ln -s /đường dẫn tuyệt đối/ file name](Pictures/Screenshot%20from%202023-03-20%2016-11-32.png)

Heading 11 Hard Links
 
Tạo Hardlink thư mục/tập tin
![ln (file gốc) (file đích)](Pictures/Screenshot%20from%202023-03-20%2016-26-25.png)

**Sự khác nhau giữa hardlink và symbolic link**

![sosanh](Pictures/037c5f68e5d2388c61c3.png)

Hard links

-	Chỉ liên kết được tới file, không liên kết được tới thư mục
-	Không tham chiếu được tới file trên ổ đĩa khác
-	Liên kết tới một file vẫn còn ngay cả khi file đó đã được di chuyển
-	Được liên kết với inode tham chiếu vật lý trên ổ cứng nơi chứa file
-	Có thể làm việc với mọi ứng dụng

Symbolic links
-	Có thể liên kết được tới thư mục
-	Có thể tham chiếu tới file/thư mục khác ổ đĩa
-	Liên kết không còn tham chiếu được nữa nếu file được di chuyển
-	Liên kết tham chiếu tên file/thư mục trừu tượng mà không phải địa chỉ vật lý. Chúng được cung cấp inode riêng của mình
-	Một số ứng dụng không cho phép symbolic link

Heading 12 Nén, giải nén

Nén 
![tar -zcf](Pictures/Screenshot%20from%202023-03-20%2016-31-21.png)

Giải nén
![tar -zxvf](Pictures/Screenshot%20from%202023-03-20%2016-32-08.png)

Heading 13 Đo lượng băng thông sử dụng (traffic inbound, outbound)

Kiểm tra lưu lượng hệ thống đang sử dụng
![./vnstart](Pictures/Screenshot%20from%202023-03-20%2016-42-47.png)

Kiểm tra lưu lượng sử dụng trong giờ
![./vnstart -h](Pictures/Screenshot%20from%202023-03-20%2016-43-02.png)

Kiểm tra lưu lượng sử dụng trong ngày
![./vnstart -d](Pictures/Screenshot%20from%202023-03-20%2016-43-10.png)

Kiểm tra lưu lượng sử dụng cao nhất
![./vnstart -t](Pictures/Screenshot%20from%202023-03-20%2016-43-18.png)

Thống kê lưu lượng theo thời gian thực
![./vnstart -l](Pictures/Screenshot%20from%202023-03-20%2016-49-16.png)

Heading 14 nmap, telnet, ping, ssh, copy file/thư mục từ local đến public host 

Sử dụng Nmap quét nhanh
![nmap -F target IP](Pictures/Screenshot%20from%202023-03-20%2017-08-35.png)

Sử dụng telnet
![telnet ip, port](Pictures/Screenshot%20from%202023-03-20%2017-13-26.png)

Ping 
![ping IP](Pictures/Screenshot%20from%202023-03-20%2017-15-11.png)

Sử dụng ssh 
![ssh IP](Pictures/Screenshot%20from%202023-03-20%2017-23-39.png)

Heading 15 SSH gen key

Tạo SSH gen key connection server SSH
![ls -l ~/.ssh/id_*.pub](Pictures/Screenshot%20from%202023-03-21%2009-43-37.png)
![ssh-keygen](Pictures/Screenshot%20from%202023-03-21%2009-44-39.png)
![ssh-copy-id username@IP server](Pictures/Screenshot%20from%202023-03-21%2009-45-38.png)

Heading 16 Xem file không dùng Editor

Sử dụng Head và Tail để xem file
![head,tail file name](Pictures/Screenshot%20from%202023-03-21%2009-51-59.png)

Heading 17 Đổ nội dung 1 chuỗi vào cuối file

Sử dụng toán tử >> để đổ nội dung vào file 
![file1 >> file2](Pictures/Screenshot%20from%202023-03-21%2010-35-47.png)

Heading 18 find, grep, awk, sed, tr, head, tail, less, more, sort, uniq, cut, join, diff, xargs, traceroute, netstat, kill, pkill, wc, wget, git, rsyn, ping, tee, ln, mkdir

Tìm kiếm bằng find
![find filename](Pictures/Screenshot%20from%202023-03-21%2010-41-37.png)

Tìm kiếm bằng grep
![grep option filename](Pictures/Screenshot%20from%202023-03-21%2010-41-46.png)

Sử dụng awk để in nội dung 
![awk option filename](Pictures/Screenshot%20from%202023-03-21%2010-42-01.png)

Sử dụng sed in ra số dòng

![sed option](Pictures/Screenshot%20from%202023-03-21%2010-44-51.png)

Sử dụng tr trans văn bản 
![tr -option set1,set2](Pictures/Screenshot%20from%202023-03-21%2011-20-57.png)

Sử dụng Head và Tail để xem file đầu cuối
![head,tail file name](Pictures/Screenshot%20from%202023-03-21%2009-51-59.png)

Sử dụng less
![less option filename](Pictures/Screenshot%20from%202023-03-21%2010-51-11.png)
![less option filename](Pictures/Screenshot%20from%202023-03-21%2010-50-57.png)

Sử dụng more
![more option filename](Pictures/Screenshot%20from%202023-03-21%2010-53-05.png)

Sử dụng sort để sắp xếp 
![sort option filename](Pictures/Screenshot%20from%202023-03-21%2010-54-56.png)

Sử dụng uniq
![uniq option filename](Pictures/Screenshot%20from%202023-03-21%2010-57-02.png)

Sử dụng cut 
![cut filename option number](Pictures/Screenshot%20from%202023-03-21%2011-07-44.png)

Sử dụng join
![join file1 file2 > newfile](Pictures/Screenshot%20from%202023-03-21%2011-11-20.png)

Sử dụng diff 
![diff option filename](Pictures/Screenshot%20from%202023-03-21%2011-14-19.png)

Sử dụng xargs
![echo "file1 file2" | xargs touch](Pictures/Screenshot%20from%202023-03-21%2011-20-08.png)

Sử dụng traceroute xem đường đi network
![traceroute IP](Pictures/Screenshot%20from%202023-03-21%2011-22-15.png)

Sử dụng netstat kiểm tra cổng truy cập/kết nối
![netstat option](Pictures/Screenshot%20from%202023-03-21%2011-23-25.png)

Sử dụng kill và pkill để tắt tiến trình
![kill option BID,pkill name process](Pictures/Screenshot%20from%202023-03-21%2011-29-42.png)

Sử dụng wc đếm số dòng trong text
![wc option filename](Pictures/Screenshot%20from%202023-03-21%2011-30-40.png)

Sử dụng wget
![wget link](Pictures/Screenshot%20from%202023-03-21%2011-32-30.png)

Sử dụng git
![git clone link](Pictures/Screenshot%20from%202023-03-21%2011-38-40.png)

Sử dụng rsync
![rsync avzh file1 file2](Pictures/Screenshot%20from%202023-03-21%2011-45-28.png)

Sử dụng ping
![ping IP](Pictures/Screenshot%20from%202023-03-21%2011-22-43.png)

Sử dụng tee
![ls | tee filename](Pictures/Screenshot%20from%202023-03-21%2011-48-02.png)

Sử dụng ln 
![ln -s filename symlink](Pictures/Screenshot%20from%202023-03-21%2011-49-32.png)

Sử dụng mkdir và rm
![mkdir filename,rm option filename](Pictures/Screenshot%20from%202023-03-21%2011-51-01.png)

Heading 19 Standard Input,Output, Error.

Standard Input
Thiết bị vào tiêu chuẩn (standard input device) còn được gọi là stdin, là thiết bị mà nó nhận đầu vào (input). 

Standard Output

Trong terminal, đầu ra tiêu chuẩn (standard output) được mặc định cho màn hình (screen) của người dùng (user).
Standard output còn được gọi là stdout là file descriptor mặc định một tiến trình (process) trình có thể ghi đầu ra (output).

Standard Error

Standard Error hay còn được gọi là những lỗi tiêu chuẩn. Đây là những lỗi có sẵn trong hệ thống. Lỗi này thường được các lập trình viên sử dụng để đánh giá, kiểm tra phần mềm. 

Heading 20 Redirecting Standard Output,Retrdireacting Standard Error

Một chương trình chạy trên Linux sẽ gửi đầu ra vào một file đặc biệt là stdout (standard output) và error messages đến stderr (standard error). Hai file này được link đến màn hình và không được save lại trong file.Rediretion cho phép chúng ta thay đổi nơi output ra và nơi input đến.Thay vì xuất ra màn hình (terminal), output có thể ghi vào tập tin, hoặc truyền cho process khác xử lý tiếp,Thay vì xuất thông tin lỗi ra màn hình, thì chuyển hướng lỗi giúp xuất thông tin lỗi ra tệp tin.

Heading 21 /dev/null

![vd](Pictures/Screenshot%20from%202023-03-27%2009-47-57.png)

“/dev/null” là một file thiết bị ảo. Đối với các chương trình có liên quan, chúng được coi như những file thực sự. Các tiện ích có thể yêu cầu dữ liệu từ loại nguồn này và hệ điều hành sẽ cung cấp dữ liệu cho chúng. Nhưng, thay vì đọc từ ổ đĩa, hệ điều hành sẽ tạo ra dữ liệu này một cách linh hoạt. 

Một số câu lệnh /dev/null : 

grep -r power /sys/

grep -r power /sys/ 2>/dev/null

ping google.com 1>/dev/null

grep -r power /sys/ >/dev/null 2>&1

    Với 2> bạn chuyển hướng thông báo lỗi tiêu chuẩn. Ví dụ: 2>/dev/null hoặc 2>/home/user/error.log.
    Với 1> bạn chuyển hướng đầu ra tiêu chuẩn.
    Với &> bạn chuyển hướng cả lỗi tiêu chuẩn và đầu ra tiêu chuẩn.


Heading 22 Redirecting Standard Input

Chuyển hướng đầu ra tiêu chuẩn dành cho thiết bị.Dữ liệu truyền vào để process xử lý, có thể là dữ liệu nhập từ bàn phím, tập tin, hay ouput của process khác.
