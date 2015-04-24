/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150204-64 [Feb  5 2015]
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-9.aml, Mon Feb 16 21:08:30 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000019B1 (6577)
 *     Revision         0x01
 *     Checksum         0xAD
 *     OEM ID           "OptRef"
 *     OEM Table ID     "OptTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("SSDT-9.aml", "SSDT", 1, "OptRef", "OptTabl", 0x00001000)
{

    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.CPU0._PPC, IntObj)
    External (_PR_.CPU0._PSS, PkgObj)
    External (_PR_.CPU0._PTC, UnknownObj)
    External (_PR_.CPU0._TSS, IntObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.GFX0._DSM, IntObj)
    External (_SB_.PCI0.GFX0.LCDD, UnknownObj)
    External (_SB_.PCI0.LPCB.EC0_.RRAM, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.SPIN, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.EC0_.WRAM, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.H_EC.GTVR, IntObj)
    External (_SB_.PCI0.PEG0.LNKD, FieldUnitObj)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP.CLP0, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGP.RPP0, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGOF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGON, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPI, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SPP0, MethodObj)    // 0 Arguments
    External (DID1, FieldUnitObj)
    External (DID2, FieldUnitObj)
    External (DID3, FieldUnitObj)
    External (DID4, FieldUnitObj)
    External (DID5, FieldUnitObj)
    External (DID6, FieldUnitObj)
    External (DID7, FieldUnitObj)
    External (DID8, FieldUnitObj)
    External (EBAS, FieldUnitObj)
    External (NVGA, FieldUnitObj)
    External (NVHA, FieldUnitObj)
    External (NXD1, FieldUnitObj)
    External (NXD2, FieldUnitObj)
    External (NXD3, FieldUnitObj)
    External (NXD4, FieldUnitObj)
    External (NXD5, FieldUnitObj)
    External (NXD6, FieldUnitObj)
    External (NXD7, FieldUnitObj)
    External (NXD8, FieldUnitObj)
    External (SGFL, FieldUnitObj)
    External (SSMP, FieldUnitObj)

    Scope (\_SB.PCI0)
    {
        Name (OTM, "OTMACPI 2010-Mar-09 12:08:26")
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        OperationRegion (PCI2, SystemMemory, EBAS, 0x0500)
        Field (PCI2, DWordAcc, Lock, Preserve)
        {
            REG0,   32, 
            CMDR,   8, 
            VGAR,   2000, 
            Offset (0x48B), 
                ,   1, 
            NHDA,   1
        }

        Name (VGAB, Buffer (0xFA)
        {
             0x00                                             /* . */
        })
        Name (GPRF, Zero)
        OperationRegion (NVHM, SystemMemory, NVHA, 0x00020400)
        Field (NVHM, DWordAcc, NoLock, Preserve)
        {
            NVSG,   128, 
            NVSZ,   32, 
            NVVR,   32, 
            NVHO,   32, 
            RVBS,   32, 
            RBF1,   262144, 
            RBF2,   262144, 
            RBF3,   262144, 
            RBF4,   262144, 
            MXML,   32, 
            MXM3,   1600
        }

        Name (OPCE, 0x02)
        Name (DGPS, Zero)
        Method (PRST, 0, NotSerialized)
        {
            If ((REG0 == Ones))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (NATK, 0, NotSerialized)
        {
            Return (One)
        }

        Method (DWBL, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.GFX0.LCDD, 0x87) // Device-Specific
        }

        Method (UPBL, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.GFX0.LCDD, 0x86) // Device-Specific
        }

        Name (_PSC, Zero)  // _PSC: Power State Current
        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            NHDA = Zero
            _PSC = Zero
            If ((DGPS != Zero))
            {
                _ON ()
                DGPS = Zero
            }
        }

        Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
        {
            _PSC = One
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If ((OPCE == 0x03))
            {
                If ((DGPS == Zero))
                {
                    _OFF ()
                    DGPS = One
                }

                OPCE = 0x02
            }

            _PSC = 0x03
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
        {
            Local0 = Arg0
            Local1 = Arg1
            If ((Local1 > 0x1000))
            {
                Local1 = 0x1000
            }

            If ((Local0 > 0x00020000))
            {
                Return (Buffer (Local1)
                {
                     0x00                                             /* . */
                })
            }

            Local3 = (Local1 * 0x08)
            Name (ROM1, Buffer (0x8000)
            {
                 0x00                                             /* . */
            })
            Name (ROM2, Buffer (Local1)
            {
                 0x00                                             /* . */
            })
            If ((Local0 < 0x8000))
            {
                ROM1 = RBF1 /* \_SB_.PCI0.PEG0.PEGP.RBF1 */
            }
            Else
            {
                If ((Local0 < 0x00010000))
                {
                    Local0 -= 0x8000
                    ROM1 = RBF2 /* \_SB_.PCI0.PEG0.PEGP.RBF2 */
                }
                Else
                {
                    If ((Local0 < 0x00018000))
                    {
                        Local0 -= 0x00010000
                        ROM1 = RBF3 /* \_SB_.PCI0.PEG0.PEGP.RBF3 */
                    }
                    Else
                    {
                        If ((Local0 < 0x00020000))
                        {
                            Local0 -= 0x00018000
                            ROM1 = RBF4 /* \_SB_.PCI0.PEG0.PEGP.RBF4 */
                        }
                    }
                }
            }

            Local2 = (Local0 * 0x08)
            CreateField (ROM1, Local2, Local3, TMPB)
            ROM2 = TMPB /* \_SB_.PCI0.PEG0.PEGP._ROM.TMPB */
            Return (ROM2) /* \_SB_.PCI0.PEG0.PEGP._ROM.ROM2 */
        }

        Method (HDSM, 4, Serialized)
        {
            Return (0x80000001)
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            CreateByteField (Arg0, 0x03, GUID)
            Return (\_SB.PCI0.GFX0.HDSM (Arg0, Arg1, Arg2, Arg3))
        }

        Name (CTXT, Zero)
        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            \_SB.PCI0.LPCB.EC0.SPIN (0x96, Zero)
            SGON ()
            If ((GPRF != One))
            {
                Local0 = CMDR /* \_SB_.PCI0.PEG0.PEGP.CMDR */
                CMDR = Zero
                VGAR = VGAB /* \_SB_.PCI0.PEG0.PEGP.VGAB */
                CMDR = 0x06
                NHDA = Zero
                CMDR = Local0
            }

            SSMP = 0xB7
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            If ((CTXT == Zero))
            {
                \_SB.PCI0.LPCB.EC0.SPIN (0x96, Zero)
                If ((GPRF != One))
                {
                    VGAB = VGAR /* \_SB_.PCI0.PEG0.PEGP.VGAR */
                }

                CTXT = One
            }

            SGOF ()
        }
    }

    Scope (\_SB.PCI0.GFX0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Index (TLPK, Zero) = DID1 /* External reference */
            Index (TLPK, 0x02) = DID2 /* External reference */
            Index (TLPK, 0x04) = DID3 /* External reference */
            Index (TLPK, 0x06) = DID4 /* External reference */
            Index (TLPK, 0x08) = DID5 /* External reference */
            Index (TLPK, 0x0A) = DID6 /* External reference */
            Index (TLPK, 0x0C) = DID7 /* External reference */
            Index (TLPK, 0x0E) = DID2 /* External reference */
            Index (TLPK, 0x0F) = DID1 /* External reference */
            Index (TLPK, 0x11) = DID2 /* External reference */
            Index (TLPK, 0x12) = DID3 /* External reference */
            Index (TLPK, 0x14) = DID2 /* External reference */
            Index (TLPK, 0x15) = DID4 /* External reference */
            Index (TLPK, 0x17) = DID2 /* External reference */
            Index (TLPK, 0x18) = DID5 /* External reference */
            Index (TLPK, 0x1A) = DID2 /* External reference */
            Index (TLPK, 0x1B) = DID6 /* External reference */
            Index (TLPK, 0x1D) = DID2 /* External reference */
            Index (TLPK, 0x1E) = DID7 /* External reference */
        }

        OperationRegion (NVIG, SystemMemory, NVGA, 0x45)
        Field (NVIG, DWordAcc, NoLock, Preserve)
        {
            NISG,   128, 
            NISZ,   32, 
            NIVR,   32, 
            GPSS,   32, 
            GACD,   16, 
            GATD,   16, 
            LDES,   8, 
            DKST,   8, 
            DACE,   8, 
            DHPE,   8, 
            DHPS,   8, 
            SGNC,   8, 
            GPPO,   8, 
            USPM,   8, 
            GPSP,   8, 
            TLSN,   8, 
            FDOS,   8, 
            ELCL,   16
        }

        Name (TLPK, Package (0x20)
        {
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C
        })
        Method (INDL, 0, Serialized)
        {
            NXD1 = Zero
            NXD2 = Zero
            NXD3 = Zero
            NXD4 = Zero
            NXD5 = Zero
            NXD6 = Zero
            NXD7 = Zero
            NXD8 = Zero
        }

        Method (SND1, 1, Serialized)
        {
            If ((Arg0 == DID1))
            {
                NXD1 = One
            }

            If ((Arg0 == DID2))
            {
                NXD2 = One
            }

            If ((Arg0 == DID3))
            {
                NXD3 = One
            }

            If ((Arg0 == DID4))
            {
                NXD4 = One
            }

            If ((Arg0 == DID5))
            {
                NXD5 = One
            }

            If ((Arg0 == DID6))
            {
                NXD6 = One
            }

            If ((Arg0 == DID7))
            {
                NXD7 = One
            }

            If ((Arg0 == DID8))
            {
                NXD8 = One
            }
        }

        Method (SNXD, 1, Serialized)
        {
            INDL ()
            Local0 = One
            Local1 = Zero
            While ((Local0 < Arg0))
            {
                If ((DerefOf (Index (TLPK, Local1)) == 0x2C))
                {
                    Local0++
                }

                Local1++
            }

            SND1 (DerefOf (Index (TLPK, Local1)))
            Local1++
            If ((DerefOf (Index (TLPK, Local1)) != 0x2C))
            {
                SND1 (DerefOf (Index (TLPK, Local1)))
            }
        }

        Method (CTOI, 1, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            While (One)
            {
                _T_0 = ToInteger (Arg0)
                If ((_T_0 == One))
                {
                    Return (One)
                }
                Else
                {
                    If ((_T_0 == 0x02))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        If ((_T_0 == 0x04))
                        {
                            Return (0x03)
                        }
                        Else
                        {
                            If ((_T_0 == 0x08))
                            {
                                Return (0x04)
                            }
                            Else
                            {
                                If ((_T_0 == 0x10))
                                {
                                    Return (0x05)
                                }
                                Else
                                {
                                    If ((_T_0 == 0x20))
                                    {
                                        Return (0x06)
                                    }
                                    Else
                                    {
                                        If ((_T_0 == 0x40))
                                        {
                                            Return (0x07)
                                        }
                                        Else
                                        {
                                            If ((_T_0 == 0x03))
                                            {
                                                Return (0x08)
                                            }
                                            Else
                                            {
                                                If ((_T_0 == 0x06))
                                                {
                                                    Return (0x09)
                                                }
                                                Else
                                                {
                                                    If ((_T_0 == 0x0A))
                                                    {
                                                        Return (0x0A)
                                                    }
                                                    Else
                                                    {
                                                        If ((_T_0 == 0x12))
                                                        {
                                                            Return (0x0B)
                                                        }
                                                        Else
                                                        {
                                                            If ((_T_0 == 0x22))
                                                            {
                                                                Return (0x0C)
                                                            }
                                                            Else
                                                            {
                                                                If ((_T_0 == 0x42))
                                                                {
                                                                    Return (0x0D)
                                                                }
                                                                Else
                                                                {
                                                                    Return (One)
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                Break
            }
        }

        Method (HDSM, 4, Serialized)
        {
            If ((Arg0 == ToUUID ("a3132d01-8cda-49ba-a52e-bc9d46df6b81")))
            {
                Return (\_SB.PCI0.PEG0.PEGP.GPS (Arg0, Arg1, Arg2, Arg3))
            }

            If ((Arg0 == ToUUID ("cbeca351-067b-4924-9cbd-b46b00b86f34")))
            {
                Return (\_SB.PCI0.PEG0.PEGP.NGC6 (Arg0, Arg1, Arg2, Arg3))
            }

            Name (SGCI, Zero)
            Name (NBCI, Zero)
            Name (OPCI, Zero)
            Name (BUFF, Zero)
            If ((Arg0 == ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
            {
                OPCI = One
            }

            If ((OPCI || (SGCI || NBCI)))
            {
                If (OPCI)
                {
                    If ((Arg1 != 0x0100))
                    {
                        Return (0x80000002)
                    }
                }
                Else
                {
                    If ((Arg1 != 0x0102))
                    {
                        Return (0x80000002)
                    }
                }

                If ((Arg2 == Zero))
                {
                    If (SGCI)
                    {
                        Return (Buffer (0x04)
                        {
                             0x7F, 0x00, 0x04, 0x00                           /* .... */
                        })
                    }
                    Else
                    {
                        If (NBCI)
                        {
                            Return (Buffer (0x04)
                            {
                                 0x73, 0x00, 0x04, 0x00                           /* s... */
                            })
                        }
                        Else
                        {
                            If (OPCI)
                            {
                                Return (Buffer (0x04)
                                {
                                     0x61, 0x18, 0x03, 0x0C                           /* a... */
                                })
                            }
                        }
                    }
                }

                If ((Arg2 == One))
                {
                    Name (TEMP, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           /* .... */
                    })
                    CreateDWordField (TEMP, Zero, STS0)
                    If (SGCI)
                    {
                        STS0 |= 0x0B0000BF
                        STS0 |= SGNC <<= 0x08
                    }
                    Else
                    {
                        STS0 |= Zero
                    }

                    Return (TEMP) /* \_SB_.PCI0.GFX0.HDSM.TEMP */
                }

                If ((Arg2 == 0x02))
                {
                    Name (TMP1, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           /* .... */
                    })
                    CreateDWordField (TMP1, Zero, STS1)
                    ToInteger (Arg3, Local0)
                    Local0 &= 0x1F
                    If ((Local0 & 0x10))
                    {
                        Local0 &= 0x0F
                        GPSS = Local0
                        Notify (\_SB.PCI0.GFX0, 0xD9) // Hardware-Specific
                        Notify (\_SB.PCI0.WMI1, 0xD9) // Hardware-Specific
                    }
                    Else
                    {
                        Local0 &= 0x0F
                        If ((GPPO == One))
                        {
                            Local0 = GPSS /* \_SB_.PCI0.GFX0.GPSS */
                            Local0 |= 0x10
                            GPPO = Zero
                        }
                    }

                    STS1 |= Local0
                    Return (TMP1) /* \_SB_.PCI0.GFX0.HDSM.TMP1 */
                }

                If ((Arg2 == 0x03))
                {
                    Name (TMP2, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           /* .... */
                    })
                    CreateDWordField (TMP2, Zero, STS2)
                    ToInteger (Arg3, Local0)
                    Local0 &= 0x03
                    If ((Local0 == Zero))
                    {
                        \_SB.PCI0.PEG0.PEGP.SGST ()
                    }

                    If ((Local0 == One))
                    {
                        \_SB.PCI0.PEG0.PEGP.SGON ()
                    }

                    If ((Local0 == 0x02))
                    {
                        \_SB.PCI0.PEG0.PEGP.SGOF ()
                    }

                    If ((\_SB.PCI0.PEG0.PEGP.SGST () == 0x0F))
                    {
                        STS2 |= One
                    }

                    Return (TMP2) /* \_SB_.PCI0.GFX0.HDSM.TMP2 */
                }

                If ((Arg2 == 0x04))
                {
                    Name (TMP3, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           /* .... */
                    })
                    CreateDWordField (TMP3, Zero, STS3)
                    ToInteger (Arg3, Local0)
                    Local1 = Local0
                    Local0 >>= 0x10
                    USPM = (Local0 & One)
                    Local1 >>= 0x0D
                    Local1 &= 0x03
                    If ((Local1 != GPSP))
                    {
                        If ((USPM == One))
                        {
                            GPSP = Local1
                        }
                        Else
                        {
                            Local1 = GPSP /* \_SB_.PCI0.GFX0.GPSP */
                            STS3 |= 0x8000
                        }
                    }

                    STS3 |= (Local1 << 0x0D)
                    Return (TMP3) /* \_SB_.PCI0.GFX0.HDSM.TMP3 */
                }

                If ((Arg2 == 0x05))
                {
                    Name (TMP4, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           /* .... */
                    })
                    CreateDWordField (TMP4, Zero, STS4)
                    ToInteger (Arg3, Local0)
                    If ((Local0 & 0x80000000))
                    {
                        TLSN = ((Local0 >> 0x19) & 0x1F)
                        If ((Local0 & 0x40000000))
                        {
                            FDOS = One
                        }
                    }

                    If ((Local0 & 0x01000000))
                    {
                        GACD = ((Local0 >> 0x0C) & 0x0FFF)
                        GATD = (Local0 & 0x0FFF)
                        TLSN = CTOI (GACD)
                        TLSN++
                        If ((TLSN > 0x0D))
                        {
                            TLSN = One
                        }

                        SNXD (TLSN)
                    }

                    STS4 |= (DHPE << 0x15)
                    STS4 |= (DHPS << 0x14)
                    STS4 |= (TLSN << 0x08)
                    STS4 |= (DKST << 0x05)
                    STS4 |= (LDES << 0x04)
                    STS4 |= DACE /* \_SB_.PCI0.GFX0.DACE */
                    LDES = Zero
                    DHPS = Zero
                    DHPE = Zero
                    DACE = Zero
                    Return (TMP4) /* \_SB_.PCI0.GFX0.HDSM.TMP4 */
                }

                If ((Arg2 == 0x06))
                {
                    Return (TLPK) /* \_SB_.PCI0.GFX0.TLPK */
                }

                If ((Arg2 == 0x10))
                {
                    CreateWordField (Arg3, 0x02, USRG)
                    Name (OPVK, Buffer (0xE6)
                    {
                        /* 0000 */  0xE4, 0x42, 0x5F, 0x14, 0x36, 0x26, 0x16, 0x37,  /* .B_.6&.7 */
                        /* 0008 */  0x4B, 0x56, 0xE6, 0x00, 0x00, 0x00, 0x01, 0x00,  /* KV...... */
                        /* 0010 */  0x31, 0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35,  /* 14859745 */
                        /* 0018 */  0x36, 0x39, 0x38, 0x35, 0x47, 0x65, 0x6E, 0x75,  /* 6985Genu */
                        /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,  /* ine NVID */
                        /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,  /* IA Certi */
                        /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,  /* fied Opt */
                        /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,  /* imus Rea */
                        /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,  /* dy Mothe */
                        /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,  /* rboard f */
                        /* 0050 */  0x6F, 0x72, 0x20, 0x37, 0x33, 0x36, 0x30, 0x31,  /* or 73601 */
                        /* 0058 */  0x39, 0x5F, 0x4D, 0x49, 0x52, 0x63, 0x20, 0x20,  /* 9_MIRc   */
                        /* 0060 */  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,  /*          */
                        /* 0068 */  0x2D, 0x20, 0x3C, 0x34, 0x27, 0x21, 0x58, 0x29,  /* - <4'!X) */
                        /* 0070 */  0x57, 0x27, 0x58, 0x20, 0x27, 0x25, 0x59, 0x5D,  /* W'X '%Y] */
                        /* 0078 */  0x31, 0x29, 0x3A, 0x2A, 0x26, 0x39, 0x59, 0x43,  /* 1):*&9YC */
                        /* 0080 */  0x56, 0x3B, 0x58, 0x56, 0x58, 0x3D, 0x59, 0x4E,  /* V;XVX=YN */
                        /* 0088 */  0x3B, 0x3A, 0x35, 0x44, 0x25, 0x42, 0x5A, 0x48,  /* ;:5D%BZH */
                        /* 0090 */  0x55, 0x3A, 0x58, 0x4C, 0x25, 0x48, 0x54, 0x21,  /* U:XL%HT! */
                        /* 0098 */  0x35, 0x4B, 0x4D, 0x37, 0x2C, 0x3C, 0x20, 0x2D,  /* 5KM7,< - */
                        /* 00A0 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,  /*  Copyrig */
                        /* 00A8 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x30, 0x20,  /* ht 2010  */
                        /* 00B0 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,  /* NVIDIA C */
                        /* 00B8 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,  /* orporati */
                        /* 00C0 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,  /* on All R */
                        /* 00C8 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,  /* ights Re */
                        /* 00D0 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,  /* served-1 */
                        /* 00D8 */  0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 0x36,  /* 48597456 */
                        /* 00E0 */  0x39, 0x38, 0x35, 0x28, 0x52, 0x29               /* 985(R) */
                    })
                    If ((USRG == 0x564B))
                    {
                        Return (OPVK) /* \_SB_.PCI0.GFX0.HDSM.OPVK */
                    }

                    Return (Zero)
                }

                If ((Arg2 == 0x11))
                {
                    Return (Zero)
                }

                If ((Arg2 == 0x12))
                {
                    Return (Package (0x0A)
                    {
                        0xD0, 
                        ToUUID ("921a2f40-0dc4-402d-ac18-b48444ef9ed2"), 
                        0xD9, 
                        ToUUID ("c12ad361-9fa9-4c74-901f-95cb0945cf3e"), 
                        0xDB, 
                        ToUUID ("42848006-8886-490e-8c72-2bdca93a8a09"), 
                        0xEF, 
                        ToUUID ("b3e485d2-3cc1-4b54-8f31-77ba2fdc9ebe"), 
                        0xF0, 
                        ToUUID ("360d6fb6-1d4e-4fa6-b848-1be33dd8ec7b")
                    })
                }

                If ((Arg2 == 0x1A))
                {
                    CreateField (Arg3, 0x18, 0x02, OMPR)
                    CreateField (Arg3, Zero, One, FLCH)
                    CreateField (Arg3, One, One, DVSR)
                    CreateField (Arg3, 0x02, One, DVSC)
                    If (ToInteger (FLCH))
                    {
                        \_SB.PCI0.PEG0.PEGP.OPCE = OMPR /* \_SB_.PCI0.GFX0.HDSM.OMPR */
                    }

                    Local0 = Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           /* .... */
                        }
                    CreateField (Local0, Zero, One, OPEN)
                    CreateField (Local0, 0x03, 0x02, CGCS)
                    CreateField (Local0, 0x06, One, SHPC)
                    CreateField (Local0, 0x08, One, SNSR)
                    CreateField (Local0, 0x18, 0x03, DGPC)
                    CreateField (Local0, 0x1B, 0x02, HDAC)
                    OPEN = One
                    SHPC = One
                    HDAC = One
                    DGPC = One
                    If (ToInteger (DVSC))
                    {
                        If (ToInteger (DVSR))
                        {
                            \_SB.PCI0.PEG0.PEGP.GPRF = One
                        }
                        Else
                        {
                            \_SB.PCI0.PEG0.PEGP.GPRF = Zero
                        }
                    }

                    SNSR = \_SB.PCI0.PEG0.PEGP.GPRF
                    If ((\_SB.PCI0.PEG0.PEGP.SGST () != Zero))
                    {
                        CGCS = 0x03
                    }

                    Return (Local0)
                }

                If ((Arg2 == 0x1B))
                {
                    ToInteger (Arg3, Local0)
                    If ((Local0 & 0x02))
                    {
                        BUFF = Zero
                        If ((Local0 & One))
                        {
                            BUFF = One
                        }
                    }

                    SGFL &= 0xFFFFFFFD
                    SGFL |= (BUFF << One)
                    SSMP = 0xB6
                    Return (Local0)
                }

                Return (0x80000002)
            }

            Return (0x80000001)
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (GPS, "GPSACPI 2012-Aug-12 14:56:05")
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Name (PSAP, Zero)
        Name (ECBF, Buffer (0x14) {})
        CreateDWordField (ECBF, Zero, EDS1)
        CreateDWordField (ECBF, 0x04, EDS2)
        CreateDWordField (ECBF, 0x08, EDS3)
        CreateDWordField (ECBF, 0x0C, EDS4)
        CreateDWordField (ECBF, 0x10, EPDT)
        Name (GPSP, Buffer (0x24) {})
        CreateDWordField (GPSP, Zero, RETN)
        CreateDWordField (GPSP, 0x04, VRV1)
        CreateDWordField (GPSP, 0x08, TGPU)
        CreateDWordField (GPSP, 0x0C, PDTS)
        CreateDWordField (GPSP, 0x10, SFAN)
        CreateDWordField (GPSP, 0x14, SKNT)
        CreateDWordField (GPSP, 0x18, CPUE)
        CreateDWordField (GPSP, 0x1C, TMP1)
        CreateDWordField (GPSP, 0x20, TMP2)
        Name (NLIM, Zero)
        Name (PSCP, Zero)
        Method (GPS, 4, Serialized)
        {
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Debug = "------- GPS DSM --------"
            If ((Arg1 != 0x0100))
            {
                Return (0x80000002)
            }

            While (One)
            {
                _T_0 = ToInteger (Arg2)
                If ((_T_0 == Zero))
                {
                    Name (FMSK, Buffer (0x08)
                    {
                         0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF   /* ........ */
                    })
                    Local0 = Buffer (0x08)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                        }
                    Divide (Zero, 0x08, Local2, Local1)
                    Local2 <<= One
                    Index (Local0, Local1) = (DerefOf (Index (Local0, Local1)) | Local2)
                    Divide (0x13, 0x08, Local2, Local1)
                    Local2 <<= One
                    Index (Local0, Local1) = (DerefOf (Index (Local0, Local1)) | Local2)
                    Divide (0x20, 0x08, Local2, Local1)
                    Local2 <<= One
                    Index (Local0, Local1) = (DerefOf (Index (Local0, Local1)) | Local2)
                    Divide (0x21, 0x08, Local2, Local1)
                    Local2 <<= One
                    Index (Local0, Local1) = (DerefOf (Index (Local0, Local1)) | Local2)
                    Divide (0x22, 0x08, Local2, Local1)
                    Local2 <<= One
                    Index (Local0, Local1) = (DerefOf (Index (Local0, Local1)) | Local2)
                    Divide (0x23, 0x08, Local2, Local1)
                    Local2 <<= One
                    Index (Local0, Local1) = (DerefOf (Index (Local0, Local1)) | Local2)
                    Divide (0x2A, 0x08, Local2, Local1)
                    Local2 <<= One
                    Index (Local0, Local1) = (DerefOf (Index (Local0, Local1)) | Local2)
                    Local1 = SizeOf (Local0)
                    While ((Local1 != Zero))
                    {
                        Local1--
                        Local2 = DerefOf (Index (FMSK, Local1))
                        Index (Local0, Local1) = (DerefOf (Index (Local0, Local1)) & Local2)
                    }

                    Return (Local0)
                }
                Else
                {
                    If ((_T_0 == 0x13))
                    {
                        Debug = "GPS fun 19"
                        Return (Arg3)
                    }
                    Else
                    {
                        If ((_T_0 == 0x20))
                        {
                            Debug = "GPS fun 20"
                            Name (RET1, Zero)
                            CreateBitField (Arg3, 0x18, NRIT)
                            CreateBitField (Arg3, 0x19, NRIS)
                            If (NRIS)
                            {
                                If (NRIT)
                                {
                                    RET1 |= 0x01000000
                                }
                                Else
                                {
                                    RET1 &= 0xFEFFFFFF
                                }
                            }

                            RET1 |= 0x40000000
                            If (NLIM)
                            {
                                RET1 |= One
                            }

                            Return (RET1) /* \_SB_.PCI0.PEG0.PEGP.GPS_.RET1 */
                        }
                        Else
                        {
                            If ((_T_0 == 0x21))
                            {
                                Return (\_PR.CPU0._PSS) /* External reference */
                            }
                            Else
                            {
                                If ((_T_0 == 0x22))
                                {
                                    CreateByteField (Arg3, Zero, PCAP)
                                    \_PR.CPU0._PPC = PCAP /* \_SB_.PCI0.PEG0.PEGP.GPS_.PCAP */
                                    Notify (\_PR.CPU0, 0x80) // Status Change
                                    PSAP = PCAP /* \_SB_.PCI0.PEG0.PEGP.GPS_.PCAP */
                                    Return (PCAP) /* \_SB_.PCI0.PEG0.PEGP.GPS_.PCAP */
                                }
                                Else
                                {
                                    If ((_T_0 == 0x23))
                                    {
                                        Return (PSAP) /* \_SB_.PCI0.PEG0.PEGP.PSAP */
                                    }
                                    Else
                                    {
                                        If ((_T_0 == 0x25))
                                        {
                                            Debug = "GPS fun 25"
                                            Return (\_PR.CPU0._TSS) /* External reference */
                                        }
                                        Else
                                        {
                                            If ((_T_0 == 0x26))
                                            {
                                                Debug = "GPS fun 26"
                                                CreateDWordField (Arg3, Zero, TCAP)
                                                \_PR.CPU0._PTC = TCAP /* \_SB_.PCI0.PEG0.PEGP.GPS_.TCAP */
                                                Notify (\_PR.CPU0, 0x80) // Status Change
                                                Return (TCAP) /* \_SB_.PCI0.PEG0.PEGP.GPS_.TCAP */
                                            }
                                            Else
                                            {
                                                If ((_T_0 == 0x2A))
                                                {
                                                    Debug = "GPS fun 2a"
                                                    CreateByteField (Arg3, Zero, PSH0)
                                                    CreateByteField (Arg3, One, PSH1)
                                                    CreateBitField (Arg3, 0x08, GPUT)
                                                    CreateBitField (Arg3, 0x09, CPUT)
                                                    CreateBitField (Arg3, 0x0A, FANS)
                                                    CreateBitField (Arg3, 0x0B, SKIN)
                                                    CreateBitField (Arg3, 0x0C, ENGR)
                                                    CreateBitField (Arg3, 0x0D, SEN1)
                                                    CreateBitField (Arg3, 0x0E, SEN2)
                                                    While (One)
                                                    {
                                                        _T_1 = PSH0 /* \_SB_.PCI0.PEG0.PEGP.GPS_.PSH0 */
                                                        If ((_T_1 == Zero))
                                                        {
                                                            If (CPUT)
                                                            {
                                                                RETN = 0x0200
                                                                RETN |= PSH0 /* \_SB_.PCI0.PEG0.PEGP.GPS_.PSH0 */
                                                                PDTS = \_SB.PCI0.LPCB.H_EC.GTVR /* External reference */
                                                            }

                                                            Return (GPSP) /* \_SB_.PCI0.PEG0.PEGP.GPSP */
                                                        }
                                                        Else
                                                        {
                                                            If ((_T_1 == One))
                                                            {
                                                                RETN = 0x0300
                                                                RETN |= PSH0 /* \_SB_.PCI0.PEG0.PEGP.GPS_.PSH0 */
                                                                PDTS = 0x03E8
                                                                Return (GPSP) /* \_SB_.PCI0.PEG0.PEGP.GPSP */
                                                            }
                                                            Else
                                                            {
                                                                If ((_T_1 == 0x02))
                                                                {
                                                                    RETN = 0x0102
                                                                    VRV1 = Zero
                                                                    TGPU = Zero
                                                                    PDTS = Zero
                                                                    SFAN = Zero
                                                                    CPUE = Zero
                                                                    SKNT = Zero
                                                                    TMP1 = Zero
                                                                    TMP2 = Zero
                                                                    Return (GPSP) /* \_SB_.PCI0.PEG0.PEGP.GPSP */
                                                                }
                                                            }
                                                        }

                                                        Break
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                Break
            }

            Return (0x80000002)
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Name (TGPC, Buffer (0x04)
        {
             0x00                                             /* . */
        })
        Name (GC6M, Zero)
        Name (TDGC, Zero)
        Name (DGCX, Zero)
        Name (TRPC, Zero)
        Method (GC6I, 0, Serialized)
        {
            Debug = "<<< GC6I >>>"
            \_SB.PCI0.LPCB.EC0.WRAM (0x0520, 0x95)
            CreateField (TGPC, 0x06, 0x02, ECOC)
            CreateField (TGPC, 0x0A, 0x02, PRGE)
            \_SB.PCI0.PEG0.PEGP.SPP0 ()
            Local0 = \_SB.PCI0.LPCB.EC0.RRAM (0x0575)
            \_SB.PCI0.LPCB.EC0.WRAM (0x0576, Local0)
            \_SB.PCI0.PEG0.LNKD = One
            GC6M = One
        }

        Method (GC6O, 0, Serialized)
        {
            Debug = "<<< GC6O >>>"
            While ((\_SB.PCI0.PEG0.PEGP.SGPI (0xB0) != One))
            {
                Sleep (One)
            }

            \_SB.PCI0.PEG0.PEGP.RPP0 ()
            \_SB.PCI0.PEG0.PEGP.CLP0 ()
            \_SB.PCI0.PEG0.LNKD = Zero
            \_SB.PCI0.PEG0.PEGP.SGPO (0x35, One)
            While ((\_SB.PCI0.PEG0.PEGP.SGPI (0xB0) != Zero))
            {
                Sleep (One)
            }

            \_SB.PCI0.PEG0.PEGP.SGPO (0x35, Zero)
            GC6M = Zero
            \_SB.PCI0.LPCB.EC0.WRAM (0x0520, 0x97)
        }

        Method (GETS, 0, Serialized)
        {
            If ((\_SB.PCI0.PEG0.PEGP.SGPI (0xB0) == Zero))
            {
                Debug = "<<< GETS() return 0x1 >>>"
                Return (One)
            }
            Else
            {
                Debug = "<<< GETS() return 0x3 >>>"
                Return (0x03)
            }
        }

        Method (NGC6, 4, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Debug = "------- GC6 DSM --------"
            If ((Arg1 < 0x0100))
            {
                Return (0x80000001)
            }

            While (One)
            {
                _T_0 = ToInteger (Arg2)
                If ((_T_0 == Zero))
                {
                    Return (Unicode ("\x1B"))
                }
                Else
                {
                    If ((_T_0 == One))
                    {
                        Name (JTB1, Buffer (0x04)
                        {
                             0x00                                             /* . */
                        })
                        CreateField (JTB1, Zero, One, JTEN)
                        CreateField (JTB1, One, 0x02, SREN)
                        CreateField (JTB1, 0x03, 0x03, PLPR)
                        CreateField (JTB1, 0x06, 0x02, FBPR)
                        CreateField (JTB1, 0x08, 0x02, GUPR)
                        CreateField (JTB1, 0x0A, One, GC6R)
                        CreateField (JTB1, 0x0B, One, PTRH)
                        CreateField (JTB1, 0x0D, One, MHYB)
                        CreateField (JTB1, 0x0E, One, RPCL)
                        CreateField (JTB1, 0x0F, 0x02, GC6M)
                        CreateField (JTB1, 0x14, 0x0C, JTRV)
                        JTEN = One
                        GC6R = One
                        MHYB = One
                        RPCL = One
                        If ((ToInteger (RPCL) == One))
                        {
                            TRPC = One
                        }

                        GC6M = One
                        PTRH = One
                        SREN = One
                        JTRV = 0x0103
                        Return (JTB1) /* \_SB_.PCI0.PEG0.PEGP.NGC6.JTB1 */
                    }
                    Else
                    {
                        If ((_T_0 == 0x02))
                        {
                            Debug = "GPS fun 19"
                            Return (Arg3)
                        }
                        Else
                        {
                            If ((_T_0 == 0x03))
                            {
                                CreateField (Arg3, Zero, 0x03, GUPC)
                                CreateField (Arg3, 0x04, One, PLPC)
                                CreateField (Arg3, 0x0E, 0x02, DFGC)
                                CreateField (Arg3, 0x10, 0x03, GPCX)
                                TGPC = Arg3
                                If (((ToInteger (GUPC) == One) || (ToInteger (GUPC) == 0x02)))
                                {
                                    TDGC = ToInteger (DFGC)
                                    DGCX = ToInteger (GPCX)
                                }

                                Name (JTB3, Buffer (0x04)
                                {
                                     0x00                                             /* . */
                                })
                                CreateField (JTB3, Zero, 0x03, GUPS)
                                CreateField (JTB3, 0x03, One, GPGS)
                                CreateField (JTB3, 0x07, One, PLST)
                                If ((ToInteger (DFGC) != Zero))
                                {
                                    GPGS = One
                                    GUPS = One
                                    Return (JTB3) /* \_SB_.PCI0.PEG0.PEGP.NGC6.JTB3 */
                                }

                                If ((ToInteger (GUPC) == One))
                                {
                                    GC6I ()
                                    PLST = One
                                    GUPS = Zero
                                }
                                Else
                                {
                                    If ((ToInteger (GUPC) == 0x02))
                                    {
                                        GC6I ()
                                        If ((ToInteger (PLPC) == Zero))
                                        {
                                            PLST = Zero
                                        }

                                        GUPS = Zero
                                    }
                                    Else
                                    {
                                        If ((ToInteger (GUPC) == 0x03))
                                        {
                                            GC6O ()
                                            If ((ToInteger (PLPC) != Zero))
                                            {
                                                PLST = Zero
                                            }

                                            GPGS = One
                                            GUPS = Zero
                                        }
                                        Else
                                        {
                                            If ((ToInteger (GUPC) == 0x04))
                                            {
                                                GC6O ()
                                                If ((ToInteger (PLPC) != Zero))
                                                {
                                                    PLST = Zero
                                                }

                                                GPGS = One
                                                GUPS = Zero
                                            }
                                            Else
                                            {
                                                If ((ToInteger (GUPC) == Zero))
                                                {
                                                    GUPS = GETS ()
                                                    If ((ToInteger (GUPS) == One))
                                                    {
                                                        GPGS = One
                                                    }
                                                    Else
                                                    {
                                                        GPGS = Zero
                                                    }
                                                }
                                                Else
                                                {
                                                    If ((ToInteger (GUPC) == 0x06)) {}
                                                }
                                            }
                                        }
                                    }
                                }

                                Return (JTB3) /* \_SB_.PCI0.PEG0.PEGP.NGC6.JTB3 */
                            }
                            Else
                            {
                                If ((_T_0 == 0x04))
                                {
                                    Return (0x80000002)
                                }
                            }
                        }
                    }
                }

                Break
            }

            Return (0x80000002)
        }
    }

    Scope (\_SB.PCI0)
    {
        Device (WMI1)
        {
            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, "OPT1")  // _UID: Unique ID
            Name (_WDG, Buffer (0x14)
            {
                /* 0000 */  0x3C, 0x5C, 0xCB, 0xF6, 0xAE, 0x9C, 0xBD, 0x4E,  /* <\.....N */
                /* 0008 */  0xB5, 0x77, 0x93, 0x1E, 0xA3, 0x2A, 0x2C, 0xC0,  /* .w...*,. */
                /* 0010 */  0x4D, 0x58, 0x01, 0x02                           /* MX.. */
            })
            Method (WMMX, 3, NotSerialized)
            {
                CreateDWordField (Arg2, Zero, FUNC)
                If ((FUNC == 0x534F525F))
                {
                    If ((SizeOf (Arg2) >= 0x08))
                    {
                        CreateDWordField (Arg2, 0x04, ARGS)
                        CreateDWordField (Arg2, 0x08, XARG)
                        Return (\_SB.PCI0.PEG0.PEGP._ROM (ARGS, XARG))
                    }
                }

                If ((FUNC == 0x4D53445F))
                {
                    If ((SizeOf (Arg2) >= 0x1C))
                    {
                        CreateField (Arg2, Zero, 0x80, MUID)
                        CreateDWordField (Arg2, 0x10, REVI)
                        CreateDWordField (Arg2, 0x14, SFNC)
                        CreateField (Arg2, 0xE0, 0x20, XRG0)
                        If (CondRefOf (\_SB.PCI0.GFX0._DSM))
                        {
                            Return (\_SB.PCI0.GFX0._DSM) /* External reference */
                        }
                    }
                }

                Return (Zero)
            }
        }
    }
}

