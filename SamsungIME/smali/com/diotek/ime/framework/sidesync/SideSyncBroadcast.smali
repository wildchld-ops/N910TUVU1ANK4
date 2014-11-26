.class public Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;
.super Ljava/lang/Object;
.source "SideSyncBroadcast.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

.field private mSideSyncMainReceiver:Landroid/content/BroadcastReceiver;

.field private mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/diotek/ime/framework/sidesync/SideSyncManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    iput-object p1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    invoke-direct {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->addActionToIntentFilter()V

    new-instance v0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast$1;-><init>(Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->broadcastEventParser(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private addActionToIntentFilter()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.sidesync.source.SIDESYNC_HIDE_SIP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.sidesync.source.SET_BINDER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.sidesync.source.SIDESYNC_INPUT_KEY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.sidesync.source.SIDESYNC_LANGUAGE_ID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "SIDESYNC.action.INPUT_TEXT_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "SIDESYNC.action.PREDICTIVE_TEXT_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "SIDESYNC.action.CTRL_PRESSED_STATE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "SIDESYNC.action.SHIFT_PRESSED_STATE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "SIDESYNC.action.EXIST_TEXT_BEFORE_CURSOR_STATE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private broadcastEventParser(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSB] broadcastEventParser - action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "com.sec.android.sidesync.source.SIDESYNC_HIDE_SIP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncSourceHideSoftINput(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "com.sec.android.sidesync.source.SET_BINDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncSourceBinder(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.sec.android.sidesync.source.SIDESYNC_INPUT_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncKeyCode(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v1, "com.sec.android.sidesync.source.SIDESYNC_LANGUAGE_ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncLanguageState(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v1, "SIDESYNC.action.INPUT_TEXT_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncInputText(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v1, "SIDESYNC.action.PREDICTIVE_TEXT_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncPredictiveText(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    const-string v1, "SIDESYNC.action.CTRL_PRESSED_STATE_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncCtrlPressedState(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_8
    const-string v1, "SIDESYNC.action.SHIFT_PRESSED_STATE_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncShiftPressedState(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_9
    const-string v1, "SIDESYNC.action.EXIST_TEXT_BEFORE_CURSOR_STATE_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncExistTextBeforeCursorState(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setSideSyncCtrlPressedState(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v1, "SIDESYNC.extra.CTRL_PRESSED_STATE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncCtrlPressedState(Ljava/lang/String;)V

    return-void
.end method

.method private setSideSyncExistTextBeforeCursorState(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v1, "SIDESYNC.extra.EXIST_TEXT_BEFORE_CURSOR_STATE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncExistTextBeforeCursorState(Ljava/lang/String;)V

    return-void
.end method

.method private setSideSyncInputText(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v1, "SIDESYNC.extra.INPUT_TEXT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncInputText(Ljava/lang/String;)V

    return-void
.end method

.method private setSideSyncKeyCode(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v1, "KEY_CODE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncKeyCode(I)V

    return-void
.end method

.method private setSideSyncLanguageState(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v1, "LANGUAGE_ID"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncLanguage(I)V

    return-void
.end method

.method private setSideSyncPredictiveText(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v1, "SIDESYNC.extra.PREDICTIVE_TEXT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncPredictiveText(Ljava/lang/String;)V

    return-void
.end method

.method private setSideSyncShiftPressedState(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v1, "SIDESYNC.extra.SHIFT_PRESSED_STATE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncShiftPressedState(Ljava/lang/String;)V

    return-void
.end method

.method private setSideSyncSourceBinder(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "BINDER"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v2, v1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncSourceBinder(Landroid/os/IBinder;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungIME"

    const-string v3, "[SSB] setSideSyncSourceBinder - extra is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSideSyncSourceHideSoftINput(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncSourceHideSoftINput()V

    return-void
.end method


# virtual methods
.method public getSideSyncMainIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public getSideSyncMainReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method
