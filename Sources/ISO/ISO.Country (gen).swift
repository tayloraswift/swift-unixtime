import CasesByIntegerEncodingMacro

extension ISO
{
    @frozen public
    struct Country:Equatable, Hashable, Sendable
    {
        public
        var rawValue:UInt16

        @inlinable public
        init(rawValue:UInt16)
        {
            self.rawValue = rawValue
        }

        private
        enum AvailableCases
        {
            case AD
            case AE
            case AF
            case AG
            case AI
            case AL
            case AM
            case AO
            case AQ
            case AR
            case AS
            case AT
            case AU
            case AW
            case AX
            case AZ
            case BA
            case BB
            case BD
            case BE
            case BF
            case BG
            case BH
            case BI
            case BJ
            case BL
            case BM
            case BN
            case BO
            case BQ
            case BR
            case BS
            case BT
            case BV
            case BW
            case BY
            case BZ
            case CA
            case CC
            case CD
            case CF
            case CG
            case CH
            case CI
            case CK
            case CL
            case CM
            case CN
            case CO
            case CR
            case CU
            case CV
            case CW
            case CX
            case CY
            case CZ
            case DE
            case DJ
            case DK
            case DM
            case DO
            case DZ
            case EC
            case EE
            case EG
            case EH
            case ER
            case ES
            case ET
            case FI
            case FJ
            case FK
            case FM
            case FO
            case FR
            case GA
            case GB
            case GD
            case GE
            case GF
            case GG
            case GH
            case GI
            case GL
            case GM
            case GN
            case GP
            case GQ
            case GR
            case GS
            case GT
            case GU
            case GW
            case GY
            case HK
            case HM
            case HN
            case HR
            case HT
            case HU
            case ID
            case IE
            case IL
            case IM
            case IN
            case IO
            case IQ
            case IR
            case IS
            case IT
            case JE
            case JM
            case JO
            case JP
            case KE
            case KG
            case KH
            case KI
            case KM
            case KN
            case KP
            case KR
            case KW
            case KY
            case KZ
            case LA
            case LB
            case LC
            case LI
            case LK
            case LR
            case LS
            case LT
            case LU
            case LV
            case LY
            case MA
            case MC
            case MD
            case ME
            case MF
            case MG
            case MH
            case MK
            case ML
            case MM
            case MN
            case MO
            case MP
            case MQ
            case MR
            case MS
            case MT
            case MU
            case MV
            case MW
            case MX
            case MY
            case MZ
            case NA
            case NC
            case NE
            case NF
            case NG
            case NI
            case NL
            case NO
            case NP
            case NR
            case NU
            case NZ
            case OM
            case PA
            case PE
            case PF
            case PG
            case PH
            case PK
            case PL
            case PM
            case PN
            case PR
            case PT
            case PW
            case PY
            case QA
            case RE
            case RO
            case RS
            case RU
            case RW
            case SA
            case SB
            case SC
            case SD
            case SE
            case SG
            case SH
            case SI
            case SJ
            case SK
            case SL
            case SM
            case SN
            case SO
            case SR
            case SS
            case ST
            case SV
            case SX
            case SY
            case SZ
            case TC
            case TD
            case TF
            case TG
            case TH
            case TJ
            case TK
            case TL
            case TM
            case TN
            case TO
            case TR
            case TT
            case TV
            case TZ
            case UA
            case UG
            case UM
            case US
            case UY
            case UZ
            case VA
            case VC
            case VE
            case VG
            case VI
            case VN
            case VU
            case WF
            case WS
            case YE
            case YT
            case ZA
            case ZM
            case ZW

            //  Reserved codes
            case AA
            case OO
            case QM
            case QN
            case QO
            case QP
            case QQ
            case QR
            case QS
            case QT
            case QU
            case QV
            case QW
            case QX
            case QY
            case QZ
            case XA
            case XB
            case XC
            case XD
            case XE
            case XF
            case XG
            case XH
            case XI
            case XJ
            case XK
            case XL
            case XM
            case XN
            case XO
            case XP
            case XQ
            case XR
            case XS
            case XT
            case XU
            case XV
            case XW
            case XX
            case XY
            case XZ
            case ZZ
        }
    }
}
extension ISO.Country {
    @inlinable public static
    var AD: Self {
        .init(rawValue: 0x4144)
    }
    @inlinable public static
    var AE: Self {
        .init(rawValue: 0x4145)
    }
    @inlinable public static
    var AF: Self {
        .init(rawValue: 0x4146)
    }
    @inlinable public static
    var AG: Self {
        .init(rawValue: 0x4147)
    }
    @inlinable public static
    var AI: Self {
        .init(rawValue: 0x4149)
    }
    @inlinable public static
    var AL: Self {
        .init(rawValue: 0x414c)
    }
    @inlinable public static
    var AM: Self {
        .init(rawValue: 0x414d)
    }
    @inlinable public static
    var AO: Self {
        .init(rawValue: 0x414f)
    }
    @inlinable public static
    var AQ: Self {
        .init(rawValue: 0x4151)
    }
    @inlinable public static
    var AR: Self {
        .init(rawValue: 0x4152)
    }
    @inlinable public static
    var AS: Self {
        .init(rawValue: 0x4153)
    }
    @inlinable public static
    var AT: Self {
        .init(rawValue: 0x4154)
    }
    @inlinable public static
    var AU: Self {
        .init(rawValue: 0x4155)
    }
    @inlinable public static
    var AW: Self {
        .init(rawValue: 0x4157)
    }
    @inlinable public static
    var AX: Self {
        .init(rawValue: 0x4158)
    }
    @inlinable public static
    var AZ: Self {
        .init(rawValue: 0x415a)
    }
    @inlinable public static
    var BA: Self {
        .init(rawValue: 0x4241)
    }
    @inlinable public static
    var BB: Self {
        .init(rawValue: 0x4242)
    }
    @inlinable public static
    var BD: Self {
        .init(rawValue: 0x4244)
    }
    @inlinable public static
    var BE: Self {
        .init(rawValue: 0x4245)
    }
    @inlinable public static
    var BF: Self {
        .init(rawValue: 0x4246)
    }
    @inlinable public static
    var BG: Self {
        .init(rawValue: 0x4247)
    }
    @inlinable public static
    var BH: Self {
        .init(rawValue: 0x4248)
    }
    @inlinable public static
    var BI: Self {
        .init(rawValue: 0x4249)
    }
    @inlinable public static
    var BJ: Self {
        .init(rawValue: 0x424a)
    }
    @inlinable public static
    var BL: Self {
        .init(rawValue: 0x424c)
    }
    @inlinable public static
    var BM: Self {
        .init(rawValue: 0x424d)
    }
    @inlinable public static
    var BN: Self {
        .init(rawValue: 0x424e)
    }
    @inlinable public static
    var BO: Self {
        .init(rawValue: 0x424f)
    }
    @inlinable public static
    var BQ: Self {
        .init(rawValue: 0x4251)
    }
    @inlinable public static
    var BR: Self {
        .init(rawValue: 0x4252)
    }
    @inlinable public static
    var BS: Self {
        .init(rawValue: 0x4253)
    }
    @inlinable public static
    var BT: Self {
        .init(rawValue: 0x4254)
    }
    @inlinable public static
    var BV: Self {
        .init(rawValue: 0x4256)
    }
    @inlinable public static
    var BW: Self {
        .init(rawValue: 0x4257)
    }
    @inlinable public static
    var BY: Self {
        .init(rawValue: 0x4259)
    }
    @inlinable public static
    var BZ: Self {
        .init(rawValue: 0x425a)
    }
    @inlinable public static
    var CA: Self {
        .init(rawValue: 0x4341)
    }
    @inlinable public static
    var CC: Self {
        .init(rawValue: 0x4343)
    }
    @inlinable public static
    var CD: Self {
        .init(rawValue: 0x4344)
    }
    @inlinable public static
    var CF: Self {
        .init(rawValue: 0x4346)
    }
    @inlinable public static
    var CG: Self {
        .init(rawValue: 0x4347)
    }
    @inlinable public static
    var CH: Self {
        .init(rawValue: 0x4348)
    }
    @inlinable public static
    var CI: Self {
        .init(rawValue: 0x4349)
    }
    @inlinable public static
    var CK: Self {
        .init(rawValue: 0x434b)
    }
    @inlinable public static
    var CL: Self {
        .init(rawValue: 0x434c)
    }
    @inlinable public static
    var CM: Self {
        .init(rawValue: 0x434d)
    }
    @inlinable public static
    var CN: Self {
        .init(rawValue: 0x434e)
    }
    @inlinable public static
    var CO: Self {
        .init(rawValue: 0x434f)
    }
    @inlinable public static
    var CR: Self {
        .init(rawValue: 0x4352)
    }
    @inlinable public static
    var CU: Self {
        .init(rawValue: 0x4355)
    }
    @inlinable public static
    var CV: Self {
        .init(rawValue: 0x4356)
    }
    @inlinable public static
    var CW: Self {
        .init(rawValue: 0x4357)
    }
    @inlinable public static
    var CX: Self {
        .init(rawValue: 0x4358)
    }
    @inlinable public static
    var CY: Self {
        .init(rawValue: 0x4359)
    }
    @inlinable public static
    var CZ: Self {
        .init(rawValue: 0x435a)
    }
    @inlinable public static
    var DE: Self {
        .init(rawValue: 0x4445)
    }
    @inlinable public static
    var DJ: Self {
        .init(rawValue: 0x444a)
    }
    @inlinable public static
    var DK: Self {
        .init(rawValue: 0x444b)
    }
    @inlinable public static
    var DM: Self {
        .init(rawValue: 0x444d)
    }
    @inlinable public static
    var DO: Self {
        .init(rawValue: 0x444f)
    }
    @inlinable public static
    var DZ: Self {
        .init(rawValue: 0x445a)
    }
    @inlinable public static
    var EC: Self {
        .init(rawValue: 0x4543)
    }
    @inlinable public static
    var EE: Self {
        .init(rawValue: 0x4545)
    }
    @inlinable public static
    var EG: Self {
        .init(rawValue: 0x4547)
    }
    @inlinable public static
    var EH: Self {
        .init(rawValue: 0x4548)
    }
    @inlinable public static
    var ER: Self {
        .init(rawValue: 0x4552)
    }
    @inlinable public static
    var ES: Self {
        .init(rawValue: 0x4553)
    }
    @inlinable public static
    var ET: Self {
        .init(rawValue: 0x4554)
    }
    @inlinable public static
    var FI: Self {
        .init(rawValue: 0x4649)
    }
    @inlinable public static
    var FJ: Self {
        .init(rawValue: 0x464a)
    }
    @inlinable public static
    var FK: Self {
        .init(rawValue: 0x464b)
    }
    @inlinable public static
    var FM: Self {
        .init(rawValue: 0x464d)
    }
    @inlinable public static
    var FO: Self {
        .init(rawValue: 0x464f)
    }
    @inlinable public static
    var FR: Self {
        .init(rawValue: 0x4652)
    }
    @inlinable public static
    var GA: Self {
        .init(rawValue: 0x4741)
    }
    @inlinable public static
    var GB: Self {
        .init(rawValue: 0x4742)
    }
    @inlinable public static
    var GD: Self {
        .init(rawValue: 0x4744)
    }
    @inlinable public static
    var GE: Self {
        .init(rawValue: 0x4745)
    }
    @inlinable public static
    var GF: Self {
        .init(rawValue: 0x4746)
    }
    @inlinable public static
    var GG: Self {
        .init(rawValue: 0x4747)
    }
    @inlinable public static
    var GH: Self {
        .init(rawValue: 0x4748)
    }
    @inlinable public static
    var GI: Self {
        .init(rawValue: 0x4749)
    }
    @inlinable public static
    var GL: Self {
        .init(rawValue: 0x474c)
    }
    @inlinable public static
    var GM: Self {
        .init(rawValue: 0x474d)
    }
    @inlinable public static
    var GN: Self {
        .init(rawValue: 0x474e)
    }
    @inlinable public static
    var GP: Self {
        .init(rawValue: 0x4750)
    }
    @inlinable public static
    var GQ: Self {
        .init(rawValue: 0x4751)
    }
    @inlinable public static
    var GR: Self {
        .init(rawValue: 0x4752)
    }
    @inlinable public static
    var GS: Self {
        .init(rawValue: 0x4753)
    }
    @inlinable public static
    var GT: Self {
        .init(rawValue: 0x4754)
    }
    @inlinable public static
    var GU: Self {
        .init(rawValue: 0x4755)
    }
    @inlinable public static
    var GW: Self {
        .init(rawValue: 0x4757)
    }
    @inlinable public static
    var GY: Self {
        .init(rawValue: 0x4759)
    }
    @inlinable public static
    var HK: Self {
        .init(rawValue: 0x484b)
    }
    @inlinable public static
    var HM: Self {
        .init(rawValue: 0x484d)
    }
    @inlinable public static
    var HN: Self {
        .init(rawValue: 0x484e)
    }
    @inlinable public static
    var HR: Self {
        .init(rawValue: 0x4852)
    }
    @inlinable public static
    var HT: Self {
        .init(rawValue: 0x4854)
    }
    @inlinable public static
    var HU: Self {
        .init(rawValue: 0x4855)
    }
    @inlinable public static
    var ID: Self {
        .init(rawValue: 0x4944)
    }
    @inlinable public static
    var IE: Self {
        .init(rawValue: 0x4945)
    }
    @inlinable public static
    var IL: Self {
        .init(rawValue: 0x494c)
    }
    @inlinable public static
    var IM: Self {
        .init(rawValue: 0x494d)
    }
    @inlinable public static
    var IN: Self {
        .init(rawValue: 0x494e)
    }
    @inlinable public static
    var IO: Self {
        .init(rawValue: 0x494f)
    }
    @inlinable public static
    var IQ: Self {
        .init(rawValue: 0x4951)
    }
    @inlinable public static
    var IR: Self {
        .init(rawValue: 0x4952)
    }
    @inlinable public static
    var IS: Self {
        .init(rawValue: 0x4953)
    }
    @inlinable public static
    var IT: Self {
        .init(rawValue: 0x4954)
    }
    @inlinable public static
    var JE: Self {
        .init(rawValue: 0x4a45)
    }
    @inlinable public static
    var JM: Self {
        .init(rawValue: 0x4a4d)
    }
    @inlinable public static
    var JO: Self {
        .init(rawValue: 0x4a4f)
    }
    @inlinable public static
    var JP: Self {
        .init(rawValue: 0x4a50)
    }
    @inlinable public static
    var KE: Self {
        .init(rawValue: 0x4b45)
    }
    @inlinable public static
    var KG: Self {
        .init(rawValue: 0x4b47)
    }
    @inlinable public static
    var KH: Self {
        .init(rawValue: 0x4b48)
    }
    @inlinable public static
    var KI: Self {
        .init(rawValue: 0x4b49)
    }
    @inlinable public static
    var KM: Self {
        .init(rawValue: 0x4b4d)
    }
    @inlinable public static
    var KN: Self {
        .init(rawValue: 0x4b4e)
    }
    @inlinable public static
    var KP: Self {
        .init(rawValue: 0x4b50)
    }
    @inlinable public static
    var KR: Self {
        .init(rawValue: 0x4b52)
    }
    @inlinable public static
    var KW: Self {
        .init(rawValue: 0x4b57)
    }
    @inlinable public static
    var KY: Self {
        .init(rawValue: 0x4b59)
    }
    @inlinable public static
    var KZ: Self {
        .init(rawValue: 0x4b5a)
    }
    @inlinable public static
    var LA: Self {
        .init(rawValue: 0x4c41)
    }
    @inlinable public static
    var LB: Self {
        .init(rawValue: 0x4c42)
    }
    @inlinable public static
    var LC: Self {
        .init(rawValue: 0x4c43)
    }
    @inlinable public static
    var LI: Self {
        .init(rawValue: 0x4c49)
    }
    @inlinable public static
    var LK: Self {
        .init(rawValue: 0x4c4b)
    }
    @inlinable public static
    var LR: Self {
        .init(rawValue: 0x4c52)
    }
    @inlinable public static
    var LS: Self {
        .init(rawValue: 0x4c53)
    }
    @inlinable public static
    var LT: Self {
        .init(rawValue: 0x4c54)
    }
    @inlinable public static
    var LU: Self {
        .init(rawValue: 0x4c55)
    }
    @inlinable public static
    var LV: Self {
        .init(rawValue: 0x4c56)
    }
    @inlinable public static
    var LY: Self {
        .init(rawValue: 0x4c59)
    }
    @inlinable public static
    var MA: Self {
        .init(rawValue: 0x4d41)
    }
    @inlinable public static
    var MC: Self {
        .init(rawValue: 0x4d43)
    }
    @inlinable public static
    var MD: Self {
        .init(rawValue: 0x4d44)
    }
    @inlinable public static
    var ME: Self {
        .init(rawValue: 0x4d45)
    }
    @inlinable public static
    var MF: Self {
        .init(rawValue: 0x4d46)
    }
    @inlinable public static
    var MG: Self {
        .init(rawValue: 0x4d47)
    }
    @inlinable public static
    var MH: Self {
        .init(rawValue: 0x4d48)
    }
    @inlinable public static
    var MK: Self {
        .init(rawValue: 0x4d4b)
    }
    @inlinable public static
    var ML: Self {
        .init(rawValue: 0x4d4c)
    }
    @inlinable public static
    var MM: Self {
        .init(rawValue: 0x4d4d)
    }
    @inlinable public static
    var MN: Self {
        .init(rawValue: 0x4d4e)
    }
    @inlinable public static
    var MO: Self {
        .init(rawValue: 0x4d4f)
    }
    @inlinable public static
    var MP: Self {
        .init(rawValue: 0x4d50)
    }
    @inlinable public static
    var MQ: Self {
        .init(rawValue: 0x4d51)
    }
    @inlinable public static
    var MR: Self {
        .init(rawValue: 0x4d52)
    }
    @inlinable public static
    var MS: Self {
        .init(rawValue: 0x4d53)
    }
    @inlinable public static
    var MT: Self {
        .init(rawValue: 0x4d54)
    }
    @inlinable public static
    var MU: Self {
        .init(rawValue: 0x4d55)
    }
    @inlinable public static
    var MV: Self {
        .init(rawValue: 0x4d56)
    }
    @inlinable public static
    var MW: Self {
        .init(rawValue: 0x4d57)
    }
    @inlinable public static
    var MX: Self {
        .init(rawValue: 0x4d58)
    }
    @inlinable public static
    var MY: Self {
        .init(rawValue: 0x4d59)
    }
    @inlinable public static
    var MZ: Self {
        .init(rawValue: 0x4d5a)
    }
    @inlinable public static
    var NA: Self {
        .init(rawValue: 0x4e41)
    }
    @inlinable public static
    var NC: Self {
        .init(rawValue: 0x4e43)
    }
    @inlinable public static
    var NE: Self {
        .init(rawValue: 0x4e45)
    }
    @inlinable public static
    var NF: Self {
        .init(rawValue: 0x4e46)
    }
    @inlinable public static
    var NG: Self {
        .init(rawValue: 0x4e47)
    }
    @inlinable public static
    var NI: Self {
        .init(rawValue: 0x4e49)
    }
    @inlinable public static
    var NL: Self {
        .init(rawValue: 0x4e4c)
    }
    @inlinable public static
    var NO: Self {
        .init(rawValue: 0x4e4f)
    }
    @inlinable public static
    var NP: Self {
        .init(rawValue: 0x4e50)
    }
    @inlinable public static
    var NR: Self {
        .init(rawValue: 0x4e52)
    }
    @inlinable public static
    var NU: Self {
        .init(rawValue: 0x4e55)
    }
    @inlinable public static
    var NZ: Self {
        .init(rawValue: 0x4e5a)
    }
    @inlinable public static
    var OM: Self {
        .init(rawValue: 0x4f4d)
    }
    @inlinable public static
    var PA: Self {
        .init(rawValue: 0x5041)
    }
    @inlinable public static
    var PE: Self {
        .init(rawValue: 0x5045)
    }
    @inlinable public static
    var PF: Self {
        .init(rawValue: 0x5046)
    }
    @inlinable public static
    var PG: Self {
        .init(rawValue: 0x5047)
    }
    @inlinable public static
    var PH: Self {
        .init(rawValue: 0x5048)
    }
    @inlinable public static
    var PK: Self {
        .init(rawValue: 0x504b)
    }
    @inlinable public static
    var PL: Self {
        .init(rawValue: 0x504c)
    }
    @inlinable public static
    var PM: Self {
        .init(rawValue: 0x504d)
    }
    @inlinable public static
    var PN: Self {
        .init(rawValue: 0x504e)
    }
    @inlinable public static
    var PR: Self {
        .init(rawValue: 0x5052)
    }
    @inlinable public static
    var PT: Self {
        .init(rawValue: 0x5054)
    }
    @inlinable public static
    var PW: Self {
        .init(rawValue: 0x5057)
    }
    @inlinable public static
    var PY: Self {
        .init(rawValue: 0x5059)
    }
    @inlinable public static
    var QA: Self {
        .init(rawValue: 0x5141)
    }
    @inlinable public static
    var RE: Self {
        .init(rawValue: 0x5245)
    }
    @inlinable public static
    var RO: Self {
        .init(rawValue: 0x524f)
    }
    @inlinable public static
    var RS: Self {
        .init(rawValue: 0x5253)
    }
    @inlinable public static
    var RU: Self {
        .init(rawValue: 0x5255)
    }
    @inlinable public static
    var RW: Self {
        .init(rawValue: 0x5257)
    }
    @inlinable public static
    var SA: Self {
        .init(rawValue: 0x5341)
    }
    @inlinable public static
    var SB: Self {
        .init(rawValue: 0x5342)
    }
    @inlinable public static
    var SC: Self {
        .init(rawValue: 0x5343)
    }
    @inlinable public static
    var SD: Self {
        .init(rawValue: 0x5344)
    }
    @inlinable public static
    var SE: Self {
        .init(rawValue: 0x5345)
    }
    @inlinable public static
    var SG: Self {
        .init(rawValue: 0x5347)
    }
    @inlinable public static
    var SH: Self {
        .init(rawValue: 0x5348)
    }
    @inlinable public static
    var SI: Self {
        .init(rawValue: 0x5349)
    }
    @inlinable public static
    var SJ: Self {
        .init(rawValue: 0x534a)
    }
    @inlinable public static
    var SK: Self {
        .init(rawValue: 0x534b)
    }
    @inlinable public static
    var SL: Self {
        .init(rawValue: 0x534c)
    }
    @inlinable public static
    var SM: Self {
        .init(rawValue: 0x534d)
    }
    @inlinable public static
    var SN: Self {
        .init(rawValue: 0x534e)
    }
    @inlinable public static
    var SO: Self {
        .init(rawValue: 0x534f)
    }
    @inlinable public static
    var SR: Self {
        .init(rawValue: 0x5352)
    }
    @inlinable public static
    var SS: Self {
        .init(rawValue: 0x5353)
    }
    @inlinable public static
    var ST: Self {
        .init(rawValue: 0x5354)
    }
    @inlinable public static
    var SV: Self {
        .init(rawValue: 0x5356)
    }
    @inlinable public static
    var SX: Self {
        .init(rawValue: 0x5358)
    }
    @inlinable public static
    var SY: Self {
        .init(rawValue: 0x5359)
    }
    @inlinable public static
    var SZ: Self {
        .init(rawValue: 0x535a)
    }
    @inlinable public static
    var TC: Self {
        .init(rawValue: 0x5443)
    }
    @inlinable public static
    var TD: Self {
        .init(rawValue: 0x5444)
    }
    @inlinable public static
    var TF: Self {
        .init(rawValue: 0x5446)
    }
    @inlinable public static
    var TG: Self {
        .init(rawValue: 0x5447)
    }
    @inlinable public static
    var TH: Self {
        .init(rawValue: 0x5448)
    }
    @inlinable public static
    var TJ: Self {
        .init(rawValue: 0x544a)
    }
    @inlinable public static
    var TK: Self {
        .init(rawValue: 0x544b)
    }
    @inlinable public static
    var TL: Self {
        .init(rawValue: 0x544c)
    }
    @inlinable public static
    var TM: Self {
        .init(rawValue: 0x544d)
    }
    @inlinable public static
    var TN: Self {
        .init(rawValue: 0x544e)
    }
    @inlinable public static
    var TO: Self {
        .init(rawValue: 0x544f)
    }
    @inlinable public static
    var TR: Self {
        .init(rawValue: 0x5452)
    }
    @inlinable public static
    var TT: Self {
        .init(rawValue: 0x5454)
    }
    @inlinable public static
    var TV: Self {
        .init(rawValue: 0x5456)
    }
    @inlinable public static
    var TZ: Self {
        .init(rawValue: 0x545a)
    }
    @inlinable public static
    var UA: Self {
        .init(rawValue: 0x5541)
    }
    @inlinable public static
    var UG: Self {
        .init(rawValue: 0x5547)
    }
    @inlinable public static
    var UM: Self {
        .init(rawValue: 0x554d)
    }
    @inlinable public static
    var US: Self {
        .init(rawValue: 0x5553)
    }
    @inlinable public static
    var UY: Self {
        .init(rawValue: 0x5559)
    }
    @inlinable public static
    var UZ: Self {
        .init(rawValue: 0x555a)
    }
    @inlinable public static
    var VA: Self {
        .init(rawValue: 0x5641)
    }
    @inlinable public static
    var VC: Self {
        .init(rawValue: 0x5643)
    }
    @inlinable public static
    var VE: Self {
        .init(rawValue: 0x5645)
    }
    @inlinable public static
    var VG: Self {
        .init(rawValue: 0x5647)
    }
    @inlinable public static
    var VI: Self {
        .init(rawValue: 0x5649)
    }
    @inlinable public static
    var VN: Self {
        .init(rawValue: 0x564e)
    }
    @inlinable public static
    var VU: Self {
        .init(rawValue: 0x5655)
    }
    @inlinable public static
    var WF: Self {
        .init(rawValue: 0x5746)
    }
    @inlinable public static
    var WS: Self {
        .init(rawValue: 0x5753)
    }
    @inlinable public static
    var YE: Self {
        .init(rawValue: 0x5945)
    }
    @inlinable public static
    var YT: Self {
        .init(rawValue: 0x5954)
    }
    @inlinable public static
    var ZA: Self {
        .init(rawValue: 0x5a41)
    }
    @inlinable public static
    var ZM: Self {
        .init(rawValue: 0x5a4d)
    }
    @inlinable public static
    var ZW: Self {
        .init(rawValue: 0x5a57)
    }
    @inlinable public static
    var AA: Self {
        .init(rawValue: 0x4141)
    }
    @inlinable public static
    var OO: Self {
        .init(rawValue: 0x4f4f)
    }
    @inlinable public static
    var QM: Self {
        .init(rawValue: 0x514d)
    }
    @inlinable public static
    var QN: Self {
        .init(rawValue: 0x514e)
    }
    @inlinable public static
    var QO: Self {
        .init(rawValue: 0x514f)
    }
    @inlinable public static
    var QP: Self {
        .init(rawValue: 0x5150)
    }
    @inlinable public static
    var QQ: Self {
        .init(rawValue: 0x5151)
    }
    @inlinable public static
    var QR: Self {
        .init(rawValue: 0x5152)
    }
    @inlinable public static
    var QS: Self {
        .init(rawValue: 0x5153)
    }
    @inlinable public static
    var QT: Self {
        .init(rawValue: 0x5154)
    }
    @inlinable public static
    var QU: Self {
        .init(rawValue: 0x5155)
    }
    @inlinable public static
    var QV: Self {
        .init(rawValue: 0x5156)
    }
    @inlinable public static
    var QW: Self {
        .init(rawValue: 0x5157)
    }
    @inlinable public static
    var QX: Self {
        .init(rawValue: 0x5158)
    }
    @inlinable public static
    var QY: Self {
        .init(rawValue: 0x5159)
    }
    @inlinable public static
    var QZ: Self {
        .init(rawValue: 0x515a)
    }
    @inlinable public static
    var XA: Self {
        .init(rawValue: 0x5841)
    }
    @inlinable public static
    var XB: Self {
        .init(rawValue: 0x5842)
    }
    @inlinable public static
    var XC: Self {
        .init(rawValue: 0x5843)
    }
    @inlinable public static
    var XD: Self {
        .init(rawValue: 0x5844)
    }
    @inlinable public static
    var XE: Self {
        .init(rawValue: 0x5845)
    }
    @inlinable public static
    var XF: Self {
        .init(rawValue: 0x5846)
    }
    @inlinable public static
    var XG: Self {
        .init(rawValue: 0x5847)
    }
    @inlinable public static
    var XH: Self {
        .init(rawValue: 0x5848)
    }
    @inlinable public static
    var XI: Self {
        .init(rawValue: 0x5849)
    }
    @inlinable public static
    var XJ: Self {
        .init(rawValue: 0x584a)
    }
    @inlinable public static
    var XK: Self {
        .init(rawValue: 0x584b)
    }
    @inlinable public static
    var XL: Self {
        .init(rawValue: 0x584c)
    }
    @inlinable public static
    var XM: Self {
        .init(rawValue: 0x584d)
    }
    @inlinable public static
    var XN: Self {
        .init(rawValue: 0x584e)
    }
    @inlinable public static
    var XO: Self {
        .init(rawValue: 0x584f)
    }
    @inlinable public static
    var XP: Self {
        .init(rawValue: 0x5850)
    }
    @inlinable public static
    var XQ: Self {
        .init(rawValue: 0x5851)
    }
    @inlinable public static
    var XR: Self {
        .init(rawValue: 0x5852)
    }
    @inlinable public static
    var XS: Self {
        .init(rawValue: 0x5853)
    }
    @inlinable public static
    var XT: Self {
        .init(rawValue: 0x5854)
    }
    @inlinable public static
    var XU: Self {
        .init(rawValue: 0x5855)
    }
    @inlinable public static
    var XV: Self {
        .init(rawValue: 0x5856)
    }
    @inlinable public static
    var XW: Self {
        .init(rawValue: 0x5857)
    }
    @inlinable public static
    var XX: Self {
        .init(rawValue: 0x5858)
    }
    @inlinable public static
    var XY: Self {
        .init(rawValue: 0x5859)
    }
    @inlinable public static
    var XZ: Self {
        .init(rawValue: 0x585a)
    }
    @inlinable public static
    var ZZ: Self {
        .init(rawValue: 0x5a5a)
    }
}
extension ISO.Country:Comparable
{
    @inlinable public static
    func < (a:Self, b:Self) -> Bool { a.rawValue < b.rawValue }
}
extension ISO.Country:RawRepresentableByIntegerEncoding
{
}
extension ISO.Country:CustomStringConvertible
{
    @inlinable public
    var description:String
    {
        withUnsafeBytes(of: self.rawValue.bigEndian)
        {
            .init(decoding: $0, as: Unicode.ASCII.self)
        }
    }
}
extension ISO.Country:LosslessStringConvertible
{
    @inlinable public
    init?(_ description:some StringProtocol)
    {
        guard description.utf8.count == 2
        else
        {
            return nil
        }

        self.init(rawValue: 0)

        for byte:UInt8 in description.utf8
        {
            self.rawValue <<= 8
            self.rawValue |= .init(byte)
        }
    }
}
