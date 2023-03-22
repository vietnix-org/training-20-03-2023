### Chuyên đề iptables/netfilter:

![](Iptables.jpg)

--- 

### 1 Sơ Đồ 

![](20200209022945.png)

- Chains

Các table được tạo ra với một số chain nhất định và chain cho phép lọc gói tin tại các điểm khác nhau.Iptable có thể thiết lập với các chain:

Chain prerouting: Các rule thuộc chain này sẽ được áp dụng cho ngay khi các gói tin vừa vào đến phần network interface.Chain này chỉ có ở table NAT,raw và mangle

Chain input: Các rule thuộc chain này áp dụng cho các gói tin ngay trước khi các gói tin được vào hệ thống.Chain này có trong 2 table mangle và filter

Chain OUTPUT: các rule thuộc của chain này áp dụng cho các gói tin ngay khi gói tin đi ra từ hệ thống.Chain này có tỏng đó là 3 table là raw,mangle và filter.

Chain forward: rule của chain này áp dụng cho các gói tin chuyển tiếp đi qua hệ thống.Chain này chỉ có trong 2 table mangle và table.

Chain postrouting: áp dụng cho các gói tin đi network interface.Chain này có trong 2 table mangle và NAT

- Table

filter table:table này thường được sử dụng nhất.table này nhằm quyết định liệu gói tin có được chuyển đến địa chỉ đích hay không.

mangle table: table này liên quan đến việc sửa head của gói tin , ví dụ như là sửa chửa giá trị cái trường TTL,MTU type of service

Table NAT: tbale này cho phép các route các gói tin đến được các gói tin khác nhau trong mạng NAT table cách thay đổi IP nguồn và IP đích của gói tin.Table này cho phép kết nối đến các dịch vụ không được phép truy cập trực tiếp được do đang trong mạng của NAT.

![](rule.png)

### 1.1Gói tin server di chuyển

Gói tin thông thường qua một vài bước

 ứng dụng trên server tạo ra các dữ liệu cần được gửi đi sau đó đống gói và gửi tin

Sẽ được truyên đến lớp Transport của mô hình OSI

Lớp Network của mô hình OSI sẽ thêm thông tin địa chỉ IP và tìm kiếm đường đi tối ưu để gửi gói tin đến đích.

Gói tin sẽ được truyền qua các thiết bị mạng

Khi đến đích, gói tin sẽ được giải mã và lấy ra dữ liệu gốc bên trong.

Dữ liệu gốc sẽ được ứng dụng trên thiết bị đích sử dụng

### 1.2gói tin là destination là IP server

![](unnamed.jpg)
 
gói tin sẽ được tạo ra bởi nguồn gửi và được đính kèm theo địa chỉ IP đích của server

gói tin sẽ được gửi đến router đầu tiên trên đường đi đến với con server.Sau đó router này kiểm tra địa chỉ didhcs của gói tin và xác định đường đi tốt nhất để có thể gửi được gói tin đi đến được server

gói tin sẽ được chuyển tiếp qua các router khác trên đường đi đến server. mỗi router sẽ được kiểm tra địa chỉ đích và xác định đường đi tốt nhất để gửi gói tin đi tiếp theo.

kho gói tin đến được router cuối cùng khi đến server thì router này sẽ gửi gói tin đó trực tiếp đến với địa chỉ ip của server

sau đó server nhận được gói tin đó và xử lý

### 1.3 goi tin có destination là IP không phải của server.

Nếu gói tin có địa chỉ không phải là địa chỉ IP của server thì server sẽ không sử lý gói tin đó và bỏ qua nó.server chỉ xử lý các gói tin có địa chỉ đích là địa chỉ IP của nó

### 2 Theo dõi gói SYN, từ IP công ty đến máy ảo lab, đi như thế nào.

- sử dụng wireshark để có thể theo dõi gói tin đi 

![](wireshark.png)

Gói SYN được gửi từ IP công ty tới máy ảo lab theo quá trình sau:

1. Đầu tiên, IP công ty sẽ gửi một gói tin SYN đến địa chỉ IP của máy ảo lab.

2. Gói tin SYN này sẽ chứa thông tin về cổng nguồn và cổng đích của kết nối.

3. Khi máy ảo lab nhận được gói tin SYN này, nó sẽ phản hồi bằng một gói tin SYN-ACK.

4. Gói tin SYN-ACK này sẽ chứa thông tin về cổng nguồn và cổng đích của kết nối, cùng với một số thông tin khác như số thứ tự  và số xác nhận.

5. Sau khi nhận được gói tin SYN-ACK, IP công ty sẽ phản hồi bằng một gói tin ACK.

6. Gói tin ACK này sẽ xác nhận rằng kết nối giữa IP công ty và máy ảo lab đã được thiết lập thành công.

![](hhhhhh.jpg)

### 2.1Theo dõi gói icmp từ máy ảo ping đi 1.1.1.1 đi như thế nào

![](1.1.1.1.png)

### 3+ Cho phép/Chặn IPX truy cập đến IP dest A.B.C.D port YYY
 + Cho phép/Chặn tất cả ip mới truy cập đến IP dest A.B.C.D port YYY
 + Cho phép/Chặn ip Y.J.K.F truy cập đến IP dest A.B.C.D port YYY với TTL 128,64 và Length 1000

 cấu hình iptables:

 1 cho phép/chặn IPX truy cập đến 
IP dest

![](iptables.png)

- Cho phép: 

sudo iptables -A INPUT -p ipx -s IPX_ADDRESS -d A.B.C.D --dport YYY -j ACCEPT

- chặn

sudo iptables -A INPUT -p ipx -s IPX_ADDRESS -d A.B.C.D --dport YYY -j DROP

2. Cho phép/Chặn tất cả ip mới truy cập đến IP dest A.B.C.D port YYY:

iptables -A INPUT -s Y.J.K.F -d A.B.C.D -p tcp --dport YYY -m ttl --ttl-eq 128,64 -m length --length-eq 1000 -j ACCEPT


iptables -A INPUT -s Y.J.K.F -d A.B.C.D -p tcp --dport YYY -m ttl --ttl-eq 128,64 -m length --length-eq 1000 -j DROP

### 3. Đặt comment cho 1 iptables rules bất kỳ

block: iptables -A INPUT -s 192.168.1.100 -j DROP

![](chan.png)

### 4 Tìm hiểu về công cụ tcpdump, những options có thể dùng để debug network

![](tcpdumptcpdump.jpg)

TCPdump là một công cụ dòng lệnh được sử dụng để ghi lại và phân tích các gói tin trên mạng. Nó có thể được sử dụng để kiểm tra và xác định lỗi trong mạng, cũng như để giám sát hoạt động của các ứng dụng và dịch vụ mạng.


Các options thường được sử dụng để debug network bao gồm:

1. -i: Chọn interface mạng để bắt gói tin. Ví dụ: tcpdump -i eth0.

2. -n: Hiển thị địa chỉ IP thay vì tên miền. Ví dụ: tcpdump -n.

3. -v: Hiển thị các thông tin chi tiết hơn về các gói tin bắt được. Ví dụ: tcpdump -v.

4. -c: Chỉ định số lượng gói tin để bắt. Ví dụ: tcpdump -c 10.

5. -s: Chỉ định kích thước tối đa của các gói tin để bắt. Ví dụ: tcpdump -s 1500.

6. -A: Hiển thị dữ liệu ASCII của các gói tin bắt được. Ví dụ: tcpdump -A.

7. -X: Hiển thị dữ liệu
