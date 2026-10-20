---
layout: post
title:  "1 trong 10 hối tiếc của Ryan Dahl, founder of NodeJS"
date:   2019-04-05 +0900
categories: nodejs
---
1 trong 10 hối tiếc của Ryan Dahl khi tạo ra NodeJS là khước từ promise làm chuẩn cho JavaScript ngay từ thời điểm ban đầu. 

Link bài talk: [https://youtu.be/M3BM9TB-8yA](https://youtu.be/M3BM9TB-8yA)

Có thể nói promise là một đối tượng quan trọng cho sự phát triển async/await sau này.
Việc tiếp cận xử lí bất đồng bộ của lập trình viên đã phải trải qua 3 giai đoạn: callback (ES5) -> promise (ES6)-> async/await (ES7).

Việc trải qua giai đoạn làm quen callback trước rồi mới tới promise đã tạo ra rất nhiều rắc rối, và cái giá phải trả là rất lớn:
1. Sự hỗ trợ, duy trì cả 2 phương thức callback và promise của các thư viện là điều bắt buộc khi họ muốn có nhiều người dùng nhất có thể.
2. Việc trộn code giữa callback và promise là không thể tránh khỏi khi lập trình viên tiếp cận những chuẩn cho Javascript sau ES5. Code sẽ rất xấu, nên sẽ khó sử dụng lại. Một cách tiếp cận cho vấn đề này là tạo ra các hàm trung gian trả về promise từ các hàm callback cũ (quá trình này còn được gọi là promisify), rồi sử dụng hàm mới này để gọi sau này. Tuy nhiên thì công sức bỏ ra cũng lớn và rất có khả năng gây ra lỗi. An toàn hơn thì nhờ thư viện làm hộ.

Nhìn lại code của mình viết cách đây 2 năm, thấy quả trộn callback với promise mà mình nghĩ Dahl nói quá chuẩn 😂.

Lại nghĩ sang tới việc phát triển phần mềm từ ban đầu, như thế nào là đủ?