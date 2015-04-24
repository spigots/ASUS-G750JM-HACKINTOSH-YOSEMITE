/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150204-64 [Feb  5 2015]
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-8.aml, Mon Feb 16 21:08:30 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001A36 (6710)
 *     Revision         0x01
 *     Checksum         0x44
 *     OEM ID           "SgRef"
 *     OEM Table ID     "SgPeg"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("SSDT-8.aml", "SSDT", 1, "SgRef", "SgPeg", 0x00001000)
{

    External (_SB_.PCI0.GFX0._DOD, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD01._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD01._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD02._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD02._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD03._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD03._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD04._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD04._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD05._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD05._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD06._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD06._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD07._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD07._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD08._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD08._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD09._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD09._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD0A._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD0A._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD0B._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD0B._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD0C._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD0C._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD0D._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD0D._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD0E._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD0E._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD0F._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD0F._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.LCDD._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.LCDD._BCL, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.LCDD._BCM, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GFX0.LCDD._BQC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.LCDD._DCS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.LCDD._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.RRAM, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.ST94, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.ST95, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.EC0_.WRAM, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.PEG0, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP._ADR, IntObj)
    External (_SB_.PCI0.PEG0.PEGP.DGCX, IntObj)
    External (_SB_.PCI0.PEG0.PEGP.GC6I, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGP.GC6O, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGP.NHDA, FieldUnitObj)
    External (_SB_.PCI0.PEG0.PEGP.TDGC, IntObj)
    External (_SB_.PCI0.PEG0.PEGP.TGPC, BuffObj)
    External (EBAS, FieldUnitObj)
    External (EECP, FieldUnitObj)
    External (GBAS, FieldUnitObj)
    External (GPRW, MethodObj)    // 2 Arguments
    External (HLRS, FieldUnitObj)
    External (HYSS, FieldUnitObj)
    External (P0UB, FieldUnitObj)
    External (PCSL, FieldUnitObj)
    External (PNHM, FieldUnitObj)
    External (PWEN, FieldUnitObj)
    External (PWOK, FieldUnitObj)
    External (SC7A, FieldUnitObj)
    External (SGGP, FieldUnitObj)
    External (SGMD, FieldUnitObj)
    External (XBAS, FieldUnitObj)

    Scope (\_SB.PCI0.PEG0)
    {
        OperationRegion (MSID, SystemMemory, EBAS, 0x50)
        Field (MSID, DWordAcc, Lock, Preserve)
        {
            VEID,   16, 
            Offset (0x40), 
            NVID,   32, 
            Offset (0x4C), 
            ATID,   32
        }

        OperationRegion (RPCX, SystemMemory, (\XBAS + 0x8000), 0x1000)
        Field (RPCX, ByteAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16, 
            CMDR,   8, 
            Offset (0x84), 
            D0ST,   2, 
            Offset (0xAC), 
                ,   4, 
            CMLW,   6, 
            Offset (0xB0), 
            ASPM,   2, 
                ,   2, 
            LNKD,   1, 
            RTLK,   1, 
            Offset (0x11A), 
                ,   1, 
            VCNP,   1, 
            Offset (0x214), 
            Offset (0x216), 
            LNKS,   4, 
            Offset (0x504), 
            Offset (0x506), 
            PCFG,   2, 
            Offset (0x508), 
            TREN,   1, 
            Offset (0xC20), 
                ,   4, 
            AFES,   2, 
            Offset (0xD0C), 
                ,   20, 
            LREV,   1
        }

        Method (RBP0, 1, NotSerialized)
        {
            Local7 = ((\XBAS + 0x8000) + Arg0)
            OperationRegion (PCI0, SystemMemory, Local7, One)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   8
            }

            Return (TEMP) /* \_SB_.PCI0.PEG0.RBP0.TEMP */
        }

        Method (WBP0, 2, NotSerialized)
        {
            Local7 = ((\XBAS + 0x8000) + Arg0)
            OperationRegion (PCI0, SystemMemory, Local7, One)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   8
            }

            TEMP = Arg1
            Return (TEMP) /* \_SB_.PCI0.PEG0.WBP0.TEMP */
        }

        Method (BSPR, 2, NotSerialized)
        {
            Local7 = (((\XBAS + 0x8000) + 0x091C) + (Arg0 * 
                0x20))
            OperationRegion (PCI0, SystemMemory, Local7, 0x04)
            Field (PCI0, DWordAcc, NoLock, Preserve)
            {
                    ,   31, 
                TEMP,   1
            }

            TEMP = Arg1
        }

        Method (C7OK, 1, NotSerialized)
        {
            OperationRegion (MWHB, SystemMemory, \XBAS, 0x1000)
            Field (MWHB, DWordAcc, NoLock, Preserve)
            {
                Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17
            }

            OperationRegion (MBAR, SystemMemory, ((MHBR << 0x0F) + 0x5000), 0x1000)
            Field (MBAR, ByteAcc, NoLock, Preserve)
            {
                Offset (0xDA8), 
                    ,   2, 
                C7AD,   1
            }

            C7AD = Arg0
        }

        PowerResource (PG00, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                If ((\_SB.PCI0.PEG0.PEGP.TDGC == One))
                {
                    If ((\_SB.PCI0.PEG0.PEGP.DGCX == 0x03))
                    {
                        _STA = One
                        \_SB.PCI0.PEG0.PEGP.GC6O ()
                    }
                    Else
                    {
                        If ((\_SB.PCI0.PEG0.PEGP.DGCX == 0x04))
                        {
                            _STA = One
                            \_SB.PCI0.PEG0.PEGP.GC6O ()
                        }
                    }

                    \_SB.PCI0.PEG0.PEGP.TDGC = Zero
                    \_SB.PCI0.PEG0.PEGP.DGCX = Zero
                }
                Else
                {
                    \_SB.PCI0.PEG0.PEGP.SGON ()
                    CMDR = 0x07
                    D0ST = Zero
                    \_SB.PCI0.PEG0.PEGP.NHDA = Zero
                    If ((VEID == 0x10DE))
                    {
                        NVID = HYSS /* External reference */
                    }

                    If ((VEID == 0x1002))
                    {
                        ATID = HYSS /* External reference */
                    }

                    _STA = One
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                If ((\_SB.PCI0.PEG0.PEGP.TDGC == One))
                {
                    CreateField (\_SB.PCI0.PEG0.PEGP.TGPC, Zero, 0x03, GUPC)
                    If ((ToInteger (GUPC) == One))
                    {
                        \_SB.PCI0.PEG0.PEGP.GC6I ()
                        _STA = Zero
                    }
                    Else
                    {
                        If ((ToInteger (GUPC) == 0x02))
                        {
                            \_SB.PCI0.PEG0.PEGP.GC6I ()
                            _STA = Zero
                        }
                    }
                }
                Else
                {
                    \_SB.PCI0.PEG0.PEGP.SGOF ()
                    _STA = Zero
                }
            }
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            PG00
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            PG00
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            PG00
        })
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            Return (0x04)
        }

        Device (PEGA)
        {
            Name (_ADR, One)  // _ADR: Address
            OperationRegion (ACAP, PCI_Config, \EECP, 0x14)
            Field (ACAP, DWordAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                LCT1,   16
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Name (ONOF, One)
        Name (IVID, 0xFFFF)
        Name (TCNT, Zero)
        Name (LDLY, 0x64)
        Name (ELCT, Zero)
        Name (HVID, Zero)
        Name (HDID, Zero)
        Name (FBDL, Zero)
        Name (MBDL, Zero)
        Name (CBDL, Zero)
        Name (HSTR, Zero)
        Name (UULN, Zero)
        Name (INDX, Zero)
        Name (POFF, Zero)
        Name (PLEN, Zero)
        Name (PDAT, Zero)
        Name (WLSB, Zero)
        Name (WMSB, Zero)
        Name (DMLW, Zero)
        Name (NTSA, Zero)
        Name (DAT0, Buffer (0x04EC)
        {
            /* 0000 */  0xD8, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0008 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x04, 0x09,  /* ........ */
            /* 0010 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x08, 0x09, 0x04,  /* ........ */
            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x0C, 0x09, 0x04, 0x00,  /* ........ */
            /* 0020 */  0x00, 0x00, 0x00, 0x10, 0x09, 0x04, 0x00, 0x00,  /* ........ */
            /* 0028 */  0x00, 0x00, 0x0C, 0x08, 0x04, 0x00, 0x00, 0x00,  /* ........ */
            /* 0030 */  0x00, 0x20, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,  /* . ...... */
            /* 0038 */  0x24, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x28,  /* $......( */
            /* 0040 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x09,  /* ......,. */
            /* 0048 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x30, 0x09, 0x04,  /* .....0.. */
            /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x2C, 0x08, 0x04, 0x00,  /* ....,... */
            /* 0058 */  0x00, 0x00, 0x00, 0x40, 0x09, 0x04, 0x00, 0x00,  /* ...@.... */
            /* 0060 */  0x00, 0x00, 0x44, 0x09, 0x04, 0x00, 0x00, 0x00,  /* ..D..... */
            /* 0068 */  0x00, 0x48, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,  /* .H...... */
            /* 0070 */  0x4C, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x50,  /* L......P */
            /* 0078 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x4C, 0x08,  /* ......L. */
            /* 0080 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x60, 0x09, 0x04,  /* .....`.. */
            /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x64, 0x09, 0x04, 0x00,  /* ....d... */
            /* 0090 */  0x00, 0x00, 0x00, 0x68, 0x09, 0x04, 0x00, 0x00,  /* ...h.... */
            /* 0098 */  0x00, 0x00, 0x6C, 0x09, 0x04, 0x00, 0x00, 0x00,  /* ..l..... */
            /* 00A0 */  0x00, 0x70, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,  /* .p...... */
            /* 00A8 */  0x6C, 0x08, 0x04, 0x00, 0x00, 0x00, 0x00, 0x80,  /* l....... */
            /* 00B0 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x84, 0x09,  /* ........ */
            /* 00B8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x88, 0x09, 0x04,  /* ........ */
            /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x8C, 0x09, 0x04, 0x00,  /* ........ */
            /* 00C8 */  0x00, 0x00, 0x00, 0x90, 0x09, 0x04, 0x00, 0x00,  /* ........ */
            /* 00D0 */  0x00, 0x00, 0x8C, 0x08, 0x04, 0x00, 0x00, 0x00,  /* ........ */
            /* 00D8 */  0x00, 0xA0, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 00E0 */  0xA4, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xA8,  /* ........ */
            /* 00E8 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xAC, 0x09,  /* ........ */
            /* 00F0 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xB0, 0x09, 0x04,  /* ........ */
            /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0xAC, 0x08, 0x04, 0x00,  /* ........ */
            /* 0100 */  0x00, 0x00, 0x00, 0xC0, 0x09, 0x04, 0x00, 0x00,  /* ........ */
            /* 0108 */  0x00, 0x00, 0xC4, 0x09, 0x04, 0x00, 0x00, 0x00,  /* ........ */
            /* 0110 */  0x00, 0xC8, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0118 */  0xCC, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xD0,  /* ........ */
            /* 0120 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xCC, 0x08,  /* ........ */
            /* 0128 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x09, 0x04,  /* ........ */
            /* 0130 */  0x00, 0x00, 0x00, 0x00, 0xE4, 0x09, 0x04, 0x00,  /* ........ */
            /* 0138 */  0x00, 0x00, 0x00, 0xE8, 0x09, 0x04, 0x00, 0x00,  /* ........ */
            /* 0140 */  0x00, 0x00, 0xEC, 0x09, 0x04, 0x00, 0x00, 0x00,  /* ........ */
            /* 0148 */  0x00, 0xF0, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0150 */  0xEC, 0x08, 0x04, 0x00, 0x00, 0x00, 0x00, 0x30,  /* .......0 */
            /* 0158 */  0x0C, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,  /* ........ */
            /* 0160 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x04, 0x0A, 0x04,  /* ........ */
            /* 0168 */  0x00, 0x00, 0x00, 0x00, 0x08, 0x0A, 0x04, 0x00,  /* ........ */
            /* 0170 */  0x00, 0x00, 0x00, 0x0C, 0x0A, 0x04, 0x00, 0x00,  /* ........ */
            /* 0178 */  0x00, 0x00, 0xA0, 0x0A, 0x04, 0x00, 0x00, 0x00,  /* ........ */
            /* 0180 */  0x00, 0xA4, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0188 */  0xA8, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xAC,  /* ........ */
            /* 0190 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xB0, 0x0A,  /* ........ */
            /* 0198 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x0A, 0x04,  /* ........ */
            /* 01A0 */  0x00, 0x00, 0x00, 0x00, 0xB8, 0x0A, 0x04, 0x00,  /* ........ */
            /* 01A8 */  0x00, 0x00, 0x00, 0xBC, 0x0A, 0x04, 0x00, 0x00,  /* ........ */
            /* 01B0 */  0x00, 0x00, 0xC0, 0x0A, 0x04, 0x00, 0x00, 0x00,  /* ........ */
            /* 01B8 */  0x00, 0xC4, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01C0 */  0xC8, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xCC,  /* ........ */
            /* 01C8 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x0A,  /* ........ */
            /* 01D0 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xD4, 0x0A, 0x04,  /* ........ */
            /* 01D8 */  0x00, 0x00, 0x00, 0x00, 0xD8, 0x0A, 0x04, 0x00,  /* ........ */
            /* 01E0 */  0x00, 0x00, 0x00, 0xDC, 0x0A, 0x04, 0x00, 0x00,  /* ........ */
            /* 01E8 */  0x00, 0x00, 0xE0, 0x0A, 0x04, 0x00, 0x00, 0x00,  /* ........ */
            /* 01F0 */  0x00, 0xE4, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 01F8 */  0xE8, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xEC,  /* ........ */
            /* 0200 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x0A,  /* ........ */
            /* 0208 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xF4, 0x0A, 0x04,  /* ........ */
            /* 0210 */  0x00, 0x00, 0x00, 0x00, 0xF8, 0x0A, 0x04, 0x00,  /* ........ */
            /* 0218 */  0x00, 0x00, 0x00, 0xFC, 0x0A, 0x04, 0x00, 0x00,  /* ........ */
            /* 0220 */  0x00, 0x00, 0x10, 0x0A, 0x04, 0x00, 0x00, 0x00,  /* ........ */
            /* 0228 */  0x00, 0x14, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0230 */  0x18, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x1C,  /* ........ */
            /* 0238 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x20, 0x0A,  /* ...... . */
            /* 0240 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x24, 0x0A, 0x04,  /* .....$.. */
            /* 0248 */  0x00, 0x00, 0x00, 0x00, 0x28, 0x0A, 0x04, 0x00,  /* ....(... */
            /* 0250 */  0x00, 0x00, 0x00, 0x2C, 0x0A, 0x04, 0x00, 0x00,  /* ...,.... */
            /* 0258 */  0x00, 0x00, 0x30, 0x0A, 0x04, 0x00, 0x00, 0x00,  /* ..0..... */
            /* 0260 */  0x00, 0x34, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,  /* .4...... */
            /* 0268 */  0x38, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x3C,  /* 8......< */
            /* 0270 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x40, 0x0A,  /* ......@. */
            /* 0278 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x44, 0x0A, 0x04,  /* .....D.. */
            /* 0280 */  0x00, 0x00, 0x00, 0x00, 0x48, 0x0A, 0x04, 0x00,  /* ....H... */
            /* 0288 */  0x00, 0x00, 0x00, 0x4C, 0x0A, 0x04, 0x00, 0x00,  /* ...L.... */
            /* 0290 */  0x00, 0x00, 0x50, 0x0A, 0x04, 0x00, 0x00, 0x00,  /* ..P..... */
            /* 0298 */  0x00, 0x54, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,  /* .T...... */
            /* 02A0 */  0x58, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x5C,  /* X......\ */
            /* 02A8 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x60, 0x0A,  /* ......`. */
            /* 02B0 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x64, 0x0A, 0x04,  /* .....d.. */
            /* 02B8 */  0x00, 0x00, 0x00, 0x00, 0x68, 0x0A, 0x04, 0x00,  /* ....h... */
            /* 02C0 */  0x00, 0x00, 0x00, 0x6C, 0x0A, 0x04, 0x00, 0x00,  /* ...l.... */
            /* 02C8 */  0x00, 0x00, 0x70, 0x0A, 0x04, 0x00, 0x00, 0x00,  /* ..p..... */
            /* 02D0 */  0x00, 0x74, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,  /* .t...... */
            /* 02D8 */  0x78, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x7C,  /* x......| */
            /* 02E0 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x80, 0x0A,  /* ........ */
            /* 02E8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x84, 0x0A, 0x04,  /* ........ */
            /* 02F0 */  0x00, 0x00, 0x00, 0x00, 0x88, 0x0A, 0x04, 0x00,  /* ........ */
            /* 02F8 */  0x00, 0x00, 0x00, 0x8C, 0x0A, 0x04, 0x00, 0x00,  /* ........ */
            /* 0300 */  0x00, 0x00, 0x90, 0x0A, 0x04, 0x00, 0x00, 0x00,  /* ........ */
            /* 0308 */  0x00, 0x94, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0310 */  0x98, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x9C,  /* ........ */
            /* 0318 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x18, 0x09,  /* ........ */
            /* 0320 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x38, 0x09, 0x04,  /* .....8.. */
            /* 0328 */  0x00, 0x00, 0x00, 0x00, 0x58, 0x09, 0x04, 0x00,  /* ....X... */
            /* 0330 */  0x00, 0x00, 0x00, 0x78, 0x09, 0x04, 0x00, 0x00,  /* ...x.... */
            /* 0338 */  0x00, 0x00, 0x98, 0x09, 0x04, 0x00, 0x00, 0x00,  /* ........ */
            /* 0340 */  0x00, 0xB8, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0348 */  0xD8, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xF8,  /* ........ */
            /* 0350 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x24, 0x02,  /* ......$. */
            /* 0358 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xF8, 0x01, 0x04,  /* ........ */
            /* 0360 */  0x00, 0x00, 0x00, 0x00, 0x60, 0x02, 0x04, 0x00,  /* ....`... */
            /* 0368 */  0x00, 0x00, 0x00, 0x28, 0x0C, 0x04, 0x00, 0x00,  /* ...(.... */
            /* 0370 */  0x00, 0x00, 0x38, 0x0C, 0x04, 0x00, 0x00, 0x00,  /* ..8..... */
            /* 0378 */  0x00, 0x14, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0380 */  0x0C, 0x00, 0x01, 0x00, 0x19, 0x00, 0x01, 0x00,  /* ........ */
            /* 0388 */  0x1A, 0x00, 0x01, 0x00, 0x1C, 0x00, 0x01, 0x00,  /* ........ */
            /* 0390 */  0x1D, 0x00, 0x01, 0x00, 0x20, 0x00, 0x02, 0x00,  /* .... ... */
            /* 0398 */  0x00, 0x22, 0x00, 0x02, 0x00, 0x00, 0x24, 0x00,  /* ."....$. */
            /* 03A0 */  0x02, 0x00, 0x00, 0x26, 0x00, 0x02, 0x00, 0x00,  /* ...&.... */
            /* 03A8 */  0x28, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x2C,  /* (......, */
            /* 03B0 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x00,  /* ......<. */
            /* 03B8 */  0x01, 0x00, 0x3D, 0x00, 0x01, 0x00, 0x3E, 0x00,  /* ..=...>. */
            /* 03C0 */  0x02, 0x00, 0x00, 0x84, 0x00, 0x04, 0x00, 0x00,  /* ........ */
            /* 03C8 */  0x00, 0x00, 0x8C, 0x00, 0x04, 0x00, 0x00, 0x00,  /* ........ */
            /* 03D0 */  0x00, 0x92, 0x00, 0x02, 0x00, 0x00, 0x94, 0x00,  /* ........ */
            /* 03D8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x98, 0x00, 0x02,  /* ........ */
            /* 03E0 */  0x00, 0x00, 0xA2, 0x00, 0x02, 0x00, 0x00, 0xA8,  /* ........ */
            /* 03E8 */  0x00, 0x02, 0x00, 0x00, 0xAC, 0x00, 0x04, 0x00,  /* ........ */
            /* 03F0 */  0x00, 0x00, 0x00, 0xB0, 0x00, 0x02, 0x00, 0x00,  /* ........ */
            /* 03F8 */  0xB4, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0xBC,  /* ........ */
            /* 0400 */  0x00, 0x02, 0x00, 0x00, 0xC8, 0x00, 0x02, 0x00,  /* ........ */
            /* 0408 */  0x00, 0xD0, 0x00, 0x02, 0x00, 0x00, 0xEC, 0x00,  /* ........ */
            /* 0410 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x14, 0x01, 0x04,  /* ........ */
            /* 0418 */  0x00, 0x00, 0x00, 0x00, 0x44, 0x01, 0x04, 0x00,  /* ....D... */
            /* 0420 */  0x00, 0x00, 0x00, 0x50, 0x01, 0x04, 0x00, 0x00,  /* ...P.... */
            /* 0428 */  0x00, 0x00, 0x58, 0x01, 0x04, 0x00, 0x00, 0x00,  /* ..X..... */
            /* 0430 */  0x00, 0x5C, 0x01, 0x04, 0x00, 0x00, 0x00, 0x00,  /* .\...... */
            /* 0438 */  0xFC, 0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 0440 */  0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x04, 0x02,  /* ........ */
            /* 0448 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x08, 0x02, 0x04,  /* ........ */
            /* 0450 */  0x00, 0x00, 0x00, 0x00, 0x28, 0x02, 0x04, 0x00,  /* ....(... */
            /* 0458 */  0x00, 0x00, 0x00, 0x2C, 0x02, 0x04, 0x00, 0x00,  /* ...,.... */
            /* 0460 */  0x00, 0x00, 0x38, 0x02, 0x04, 0x00, 0x00, 0x00,  /* ..8..... */
            /* 0468 */  0x00, 0x40, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00,  /* .@...... */
            /* 0470 */  0x44, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x50,  /* D......P */
            /* 0478 */  0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x58, 0x02,  /* ......X. */
            /* 0480 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x5C, 0x02, 0x04,  /* .....\.. */
            /* 0488 */  0x00, 0x00, 0x00, 0x00, 0xD0, 0x0C, 0x04, 0x00,  /* ........ */
            /* 0490 */  0x00, 0x00, 0x00, 0x34, 0x0D, 0x04, 0x00, 0x00,  /* ...4.... */
            /* 0498 */  0x00, 0x00, 0xF4, 0x00, 0x04, 0x00, 0x00, 0x00,  /* ........ */
            /* 04A0 */  0x00, 0xA0, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 04A8 */  0xA4, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00, 0xA8,  /* ........ */
            /* 04B0 */  0x0D, 0x04, 0x00, 0x00, 0x00, 0x00, 0xAC, 0x0D,  /* ........ */
            /* 04B8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xB0, 0x0D, 0x04,  /* ........ */
            /* 04C0 */  0x00, 0x00, 0x00, 0x00, 0xB4, 0x0D, 0x04, 0x00,  /* ........ */
            /* 04C8 */  0x00, 0x00, 0x00, 0xB8, 0x0D, 0x04, 0x00, 0x00,  /* ........ */
            /* 04D0 */  0x00, 0x00, 0xBC, 0x0D, 0x04, 0x00, 0x00, 0x00,  /* ........ */
            /* 04D8 */  0x00, 0xCC, 0x01, 0x04, 0x00, 0x00, 0x00, 0x00,  /* ........ */
            /* 04E0 */  0x04, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x04,  /* ........ */
            /* 04E8 */  0xFF, 0xFF, 0xFF, 0xFF                           /* .... */
        })
        Name (DAT1, Buffer (0x43)
        {
            /* 0000 */  0x06, 0x00, 0x02, 0xFF, 0xFF, 0x1E, 0x00, 0x02,  /* ........ */
            /* 0008 */  0xFF, 0xFF, 0xAA, 0x00, 0x02, 0xFF, 0xFF, 0xC0,  /* ........ */
            /* 0010 */  0x00, 0x04, 0xFF, 0xFF, 0xFF, 0xFF, 0xD2, 0x00,  /* ........ */
            /* 0018 */  0x02, 0xFF, 0xFF, 0xC4, 0x01, 0x04, 0xFF, 0xFF,  /* ........ */
            /* 0020 */  0xFF, 0xFF, 0xD0, 0x01, 0x04, 0xFF, 0xFF, 0xFF,  /* ........ */
            /* 0028 */  0xFF, 0xF0, 0x01, 0x04, 0xFF, 0xFF, 0xFF, 0xFF,  /* ........ */
            /* 0030 */  0x9C, 0x0D, 0x04, 0xFF, 0xFF, 0xFF, 0xFF, 0xB2,  /* ........ */
            /* 0038 */  0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x04, 0xFF,  /* ........ */
            /* 0040 */  0xFF, 0xFF, 0xFF                                 /* ... */
        })
        OperationRegion (PCIS, PCI_Config, Zero, 0xF0)
        Field (PCIS, DWordAcc, Lock, Preserve)
        {
            DVID,   16, 
            Offset (0x2C), 
            SVID,   16, 
            SDID,   16, 
            Offset (0x4C), 
            WVID,   16, 
            WDID,   16
        }

        OperationRegion (GPR, SystemIO, \GBAS, 0x60)
        Field (GPR, ByteAcc, Lock, Preserve)
        {
            Offset (0x0C), 
            LVL0,   32, 
            Offset (0x38), 
            LVL1,   32, 
            Offset (0x48), 
            LVL2,   32
        }

        OperationRegion (PCAP, PCI_Config, \EECP, 0x14)
        Field (PCAP, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
                ,   4, 
            EMLW,   6, 
            Offset (0x10), 
            LCTL,   16
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            \_SB.PCI0.PEG0.PEGP._ADR = Zero
        }

        Method (GMXB, 0, NotSerialized)
        {
            HSTR = PCFG /* \_SB_.PCI0.PEG0.PCFG */
            If ((HSTR == 0x03))
            {
                Local0 = 0x08
            }
            Else
            {
                Local0 = 0x04
            }

            Return (Local0)
        }

        Method (PUAB, 0, NotSerialized)
        {
            FBDL = Zero
            CBDL = Zero
            HSTR = PCFG /* \_SB_.PCI0.PEG0.PCFG */
            If ((HSTR == 0x03))
            {
                FBDL = Zero
                CBDL = 0x08
            }
            Else
            {
                If ((LREV == Zero))
                {
                    FBDL = Zero
                    CBDL = 0x04
                }
                Else
                {
                    FBDL = 0x04
                    CBDL = 0x04
                }
            }

            INDX = One
            If ((CBDL != Zero))
            {
                While ((INDX <= CBDL))
                {
                    BSPR (FBDL, Zero)
                    FBDL++
                    INDX++
                }
            }
        }

        Method (PDUB, 1, NotSerialized)
        {
            FBDL = Zero
            CBDL = Arg0
            If ((CBDL == Zero))
            {
                Return (Zero)
            }

            If ((HSTR == 0x03))
            {
                If ((LREV == Zero))
                {
                    FBDL = (0x08 - CBDL)
                }
                Else
                {
                    FBDL = Zero
                }
            }
            Else
            {
                If ((LREV == Zero))
                {
                    FBDL = (0x04 - CBDL)
                }
                Else
                {
                    FBDL = 0x04
                }
            }

            INDX = One
            While ((INDX <= CBDL))
            {
                BSPR (FBDL, One)
                FBDL++
                INDX++
            }
        }

        Method (SPP0, 0, NotSerialized)
        {
            INDX = Zero
            While (One)
            {
                WLSB = DerefOf (Index (DAT0, INDX))
                INDX++
                WMSB = DerefOf (Index (DAT0, INDX))
                INDX++
                POFF = ((WMSB << 0x08) | WLSB)
                PLEN = DerefOf (Index (DAT0, INDX))
                INDX++
                If ((POFF == 0xFFFF))
                {
                    Break
                }

                While ((PLEN > Zero))
                {
                    Index (DAT0, INDX) = RBP0 (POFF)
                    INDX++
                    POFF++
                    PLEN--
                }
            }
        }

        Method (RPP0, 0, NotSerialized)
        {
            INDX = Zero
            While (One)
            {
                WLSB = DerefOf (Index (DAT0, INDX))
                INDX++
                WMSB = DerefOf (Index (DAT0, INDX))
                INDX++
                POFF = ((WMSB << 0x08) | WLSB)
                PLEN = DerefOf (Index (DAT0, INDX))
                INDX++
                If ((POFF == 0xFFFF))
                {
                    Break
                }

                While ((PLEN > Zero))
                {
                    WBP0 (POFF, DerefOf (Index (DAT0, INDX)))
                    INDX++
                    POFF++
                    PLEN--
                }
            }
        }

        Method (CLP0, 0, NotSerialized)
        {
            INDX = Zero
            While (One)
            {
                WLSB = DerefOf (Index (DAT1, INDX))
                INDX++
                WMSB = DerefOf (Index (DAT1, INDX))
                INDX++
                POFF = ((WMSB << 0x08) | WLSB)
                PLEN = DerefOf (Index (DAT1, INDX))
                INDX++
                If ((POFF == 0xFFFF))
                {
                    Break
                }

                While ((PLEN > Zero))
                {
                    WBP0 (POFF, DerefOf (Index (DAT1, INDX)))
                    INDX++
                    POFF++
                    PLEN--
                }
            }
        }

        Method (SGON, 0, Serialized)
        {
            If ((CCHK (One) == Zero))
            {
                Return (Zero)
            }

            ONOF = One
            SGPO (HLRS, One)
            SGPO (PWEN, One)
            Sleep (0x14)
            Local1 = Zero
            While ((Local1 < 0x64))
            {
                Local1 += One
                Stall (0x64)
            }

            SGPO (HLRS, Zero)
            Sleep (0x64)
            If ((PCSL >= 0x04))
            {
                If ((SC7A == One))
                {
                    C7OK (Zero)
                }
            }

            RPP0 ()
            CLP0 ()
            AFES = Zero
            If (((PNHM & 0x0F) >= 0x03))
            {
                If ((P0UB != Zero))
                {
                    PUAB ()
                    If ((P0UB == 0xFF))
                    {
                        If ((CMLW > DMLW))
                        {
                            UULN = (CMLW - DMLW) /* \_SB_.PCI0.PEG0.PEGP.DMLW */
                        }
                        Else
                        {
                            UULN = Zero
                        }

                        CBDL = (UULN / 0x02)
                    }
                    Else
                    {
                        If ((P0UB != Zero))
                        {
                            CBDL = P0UB /* External reference */
                        }
                    }

                    MBDL = GMXB ()
                    If ((CBDL > MBDL))
                    {
                        CBDL = MBDL /* \_SB_.PCI0.PEG0.PEGP.MBDL */
                    }

                    PDUB (CBDL)
                }
            }

            TREN = One
            LNKD = Zero
            While ((LNKS < 0x07))
            {
                Local0 = 0x20
                While (Local0)
                {
                    If ((\_SB.PCI0.PEG0.LNKS < 0x07))
                    {
                        Stall (0x64)
                        Local0--
                    }
                    Else
                    {
                        Break
                    }
                }

                If ((Local0 == Zero))
                {
                    \_SB.PCI0.PEG0.RTLK = One
                    Stall (0x64)
                }
            }

            WVID = HVID /* \_SB_.PCI0.PEG0.PEGP.HVID */
            WDID = HDID /* \_SB_.PCI0.PEG0.PEGP.HDID */
            LCTL = ((ELCT & 0x43) | (LCTL & 0xFFBC))
            \_SB.PCI0.PEG0.PEGA.LCT1 = ((ELCT & 0x43) | (\_SB.PCI0.PEG0.PEGA.LCT1 & 0xFFBC))
            \_SB.PCI0.LPCB.EC0.WRAM (0x0520, 0x97)
            If (NTSA) {}
            Else
            {
                \_SB.PCI0.LPCB.EC0.WRAM (0x052B, 0x9E)
                NTSA = One
            }

            Local0 = \_SB.PCI0.LPCB.EC0.RRAM (0x0521)
            Local0 &= 0xCF
            \_SB.PCI0.LPCB.EC0.WRAM (0x0521, Local0)
            Return (One)
        }

        Method (SGOF, 0, Serialized)
        {
            If ((CCHK (Zero) == Zero))
            {
                Return (Zero)
            }

            ONOF = Zero
            Local1 = \_SB.PCI0.LPCB.EC0.ST94 (0x22)
            Local1 &= 0xBF
            \_SB.PCI0.LPCB.EC0.ST95 (0x22, Local1)
            Local1 = \_SB.PCI0.LPCB.EC0.ST94 (0x21)
            Local1 &= 0xBF
            \_SB.PCI0.LPCB.EC0.ST95 (0x21, Local1)
            Local0 = \_SB.PCI0.LPCB.EC0.RRAM (0x0521)
            Local0 &= 0xCF
            \_SB.PCI0.LPCB.EC0.WRAM (0x0521, Local0)
            \_SB.PCI0.LPCB.EC0.WRAM (0x0520, 0x95)
            \_SB.PCI0.LPCB.EC0.WRAM (0x03A4, Zero)
            \_SB.PCI0.LPCB.EC0.WRAM (0x03A5, Zero)
            Local0 = \_SB.PCI0.LPCB.EC0.RRAM (0x0575)
            \_SB.PCI0.LPCB.EC0.WRAM (0x0576, Local0)
            ELCT = LCTL /* \_SB_.PCI0.PEG0.PEGP.LCTL */
            HVID = SVID /* \_SB_.PCI0.PEG0.PEGP.SVID */
            HDID = SDID /* \_SB_.PCI0.PEG0.PEGP.SDID */
            DMLW = EMLW /* \_SB_.PCI0.PEG0.PEGP.EMLW */
            SPP0 ()
            LNKD = One
            TCNT = Zero
            While ((TCNT < LDLY))
            {
                If ((LNKS == Zero))
                {
                    Break
                }

                Sleep (0x10)
                TCNT += 0x10
            }

            While ((LNKS != Zero))
            {
                Sleep (One)
            }

            AFES = 0x02
            If (((PNHM & 0x0F) >= 0x03))
            {
                If ((P0UB != Zero))
                {
                    MBDL = GMXB ()
                    PDUB (MBDL)
                }
            }

            If ((PCSL >= 0x04))
            {
                If ((SC7A == One))
                {
                    C7OK (One)
                }
            }

            SGPO (HLRS, One)
            SGPO (PWEN, Zero)
            Return (Zero)
        }

        Method (EPON, 0, Serialized)
        {
            ONOF = One
            Return (Zero)
        }

        Method (SGST, 0, Serialized)
        {
            If ((SGMD & 0x0F))
            {
                If ((SGGP != One))
                {
                    Return (0x0F)
                }

                If ((SGPI (PWOK) == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            If ((DVID != 0xFFFF))
            {
                Return (0x0F)
            }

            Return (Zero)
        }

        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
        {
            Return (\_SB.PCI0.GFX0._DOD ())
        }

        Device (DD01)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD01._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD01._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD02)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD02._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD02._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD03)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD03._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD03._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD04)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD04._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD04._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD05)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD05._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD05._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD06)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD06._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD06._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD07)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD07._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD07._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD08)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD08._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD08._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD09)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD09._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD09._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD0A)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD0A._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD0A._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD0B)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD0B._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD0B._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD0C)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD0C._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD0C._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD0D)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD0D._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD0D._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD0E)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD0E._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD0E._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD0F)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.DD0F._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.DD0F._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (LCDD)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.GFX0.LCDD._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Return (\_SB.PCI0.GFX0.LCDD._DCS ())
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.GFX0.LCDD._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }

            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
            {
                Return (\_SB.PCI0.GFX0.LCDD._BCL ())
            }

            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
            {
                Return (\_SB.PCI0.GFX0.LCDD._BQC ())
            }

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {
                Return (\_SB.PCI0.GFX0.LCDD._BCM (Arg0))
            }
        }

        Method (SGPI, 1, Serialized)
        {
            If ((SGMD & 0x0F))
            {
                If ((SGGP == One))
                {
                    Local1 = (Arg0 >> 0x07)
                    Arg0 &= 0x7F
                    If ((Arg0 < 0x20))
                    {
                        Local0 = \_SB.PCI0.PEG0.PEGP.LVL0
                        Local0 >>= Arg0
                    }
                    Else
                    {
                        If ((Arg0 < 0x40))
                        {
                            Local0 = \_SB.PCI0.PEG0.PEGP.LVL1
                            Local0 >>= (Arg0 - 0x20)
                        }
                        Else
                        {
                            Local0 = \_SB.PCI0.PEG0.PEGP.LVL2
                            Local0 >>= (Arg0 - 0x40)
                        }
                    }

                    If ((Local1 == Zero))
                    {
                        Local0 = ~Local0
                    }

                    Return ((Local0 & One))
                }
            }

            Return (Zero)
        }

        Method (SGPO, 2, Serialized)
        {
            If ((SGMD & 0x0F))
            {
                If ((SGGP == One))
                {
                    Local3 = (Arg0 >> 0x07)
                    Arg0 &= 0x7F
                    If ((Local3 == Zero))
                    {
                        Local3 = ~Arg1
                        Local3 &= One
                    }
                    Else
                    {
                        Local3 = (Arg1 & One)
                    }

                    If ((Arg0 < 0x20))
                    {
                        Local0 = (Local3 << Arg0)
                        Local1 = (One << Arg0)
                        Local2 = (\_SB.PCI0.PEG0.PEGP.LVL0 & ~Local1)
                        \_SB.PCI0.PEG0.PEGP.LVL0 = (Local2 | Local0)
                    }
                    Else
                    {
                        If ((Arg0 < 0x40))
                        {
                            Local0 = (Local3 << (Arg0 - 0x20))
                            Local1 = (One << (Arg0 - 0x20))
                            Local2 = (\_SB.PCI0.PEG0.PEGP.LVL1 & ~Local1)
                            \_SB.PCI0.PEG0.PEGP.LVL1 = (Local2 | Local0)
                        }
                        Else
                        {
                            Local0 = (Local3 << (Arg0 - 0x40))
                            Local1 = (One << (Arg0 - 0x40))
                            Local2 = (\_SB.PCI0.PEG0.PEGP.LVL2 & ~Local1)
                            \_SB.PCI0.PEG0.PEGP.LVL2 = (Local2 | Local0)
                        }
                    }

                    Return (One)
                }
            }

            Return (One)
        }

        Method (CCHK, 1, NotSerialized)
        {
            If ((PVID == IVID))
            {
                Return (Zero)
            }

            If ((Arg0 == Zero))
            {
                If ((ONOF == Zero))
                {
                    Return (Zero)
                }
            }
            Else
            {
                If ((Arg0 == One))
                {
                    If ((ONOF == One))
                    {
                        Return (Zero)
                    }
                }
            }

            Return (One)
        }
    }
}

