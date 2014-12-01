.class public Lcom/android/mms/rcs/Configuration$Ft;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ft"
.end annotation


# static fields
.field private static final IM_INFO_CONFIG_FILE:Ljava/lang/String; = ""

.field public static final OPEN_SESSIONS_LIMIT:I = 0x14

.field public static sImFtMaxSize:J

.field public static sImFtWarnSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x9c4000

    sput-wide v0, Lcom/android/mms/rcs/Configuration$Ft;->sImFtMaxSize:J

    const-wide/32 v0, 0x2ee000

    sput-wide v0, Lcom/android/mms/rcs/Configuration$Ft;->sImFtWarnSize:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultWarnLevel()J
    .locals 4

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getImFtWarnSize()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0

    :cond_1
    const-string v2, "root/application/1/im/ftwarnsize"

    invoke-static {v2}, Lcom/android/mms/AutoConfigurationReader;->getIntValue(Ljava/lang/String;)I

    move-result v2

    int-to-long v0, v2

    goto :goto_0
.end method

.method public static getFileSizeLimit()J
    .locals 4

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getImFtMaxSize()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0

    :cond_1
    const-string v2, "root/application/1/im/maxsizefiletr"

    invoke-static {v2}, Lcom/android/mms/AutoConfigurationReader;->getIntValue(Ljava/lang/String;)I

    move-result v2

    int-to-long v0, v2

    goto :goto_0
.end method

.method public static getFileSizeWarnTreshold()J
    .locals 5

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeLimit()J

    move-result-wide v2

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getDefaultWarnLevel()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    const/4 v4, 0x1

    shr-long v0, v2, v4

    :cond_0
    return-wide v0
.end method

.method public static getFtAutoAccept(Landroid/content/Context;)I
    .locals 8

    const/4 v2, 0x0

    const-string v0, "content://com.samsung.rcs.im/autoacceptft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, -0x1

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setting_value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v0, "Mms/Configuration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFtAutoAccept : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v7
.end method

.method public static getImFtMaxSize()J
    .locals 2

    sget-wide v0, Lcom/android/mms/rcs/Configuration$Ft;->sImFtMaxSize:J

    return-wide v0
.end method

.method public static getImFtWarnSize()J
    .locals 2

    sget-wide v0, Lcom/android/mms/rcs/Configuration$Ft;->sImFtWarnSize:J

    return-wide v0
.end method

.method public static isFtAutoAccept(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "root/application/1/im/ftautaccept"

    invoke-static {v0}, Lcom/android/mms/AutoConfigurationReader;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isFtAutoAcceptInHome(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {p0}, Lcom/android/mms/rcs/Configuration$Ft;->getFtAutoAccept(Landroid/content/Context;)I

    move-result v0

    const-string v1, "Mms/Configuration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFtAutoAcceptInHome : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isFtAutoAcceptInRoaming(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {p0}, Lcom/android/mms/rcs/Configuration$Ft;->getFtAutoAccept(Landroid/content/Context;)I

    move-result v0

    const-string v1, "Mms/Configuration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFtAutoAcceptInRoaming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isFthttpCapalwayson()Z
    .locals 1

    const-string v0, "root/application/1/serviceproviderext/joyn/messagingfthttpcapalwayson"

    invoke-static {v0}, Lcom/android/mms/AutoConfigurationReader;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSizeLimitExceeded(J)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeLimit()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeLimit()J

    move-result-wide v1

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isStoreAndForward()Z
    .locals 1

    const-string v0, "root/application/1/im/ftcapalwayson"

    invoke-static {v0}, Lcom/android/mms/AutoConfigurationReader;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isWarnSizeTresholdExceeded(J)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeWarnTreshold()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeWarnTreshold()J

    move-result-wide v1

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static newFtAction(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.filetransfer.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static setFtAutoAcceptInHome()Landroid/content/Intent;
    .locals 3

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.SET_AUTO_ACCEPT_FT"

    invoke-static {v1}, Lcom/android/mms/rcs/Configuration$Ft;->newFtAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "autoAcceptState"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static setFtAutoAcceptInHome(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->setFtAutoAcceptInHome()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static setFtAutoAcceptInRoaming()Landroid/content/Intent;
    .locals 3

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.SET_AUTO_ACCEPT_FT"

    invoke-static {v1}, Lcom/android/mms/rcs/Configuration$Ft;->newFtAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "autoAcceptState"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static setFtAutoAcceptInRoaming(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->setFtAutoAcceptInRoaming()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static setFtDisableAutoAccept()Landroid/content/Intent;
    .locals 3

    const-string v1, "com.samsung.rcs.framework.filetransfer.action.SET_AUTO_ACCEPT_FT"

    invoke-static {v1}, Lcom/android/mms/rcs/Configuration$Ft;->newFtAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "autoAcceptState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static setFtDisableAutoAccept(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->setFtDisableAutoAccept()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static setImFtMaxSize(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sput-wide p0, Lcom/android/mms/rcs/Configuration$Ft;->sImFtMaxSize:J

    :cond_0
    return-void
.end method

.method public static setImFtWarnSize(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sput-wide p0, Lcom/android/mms/rcs/Configuration$Ft;->sImFtWarnSize:J

    :cond_0
    return-void
.end method
