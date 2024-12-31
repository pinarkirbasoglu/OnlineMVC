Create trigger SatisStokAzalt
on SatisHarekets
After insert
As
Declare @PUrunid int
Declare @PAdet int
select @PUrunid=Urunid ,@PAdet=Adet from inserted
update Uruns set Stok=Stok-@PAdet where(Urunid=@PUrunid)