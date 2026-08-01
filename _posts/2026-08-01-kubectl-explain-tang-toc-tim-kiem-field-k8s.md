---
layout: post
title:  "Dùng kubectl explain để tăng tốc tìm kiếm field trong k8s"
date:   2026-08-01 +0900
categories: kubernetes
---

Có một tip giảm thời gian tìm kiếm field để điền yaml nhanh là dùng `kubectl explain`.
Mình áp dụng trong kì thi CKA/CKS/CKAD khá nhiều, và cảm thấy khá hiệu quả, tiết kiệm thời gian, bên cạnh việc tra cứu trên web tài liệu của k8s.

Câu lệnh này có ích khi bạn đã có một yaml template rồi và biết cần điền field gì tuy nhiên không nhớ chính xác tên field như nào, giá trị điền gì. 

Do tên field tính cả chữ viết hoa thường nên nhiều khi field dài sẽ khó nhớ (vd: `readOnlyRootFilesystem`), hoặc có `s` hay không (vd: `limits`, `requests`, `capabilities`), hoặc chính xác giá trị enum để điền là gì (vd: `Always`, `Never`).

Câu lệnh này cũng chạy với các CRD được cài đặt thêm, như `CiliumNetworkPolicy`.

Cách dùng đơn giản nhất là: `kubectl explain <resource>`, ví dụ `kubectl explain pod` - nó sẽ trả về thông tin của pod và các field tầng đầu tiên.

Để đi sâu vào nested field: `kubectl explain pod.spec`

Để xem tất cả nested field: `kubectl explain pod --recursive`

Kết hợp với grep: `kubectl explain pod.spec --recursive | grep -A10 security`

Khi kết hợp với grep thì có thể dùng option `-i` để tìm kiếm không phân biệt hoa thường hoặc `-A`, `-B`, `-C` để lấy thêm các dòng phía sau/trước kết quả.

Hãy chạy thử các câu lệnh trên terminal và mình tin bạn sẽ hiểu cách ứng dụng nó trong các kì thi của CNCF cũng như công việc hàng ngày :)