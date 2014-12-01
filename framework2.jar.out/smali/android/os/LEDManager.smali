.class public final Landroid/os/LEDManager;
.super Ljava/lang/Object;
.source "LEDManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/LEDManager$LED;
    }
.end annotation


# static fields
.field public static final LED_FLASH_HARDWARE:I = 0x2

.field public static final LED_FLASH_NONE:I = 0x0

.field public static final LED_FLASH_TIMED:I = 0x1

.field public static final LED_ID_COUNT:I = 0x4

.field public static final LED_ID_EASY_SETUP:I = 0x3

.field public static final LED_ID_MEDIA_PLAYER:I = 0x2

.field public static final LED_ID_REMOTE_CONTROLLER:I = 0x0

.field public static final LED_ID_VOICE_RECORDER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LEDManager"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mService:Landroid/os/ILEDManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/ILEDManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/LEDManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/os/LEDManager;->mService:Landroid/os/ILEDManager;

    return-void
.end method


# virtual methods
.method public getLED(I)Landroid/os/LEDManager$LED;
    .locals 1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/LEDManager$LED;

    invoke-direct {v0, p0, p1}, Landroid/os/LEDManager$LED;-><init>(Landroid/os/LEDManager;I)V

    goto :goto_0
.end method
