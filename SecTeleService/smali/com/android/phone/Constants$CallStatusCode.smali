.class public final enum Lcom/android/phone/Constants$CallStatusCode;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallStatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/Constants$CallStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum AUTO_REJECTED:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum CALL_FAILED_LOWBATT:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum CDMA_CALL_LOST:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum CDMA_CALL_OUT_BARRING:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum DCM_VT_CALL_ERROR:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum DCM_VT_EMR_CALL_ERROR:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum EMERGENCY_CALL_FROM_AIRPLANE_MODE_DIALOG:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum ETC_CAUSE_REJECT:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum IMS_NOT_REGISTERED:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum IMS_SERVICE_IMPOSSIBLE:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum LGT_REG_AUTH_FAIL:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum NOT_REGISTERED_NUMBER:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum OUT_OF_3G_NETWORK:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum RESTRICT_CALL_FACTORY_MODE:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum RESTRICT_CALL_FDN_MODE:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "POWER_OFF"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "EMERGENCY_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "OUT_OF_SERVICE"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "NO_PHONE_NUMBER_SUPPLIED"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "DIALED_MMI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "CALL_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "VOICEMAIL_NUMBER_MISSING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "CDMA_CALL_LOST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->CDMA_CALL_LOST:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "CDMA_CALL_OUT_BARRING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->CDMA_CALL_OUT_BARRING:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "EXITED_ECM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "AUTO_REJECTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->AUTO_REJECTED:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "EMERGENCY_CALL_FROM_AIRPLANE_MODE_DIALOG"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_CALL_FROM_AIRPLANE_MODE_DIALOG:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "IMSI_UNKNOWN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "ILLEGAL_MS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "ILLEGAL_ME"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "LOCATION_REG_FAIL"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "LOCATION_REGSTERING"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "NETWORK_REG_FAIL"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "GPRS_SERVICE_NOT_ALLOWED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "ETC_CAUSE_REJECT"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "FREQ_SEARCHING"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "LGT_REG_AUTH_FAIL"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->LGT_REG_AUTH_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "NOT_REGISTERED_NUMBER"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "RESTRICT_CALL_FDN_MODE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FDN_MODE:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "RESTRICT_CALL_FACTORY_MODE"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "CALL_FAILED_LOWBATT"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED_LOWBATT:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "OUT_OF_3G_NETWORK"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_3G_NETWORK:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "IMS_NOT_REGISTERED"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMS_NOT_REGISTERED:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "IMS_SERVICE_IMPOSSIBLE"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMS_SERVICE_IMPOSSIBLE:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "DCM_VT_EMR_CALL_ERROR"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->DCM_VT_EMR_CALL_ERROR:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "DCM_VT_CALL_ERROR"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->DCM_VT_CALL_ERROR:Lcom/android/phone/Constants$CallStatusCode;

    const/16 v0, 0x23

    new-array v0, v0, [Lcom/android/phone/Constants$CallStatusCode;

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->CDMA_CALL_LOST:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->CDMA_CALL_OUT_BARRING:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->AUTO_REJECTED:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_CALL_FROM_AIRPLANE_MODE_DIALOG:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->LGT_REG_AUTH_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FDN_MODE:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED_LOWBATT:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_3G_NETWORK:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->IMS_NOT_REGISTERED:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->IMS_SERVICE_IMPOSSIBLE:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->DCM_VT_EMR_CALL_ERROR:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->DCM_VT_CALL_ERROR:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->$VALUES:[Lcom/android/phone/Constants$CallStatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/Constants$CallStatusCode;
    .locals 1

    const-class v0, Lcom/android/phone/Constants$CallStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/Constants$CallStatusCode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/Constants$CallStatusCode;
    .locals 1

    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->$VALUES:[Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/Constants$CallStatusCode;

    return-object v0
.end method
