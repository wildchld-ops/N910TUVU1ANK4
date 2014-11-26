.class public Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;
.super Landroid/app/Service;
.source "PhoneNumberLocatorRegisterService.java"


# static fields
.field public static PNL_AUTO_UPDATE:Ljava/lang/String;

.field public static isServiceStarted:Z


# instance fields
.field private mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pnlAutoUpdate"

    sput-object v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "PhoneNumberLocatorRegisterService"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    const-string v1, "onCreate()"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->log(Ljava/lang/String;Z)V

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;

    invoke-direct {v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;-><init>()V

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "Destroying PhoneNumberLocatorRegisterService"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1    # Landroid/content/Intent;
    .param p2    # I

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const-string v0, "onStart()"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->log(Ljava/lang/String;Z)V

    return-void
.end method
