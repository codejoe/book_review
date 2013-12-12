book_review
===========


Tes Konflik

naufal asdfsdfsdfsdfsfsd


# Book Review Project

## Hello from Microdevil

fiture
-> review terbaru
---> berdasarkan tanggal
-> review terpopuler
---> berdasarkan komentar
-> review fiture
----> featured?
-> relaes buku
database

-> buku
---> id
---> name
---> author
---> date_release
---> jumlah rating
---> description
---> kategori_id
---> jumlah halaman
---> featured?
---> link_picture


-> kategori
---> id
---> name

-> review
----> id
----> buku_id
----> visitor_name
----> log_ip
----> date
----> approval?
----> content

## Admin
-> add buku
-> add admin
-> del buku
-> update buku
-> aproval review
-> add review

####Tahapan untuk melakukan proses pemberian komentar
1.9.2-p320 :001 > aji = User.first
1.9.2-p320 :002 > coment = Comment.create comment:"Tes with user", user:aji
1.9.2-p320 :003 > buku1 = Book.first
1.9.2-p320 :005 > buku1.add_comment coment
1.9.2-p320 :006 > buku1.comments
1.9.2-p320 :009 > Comment.find_comments_by_user aji
1.9.2-p320 :013 > coment.user

