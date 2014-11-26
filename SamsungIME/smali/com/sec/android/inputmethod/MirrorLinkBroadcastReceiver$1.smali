.class Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "MirrorLinkBroadcastReceiver.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->createService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    const/16 v11, 0x88

    const/4 v10, 0x1

    invoke-static {p2}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    move-result-object v4

    # setter for: Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;
    invoke-static {v4}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->access$002(Lcom/mirrorlink/android/commonapi/ICommonAPIService;)Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mHandler:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;->SendCreateDialogBuilderMessage()V

    # getter for: Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;
    invoke-static {}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->access$000()Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v7, v7, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/mirrorlink/android/commonapi/ICommonAPIService;->applicationStarted(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    # getter for: Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;
    invoke-static {}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->access$000()Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v8, v8, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v9, v9, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mCertificationListener:Lcom/mirrorlink/android/commonapi/ICertificationListener;

    invoke-interface {v7, v8, v9}, Lcom/mirrorlink/android/commonapi/ICommonAPIService;->getCertificationManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/ICertificationListener;)Lcom/mirrorlink/android/commonapi/ICertificationManager;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mCertificationManager:Lcom/mirrorlink/android/commonapi/ICertificationManager;

    iget-object v6, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    # getter for: Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;
    invoke-static {}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->access$000()Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v8, v8, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v9, v9, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mConnectionListener:Lcom/mirrorlink/android/commonapi/IConnectionListener;

    invoke-interface {v7, v8, v9}, Lcom/mirrorlink/android/commonapi/ICommonAPIService;->getConnectionManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IConnectionListener;)Lcom/mirrorlink/android/commonapi/IConnectionManager;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mConnectionManager:Lcom/mirrorlink/android/commonapi/IConnectionManager;

    iget-object v6, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    # getter for: Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;
    invoke-static {}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->access$000()Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v8, v8, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v9, v9, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mDeviceStatusListener:Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    invoke-interface {v7, v8, v9}, Lcom/mirrorlink/android/commonapi/ICommonAPIService;->getDeviceStatusManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;)Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mDeviceStatusManager:Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;

    iget-object v6, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mDeviceStatusManager:Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v7, v7, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mDeviceStatusManager:Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;

    invoke-interface {v7}, Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;->isInDriveMode()Z

    move-result v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCarInDrivingMode(Z)V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mConnectionManager:Lcom/mirrorlink/android/commonapi/IConnectionManager;

    invoke-interface {v6}, Lcom/mirrorlink/android/commonapi/IConnectionManager;->isMirrorLinkSessionEstablished()Z

    move-result v2

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onServiceConnected isMirrorLinkSessionEstablished : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    # getter for: Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;
    invoke-static {}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->access$000()Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v8, v8, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v9, v9, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mEventMappingListener:Lcom/mirrorlink/android/commonapi/IEventMappingListener;

    invoke-interface {v7, v8, v9}, Lcom/mirrorlink/android/commonapi/ICommonAPIService;->getEventMappingManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IEventMappingListener;)Lcom/mirrorlink/android/commonapi/IEventMappingManager;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mEventMappingManager:Lcom/mirrorlink/android/commonapi/IEventMappingManager;

    iget-object v6, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mEventMappingManager:Lcom/mirrorlink/android/commonapi/IEventMappingManager;

    invoke-interface {v6}, Lcom/mirrorlink/android/commonapi/IEventMappingManager;->getEventConfiguration()Landroid/os/Bundle;

    move-result-object v1

    const/4 v5, -0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_2

    if-ne v2, v10, :cond_2

    const-string v6, "TOUCH_SUPPORT"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "KNOB_KEY_SUPPORT"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v5, :cond_3

    and-int/lit16 v6, v3, 0x88

    if-ne v6, v11, :cond_3

    iget-object v6, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setIsCurrentCarModeKnobSip(Z)V

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v7, v7, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v7, v7, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    and-int/lit16 v6, v3, 0x88

    if-ne v6, v11, :cond_4

    iget-object v6, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setIsCurrentCarModeKnobSip(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_1

    :try_start_1
    iget-object v6, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setIsCurrentCarModeTouchSip(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1    # Landroid/content/ComponentName;

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v0, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/common/InputManager;->setIsCurrentCarModeKnobSip(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v0, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/common/InputManager;->setIsCurrentCarModeTouchSip(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v0, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCarInDrivingMode(Z)V

    # setter for: Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;
    invoke-static {v1}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->access$002(Lcom/mirrorlink/android/commonapi/ICommonAPIService;)Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iput-object v1, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mCertificationManager:Lcom/mirrorlink/android/commonapi/ICertificationManager;

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iput-object v1, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mConnectionManager:Lcom/mirrorlink/android/commonapi/IConnectionManager;

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iput-object v1, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mDeviceStatusManager:Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$1;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iput-object v1, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mEventMappingManager:Lcom/mirrorlink/android/commonapi/IEventMappingManager;

    return-void
.end method
