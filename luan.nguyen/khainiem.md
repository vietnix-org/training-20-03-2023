### KHAI NIEM 
---
1 SSL 
--
SSL là gì
SSL là một giao thức bảo mật được phát triển để gửi thông tin an toàn qua Internet. Nhiều trang web sử dụng SSL cho các khu vực an toàn trên trang web của họ, chẳng hạn như trang tài khoản người dùng và thanh toán trực tuyến

Các loại SSL:

Xác thực tên miền – DV SSL: kiểm tra quyền của người đăng ký sử dụng một tên miền cụ thể.

Xác thực tổ chức – OV SSL: kiểm tra quyền của người đăng ký sử dụng một tên miền cụ thể CỘNG VỚI nó tiến hành một số kiểm tra của tổ chức.

Xác thực mở rộng – EV SSL: kiểm tra quyền của người đăng ký sử dụng một tên miền cụ thể cộng với, nó tiến hành kiểm tra kỹ lưỡng tổ chức.

Các thành phần của SSL

CSR (Yêu cầu ký chứng chỉ):

CRT (Certificate): thành phần sau khi CSR được xác nhận và trả lại cho thuê bao

Khóa riêng: một tệp được mã hóa được tạo cùng lúc khi tạo CSR

CA (Certificate Authority hoặc Certification Authority): Cơ quan cung cấp thông tin về chứng chỉ SSL

SSL hoạt động như thế nào

Người dùng kết nối phù hợp với dịch vụ hỗ trợ SSL

Ứng dụng của người dùng yêu cầu khóa chung của máy chủ để đổi lấy khóa chung của chính nó.

khi người dùng gửi tin nhắn đến máy chủ, ứng dụng sẽ sử dụng máy chủ của khóa pulic để mã hóa tin nhắn

Máy chủ nhận người dùng của tin nhắn và giải mã nó bằng cách sử dụng máy chủ của khóa 

### DOMAIN Là gì 

Tên miền là địa chỉ của trang web đang hoạt động trên Internet. Một nơi mà mọi người sử dụng để tìm kiếm trên trình duyệt để truy cập bất kỳ trang web nào. Tên miền được biểu thị bằng các chữ cái hoặc số trong bảng chữ cái thay vì địa chỉ IP của máy chủ.

Các loại tên miền

TLD: tên miền cấp cao nhất là phần cuối cùng sau dấu chấm của tên miền và là phần mở rộng tên miền được liệt kê ở cấp cao nhất trong DNS. Ví dụ: .com, .org, .net và .vn

ccTLD: là các tên miền được sử dụng ở một quốc gia cụ thể theo mã ISO. Ví dụ: .vn(Việt Nam), .es(Hoa Kỳ), ....

gTLD: là tên miền thông dụng và được sử dụng trên toàn thế giới không phân biệt mã quốc gia nào. Ví dụ: .com, .net, .biz, ...

sTLD: là các tên miền cấp cao nhất được giới hạn cho các tổ chức chính phủ. Ví dụ .gov, .mil, .edu, ...

uTLD: tên miền cấp cao nhất như: .biz, .pro, .name, .info.

iTLD: là miền .arpa đại diện cho ARPA và dành riêng cho ICANN để giải quyết các vấn đề về cơ sở hạ tầng.

### DNS là gì 

DNS viết tắt của Domain Name System có nghĩa là hệ thống phân giải tên miền. DNS là hệ thống cho phép thiết lập tương ứng giữa địa chỉ IP và tên miền trên Internet.

### Các Loại record DNS 

- 1 A record

- 2 CNAME record

- 3 MX record

- 4 TXT record

- 5 NS record

- 6 PTR record

### Hosting,VPS,Server 

- HOSTING


Lưu trữ web là dịch vụ cho phép các tổ chức, cá nhân đưa một trang web hoặc trang web lên Internet.

Các loại máy chủ:

Chia sẻ lưu trữ là giải pháp cho chủ sở hữu trang web với các trang web lưu lượng truy cập thấp hơn.

Lưu trữ chuyên dụng bạn thuê toàn bộ máy chủ vật lý cho doanh nghiệp của mình.

VPS hosting (Máy chủ riêng ảo) Một máy chủ vật lý được cài đặt ứng dụng ảo hóa để tạo ra nhiều máy chủ ảo.

Cloud hosting là dịch vụ lưu trữ hoạt động trên nền tảng điện toán đám mây

- VPS 

VPS(Virtual Private Server): là máy chủ ảo, được tạo ra bằng cách chia nhỏ máy chủ vật lý thành nhiều máy chủ khác.

VPS được tạo ra bằng công nghệ ảo hóa thay vì sử dụng phần mềm quản lý thông thường (hosting control panel) để quản lý.

- SERVER

server là một chương trình hoặc thiết bị máy tính cung cấp dịch vụ cho một chương trình máy tính khác và người dùng của nó, còn được gọi là máy khách. Trong một trung tâm dữ liệu, máy tính vật lý mà chương trình máy chủ chạy trên đó cũng thường được gọi là máy chủ. Máy đó có thể là một máy chủ chuyên dụng hoặc nó có thể được sử dụng cho các mục đích khác.

Các loại máy chủ:

Mail server: Hỗ trợ gửi và nhận mail (gmail, yahoo mail, yandex, dịch vụ email của amazon).

Web server: là máy chủ có chức năng lưu trữ thông tin, dữ liệu của website, tạo môi trường kết nối để khách hàng truy cập website dễ dàng.

server proxy: Máy chủ proxy đóng vai trò là cầu nối giữa máy chủ lưu trữ và máy chủ khách. Một proxy gửi dữ liệu từ một trang web đến địa chỉ IP máy tính của bạn sau khi nó đi qua máy chủ của proxy.

File transfer protocol (FTP): Máy chủ FTP được sử dụng để di chuyển tệp từ máy tính này sang máy tính khác.

Database server: Là máy chủ chuyên dụng dùng để quản trị cơ sở dữ liệu. Trên máy chủ được cài đặt các phần mềm quản trị cơ sở dữ liệu chuyên nghiệp: SQL server, MySQL, Oracle...

File server: Một máy chủ tệp lưu trữ các tệp dữ liệu cho nhiều người dùng. Chúng cho phép truy xuất dữ liệu nhanh hơn và lưu hoặc ghi tệp vào máy tính.

### Reverse proxy,nguyen ly hoat dong 

Proxy đảo ngược là một loại máy chủ proxy phổ biến có thể truy cập được từ mạng công cộng. Các trang web và CDN lớn sử dụng proxy ngược – cùng với các kỹ thuật khác để cân bằng tải giữa các máy chủ nội bộ. Proxy đảo ngược có thể giữ một bộ đệm nội dung tĩnh. Điều này làm giảm tải cho các máy chủ nội bộ này và mạng nội bộ. Reverse proxy cũng thường thêm các tính năng như nén hoặc mã hóa TLS vào kênh liên lạc giữa máy khách và proxy ngược.

Máy chủ proxy là máy chủ trung gian chuyển tiếp các yêu cầu về nội dung từ nhiều máy khách đến các máy chủ khác nhau trên Internet.

Nguyên tắc làm việc của Reverse proxy:

Nhận yêu cầu kết nối từ người dùng

Thực hiện bắt tay ba bước TCP

Kết nối với máy chủ gốc và chuyển tiếp yêu cầu ban đầu

## Vhost là gì 

Virtual Hosts là một phương thức lưu trữ cho phép lưu nhiều tên miền khác nhau trên cùng một máy chủ Server. Virtual Hosts có thể được xem như một giải pháp cho phép bạn nhúng rất nhiều tên miền trên một địa chỉ IP của một Server duy nhất. Tùy vào cách cài đặt, Server sẽ tự hiểu tên miền nào đang hoạt động bên trong vị trí lưu trữ của Server. 

Virtual Hosts được xem là một giải pháp khá hiệu quả và tiết kiệm chi phí hơn khi sử dụng nhiều tên miền chỉ trên một địa chỉ IP của Server. Ngoài ra, Virtual Host còn mang đến khá nhiều lợi ích trong quá trình sử dụng như:

- có thể dễ dàng thao tác vào một thư mục lưu trữ Code nào và không phải copy Code vào htdocs trong giao diện XAMPP.

- Trong quá trình thiết lập ban đầu, nếu bạn phân vùng lưu trữ Code ở một Folder Code nhất định, thì bạn sẽ không tốn thời gian sao lưu lại dữ liệu trong Folder Code khi cài đặt lại hệ điều hành Window

Cách thức vận hành Vhost

Có nhiều cách khác nhau để xác định cấu hình của một Virtual Host, nhưng cách được sử dụng thông dụng ngày nay là

IP Based

- IP-Based Virtual Hosts (xác định website dựa theo IP): Đây là phương pháp đơn giản nhất trong 3 phương pháp, Một IP sử dụng cho 1 Website. Máy chủ web sẽ chịu trách nhiệm ánh xạ IP được yêu cầu có đế đến đúng website mong muốn hay không. Vì thế, mỗi trang web sẽ được định nghĩa bởi 1 IP duy nhất nhằm tránh những vấn đề không đáng có cho trang web liên quan đến địa chỉ IP. Tuy nhiên IP-Based (dùng trên 1 máy chủ) cần thiết lập Virtual Interface trên 1 máy chủ để có thể sử dụng được nhiều IP. 

Port Based 

- Port Based tương đương với IP-Based, nhưng sự khác biệt ở phương thức này là có thể quản lý nhiều trang web dựa theo số Port được định nghĩa cùng với IP hoặc tên miền. Ngoài ra, Port sử dụng tránh lặp lại với Port được mặc định của ứng dụng khác khi đang hoạt động. 

Name Based

- Name Based (xác định website dựa theo tên – Domain Name): Nhiều website sử dụng chung 1 IP. Server sẽ đối chiếu http header từ client yêu cầu để ánh xạ đến đúng website được chỉ định theo Domain. Cho nên, Name-Based rất được ưa thích trong việc quản lý nhiều trang web trên cùng 1 máy chủ và trước tình trạng thế giới đang dần cạn kiệt IP Public, đồng thời sử dụng tối đa tài nguyên hiện có. Hạn chế lớn nhất khi bạn dùng IP chung, nếu gặp vấn đề thì tất cả các trang web của bạn đều sẽ bị ảnh hưởng theo

### Nginx và Apache 

- Ngix

Nginx: cũng có thể được sử dụng như một máy chủ proxy ngược để sửa đổi yêu cầu từ máy khách và gửi yêu cầu đến máy chủ proxy


- Apache Apache 

là "Máy chủ HTTP Apache". Nó là một phần mềm máy chủ web hiệu suất cao, mã nguồn mở được phát triển và duy trì bởi Apache Software Foundation. Apache được thiết kế để tạo ra một máy chủ web cấp thương mại an toàn, mạnh mẽ và hiệu quả phù hợp với các tiêu chuẩn HTTP hiện hành.

 ### So sánh Nginx và Apache

 - apache:
 
Apache là một máy chủ web mã nguồn mở.

Một luồng đơn chỉ có thể xử lý một kết nối.

Hiệu suất của Apache đối với nội dung tĩnh thấp hơn Nginx.

Apache được viết bằng C và XML.

- Nginx

Nginx cũng được sử dụng như một máy chủ proxy ngược để sửa lại yêu cầu từ máy khách và gửi yêu cầu đến máy chủ proxy.

Một luồng duy nhất có thể xử lý nhiều kết nối

Nginx chạy nhanh hơn Apache và sử dụng ít bộ nhớ hơn

Nginx được viết bằng ngôn ngữ C.
