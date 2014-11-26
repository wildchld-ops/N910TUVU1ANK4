.class public Lcom/diotek/ime/framework/sidesync/SideSyncManager;
.super Ljava/lang/Object;
.source "SideSyncManager.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/diotek/ime/framework/sidesync/SideSyncManager;


# instance fields
.field private mExistTextBeforeCursor:Z

.field private mGuestInputMode:I

.field private mHostInputMode:I

.field private mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

.field private mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

.field private mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mPreShiftPressed:Z

.field private mShiftState:Z

.field private mSideSyncBinder:Landroid/os/IBinder;

.field private mSideSyncBroadcast:Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sInstance:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-boolean v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mShiftState:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mPreShiftPressed:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mExistTextBeforeCursor:Z

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    :cond_0
    iput-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mSideSyncBinder:Landroid/os/IBinder;

    iput-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    iput-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mHostInputMode:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mGuestInputMode:I

    iput-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    new-instance v0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;

    sget-object v1, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;-><init>(Landroid/content/Context;Lcom/diotek/ime/framework/sidesync/SideSyncManager;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mSideSyncBroadcast:Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;

    return-void
.end method

.method public static getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sInstance:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sInstance:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    return-object v0
.end method

.method private getKeyFromKeycode(I)Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 10
    .param p1    # I

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v6

    const-string v7, "INPUT_LANGUAGE"

    const/high16 v8, 0x656e0000

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    iget-object v7, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/diotek/ime/framework/common/InputManager;->getKeyboardKeyList(Z)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->getCurrentLanguageScriptType(I)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    const/high16 v7, 0x656c0000

    if-eq v2, v7, :cond_0

    const/high16 v7, 0x66720000

    if-eq v2, v7, :cond_0

    const v7, 0x66724652

    if-eq v2, v7, :cond_0

    const v7, 0x66724341

    if-ne v2, v7, :cond_3

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    int-to-char v7, p1

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v0

    :cond_2
    :goto_0
    return-object v5

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v7, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v7, v7, v9

    if-ne v7, p1, :cond_4

    move-object v5, v0

    goto :goto_0
.end method

.method public static isSideSyncSinkConnect()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sidesync_sink_connect"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isSideSyncSourceConnect()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sidesync_tablet_connect"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/sidesync/SideSyncManager;
    .locals 1
    .param p0    # Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sput-object p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sInstance:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sInstance:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    :cond_1
    sget-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sInstance:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    goto :goto_0
.end method

.method private sendExistTextBeforeCursor(Z)V
    .locals 5
    .param p1    # Z

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSM] sendExistTextBeforeCursor - existTextBeforeCursor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    const-string v2, "SIDESYNC.action.EXIST_TEXT_BEFORE_CURSOR_STATE_EVENT"

    const-string v3, "SIDESYNC.extra.EXIST_TEXT_BEFORE_CURSOR_STATE"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;->sendIntentToSink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    const-string v2, "[SSB] sendExistTextBeforeCursor : RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendIntentToSink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSB] sendIntentToSink : key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;->sendIntentToSink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    const-string v2, "[SSB] sendIntentToSink : RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendIntentToSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSB] sendIntentToSource : key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;->sendIntentToSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    const-string v2, "[SSB] sendIntentToSource : RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendKeyCode(I)V
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungIME"

    const-string v2, "[SSM] sendKeyCode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    invoke-interface {v1, p1}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;->sendKeyCode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    const-string v2, "[SSB] sendKeyCode : RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendLangID(I)V
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungIME"

    const-string v2, "[SSM] sendLangID"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    invoke-interface {v1, p1}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;->sendLangID(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    const-string v2, "[SSB] sendLangID : RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendShiftState(Z)V
    .locals 4
    .param p1    # Z

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSM] sendShiftState - shifted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    invoke-interface {v1, p1}, Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;->sendShiftState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    const-string v2, "[SSB] sendShiftState : RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getGuestInputMode()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mGuestInputMode:I

    return v0
.end method

.method public getHostInputMode()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mHostInputMode:I

    return v0
.end method

.method public getSideSyncBroadcast()Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mSideSyncBroadcast:Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;

    return-object v0
.end method

.method public getSideSyncEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getSideSyncExistTextBeforeCursor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mExistTextBeforeCursor:Z

    return v0
.end method

.method public getSideSyncPreShiftPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mPreShiftPressed:Z

    return v0
.end method

.method public getSideSyncShiftState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mShiftState:Z

    return v0
.end method

.method public isSideSyncKeyboardConnected()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v4, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    and-int/lit8 v4, v1, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    and-int/lit8 v4, v1, 0x20

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sidesync_hwkeyboard_connect"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public isSideSyncWorkingOnSink()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    invoke-interface {v2}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;->isSideSyncWorking()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SamsungIME"

    const-string v3, "[SSB] isSideSyncWorkingOnSink : RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSideSyncWorkingOnSource()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    invoke-interface {v2}, Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;->isSideSyncWorking()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SamsungIME"

    const-string v3, "[SSB] isSideSyncWorkingOnSource : RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public movePopupKeyboard(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateKeyboardSideSync(II)V

    :cond_0
    return-void
.end method

.method public sendFloatingKeyboardSize()V
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v6, "floating_keyboard_width"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    float-to-int v5, v6

    :goto_0
    :try_start_1
    const-string v6, "floating_keyboard_height"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    float-to-int v3, v6

    :goto_1
    :try_start_2
    const-string v6, "popup_candidate_view_handler_height"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    float-to-int v4, v6

    :goto_2
    :try_start_3
    const-string v6, "popup_candidate_view_height"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    float-to-int v2, v6

    :goto_3
    iget-object v6, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    if-nez v6, :cond_1

    :cond_0
    :goto_4
    return-void

    :catch_0
    move-exception v1

    const/4 v5, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v3, 0x0

    goto :goto_1

    :catch_2
    move-exception v1

    const/4 v3, 0x0

    goto :goto_2

    :catch_3
    move-exception v1

    const/4 v3, 0x0

    goto :goto_3

    :cond_1
    :try_start_4
    iget-object v6, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    add-int v7, v3, v4

    invoke-interface {v6, v5, v7}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;->returnKeyboardSize(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    sget-boolean v6, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "SamsungIME"

    const-string v7, "[SSM] sendFloatingKeyboardSize"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_4
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "[SSB] sendFloatingKeyboardSize : RemoteException"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public sendSideSyncCtrlPressedState(Z)V
    .locals 3
    .param p1    # Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "[SSM] sendSideSyncCtrlPressedState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "SIDESYNC.action.CTRL_PRESSED_STATE_EVENT"

    const-string v1, "SIDESYNC.extra.CTRL_PRESSED_STATE"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendIntentToSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sendSideSyncEdiorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1    # Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSource()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungIME"

    const-string v3, "[SSM] sendEditorInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SIDESYNC.extra.EDITOR_INFO"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    invoke-interface {v2, v0}, Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;->sendEditorInfo(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SamsungIME"

    const-string v3, "[SSB] sendSideSyncEdiorInfo : RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendSideSyncExistTextBeforeCursor(Z)V
    .locals 1
    .param p1    # Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSource()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendExistTextBeforeCursor(Z)V

    :cond_0
    return-void
.end method

.method public sendSideSyncInputText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "[SSM] sendSideSyncInputText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "SIDESYNC.action.INPUT_TEXT_EVENT"

    const-string v1, "SIDESYNC.extra.INPUT_TEXT"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendIntentToSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sendSideSyncKeyCode(I)V
    .locals 14
    .param p1    # I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {p1}, Lcom/diotek/ime/framework/sidesync/SideSyncUtils;->isThisKeyEnable(I)Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v7, p1

    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v3

    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v9

    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v10

    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v2

    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget v12, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v11, v12, 0xff0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ko"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->getHangleShiftedChar(I)I

    move-result v7

    :goto_1
    invoke-direct {p0, v7}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendKeyCode(I)V

    goto :goto_0

    :pswitch_1
    if-eqz v3, :cond_9

    const-string v12, "INPUT_LANGUAGE"

    const/high16 v13, 0x656e0000

    invoke-interface {v9, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    const/4 v4, 0x0

    const/16 v12, 0xd0

    if-eq v11, v12, :cond_2

    const/16 v12, 0x20

    if-eq v11, v12, :cond_2

    const/16 v12, 0x10

    if-ne v11, v12, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v12

    if-nez v12, :cond_6

    if-eqz v4, :cond_4

    const/16 v7, 0x5f

    goto :goto_1

    :cond_4
    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v7, 0x21

    goto :goto_1

    :cond_5
    const/16 v7, 0x21

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    const/16 v7, 0x2c

    goto :goto_1

    :cond_7
    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v7, 0x60c

    goto :goto_1

    :cond_8
    const/16 v7, 0x2c

    goto :goto_1

    :cond_9
    const-string v12, "INPUT_LANGUAGE"

    const/high16 v13, 0x656e0000

    invoke-interface {v9, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v7, 0x60c

    goto :goto_1

    :cond_a
    const/16 v7, 0x2c

    goto :goto_1

    :pswitch_2
    if-eqz v3, :cond_11

    const-string v12, "INPUT_LANGUAGE"

    const/high16 v13, 0x656e0000

    invoke-interface {v9, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    const/4 v4, 0x0

    const/16 v12, 0xd0

    if-eq v11, v12, :cond_b

    const/16 v12, 0x20

    if-eq v11, v12, :cond_b

    const/16 v12, 0x10

    if-ne v11, v12, :cond_c

    :cond_b
    const/4 v4, 0x1

    :cond_c
    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v12

    if-nez v12, :cond_f

    if-eqz v4, :cond_d

    const/16 v7, 0x2d

    goto/16 :goto_1

    :cond_d
    invoke-static {v6}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v12

    if-eqz v12, :cond_e

    const/16 v7, 0x61f

    goto/16 :goto_1

    :cond_e
    const/16 v7, 0x3f

    goto/16 :goto_1

    :cond_f
    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_10

    const/16 v7, 0x3002

    goto/16 :goto_1

    :cond_10
    const/16 v7, 0x2e

    goto/16 :goto_1

    :cond_11
    const-string v12, "INPUT_LANGUAGE"

    const/high16 v13, 0x656e0000

    invoke-interface {v9, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_12

    const/16 v7, 0x3002

    goto/16 :goto_1

    :cond_12
    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getKeyFromKeycode(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v12, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v12, :cond_13

    iget-object v12, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    goto/16 :goto_1

    :cond_13
    const/16 v7, 0x2e

    goto/16 :goto_1

    :cond_14
    invoke-static {v6}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v12

    if-eqz v12, :cond_15

    const/16 v7, 0x2e

    goto/16 :goto_1

    :cond_15
    const/high16 v12, 0x6b6d0000

    if-ne v6, v12, :cond_17

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v12

    if-eqz v12, :cond_16

    const/16 v7, 0x17d4

    goto/16 :goto_1

    :cond_16
    const/16 v7, 0x2e

    goto/16 :goto_1

    :cond_17
    const v12, 0x7a314d4d

    if-ne v6, v12, :cond_1a

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v8

    if-nez v8, :cond_18

    const/16 v7, 0x104a

    goto/16 :goto_1

    :cond_18
    const/4 v12, 0x2

    if-ne v8, v12, :cond_19

    const/16 v7, 0x104b

    goto/16 :goto_1

    :cond_19
    const/16 v7, 0x2e

    goto/16 :goto_1

    :cond_1a
    const/high16 v12, 0x68690000

    if-eq v6, v12, :cond_1b

    const/high16 v12, 0x626e0000

    if-eq v6, v12, :cond_1b

    const/high16 v12, 0x6d720000

    if-ne v6, v12, :cond_1c

    :cond_1b
    const/16 v7, 0x964

    goto/16 :goto_1

    :cond_1c
    const/16 v7, 0x2e

    goto/16 :goto_1

    :cond_1d
    move v7, p1

    goto/16 :goto_1

    :cond_1e
    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ja"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    move v7, p1

    goto/16 :goto_1

    :cond_1f
    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v12

    if-eqz v12, :cond_20

    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v12

    if-eqz v12, :cond_20

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v7

    :goto_2
    goto/16 :goto_1

    :cond_20
    move v7, p1

    goto :goto_2

    :pswitch_data_0
    .packed-switch -0x7c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public sendSideSyncKeyLanguage(I)V
    .locals 2
    .param p1    # I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "[SSM] sendSideSyncKeyLanguage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendLangID(I)V

    :cond_1
    return-void
.end method

.method public sendSideSyncPredictiveText(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "[SSM] sendSideSyncPredictiveText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "SIDESYNC.action.PREDICTIVE_TEXT_EVENT"

    const-string v1, "SIDESYNC.extra.PREDICTIVE_TEXT"

    invoke-direct {p0, v0, v1, p1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendIntentToSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sendSideSyncShiftPressedState(Z)V
    .locals 3
    .param p1    # Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "[SSM] sendSideSyncShiftPressedState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "SIDESYNC.action.SHIFT_PRESSED_STATE_EVENT"

    const-string v1, "SIDESYNC.extra.SHIFT_PRESSED_STATE"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendIntentToSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sendSideSyncShiftState(Z)V
    .locals 1
    .param p1    # Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSource()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendShiftState(Z)V

    :cond_0
    return-void
.end method

.method public sendSideSyncSinkFloatingKeyboardSize(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "[SSM] sendSideSyncSinkFloatingKeyboardSize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendFloatingKeyboardSize()V

    return-void
.end method

.method public setGuestInputMode(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mGuestInputMode:I

    return-void
.end method

.method public setHostInputMode(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mHostInputMode:I

    return-void
.end method

.method public setSideSyncCtrlPressedState(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "[SSM] setSideSyncCtrlPressedState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    return-void
.end method

.method public setSideSyncEdiorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0
    .param p1    # Landroid/view/inputmethod/EditorInfo;

    iput-object p1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-void
.end method

.method public setSideSyncExistTextBeforeCursorState(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSM] setSideSyncExistTextBeforeCursorState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mExistTextBeforeCursor:Z

    if-eq v1, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mExistTextBeforeCursor:Z

    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKeyboardView()V

    :cond_1
    return-void
.end method

.method public setSideSyncInputText(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "[SSM] setSideSyncInputText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSideSyncKeyCode(I)V
    .locals 2
    .param p1    # I

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "[SSM] setSideSyncKeyCode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->requestHideSelf(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public setSideSyncLanguage(I)V
    .locals 2
    .param p1    # I

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "[SSM] setSideSyncLanguage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->setSideSyncKeyLanguage(I)V

    return-void
.end method

.method public setSideSyncPreShiftPressed(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mPreShiftPressed:Z

    return-void
.end method

.method public setSideSyncPredictiveText(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "[SSM] setSideSyncPredictiveText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->setSideSyncPredictiveText(Ljava/lang/String;)V

    return-void
.end method

.method public setSideSyncShiftPressedState(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "[SSM] setSideSyncShiftPressedState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setSideSyncShiftPressedState(Z)V

    return-void
.end method

.method public setSideSyncShiftState(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->setSideSynShiftState(Z)V

    return-void
.end method

.method public setSideSyncSinkBinder(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "[SSM] setSideSyncSinkBinder"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    const-string v1, "SIDESYNC.bundle.BINDER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mSideSyncBinder:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mSideSyncBinder:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    const-string v2, "[SSB] setSideSyncSinkBinder : NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSideSyncSinkEditorInfo(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungIME"

    const-string v3, "[SSM] setSideSyncSinkEditorInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    const-string v2, "SIDESYNC.bundle.EDITOR_INFO"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncEdiorInfo(Landroid/view/inputmethod/EditorInfo;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SamsungIME"

    const-string v3, "[SSB] setSideSyncSinkEditorInfo : NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSideSyncSinkFloatingKeyboardPostion(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungIME"

    const-string v4, "[SSM] setSideSyncSinkFloatingKeyboardPostion"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    const-string v3, "SIDESYNC.bundle.POSITION_X"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "SIDESYNC.bundle.POSITION_Y"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->movePopupKeyboard(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "SamsungIME"

    const-string v4, "[SSB] setSideSyncSinkFloatingKeyboardPostion : NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSideSyncSinkShiftState(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v4, 0x0

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSM] setSideSyncSinkShiftState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIDESYNC.bundle.SHIFT_STATE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    const-string v1, "SIDESYNC.bundle.SHIFT_STATE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mShiftState:Z

    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getShiftState()Z

    move-result v1

    iget-boolean v2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mShiftState:Z

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ko"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mShiftState:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungIME"

    const-string v2, "[SSM] setSideSyncSinkShiftState : this method would be skipped in kor if mShiftState is true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mShiftState:Z

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncShiftState(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    const-string v2, "[SSB] setSideSyncSinkShiftState : NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSideSyncSourceBinder(Landroid/os/IBinder;)V
    .locals 2
    .param p1    # Landroid/os/IBinder;

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "[SSM] setSideSyncSourceBinder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mSideSyncBinder:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mSideSyncBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    return-void
.end method

.method public setSideSyncSourceHideSoftINput()V
    .locals 2

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "[SSM] setSideSyncSourceHideSoftINput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->requestHideSelf(I)V

    return-void
.end method

.method public showSideSyncSoftInput()V
    .locals 3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSource()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "[SSM] showSideSyncSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.sidesync.source.SHOW_SIP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
