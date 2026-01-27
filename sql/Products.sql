CREATE TABLE Products (
    [Id]           UNIQUEIDENTIFIER   NOT NULL   PRIMARY KEY,
    [GroupId]      UNIQUEIDENTIFIER   NOT NULL,
    [ProducerId]   UNIQUEIDENTIFIER   NOT NULL,
    [Name]         NVARCHAR(128)      NOT NULL,   -- 'N' means Unicode
    [Description]  NVARCHAR(512)          NULL,
    [Slug]         NVARCHAR(64)           NULL   UNIQUE,
    [ImageUrl]     NVARCHAR(256)          NULL,
    [Price]        DECIMAL(12,2)      NOT NULL,
    [Stock]        INT                NOT NULL   DEFAULT 0,
    [DeletedAt]    DATETIME2              NULL
)

/*
Acer
  27 999 Ноутбук Acer Aspire Go 15 AG15-51P-75R9 (NX.J51EU.00G) Steel Gray / 15.3" IPS WUXGA / Intel Core i7-1355U / RAM 16 ГБ / SSD 512 ГБ   
  40 999 Ноутбук Acer Nitro Lite NL16-71G-58HN (NH.DAEEU.001) Shale Black / 16” IPS WUXGA 165 Гц / Intel Core i5-13420H / RAM 16 ГБ / SSD 512 ГБ / nVidia GeForce RTX 4050, 6 ГБ  
  22 482 Моноблок Acer Aspire C24-1600 Екран 23.8" (1920x1080) Full HD / Intel Pentium Silver N6005 (2.0 - 3.3 ГГц) / RAM 8 ГБ / SSD 256 ГБ / Intel UHD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / кардрідер / веб-камера / без Bluetooth
  52 823 Десктоп Acer ConceptD CT300-51A Intel Core i7-10700 (2.9 - 4.8 ГГц) / RAM 32 ГБ / HDD 2 ТБ + SSD 1 ТБ / nVidia GeForce RTX 3070, 8 ГБ / без ОД / LAN / Wi-Fi / Bluetooth / кардрідер / Windows 10 Pro
  3 963 Неттоп Acer Veriton N4640G USFF / Intel Celeron G3900T (2 ядра по 2,6 ГГц) / 8 ГБ DDR4 / 128 ГБ SSD / Intel HD Graphics 510 / Блок живлення б/в
  3 399 Монітор 24.5" Acer EK251QGbi (UM.KE1EE.G01) -- IPS FHD / 120Hz / 4 мс (GTG) / AMD FreeSync / Blue Light Filter / sRGB: 99 %
  201 Офісна миша Acer Optical 008 USB Black (HP.EXPBG.008)
  893 Ігрова Миша Acer Nitro II NMW200, USB-A, чорний
  2 529 Дизайнерська Миша ACER OMR225 Pro з комбінованим підключенням, RGB, безшумна, з бічним коліском, 8000 DPI, чорний
  4 356 Дизайнерська Клавіатура ACER OKR217 із комбінованим підключенням через кабель. адаптер USB2.4ГГц, Bluetooth, з підсвічуванням
  473 Офісна Клавіатура Acer OKW010 USB Black
    Packard Bell
      7 020 Ноутбук Packard Bell Cloudbook 11.6" HD 4/64GB, N4020 (N11260BK) Black (Open Box)
      9 458 Ноутбук Packard Bell Cloudbook 11.6" HD 4/64GB N3250 (N11260BK) Black
    Gateway
      33 975 Ультратонкий ноутбук Gateway GWNR71539 AMD Ryzen™ 7 3700U до 4, 00 ГГц, пам’яттю 16 ГБ DDR4, 1 ТБ SSD, відеокартою Radeon™ RX Vega 10, дисплеєм 15, 6 дюйма Full HD, Windows 11
      17 940 Ультрабук Gateway GWTC71427-BK / 14" (1920x1080) IPS Touch / Intel Core i7-1255U (10 (12) ядер по 1.7 - 4.7 GHz) / 8 GB DDR4 / 512 GB SSD / Intel Iris Xe Graphics eligible / WebCam
      22 946 Ігровий ноутбук Gateway GWTN156-2BK / 15.6" (1920x1080) IPS / AMD Ryzen 5 4600H (6 (12) ядер по 3.0 - 4.0 GHz) / 8 GB DDR4 / 256 GB SSD / nVidia GeForce GTX 1650, 4 GB GDDR6, 128-bit / WebCam б/в
    eMachines
      4 065 Ноутбук eMachines G625-AMD TF-20-1.6GHz-2Gb-DDR3-250Gb-HDD-W17.3-DVD-RW-Web-(B)- Б/В
      3 750 Ноутбук eMachines E525-Intel Celeron T3000-1.8GHz-4Gb-DDR3-320Gb-HDD-W15.5-DVD-RW-(B)- Б/В


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