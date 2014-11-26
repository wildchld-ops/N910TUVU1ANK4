.class public interface abstract Lcom/android/services/telephony/common/RcsTransferConstants;
.super Ljava/lang/Object;
.source "RcsTransferConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/RcsTransferConstants$Cs;,
        Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;
    }
.end annotation


# static fields
.field public static final INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

.field public static final INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

.field public static final SERVICE_OWN_URI:Landroid/net/Uri;

.field public static final SIP_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "feature_tag"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "icon_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "int_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "int_category"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sip_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "service_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/services/telephony/common/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    const-string v0, "content://"

    const-string v1, "com.samsung.rcs.serviceprovider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "incall"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/RcsTransferConstants;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    const-string v0, "content://"

    const-string v1, "com.samsung.rcs.serviceprovider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "sip"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.rcs.serviceprovider/own"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/RcsTransferConstants;->SERVICE_OWN_URI:Landroid/net/Uri;

    return-void
.end method
