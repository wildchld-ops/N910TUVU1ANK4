.class Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;
.super Landroid/database/ContentObserver;
.source "VoiceInputControlEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VoiceInputControlEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceInputSettingObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/VoiceInputControlEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/VoiceInputControlEnabler;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;->this$0:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "VoiceInputControlEnabler"

    const-string v1, "VoiceInputSettingObserver - onChange"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;->this$0:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->updateSwitch()V

    return-void
.end method

.method startObserving()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method stopObserving()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
