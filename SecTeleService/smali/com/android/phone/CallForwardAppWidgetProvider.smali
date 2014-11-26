.class public Lcom/android/phone/CallForwardAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "CallForwardAppWidgetProvider.java"

# interfaces
.implements Lcom/android/phone/CallForwardingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallForwardAppWidgetProvider$1;,
        Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field static callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field static cfListener:Lcom/android/phone/CallForwardingListener;

.field static mIsReading:Z

.field static mIsVideoOn:Lcom/android/phone/CFStatus;

.field static mIsVoiceOn:Lcom/android/phone/CFStatus;

.field static mLastRequestType:Lcom/android/phone/CFType;

.field static mScreenMode:I

.field static mVideoNumber:Ljava/lang/String;

.field static mVoiceNumber:Ljava/lang/String;

.field static phone:Lcom/android/internal/telephony/Phone;


# instance fields
.field context:Landroid/content/Context;

.field private mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallForwardAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    sget-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sput-boolean v3, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    sput v3, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    new-instance v0, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;-><init>(Lcom/android/phone/CallForwardAppWidgetProvider;Lcom/android/phone/CallForwardAppWidgetProvider$1;)V

    iput-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    return-void
.end method


# virtual methods
.method handleCallForwardResult(Lcom/android/phone/CFType;Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 5
    .param p1    # Lcom/android/phone/CFType;
    .param p2    # Lcom/android/internal/telephony/CallForwardInfo;

    const v4, 0x7f090368

    const/4 v3, 0x1

    sput-object p2, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    const-string v0, "CallForwardAppWidgetProvider"

    const-string v1, "handleCallForwardResult done: "

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v0, "CallForwardAppWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callForwardInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v0, Lcom/android/phone/CFType;->VOICE:Lcom/android/phone/CFType;

    if-ne p1, v0, :cond_4

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    :goto_0
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    :cond_0
    :goto_1
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    return-void

    :cond_2
    sget-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/phone/CFType;->VIDEO:Lcom/android/phone/CFType;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v0, v3, :cond_5

    sget-object v0, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    :goto_3
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    goto :goto_2
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # [I

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    const-string v0, "CallForwardAppWidgetProvider"

    const-string v1, "onDeleted"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    const-string v0, "CallForwardAppWidgetProvider"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    const-string v0, "CallForwardAppWidgetProvider"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    sput-object p0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v1, Lcom/android/phone/CFType;->VOICE_AND_VIDEO:Lcom/android/phone/CFType;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallForwardingListener;->onStarted(Lcom/android/phone/CFType;Z)V

    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 2
    .param p1    # I

    const/4 v0, 0x2

    sput v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    return-void
.end method

.method public onException(Lcom/android/internal/telephony/CommandException;)V
    .locals 2
    .param p1    # Lcom/android/internal/telephony/CommandException;

    const/4 v0, 0x2

    sput v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    return-void
.end method

.method public onFinished(Z)V
    .locals 1
    .param p1    # Z

    sput-boolean p1, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v5, -0x1

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v0, "CallForwardAppWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive, intentAction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v0, "com.android.phone.cfwidget.widget_voice_cf_onoff_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive(): WIDGET_VOICE_CF_ONOFF_ACTION"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v3, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    if-ne v0, v3, :cond_0

    move v1, v2

    :cond_0
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    invoke-virtual {v4, v6, v1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    move v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v3, Lcom/android/phone/CFType;->VOICE:Lcom/android/phone/CFType;

    invoke-interface {v0, v3, v2}, Lcom/android/phone/CallForwardingListener;->onStarted(Lcom/android/phone/CFType;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "com.android.phone.cfwidget.widget_video_cf_onoff_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive(): WIDGET_VIDEO_CF_ONOFF_ACTION"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v3, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    if-ne v0, v3, :cond_3

    move v1, v2

    :cond_3
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    const/16 v5, 0x10

    iget-object v4, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    invoke-virtual {v4, v6, v1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move v4, v2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v3, Lcom/android/phone/CFType;->VIDEO:Lcom/android/phone/CFType;

    invoke-interface {v0, v3, v2}, Lcom/android/phone/CallForwardingListener;->onStarted(Lcom/android/phone/CFType;Z)V

    goto :goto_0

    :cond_4
    const-string v0, "com.android.phone.cfwidget.widget_reload_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive(): WIDGET_RELOAD_ACTION"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v2, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v2, Lcom/android/phone/CFType;->VOICE_AND_VIDEO:Lcom/android/phone/CFType;

    invoke-interface {v0, v2, v6}, Lcom/android/phone/CallForwardingListener;->onStarted(Lcom/android/phone/CFType;Z)V

    goto :goto_0

    :cond_5
    const-string v0, "com.android.phone.cfwidget.widget_back_screen_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive(): WIDGET_BACK_SCREEN_ACTION"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput v2, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    invoke-virtual {p0, p1, v5}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    goto :goto_0

    :cond_6
    const-string v0, "com.android.phone.cfwidget.widget_handle_mmi_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CallForwardAppWidgetProvider"

    const-string v2, "onReceive(): WIDGET_HANDLE_MMI_ACTION"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput v1, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    invoke-virtual {p0, p1, v5}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method public onStarted(Lcom/android/phone/CFType;Z)V
    .locals 2
    .param p1    # Lcom/android/phone/CFType;
    .param p2    # Z

    sput-boolean p2, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    sput-object p1, Lcom/android/phone/CallForwardAppWidgetProvider;->mLastRequestType:Lcom/android/phone/CFType;

    const/4 v0, 0x1

    sput v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/appwidget/AppWidgetManager;
    .param p3    # [I

    iput-object p1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const-string v1, "CallForwardAppWidgetProvider"

    const-string v2, "onUpdate"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p3

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    return-void
.end method

.method updateToggleButton(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1    # Landroid/widget/RemoteViews;

    const v6, 0x7f0a0049

    const v5, 0x7f0a0048

    const v2, 0x7f0a0047

    const/16 v4, 0x8

    const/4 v3, 0x0

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v1, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v0, 0x7f0a004b

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a004c

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v1, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    if-ne v0, v1, :cond_1

    const v0, 0x7f0a004f

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a0050

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a0051

    iget-object v1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v0, 0x7f0a0053

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a0054

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v0, 0x7f0a004c

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a004b

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0a004f

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a0050

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a0051

    iget-object v1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v0, 0x7f0a0053

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a0054

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method updateView(Landroid/content/Context;I)V
    .locals 23
    .param p1    # Landroid/content/Context;
    .param p2    # I

    new-instance v17, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f040014

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v20, "com.android.phone"

    const-string v21, "com.android.phone.callsettings.CallTypeSelectForForwarding"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v20, "FROMWIDGET"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const v20, 0x7f0a0044

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.phone.cfwidget.widget_voice_cf_onoff_action"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    new-instance v12, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v20, "com.android.phone"

    const-string v21, "com.android.phone.GsmUmtsCallForwardOptionsFromWidget"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v20, "FROMWIDGET"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    const v20, 0x7f0a0046

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_0
    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.phone.cfwidget.widget_video_cf_onoff_action"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    new-instance v11, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v20, "com.android.phone"

    const-string v21, "com.android.phone.GsmUmtsVideoCallForwardOptionsFromWidget"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v20, "FROMWIDGET"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    const v20, 0x7f0a004e

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_1
    sget v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    packed-switch v20, :pswitch_data_0

    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v19

    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void

    :cond_0
    const v20, 0x7f0a0046

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    const v20, 0x7f0a004e

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    :pswitch_0
    const v20, 0x7f0a0045

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v20, 0x7f0a0055

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    const v20, 0x7f090368

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    :cond_2
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_3

    const v20, 0x7f090368

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    :cond_3
    const v20, 0x7f0a004a

    sget-object v21, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v20, 0x7f0a0052

    sget-object v21, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateToggleButton(Landroid/widget/RemoteViews;)V

    goto/16 :goto_2

    :pswitch_1
    const v20, 0x7f0a0045

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v20, 0x7f0a0055

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v20, 0x7f0a0056

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v20, 0x7f0a0059

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v20, 0x7f0a005b

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v20, 0x7f0a005d

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v20, 0x7f09007d

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-boolean v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    if-nez v20, :cond_4

    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mLastRequestType:Lcom/android/phone/CFType;

    sget-object v21, Lcom/android/phone/CFType;->VOICE:Lcom/android/phone/CFType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    const v20, 0x7f09036a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_4
    :goto_3
    const v20, 0x7f0a0058

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    const v20, 0x7f090369

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_6
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mLastRequestType:Lcom/android/phone/CFType;

    sget-object v21, Lcom/android/phone/CFType;->VIDEO:Lcom/android/phone/CFType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_7

    const v20, 0x7f09036c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    const v20, 0x7f09036b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :pswitch_2
    const v20, 0x7f0a0045

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v20, 0x7f0a0055

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v20, 0x7f0a0056

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v20, 0x7f0a0059

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v20, 0x7f0a005b

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget-boolean v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    if-eqz v20, :cond_8

    const v20, 0x7f09036d

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v20, 0x7f0a005d

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.phone.cfwidget.widget_reload_action"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    const v20, 0x7f0a005d

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_4
    const v20, 0x7f0a005d

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    :cond_8
    const v20, 0x7f090085

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v20, 0x7f0a005d

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.phone.cfwidget.widget_back_screen_action"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const v20, 0x7f0a005d

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_4

    :pswitch_3
    const v20, 0x7f0a0045

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v20, 0x7f0a0055

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v20, 0x7f0a0056

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v20, 0x7f0a0059

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v20, 0x7f0a005b

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v20, 0x7f09036e

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v20, 0x7f0a005d

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.phone.cfwidget.widget_reload_action"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    const v20, 0x7f0a005d

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v20, 0x7f0a005d

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
