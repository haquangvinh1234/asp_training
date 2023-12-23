create table QL_SanPham;

create table tbl_sanpham(
	MaSP nvarchar(50) not null primary key,
	TenSP nvarchar(255) not null
)

insert into tbl_sanpham(MaSP, TenSP)VAlUES('SP001', N'Nồi Cơm Điện')
insert into tbl_sanpham(MaSP, TenSP)VAlUES('SP002', N'Máy tính')
insert into tbl_sanpham(MaSP, TenSP)VAlUES('SP003', N'Bàn là')