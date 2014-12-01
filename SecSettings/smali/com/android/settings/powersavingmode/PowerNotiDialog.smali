.class public Lcom/android/settings/powersavingmode/PowerNotiDialog;
.super Landroid/app/Activity;
.source "PowerNotiDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mLimitBackgroundDataTask:Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;

.field mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/powersavingmode/PowerNotiDialog$1;

    invoke-direct {v0}, Lcom/android/settings/powersavingmode/PowerNotiDialog$1;-><init>()V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerNotiDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/PowerNotiDialog;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/powersavingmode/PowerNotiDialog;[Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/powersavingmode/PowerNotiDialog;->setUidAllowedForData([Ljava/lang/String;Z)V

    return-void
.end method

.method private setUidAllowedForData([Ljava/lang/String;Z)V
    .locals 6

    sget-object v3, Lcom/android/settings/powersavingmode/PowerNotiDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    const-string v3, "PowerNotiDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AllowedForData getUid(appList[i])="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/PowerNotiDialog;->getUid(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Applist is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    :try_start_0
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/powersavingmode/PowerNotiDialog;->getUid(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/NetworkPolicyManager;->setUidAllowedForData(II)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/powersavingmode/PowerNotiDialog;->getUid(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/net/NetworkPolicyManager;->setUidAllowedForData(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getLimitBackgoundData()I
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/settings/powersavingmode/PowerNotiDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powersaving_switch"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget-object v3, Lcom/android/settings/powersavingmode/PowerNotiDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_powersaving_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getUid(Ljava/lang/String;)I
    .locals 4

    sget-object v3, Lcom/android/settings/powersavingmode/PowerNotiDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_0
    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "PowerNotiDialog"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/android/settings/powersavingmode/PowerNotiDialog;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/powersavingmode/PowerNotiDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerNotiDialog;->getLimitBackgoundData()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog;->mLimitBackgroundDataTask:Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;-><init>(Lcom/android/settings/powersavingmode/PowerNotiDialog;Lcom/android/settings/powersavingmode/PowerNotiDialog$1;)V

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog;->mLimitBackgroundDataTask:Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog;->mLimitBackgroundDataTask:Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "PowerNotiDialog"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "PowerNotiDialog"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "PowerNotiDialog"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
