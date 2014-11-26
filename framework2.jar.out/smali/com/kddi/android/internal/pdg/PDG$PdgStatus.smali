.class public final Lcom/kddi/android/internal/pdg/PDG$PdgStatus;
.super Ljava/lang/Object;
.source "PDG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/internal/pdg/PDG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PdgStatus"
.end annotation


# static fields
.field public static final ACCESS_TIME:Ljava/lang/String; = "access_time"

.field public static final AUTH_STATE:Ljava/lang/String; = "auth_state"

.field public static final AUTH_STATE_ALLOW:I = 0x1

.field public static final AUTH_STATE_DENY:I = 0x2

.field public static final AUTH_STATE_NONE:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_READ_ONLY:Landroid/net/Uri;

.field public static final DATA_TYPE:Ljava/lang/String; = "data_type"

.field public static final DATA_TYPE_CONTACTS:I = 0x0

.field public static final DATA_TYPE_LOCATION:I = 0x1

.field public static final DATA_TYPE_UIM:I = 0x2

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field public static final PDG:Ljava/lang/String; = "pdg_status"

.field public static final PDG_CONTACTS:Ljava/lang/String; = "pdg_status/contacts"

.field public static final PDG_LOCATION:Ljava/lang/String; = "pdg_status/location"

.field public static final PDG_UIM:Ljava/lang/String; = "pdg_status/uim"

.field public static final SETTING_STATE:Ljava/lang/String; = "setting_state"

.field public static final SETTING_STATE_CONFIGURED:I = 0x2

.field public static final SETTING_STATE_NOT_SET:I = 0x1

.field public static final SETTING_STATE_NO_ACCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.kddi.android.pdg/pdg_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/internal/pdg/PDG$PdgStatus;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.kddi.android.pdg.read_only/pdg_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/internal/pdg/PDG$PdgStatus;->CONTENT_URI_READ_ONLY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
