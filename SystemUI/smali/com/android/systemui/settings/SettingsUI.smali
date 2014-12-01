.class public Lcom/android/systemui/settings/SettingsUI;
.super Lcom/android/systemui/SystemUI;
.source "SettingsUI.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SettingsUI"


# instance fields
.field private mBrightnessDialog:Lcom/android/systemui/settings/BrightnessDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/SettingsUI;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/settings/SettingsUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/SettingsUI$1;-><init>(Lcom/android/systemui/settings/SettingsUI;)V

    iput-object v0, p0, Lcom/android/systemui/settings/SettingsUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/SettingsUI;)Lcom/android/systemui/settings/BrightnessDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/SettingsUI;->mBrightnessDialog:Lcom/android/systemui/settings/BrightnessDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/settings/SettingsUI;Lcom/android/systemui/settings/BrightnessDialog;)Lcom/android/systemui/settings/BrightnessDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/SettingsUI;->mBrightnessDialog:Lcom/android/systemui/settings/BrightnessDialog;

    return-object p1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "mBrightnessDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/settings/SettingsUI;->mBrightnessDialog:Lcom/android/systemui/settings/BrightnessDialog;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/SettingsUI;->mBrightnessDialog:Lcom/android/systemui/settings/BrightnessDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public start()V
    .locals 6

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/settings/SettingsUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/settings/SettingsUI;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
