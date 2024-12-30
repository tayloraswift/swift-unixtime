import CasesByIntegerEncodingMacro

extension ISO
{
    @GenerateCasesByIntegerEncoding
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
