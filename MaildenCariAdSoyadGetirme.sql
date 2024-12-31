select CariAd+' '+CariSoyad from Carilers where --carilerldern cari ad soydý birleþtirip getir
CariMail in (select Gonderici from Mesajlars) --þartý carimail i mesajalr tblde gonderici alanýn deðerleirnde
--olan carilerin cari ad soyad getir. in kullnamamýznýn sebebi þu = tir tek deðer için geçerli ama mesajalrda 
--birden çok gonderci var ve birden farklý mail adresi var o yüzden gonderici deki tüm deðerlere bak
--gondericilere eþit olan carimaillelrin cari ad soyadný dön