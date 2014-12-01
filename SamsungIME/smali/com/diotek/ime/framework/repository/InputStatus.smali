.class public Lcom/diotek/ime/framework/repository/InputStatus;
.super Ljava/lang/Object;
.source "InputStatus.java"


# static fields
.field public static INPUT_PROCESS_KEY:I

.field public static INPUT_PROCESS_TOUCH:I

.field private static sInstance:Lcom/diotek/ime/framework/repository/InputStatus;


# instance fields
.field private inputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mHangulDeleteLength:I

.field private mInputNumberOnComposing:Z

.field private mIsCjiTurboKeyLongpress:Z

.field private mIsComposedByRecapturing:Z

.field private mIsEnableTrace:Z

.field private mIsHwKeyInput:Z

.field private mIsKNOXStatus:Z

.field private mIsKeyLongpressed:Z

.field private mIsNoEmoticon:Z

.field private mIsPhonepadPopupNumberInput:Z

.field private mLastInputProcess:I

.field private repository:Lcom/diotek/ime/framework/repository/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/diotek/ime/framework/repository/InputStatus;->INPUT_PROCESS_TOUCH:I

    const/4 v0, 0x1

    sput v0, Lcom/diotek/ime/framework/repository/InputStatus;->INPUT_PROCESS_KEY:I

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsEnableTrace:Z

    sget v0, Lcom/diotek/ime/framework/repository/InputStatus;->INPUT_PROCESS_TOUCH:I

    iput v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mLastInputProcess:I

    iput-object v1, p0, Lcom/diotek/ime/framework/repository/InputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    return-void
.end method

.method public static getHangulDeleteLength()I
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mHangulDeleteLength:I

    return v0
.end method

.method public static getLastInputProcess()I
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mLastInputProcess:I

    return v0
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mInputNumberOnComposing:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "IS_HW_KEY_INPUT"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsHwKeyInput:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "PHONE_POPUP_NUMBER_INPUT"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsPhonepadPopupNumberInput:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "IS_RECAPTURING"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsComposedByRecapturing:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "IS_KEY_LONGPRESS"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsKeyLongpressed:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "HANGUL_DELETE_LENGTH"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mHangulDeleteLength:I

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "IS_CJI_TURBO_KEY_LONGPRESS"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsCjiTurboKeyLongpress:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "KEY_IS_NO_EMOTICON_MODE"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsNoEmoticon:Z

    :cond_0
    return-void
.end method

.method private initailize()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/repository/InputStatus;->init()V

    :cond_1
    return-void
.end method

.method public static isCjiTurboKeyLongpress()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsCjiTurboKeyLongpress:Z

    return v0
.end method

.method public static isComposedByRecapturing()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsComposedByRecapturing:Z

    return v0
.end method

.method public static isEnableTrace()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsEnableTrace:Z

    return v0
.end method

.method public static isHwKeyInput()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsHwKeyInput:Z

    return v0
.end method

.method public static isInputNumberOnComposing()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mInputNumberOnComposing:Z

    return v0
.end method

.method public static isKNOXStatus()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsKNOXStatus:Z

    return v0
.end method

.method public static isKeyLongpressed()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsKeyLongpressed:Z

    return v0
.end method

.method public static isNoEmoticonInput()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsNoEmoticon:Z

    return v0
.end method

.method public static isPhonepadPopupNumberInput()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsPhonepadPopupNumberInput:Z

    return v0
.end method

.method public static setEnableTrace(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsEnableTrace:Z

    return-void
.end method

.method public static setFlagCjiTurboKeyLongpress(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsCjiTurboKeyLongpress:Z

    return-void
.end method

.method public static setFlagComposedByRecapturing(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsComposedByRecapturing:Z

    return-void
.end method

.method public static setFlagHwKeyInput(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsHwKeyInput:Z

    return-void
.end method

.method public static setFlagInputNumberOnComposing(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mInputNumberOnComposing:Z

    return-void
.end method

.method public static setFlagKeyLongpressed(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsKeyLongpressed:Z

    return-void
.end method

.method public static setFlagPhonepadPopupNumberInput(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsPhonepadPopupNumberInput:Z

    return-void
.end method

.method public static setHangulDeleteLength(I)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mHangulDeleteLength:I

    return-void
.end method

.method public static setKNOXStatus(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsKNOXStatus:Z

    return-void
.end method

.method public static setLastInputProcess(I)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mLastInputProcess:I

    return-void
.end method

.method public static setNoEmoticonInput(Z)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsNoEmoticon:Z

    return-void
.end method
