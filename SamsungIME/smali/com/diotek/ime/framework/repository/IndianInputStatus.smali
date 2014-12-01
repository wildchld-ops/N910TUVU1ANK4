.class public Lcom/diotek/ime/framework/repository/IndianInputStatus;
.super Ljava/lang/Object;
.source "IndianInputStatus.java"


# static fields
.field private static sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;


# instance fields
.field private inputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mCombinationAvailable:Z

.field private mIsLowEnd:Z

.field private mUseToggleIndianConsonant:Z

.field private mUseToggleIndianConsonantLongpress:Z

.field private mUseToggleIndianVoMatra:Z

.field private mVowelRowMax:I

.field private mVowelRowShifted:Z

.field private mVowelRowState:I

.field private repository:Lcom/diotek/ime/framework/repository/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    return-void
.end method

.method public static declared-synchronized IsLowEnd()Z
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mIsLowEnd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getVowelRowMax()I
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getVowelRowState()I
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "VOWEL_ROW_STATE"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowState:I

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "VOWEL_ROW_SHIFTED"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowShifted:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "VOWEL_ROW_MAX"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowMax:I

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "IS_LOW_END"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mIsLowEnd:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_TOGGLE_INDIAN_CONSONANT"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianConsonant:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_TOGGLE_INDIAN_CONSONANT_LONGPRESS"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianConsonantLongpress:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "KEY_USE_TOGGLE_INDIAN_VO_MATRA"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianVoMatra:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "KEY_COMBINATION"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mCombinationAvailable:Z

    :cond_0
    return-void
.end method

.method private initailize()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->init()V

    :cond_1
    return-void
.end method

.method public static declared-synchronized isCombinationAvailable()Z
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mCombinationAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isToggleIndianConsonantAvailable()Z
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianConsonant:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isToggleIndianConsonantLongpressAvailable()Z
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianConsonantLongpress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isToggleIndianVoMatraAvailable()Z
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianVoMatra:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isVowelRowShifted()Z
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowShifted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setCombinationAvailable(Z)V
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mCombinationAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setLowEndFlag(Z)V
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mIsLowEnd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setToggleIndianConsonantAvailable(Z)V
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianConsonant:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setToggleIndianConsonantLongpressAvailable(Z)V
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianConsonantLongpress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setToggleIndianVoMatraAvailable(Z)V
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianVoMatra:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setVowelRowMax(I)V
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setVowelRowShifted(Z)V
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowShifted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setVowelRowState(I)V
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
