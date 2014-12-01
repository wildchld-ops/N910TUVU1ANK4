.class public Lcom/android/incallui/InCallApp;
.super Landroid/app/Application;
.source "InCallApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallApp$MuteBroadcastReceiver;,
        Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;
    }
.end annotation


# static fields
.field private static mIsFromNoti:Z

.field private static sMe:Lcom/android/incallui/InCallApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/InCallApp;->mIsFromNoti:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    sput-object p0, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/incallui/InCallApp;->mIsFromNoti:Z

    return p0
.end method

.method public static getInstance()Lcom/android/incallui/InCallApp;
    .locals 2

    sget-object v0, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No InCallApp here!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    return-object v0
.end method


# virtual methods
.method public isFromNoti()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/InCallApp;->mIsFromNoti:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeature(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SystemDBInterface;->initialize(Landroid/content/Context;)V

    const-string v0, "abbreviated_dialing_codes_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/extension/InCallUIExtension;->checkCscChameleonFile()V

    :cond_0
    const/high16 v0, 0x7f100000

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->setTheme(I)V

    return-void
.end method

.method public setIsFromNoti(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/incallui/InCallApp;->mIsFromNoti:Z

    return-void
.end method
