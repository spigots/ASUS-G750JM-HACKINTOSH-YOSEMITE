/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150204-64 [Feb  5 2015]
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-0.aml, Mon Feb 16 21:08:30 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000019D (413)
 *     Revision         0x01
 *     Checksum         0xB7
 *     OEM ID           "Intel"
 *     OEM Table ID     "zpodd"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("SSDT-0.aml", "SSDT", 1, "Intel", "zpodd", 0x00001000)
{

    External (_SB_.PCI0.SAT0, DeviceObj)
    External (FDTP, IntObj)
    External (GIV0, FieldUnitObj)
    External (GL00, FieldUnitObj)
    External (GL08, FieldUnitObj)
    External (GPE3, FieldUnitObj)
    External (GPS3, FieldUnitObj)
    External (PFLV, FieldUnitObj)
    External (RTD3, FieldUnitObj)

    If ((RTD3 == Zero))
    {
        Scope (\_SB.PCI0.SAT0)
        {
            Device (PRT2)
            {
                Name (_ADR, 0x0002FFFF)  // _ADR: Address
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    If ((Arg0 == ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66")))
                    {
                        While (One)
                        {
                            _T_0 = ToInteger (Arg2)
                            If ((_T_0 == Zero))
                            {
                                While (One)
                                {
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        If ((PFLV == FDTP))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             /* . */
                                            })
                                        }

                                        Return (Buffer (One)
                                        {
                                             0x0F                                             /* . */
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             /* . */
                                        })
                                    }

                                    Break
                                }
                            }
                            Else
                            {
                                If ((_T_0 == One))
                                {
                                    Return (One)
                                }
                                Else
                                {
                                    If ((_T_0 == 0x02))
                                    {
                                        GPE3 = Zero
                                        If (((\GL00 & 0x08) == 0x08))
                                        {
                                            \GIV0 |= 0x08
                                        }
                                        Else
                                        {
                                            \GIV0 &= 0xF7
                                        }

                                        \GL08 |= 0x10
                                        Sleep (0xC8)
                                        GPS3 = One
                                        GPE3 = One
                                        Return (One)
                                    }
                                    Else
                                    {
                                        If ((_T_0 == 0x03))
                                        {
                                            GPE3 = Zero
                                            GPS3 = One
                                            \GL08 &= 0xEF
                                            Return (One)
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_L13, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                If ((PFLV == FDTP))
                {
                    Return (Zero)
                }

                GPE3 = Zero
                \GL08 &= 0xEF
                Notify (\_SB.PCI0.SAT0, 0x82) // Device-Specific Change
                Return (Zero)
            }
        }
    }
}

