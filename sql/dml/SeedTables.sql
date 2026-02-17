INSERT INTO Producers( [Id],            [ParentId], [Name],[Description],[Slug],[ImageUrl] )
VALUES
    ('90413946-0B19-4CFE-869C-30925BF2C829', NULL, N'Acer', N'Acer LTD', N'/acer', N'acer.png'),
    ('B3907E81-0D82-4D1F-829D-02D38DBD2917', NULL, N'Xiaomi', N'Xiaomi LTD', N'/xiaomi', N'xiaomi.png'),
    ('D7FD2465-BB62-4A93-8CDD-0C2BE29C8AC0', NULL, N'Dell', N'Dell LTD', N'/dell', N'dell.png'),
    ('A9C5212D-3EE6-496B-A5BC-DEC992F11820', NULL, N'ASUS', N'ASUS LTD', N'/asus', N'asus.png');

INSERT INTO Producers( [Id],[ParentId],[Name],[Description],[Slug],[ImageUrl] )
VALUES
    ('B06014C8-B7C3-4EC1-B20A-4FB70C615C2F', '90413946-0B19-4CFE-869C-30925BF2C829', N'Packard Bell', N'Packard Bell LTD', N'/packard-bell', N'packard_bell.png'),
    ('1C41932D-70DB-43E7-90EE-26518C7098D4', '90413946-0B19-4CFE-869C-30925BF2C829', N'Gateway', N'Gateway LTD', N'/gateway', N'gateway.png'),
    ('7AD70794-E2D9-47CF-AF0C-6B78B7E098DD', '90413946-0B19-4CFE-869C-30925BF2C829', N'eMachines', N'eMachines LTD', N'/e-machines', N'e_machines.png'),
    ('CB53BB77-5617-4783-888D-25A80AC35DA2', 'B3907E81-0D82-4D1F-829D-02D38DBD2917', N'POCO', N'POCO LTD', N'/poco', N'poco.png'),
    ('B5B8E375-4156-432B-80A3-1C888F15A85D', 'B3907E81-0D82-4D1F-829D-02D38DBD2917', N'Black Shark', N'Black Shark LTD', N'/black-shark', N'black_shark.png'),
    ('4D904D2F-ECBD-4349-B37E-FED5C1BF6271', 'D7FD2465-BB62-4A93-8CDD-0C2BE29C8AC0', N'Alienware', N'Alienware LTD', N'/alienware', N'alienware.png');

/*                       
Acer                          
    Packard Bell       
    Gateway                   
    eMachines             
Xiaomi 
    POCO
    Black Shark
Dell
    Alienware
ASUS
*/

INSERT INTO ProductGroups([Id],           [ParentId],[Name],          [Description],          [Slug],        [ImageUrl])
VALUES
('69BFE1A9-2067-48B2-8ADC-7F1D324FBAD0', NULL, N'Комп''ютери', N'Комп''ютерна техніка', N'/computers',N'comp.png'),
('FAB22108-CCC7-4A8D-ADA0-32004692B95F', '69BFE1A9-2067-48B2-8ADC-7F1D324FBAD0', N'Ноутбуки', N'Ноутбуки різних виробників', N'/notebooks',N'notebooks.png'),
('9AFFEB29-E4A7-49F4-86A1-6D23CAB198AE', '69BFE1A9-2067-48B2-8ADC-7F1D324FBAD0', N'Десктопи', N'Настільні комп''ютери', N'/desktops',N'desktops.png'),
('BD676F03-EB6E-4AC0-8F57-823A897F5B7F', '9AFFEB29-E4A7-49F4-86A1-6D23CAB198AE', N'Моноблоки', N'Суміщені з монітором', N'/monoblocks',N'monoblocks.png'),
('E84DC068-0E76-44BB-867B-5CA6BDDE52C6', '9AFFEB29-E4A7-49F4-86A1-6D23CAB198AE', N'Системні блоки', N'Без монітора', N'/sys-blocks',N'sys_blocks.png'),
('A42D67A4-3D6C-4837-8F59-6EEC7AE82CD5', '9AFFEB29-E4A7-49F4-86A1-6D23CAB198AE', N'Монітори', N'Окремо до системних блоків', N'/monitors',N'monitors.png'),

('FEAEE930-7310-4DB9-BE8C-8559E83B5E7F', NULL, N'Маніпулятори', N'Маніпулятори', N'/manip',N'.png'),
    ('0D24BA74-61B4-42CE-907A-D72C2F7ACEBF', 'FEAEE930-7310-4DB9-BE8C-8559E83B5E7F', N'Комп''ютерні миші', N'Комп''ютерні миші', N'/mouse',N'.png'),
        ('09280CA9-E50A-4437-82B7-4B736B9C6EE6', '0D24BA74-61B4-42CE-907A-D72C2F7ACEBF', N'Офісні миші', N'Офісні миші', N'/office-mouse',N'.png'),
        ('EEA85C96-6A68-4010-BC31-61732D18BF6A', '0D24BA74-61B4-42CE-907A-D72C2F7ACEBF', N'Дизайнерські миші', N'Дизайнерські миші', N'/design-mouse',N'.png'),
        ('B966EBBD-3C92-45DC-B9CA-9CCC17F1453D', '0D24BA74-61B4-42CE-907A-D72C2F7ACEBF', N'Ігрові миші', N'Ігрові миші', N'/game-mouse',N'.png'),
    ('4EF68320-5C87-45A8-9805-C1B2FE633D24', 'FEAEE930-7310-4DB9-BE8C-8559E83B5E7F', N'Клавіатури', N'Клавіатури', N'/keyboards',N'.png'),
        ('DC450CB9-9CDD-4D65-855B-2DC2E94ACC03', '4EF68320-5C87-45A8-9805-C1B2FE633D24', N'Офісні клавіатури', N'Офісні клавіатури', N'/office-keyboards',N'.png'),
        ('D563AE59-503B-459C-AB3F-C06F19989152', '4EF68320-5C87-45A8-9805-C1B2FE633D24', N'Дизайнерські клавіатури', N'Дизайнерські клавіатури', N'/design-keyboards',N'.png'),
        ('6DA90993-D38A-4860-B123-36833990565D', '4EF68320-5C87-45A8-9805-C1B2FE633D24', N'Ігрові клавіатури', N'Ігрові клавіатури', N'/game-keyboards',N'.png'),
    ('E4149676-30D4-4C7F-B27F-6235B6F7C1B0', 'FEAEE930-7310-4DB9-BE8C-8559E83B5E7F', N'Джойстики', N'Джойстики', N'/joysticks',N'.png');

INSERT INTO ProductGroups([Id],           [ParentId],[Name],          [Description],          [Slug],        [ImageUrl])
VALUES
('12B7F620-F9A0-43C2-932F-2756B6A65902', '69BFE1A9-2067-48B2-8ADC-7F1D324FBAD0', N'Неттопи', N'Спрощені ПК для роботи з мережею', N'/nettops',N'nettops.png');

/*
Комп'ютери
    Ноутбуки
    Десктопи
        Моноблоки
        Системні блоки
        Монітори

Маніпулятори
    Комп'ютерні миші
        Офісні миші
        Дизайнерські миші
        Ігрові миші
    Клавіатури
        Офісні клавіатури
        Дизайнерські клавіатури
        Ігрові клавіатури
    Джойстики

Комп'ютерні комплектуючі
    Відеокарти
    Оперативна пам'ять
    Накопичувачі
        SSD
        HDD
    Процесори
*/

INSERT INTO Products ([Id],[GroupId],[ProducerId],[Name],[Description],[Slug],[Price],[Stock] )
VALUES
(NEWID(), 
    'FAB22108-CCC7-4A8D-ADA0-32004692B95F', -- Id з ProductGroups, що відповідає "Ноутбуки"
    '90413946-0B19-4CFE-869C-30925BF2C829', -- Id з Producers, що відповідає "Acer"
    N'Acer Aspire Go 15', 
    N'Ноутбук Acer Aspire Go 15 AG15-51P-75R9 (NX.J51EU.00G) Steel Gray / 15.3" IPS WUXGA / Intel Core i7-1355U / RAM 16 ГБ / SSD 512 ГБ', 
    N'NX.J51EU.00G', 27999, 10 ),
(NEWID(), 'FAB22108-CCC7-4A8D-ADA0-32004692B95F', '90413946-0B19-4CFE-869C-30925BF2C829', 
    N'Acer Nitro Lite', 
    N'Ноутбук Acer Nitro Lite NL16-71G-58HN (NH.DAEEU.001) Shale Black / 16” IPS WUXGA 165 Гц / Intel Core i5-13420H / RAM 16 ГБ / SSD 512 ГБ / nVidia GeForce RTX 4050, 6 ГБ ',
    N'NH.DAEEU.001', 40999, 10 ),
(NEWID(), 'BD676F03-EB6E-4AC0-8F57-823A897F5B7F', '90413946-0B19-4CFE-869C-30925BF2C829', 
    N'Acer Aspire C24-1600', 
    N'Моноблок Acer Aspire C24-1600 Екран 23.8" (1920x1080) Full HD / Intel Pentium Silver N6005 (2.0 - 3.3 ГГц) / RAM 8 ГБ / SSD 256 ГБ / Intel UHD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / кардрідер / веб-камера / без Bluetooth', 
    N'C24-1600', 22482, 10 ),
(NEWID(), '9AFFEB29-E4A7-49F4-86A1-6D23CAB198AE', '90413946-0B19-4CFE-869C-30925BF2C829', 
    N'Acer ConceptD CT300-51A', 
    N'Десктоп Acer ConceptD CT300-51A Intel Core i7-10700 (2.9 - 4.8 ГГц) / RAM 32 ГБ / HDD 2 ТБ + SSD 1 ТБ / nVidia GeForce RTX 3070, 8 ГБ / без ОД / LAN / Wi-Fi / Bluetooth / кардрідер / Windows 10 Pro', 
    N'CT300-51A', 52823, 10 ),
(NEWID(), '12B7F620-F9A0-43C2-932F-2756B6A65902',  -- Id з ProductGroups, що відповідає "Неттопи"
    '90413946-0B19-4CFE-869C-30925BF2C829', 
    N'Acer Veriton N4640G', 
    N'Неттоп Acer Veriton N4640G USFF / Intel Celeron G3900T (2 ядра по 2,6 ГГц) / 8 ГБ DDR4 / 128 ГБ SSD / Intel HD Graphics 510 / Блок живлення б/в', 
    N'N4640G', 3963, 10 ),
(NEWID(), 'A42D67A4-3D6C-4837-8F59-6EEC7AE82CD5', '90413946-0B19-4CFE-869C-30925BF2C829', 
    N'Acer EK251QGbi', 
    N'Монітор 24.5" Acer EK251QGbi (UM.KE1EE.G01) -- IPS FHD / 120Hz / 4 мс (GTG) / AMD FreeSync / Blue Light Filter / sRGB: 99 %', 
    N'UM.KE1EE.G01', 3399, 10 ),
(NEWID(), '09280CA9-E50A-4437-82B7-4B736B9C6EE6', '90413946-0B19-4CFE-869C-30925BF2C829', 
    N'Acer Optical 008', N'Офісна миша Acer Optical 008 USB Black (HP.EXPBG.008)', N'HP.EXPBG.008', 201, 10 ),
(NEWID(), 'B966EBBD-3C92-45DC-B9CA-9CCC17F1453D', '90413946-0B19-4CFE-869C-30925BF2C829', 
    N'Acer Nitro II', N'Ігрова Миша Acer Nitro II NMW200, USB-A, чорний', N'NMW200', 893, 10 ),
(NEWID(), 'EEA85C96-6A68-4010-BC31-61732D18BF6A', '90413946-0B19-4CFE-869C-30925BF2C829', 
    N'ACER OMR225 Pro', N'Дизайнерська Миша ACER OMR225 Pro з комбінованим підключенням, RGB, безшумна, з бічним коліском, 8000 DPI, чорний', N'OMR225', 2529, 10 ),
(NEWID(), 'D563AE59-503B-459C-AB3F-C06F19989152', '90413946-0B19-4CFE-869C-30925BF2C829', 
    N'ACER OKR217', N'Дизайнерська Клавіатура ACER OKR217 із комбінованим підключенням через кабель. адаптер USB2.4ГГц, Bluetooth, з підсвічуванням', N'OKR217', 4356, 10 ),
(NEWID(), 'DC450CB9-9CDD-4D65-855B-2DC2E94ACC03', '90413946-0B19-4CFE-869C-30925BF2C829', 
    N'Acer OKW010', N'Офісна Клавіатура Acer OKW010 USB Black', N'OKW010', 473, 10 );


INSERT INTO Products ([Id],[GroupId],[ProducerId],[Name],[Description],[Slug],[Price],[Stock] )
VALUES
(NEWID(), 
    'FAB22108-CCC7-4A8D-ADA0-32004692B95F', -- Id з ProductGroups, що відповідає "Ноутбуки"
    'B06014C8-B7C3-4EC1-B20A-4FB70C615C2F', -- Id з Producers, що відповідає "Packard Bell"
    N'Packard Bell Cloudbook 11.6" HD 4/64GB, N4020', 
    N'Ноутбук Packard Bell Cloudbook 11.6" HD 4/64GB, N4020 (N11260BK) Black (Open Box)', 
    N'NN4020', 7020, 10 ),
(NEWID(), 
    'FAB22108-CCC7-4A8D-ADA0-32004692B95F', -- Id з ProductGroups, що відповідає "Ноутбуки"
    'B06014C8-B7C3-4EC1-B20A-4FB70C615C2F', -- Id з Producers, що відповідає "Packard Bell"
    N'Packard Bell Cloudbook 11.6" HD 4/64GB, N3250', 
    N'Ноутбук Packard Bell Cloudbook 11.6" HD 4/64GB N3250 (N11260BK) Black', 
    N'N3250', 9458, 10 ),
(NEWID(), 
    'FAB22108-CCC7-4A8D-ADA0-32004692B95F', -- Id з ProductGroups, що відповідає "Ноутбуки"
    '1C41932D-70DB-43E7-90EE-26518C7098D4', -- Id з Producers, що відповідає "Gateway"
    N'Gateway GWNR71539', 
    N'Ультратонкий ноутбук Gateway GWNR71539 AMD Ryzen™ 7 3700U до 4, 00 ГГц, пам’яттю 16 ГБ DDR4, 1 ТБ SSD, відеокартою Radeon™ RX Vega 10, дисплеєм 15, 6 дюйма Full HD, Windows 11', 
    N'GWNR71539', 33975, 10 ),
(NEWID(), 
    'FAB22108-CCC7-4A8D-ADA0-32004692B95F', -- Id з ProductGroups, що відповідає "Ноутбуки"
    '1C41932D-70DB-43E7-90EE-26518C7098D4', -- Id з Producers, що відповідає "Gateway"
    N'Gateway GWTC71427-BK', 
    N'Ультрабук Gateway GWTC71427-BK / 14" (1920x1080) IPS Touch / Intel Core i7-1255U (10 (12) ядер по 1.7 - 4.7 GHz) / 8 GB DDR4 / 512 GB SSD / Intel Iris Xe Graphics eligible / WebCam', 
    N'GWTC71427-BK', 17940, 10 ),
(NEWID(), 
    'FAB22108-CCC7-4A8D-ADA0-32004692B95F', -- Id з ProductGroups, що відповідає "Ноутбуки"
    '1C41932D-70DB-43E7-90EE-26518C7098D4', -- Id з Producers, що відповідає "Gateway"
    N'Gateway GWTN156-2BK', 
    N'Ігровий ноутбук Gateway GWTN156-2BK / 15.6" (1920x1080) IPS / AMD Ryzen 5 4600H (6 (12) ядер по 3.0 - 4.0 GHz) / 8 GB DDR4 / 256 GB SSD / nVidia GeForce GTX 1650, 4 GB GDDR6, 128-bit / WebCam б/в', 
    N'GWTN156-2BK', 22946, 10 ),
(NEWID(), 
    'FAB22108-CCC7-4A8D-ADA0-32004692B95F', -- Id з ProductGroups, що відповідає "Ноутбуки"
    '7AD70794-E2D9-47CF-AF0C-6B78B7E098DD', -- Id з Producers, що відповідає "eMachines"
    N'eMachines G625-AMD', 
    N'Ноутбук eMachines G625-AMD TF-20-1.6GHz-2Gb-DDR3-250Gb-HDD-W17.3-DVD-RW-Web-(B)- Б/В', 
    N'G625-AMD', 4065, 10 ),
(NEWID(), 
    'FAB22108-CCC7-4A8D-ADA0-32004692B95F', -- Id з ProductGroups, що відповідає "Ноутбуки"
    '7AD70794-E2D9-47CF-AF0C-6B78B7E098DD', -- Id з Producers, що відповідає "eMachines"
    N'eMachines E525-Intel', 
    N'Ноутбук eMachines E525-Intel Celeron T3000-1.8GHz-4Gb-DDR3-320Gb-HDD-W15.5-DVD-RW-(B)- Б/В', 
    N'E525-Intel', 3750, 10 );
/*   

Xiaomi 
  44 650 Ноутбук Xiaomi RedmiBook Pro 16 2024 Ultra5/32G/1T (JYU4592CN)
  899 Бездротова миша Xiaomi Dual-mode Wireless Mouse 2 BHR8850GL Black
  1 099 Ігрова мишка Xiaomi Mi Gaming Mouse Lite (BHR5716CN) 6200dpi
  2 499 Смарт-клавіатура Xiaomi Wired Mechanical Keyboard Green Switch BHR6079CN
  3 999 Дизайнерська Клавіатура бездротова Xiaomi MIIIW ART Z830 Pro Max Wireless/Bluetooth/USB (MWMKB04)
  3 555 Монітор 23,8" Xiaomi Monitor A24i 1920x1080 (FullHD) IPS (ELA5444EU)
    POCO
      
    Black Shark
       3 799 Джойстик Black Shark Green Ghost 3 Mode Elite Controller
       3 299 Джойстик Black Shark Magic Wireless Game Controller BHR8152CN Black


Dell
  33 999 Ноутбук Dell 15 Laptop (210-BRNX_54Wh_WP) Carbon Black / 15.6" WVA WUXGA 120 Гц / Intel Core i5-1334U / RAM 16 ГБ / SSD 512 ГБ / Windows 11 Pro
  57 659 Монітор Dell UP3017 2560x1600 AH-IPS 350 кд/м² (210-AJLP)
  569 Миша Dell MS116 Black Дротова (570-AAIR)
  29 599 Неттоп Dell Pro Micro Intel Core i3-14100T (3.5 - 4.1 ГГц) / RAM 16 ГБ / SSD 512 ГБ / Intel UHD Graphics 730 / без ОД / LAN / Wi-Fi / Bluetooth / Ubuntu (BTO003_QCM1250_UA_UBU)
  32 638 Десктоп Dell Pro Slim Essential SFF Intel Core i5-14400 (2.5 - 4.7 ГГц) / RAM 16 ГБ / SSD 512 ГБ / Intel UHD Graphics 730 / без ОД / LAN / Wi-Fi / Bluetooth / Linux / клавіатура + мишка (BTO004_QVS1260_UBU)
  69 674 Моноблок Dell BTO103_QC24251 Pro AiO 23.8" FHD IPS AG, Intel U5-235T, 16GB, F512GB, UMA, WiFi, кл+м, Win11P
    Alienware
      67 820 Ноутбук Alienware 16 Aurora AC16250 (LAC16250-7469BLU-PUS)
      14 327 Монітор Alienware AW2525HM 24.5" IPS 1920x1080 (FullHD) 400 кд/м² (210-BRYJ) 
      109 499 Ігровий (2025) ноутбук Dell Alienware 16X Aurora Ultra 7 255HX/ 32GB / 1TB+1TB/ Win11x Licensed/ RTX5060 / 16" 240Hz
      171 911 Десктоп Alienware Aurora R13 i7-12700KF Intel Core i7 16 ГБ DDR5-SDRAM 2512 ГБ HDD+SSD
      5 999 Клавіатура Alienware Tenkeyless Gaming Keyboard AW420K Black
      5 471 Миша Alienware Tri-Mode Gaming - AW720M Lunar Light (545-BBDO)
      131 954 Десктоп Alienware Aurora R11, Core i7 10700KF, 32GB 3200MHz, 2TB SSD PCIe NVMe, RTX 2080

ASUS
  93 999 Ноутбук ASUS ROG Strix G18 (2025) G814PP-S9022 (90NR0KY8-M000T0) Eclipse Gray / 18" IPS WQXGA 240 Гц / AMD Ryzen 9 8940HX / RAM 32 ГБ / SSD 1 ТБ / GeForce RTX 5070, 8 ГБ
  3 799 Миша бездротова Asus ROG Keris AimPoint RGB Black (90MP02V0-BMUA00)
  43 999 Монiтор Asus 24.1" ROG Strix XG248QSG Ace (90LM0C40-B01371) Black 610Hz
  170 257 Системний блок ASUS Core i9 14900KF / RTX 5080 16ГБ / 64ГБ DDR5 / SSD 2TБ M.2 PCIe + Wi-Fi 6.0
  38 261 Моноблок Комп'ютер ASUS M3402WFAK-BPC0340 AiO / Ryzen5 7520U, 16, 512, WiFi, кл+м (90PT03L2-M011M0)
  12 710 Клавіатура ASUS ROG Falchion Ace HFX 68key Magnetic Switches USB-A EN RGB (90MP04KE-BKUA20)

*/

SET NOCOUNT ON
DECLARE @i INT
SET @i = 100
DECLARE @ProductId UNIQUEIDENTIFIER
DECLARE @q INT
WHILE @i > 0
BEGIN
    SET @ProductId = (SELECT TOP 1 Id FROM Products ORDER BY NEWID())
    SET @q = ABS(CHECKSUM(NEWID())) % 10 + 1
    INSERT INTO Sales VALUES (
        NEWID(),
        DATEADD(MINUTE, -(ABS(CHECKSUM(NEWID())) % 100000), CURRENT_TIMESTAMP),
        @ProductId,
        @q,
        @q * (SELECT Price FROM Products WHERE Id = @ProductId)
    )
    SET @i = @i - 1
END