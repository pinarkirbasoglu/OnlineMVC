select CariAd+' '+CariSoyad from Carilers where --carilerldern cari ad soyd� birle�tirip getir
CariMail in (select Gonderici from Mesajlars) --�art� carimail i mesajalr tblde gonderici alan�n de�erleirnde
--olan carilerin cari ad soyad getir. in kullnamam�zn�n sebebi �u = tir tek de�er i�in ge�erli ama mesajalrda 
--birden �ok gonderci var ve birden farkl� mail adresi var o y�zden gonderici deki t�m de�erlere bak
--gondericilere e�it olan carimaillelrin cari ad soyadn� d�n