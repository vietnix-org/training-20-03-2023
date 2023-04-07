# Chuyên đề iptables/netfilter

## iptables packet flow diagram

### mô hình

![image](https://rom.nanodm.net/network/iptables/FW-IDS-iptables-Flowchart-2014-09-25.png)

### Giải thích từng chain/tables trong khả năng em research được

- PREROUTING: Chain này được thực thi trước khi gói tin được xử lý bởi bất kỳ rule nào trong hệ thống tường lửa. Nó cho phép bạn thay đổi địa chỉ IP đích hoặc cổng đích của gói tin.

- INPUT: Chain này xử lý các gói tin nhận được từ các thiết bị đầu cuối, ví dụ như bàn phím, chuột, hoặc thiết bị mạng. Nó quyết định xem gói tin có được chấp nhận hay từ chối bởi tường lửa.

- FORWARD: Chain này xử lý các gói tin đi qua tường lửa, trung gian giữa hai mạng. Nó quyết định xem gói tin có được chuyển tiếp hoặc từ chối bởi tường lửa.

- OUTPUT: Chain này xử lý các gói tin được gửi từ thiết bị đầu cuối đến các thiết bị mạng khác. Nó quyết định xem gói tin có được phép đi qua tường lửa hay không.

- POSTROUTING: Chain này được thực thi sau khi các gói tin đã được xử lý bởi tường lửa. Nó cho phép bạn thay đổi địa chỉ IP nguồn hoặc cổng nguồn của gói tin trước khi chúng được gửi đi.

- NAT: Bảng này được sử dụng để thay đổi địa chỉ IP và cổng của các gói tin. Nó được sử dụng để giấu địa chỉ IP nội bộ của các thiết bị và bảo vệ chúng khỏi các cuộc tấn công mạng.

- FILTER: Bảng này được sử dụng để quyết định xem gói tin có được phép đi qua hay không bằng cách áp dụng các quy tắc của các chain INPUT, FORWARD và OUTPUT. Các quy tắc này bao gồm các thông tin về địa chỉ IP nguồn và đích, cổng và giao thức mạng.

- MANGLE: Bảng này được sử dụng để thay đổi các trường trong header của gói tin mạng, bao gồm cả header IP và TCP/UDP. Nó cho phép bạn tùy chỉnh các giá trị trong gói tin như độ ưu tiên (priority), độ trễ (latency), hoặc độ rộng băng thông (bandwidth).

- RAW: Bảng này được sử dụng để xử lý các gói tin trước khi chúng được xử lý bởi các bảng khác. Nó cho phép bạn thay đổi giá trị TTL (Time To Live) của gói tin, hoặc bỏ qua xác nhận kết nối (connection tracking) cho một số gói tin.

### Nói về đường đi của gói tin trong 3 kịch bản sau

#### Gói tin có destination là IP server thì đi như thế nào ?

1. Gói tin sẽ được kiểm tra bởi chain PREROUTING trong bảng mangle để xem có thay đổi địa chỉ IP đích hoặc cổng đích không.

2. Sau đó, gói tin sẽ được kiểm tra bởi chain PREROUTING trong bảng nat để xem có thay đổi địa chỉ IP nguồn hay đích không.

3. Gói tin sẽ được kiểm tra bởi chain PREROUTING trong bảng mangle để thay đổi các trường header của gói tin nếu cần thiết.

4. Gói tin sẽ được kiểm tra bởi chain PREROUTING trong bảng filter để quyết định xem gói tin có được phép đi qua hay không.

5. Nếu gói tin được chấp nhận, nó sẽ được gửi đến server và được xử lý bởi kernel của server.

6. Sau đó, gói tin sẽ được kiểm tra bởi chain INPUT trong bảng filter để quyết định xem gói tin có được chấp nhận hay từ chối bởi tường lửa.

7. Nếu gói tin được chấp nhận, nó sẽ được chuyển đến ứng dụng (application) đích để xử lý.

8. Sau khi ứng dụng xử lý xong gói tin, gói tin sẽ được gửi đến chain OUTPUT trong bảng filter để quyết định xem gói tin có được phép đi qua hay không.

9. Nếu gói tin được chấp nhận, nó sẽ được kiểm tra bởi chain POSTROUTING trong bảng nat để thay đổi địa chỉ IP nguồn hoặc cổng nguồn của gói tin nếu cần thiết.

10. Gói tin sẽ được kiểm tra bởi chain POSTROUTING trong bảng mangle để thay đổi các trường header của gói tin nếu cần thiết.

11. Cuối cùng, gói tin sẽ được gửi đến mạng đích.

#### Gói tin từ server đi ra như thế nào ?

1. Gói tin sẽ được kiểm tra bởi chain OUTPUT trong bảng mangle để thay đổi các trường header của gói tin nếu cần thiết.

2. Gói tin sẽ được kiểm tra bởi chain OUTPUT trong bảng nat để thay đổi địa chỉ IP nguồn hay đích của gói tin nếu cần thiết.

3. Gói tin sẽ được kiểm tra bởi chain OUTPUT trong bảng filter để quyết định xem gói tin có được phép đi qua hay không.

4. Nếu gói tin được chấp nhận, nó sẽ được gửi đến mạng đích.

5. Gói tin sẽ được kiểm tra bởi chain POSTROUTING trong bảng mangle để thay đổi các trường header của gói tin nếu cần thiết.

6. Gói tin sẽ được kiểm tra bởi chain POSTROUTING trong bảng nat để thay đổi địa chỉ IP nguồn hay đích của gói tin nếu cần thiết.

7. Cuối cùng, gói tin sẽ được gửi đến mạng đích.

#### Gói tin có destination là IP không phải của server, thì server xử lý như nào ?

1. Gói tin sẽ được kiểm tra bởi chain PREROUTING trong bảng mangle để thay đổi các trường header của gói tin nếu cần thiết.

2. Gói tin sẽ được kiểm tra bởi chain PREROUTING trong bảng nat để thay đổi địa chỉ IP đích của gói tin nếu cần thiết. Nếu gói tin được NAT lại, địa chỉ IP đích của gói tin sẽ được thay đổi thành địa chỉ IP của server hoặc của một máy tính khác được chỉ định.

3. Gói tin sẽ được kiểm tra bởi chain PREROUTING trong bảng filter để quyết định xem gói tin có được phép đi qua hay không.

4. Nếu gói tin được chấp nhận, nó sẽ được chuyển tiếp đến gói tin đích.

5. Gói tin đích sẽ được xử lý bởi các router và firewall trên mạng trước khi đến được máy tính đích. Nếu gói tin đã bị NAT lại, địa chỉ IP nguồn của gói tin sẽ được thay đổi lại khi gói tin đến được đích.

## Demo sử dụng module TRACE để theo dõi gói tin trong hai kịch bản

### Theo dõi gói SYN, từ IP công ty đến máy ảo lab, đi như thế nào

Các gói tin đi từ địa chỉ IP nguồn sẽ đến Gateway của router sau đó đi tiếp đến địa chỉ IP đích.

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/tracer.png)

### Theo dõi gói icmp từ máy ảo ping đi 1.1.1.1 đi như thế nào

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/ping1.1.1.1.png)

Gói tin sẽ gửi request đến nguồn 1.1.1.1 sau đó chờ phản hồi. Khi đã phản hồi thì Server nguồn sẽ reply lại các gói request.

### Đọc/hiểu được iptables rules căn bản để debug lỗi liên quan network cho VPS/Server của KH (debug network sử dụng công cụ tcpdump), cấu hình một số ví dụ

#### Cho phép/Chặn IPX truy cập đến IP dest A.B.C.D port YYY

- Chặn: #iptables -A INPUT -p tcp -s "IP_ADDRESS" –dport "PORT" -j DROP

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/BlockIPPort.png)

- Cho phép: #iptables -A INPUT -p tcp -s "IP_ADDRESS" –dport "PORT" -j ACCEPT

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/ACCPIpPort.png)

#### Cho phép/Chặn tất cả ip mới truy cập đến IP dest A.B.C.D port YYY

- Chặn:
sudo iptables -A INPUT -p tcp -d [destination_IP] --dport [port_number] -j DROP

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/BlockAllIp.png)

- Cho phép:
sudo iptables -A INPUT -p tcp -d [destination_IP] --dport [port_number] -j ACCEPT

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/ACCPAllIp.png)

#### Cho phép/Chặn ip Y.J.K.F truy cập đến IP dest A.B.C.D port YYY với TTL 128,64 và Length 1000

- Cho phép 128: sudo iptables -A INPUT -p tcp -s Y.J.K.F -d A.B.C.D --dport YYY -m ttl --ttl-eq 128 -m length --length 1000 -j ACCEPT

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/ACCP128.png)

- Chặn 128: sudo iptables -A INPUT -p tcp -s Y.J.K.F -d A.B.C.D --dport YYY -m ttl --ttl-eq 128 -m length --length 1000 -j Drop

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/BLOCK128.png)

- Cho phép 64: sudo iptables -A INPUT -p tcp -s Y.J.K.F -d A.B.C.D --dport YYY -m ttl --ttl-eq 64 -m length --length 1000 -j ACCEPT

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/ACCP64.png)

- Chặn 64: sudo iptables -A INPUT -p tcp -s Y.J.K.F -d A.B.C.D --dport YYY -m ttl --ttl-eq 64 -m length --length 1000 -j DROP

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/Block64.png)

#### Đặt comment cho 1 iptables rules bất kỳ

- Lệnh: sudo iptables -A "chain" -p "protocol" --dport "port" -j "target" -m comment --comment "comment"

- ví dụ: sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT -m comment --comment "Allow incoming HTTP traffic"

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/Comment.png)

## Tìm hiểu về công cụ tcpdump, những options có thể dùng để debug network

### tcpdump là gì?

Tcpdump là một công cụ dòng lệnh được sử dụng để bắt và phân tích các gói tin trên mạng. Nó cho phép bạn kiểm tra và debug các vấn đề liên quan đến network như xác định các gói tin được gửi đi và nhận về, xem nội dung của các gói tin, kiểm tra tốc độ truyền dữ liệu, phân tích các lỗi mạng, và nhiều hơn nữa.

### Một số option thường được sử dụng để debug network bằng tcpdump

-i (interface): chỉ định interface mạng để bắt các gói tin. Ví dụ: tcpdump -i eth0 để bắt các gói tin trên interface eth0.
-n: không hiển thị các thông tin tên miền (domain names), mà chỉ hiển thị địa chỉ IP.
-s (snaplen): chỉ định kích thước tối đa của các gói tin được bắt. Giá trị mặc định là 65535 byte.
-w (file): lưu các gói tin vào file để phân tích sau. Ví dụ: tcpdump -i eth0 -w capture.pcap.
-r (file): phân tích các gói tin từ file đã được lưu trước đó bằng option -w. Ví dụ: tcpdump -r capture.pcap.
-v: hiển thị các thông tin chi tiết về các gói tin, bao gồm cả các header và các trường dữ liệu.
host (host): chỉ bắt các gói tin liên quan đến host được chỉ định.
port (port): chỉ bắt các gói tin liên quan đến cổng được chỉ định.
tcp: chỉ bắt các gói tin TCP.
udp: chỉ bắt các gói tin UDP.
icmp: chỉ bắt các gói tin ICMP.
