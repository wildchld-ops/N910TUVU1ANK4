.class public Lcom/android/settings/wifi/WifiBackupRestore;
.super Landroid/content/BroadcastReceiver;
.source "WifiBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static cipher:Ljavax/crypto/Cipher;

.field private static key:Ljavax/crypto/spec/SecretKeySpec;


# instance fields
.field mOption:I

.field mSessionKey:Ljava/lang/String;

.field mSource:Ljava/lang/String;

.field xmlConf:Ljava/lang/String;

.field xmlModel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljavax/crypto/Cipher;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method static synthetic access$102(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;
    .locals 0

    sput-object p0, Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object p0
.end method

.method static synthetic access$200()Ljavax/crypto/spec/SecretKeySpec;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/WifiBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-object v0
.end method

.method static synthetic access$202(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 0

    sput-object p0, Lcom/android/settings/wifi/WifiBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiBackupRestore"

    const-string v3, "request backup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;-><init>(Lcom/android/settings/wifi/WifiBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/settings/wifi/WifiBackupRestore;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiBackupRestore"

    const-string v3, "request restore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;-><init>(Lcom/android/settings/wifi/WifiBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
