--Faturlars tbl de toplam alanýn deðerinlerinin girilmesi manuel olak faturaid tek tek 1,2,3,4 diyerke sorgu çalýþtýrýlýdý
update Faturalars set Toplam =(select sum(tutar) from FaturaKalems where Faturaid =4) where Faturaid=4
--yeni faturakalem giriþinde toplamý otomaitk arttýrma
create trigger tutarekle
on FaturaKalems
after insert
as
declare @PFaturaid int
declare @PTutar decimal(18,2)
select @PFaturaid=faturaid, @PTutar=tutar from inserted
update Faturalars set Toplam=Toplam+@PTutar where Faturaid=@PFaturaid