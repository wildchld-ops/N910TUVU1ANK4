.class public final Landroid/provider/Settings$SimCardInfo;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimCardInfo"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFAULT_ICON_NUMBER_SIM1:I = 0x0

.field private static final DEFAULT_ICON_NUMBER_SIM2:I = 0x0

.field private static final DEFAULT_SIM_NAME1:Ljava/lang/String; = "Sim1"

.field private static final DEFAULT_SIM_NAME2:Ljava/lang/String; = "Sim2"

.field public static final ICCID:Ljava/lang/String; = "iccid"

.field public static final ID:Ljava/lang/String; = "_id"

.field private static final INITIAL_SIM_NAME:Ljava/lang/String; = "initialSimName"

.field public static final LARGE_ICON:Ljava/lang/String; = "large_icon"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SMALL_ICON:Ljava/lang/String; = "small_icon"

.field private static final TAG:Ljava/lang/String; = "SimCardInfo"

.field public static final sProjection:[Ljava/lang/String;

.field public static final sSelection:Ljava/lang/String; = "iccid=?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://settings/simcard_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$SimCardInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iccid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "large_icon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "small_icon"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$SimCardInfo;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
