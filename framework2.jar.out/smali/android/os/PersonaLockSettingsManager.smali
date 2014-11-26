.class public Landroid/os/PersonaLockSettingsManager;
.super Ljava/lang/Object;
.source "PersonaLockSettingsManager.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PersonaLockSettingsManager"

    sput-object v0, Landroid/os/PersonaLockSettingsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/ILockSettings;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/widget/ILockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/os/PersonaLockSettingsManager;->mService:Lcom/android/internal/widget/ILockSettings;

    iput-object p1, p0, Landroid/os/PersonaLockSettingsManager;->mContext:Landroid/content/Context;

    return-void
.end method
