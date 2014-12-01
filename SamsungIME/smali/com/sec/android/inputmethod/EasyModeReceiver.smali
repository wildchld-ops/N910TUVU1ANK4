.class public Lcom/sec/android/inputmethod/EasyModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EasyModeReceiver.java"


# static fields
.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_EASY_MODE:Ljava/lang/String; = "com.android.launcher.action.EASY_MODE_CHANGE"

.field private static mIsEasyMode:Z


# instance fields
.field private DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final extendRatio:F

.field private mContext:Landroid/content/Context;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private final normalRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mIsEasyMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->DEBUG:Z

    const-string v0, "EasyModeReceiver"

    iput-object v0, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->TAG:Ljava/lang/String;

    const/high16 v0, 0x3fc00000

    iput v0, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->extendRatio:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->normalRatio:F

    iput-object v1, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    return-void
.end method

.method private printModeValue()V
    .locals 2

    sget-boolean v0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mIsEasyMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "EasyModeReceiver"

    const-string v1, "Easy Mode On"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "EasyModeReceiver"

    const-string v1, "Easy Mode Off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMultiModalMode(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "EasyModeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set LastUsed MM Key Code as : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v5, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    :cond_2
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p1}, Lcom/diotek/ime/framework/common/EasyMode;->isDeviceEasyModeOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    sput-boolean v9, Lcom/sec/android/inputmethod/EasyModeReceiver;->mIsEasyMode:Z

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "EasyModeReceiver"

    const-string v6, "EasyMode  set SamsungIME as EasyMode On"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v9}, Lcom/diotek/ime/framework/common/EasyMode;->setEasyModeStatus(Z)V

    invoke-direct {p0, v10}, Lcom/sec/android/inputmethod/EasyModeReceiver;->setMultiModalMode(I)V

    iget-object v5, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v1}, Lcom/diotek/ime/framework/common/InputManager;->changeToNormalKeyboardModeForEasyMode(I)V

    :goto_1
    iget-boolean v5, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->DEBUG:Z

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/sec/android/inputmethod/EasyModeReceiver;->printModeValue()V

    goto :goto_0

    :cond_4
    sput-boolean v8, Lcom/sec/android/inputmethod/EasyModeReceiver;->mIsEasyMode:Z

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "EasyModeReceiver"

    const-string v6, "EasyMode  set SamsungIME as EasyMode Off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v8}, Lcom/diotek/ime/framework/common/EasyMode;->setEasyModeStatus(Z)V

    iget-object v5, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v1}, Lcom/diotek/ime/framework/common/InputManager;->changeToFloatingKeyboardModeForEasyMode(I)V

    goto :goto_1

    :cond_6
    const-string v5, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "easymode"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "easymode_from"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "settings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "EasyModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Easy Mode Received from Bundle : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sput-boolean v3, Lcom/sec/android/inputmethod/EasyModeReceiver;->mIsEasyMode:Z

    if-ne v3, v9, :cond_9

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "EasyModeReceiver"

    const-string v6, "EasyMode  set SamsungIME as EasyMode On (by EasyMode Intent)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {v9}, Lcom/diotek/ime/framework/common/EasyMode;->setEasyModeStatus(Z)V

    invoke-direct {p0, v10}, Lcom/sec/android/inputmethod/EasyModeReceiver;->setMultiModalMode(I)V

    iget-object v5, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v1}, Lcom/diotek/ime/framework/common/InputManager;->changeToNormalKeyboardModeForEasyMode(I)V

    :goto_2
    iget-boolean v5, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->DEBUG:Z

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/sec/android/inputmethod/EasyModeReceiver;->printModeValue()V

    goto/16 :goto_0

    :cond_9
    iget-boolean v5, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string v5, "EasyModeReceiver"

    const-string v6, "EasyMode  set SamsungIME as EasyMode Off (By EasyMode Intent)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {v8}, Lcom/diotek/ime/framework/common/EasyMode;->setEasyModeStatus(Z)V

    iget-object v5, p0, Lcom/sec/android/inputmethod/EasyModeReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v1}, Lcom/diotek/ime/framework/common/InputManager;->changeToFloatingKeyboardModeForEasyMode(I)V

    goto :goto_2
.end method
