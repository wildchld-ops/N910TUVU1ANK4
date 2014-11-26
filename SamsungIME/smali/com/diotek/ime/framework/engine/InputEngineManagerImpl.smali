.class public final Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;
.super Ljava/lang/Object;
.source "InputEngineManagerImpl.java"

# interfaces
.implements Lcom/diotek/ime/framework/engine/InputEngineManager;


# static fields
.field private static final ENGINE_TYPE_CANDIDATE:I = 0x1

.field private static final ENGINE_TYPE_MAX:I = 0x2

.field private static final ENGINE_TYPE_RECOGNITION:I

.field private static sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;


# instance fields
.field private mCurrentEngineIndex:I

.field private mCurrentHWInputEngineIndex:I

.field private mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    check-cast v0, [[Lcom/diotek/ime/framework/engine/InputEngine;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iput v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    iput v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    invoke-static {}, Lcom/diotek/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-void
.end method

.method public static getInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;
    .locals 2

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-nez v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "Engine manager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;

    return-object v0
.end method

.method public static newInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;

    return-object v0
.end method


# virtual methods
.method public DLMAddWord([CS)S
    .locals 3
    .param p1    # [C
    .param p2    # S

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->DLMAddWord([CS)S

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public VOHWRCommitAndInit(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->CommitAndInitText(I)V

    :cond_0
    return-void
.end method

.method public VOHWRSetChangeMode(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->SetChangeMode(II)V

    :cond_0
    return-void
.end method

.method public VOHWRSetInsertMode(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->SetInsertMode(II)V

    :cond_0
    return-void
.end method

.method public VOHWRaddTextToHWRPanel(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->addTextToHWRPanel(Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public VOHWRappendText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->appendText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public addMyWord(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->addMyWord(Ljava/lang/CharSequence;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public breakContext()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->breakContext()V

    :cond_0
    return-void
.end method

.method public breakCurrentWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->breakCurrentWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelTrace()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->cancelTrace()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public checkChineseSequence()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->checkChineseSequence()V

    :cond_0
    return-void
.end method

.method public checkCurrentSequence(Ljava/lang/StringBuilder;[I[I)V
    .locals 3
    .param p1    # Ljava/lang/StringBuilder;
    .param p2    # [I
    .param p3    # [I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/InputEngine;->checkCurrentSequence(Ljava/lang/StringBuilder;[I[I)V

    :cond_0
    return-void
.end method

.method public checkJapaneseSequence()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->checkJapaneseSequence()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearContext()I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->clearContext()I

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->clearContext()I

    :cond_1
    return v2
.end method

.method public clearContextForHwKeyboard()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->clearContext()I

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->clearContext()I

    :cond_1
    return-void
.end method

.method public clearInkContext()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->clearInkContext()I

    :cond_0
    return v2
.end method

.method public convetCangjieSpell()Ljava/lang/CharSequence;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->convetCangjieSpell()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createInputEngineArray(I)Z
    .locals 2
    .param p1    # I

    if-gtz p1, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "Module array creating fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    filled-new-array {p1, v0}, [I

    move-result-object v0

    const-class v1, Lcom/diotek/ime/framework/engine/InputEngine;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/diotek/ime/framework/engine/InputEngine;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteWordFromLDB([CS)S
    .locals 3
    .param p1    # [C
    .param p2    # S

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->deleteWordFromLDB([CS)S

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public doNextWordPredictionForXt9(Z)I
    .locals 3
    .param p1    # Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->doNextWordPredictionForXt9(Z)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public doNoteWordDoneForXt9(I)I
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->doNoteWordDoneForXt9(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public doNoteWordDoneForXt9WithoutIndex(I)I
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->doNoteWordDoneForXt9WithoutIndex(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public doRecaptureForXt9(Ljava/lang/String;SZ)I
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # S
    .param p3    # Z

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/InputEngine;->doRecaptureForXt9(Ljava/lang/String;SZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public doResetMultitap()I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->doResetMultitap()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public findWordFromDLM([CS)Z
    .locals 3
    .param p1    # [C
    .param p2    # S

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->findWordFromDLM([CS)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public findWordInUDB(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->findWordInUDB(Ljava/lang/CharSequence;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public freeResources()I
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, v0

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, v0

    aget-object v1, v1, v3

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngine;->freeResources()I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, v0

    aput-object v2, v1, v3

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, v0

    aget-object v1, v1, v4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, v0

    aget-object v1, v1, v4

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngine;->freeResources()I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, v0

    aput-object v2, v1, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v2

    check-cast v1, [[Lcom/diotek/ime/framework/engine/InputEngine;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    sget-object v1, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v1, :cond_3

    sput-object v2, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;

    :cond_3
    return v3
.end method

.method public fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveIndex([I)I
    .locals 3
    .param p1    # [I

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getActiveIndex([I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAvailableLanguages(I)Ljava/util/List;
    .locals 3
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngine;->getAvailableLanguages()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    const-string v2, "InputEngineManagerImpl.getAvailableLanguages() IndexOutOfBoundsException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBestCandidate()Ljava/lang/CharSequence;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getBestCandidate()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getChar(C)I
    .locals 3
    .param p1    # C

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getChar(C)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;)I
    .locals 3
    .param p1    # Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getCharSequence(Ljava/lang/StringBuilder;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;I)I
    .locals 3
    .param p1    # Ljava/lang/StringBuilder;
    .param p2    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->getCharSequence(Ljava/lang/StringBuilder;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCharSequenceForHwKeyboard(Ljava/lang/StringBuilder;)I
    .locals 3
    .param p1    # Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getCharSequence(Ljava/lang/StringBuilder;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getChineseWordCandidate(Ljava/util/ArrayList;I)I
    .locals 3
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)I"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->getChineseWordCandidate(Ljava/util/ArrayList;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getContextAwareUniqueID()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getContextAwareUniqueID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentEngineIndex()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    return v0
.end method

.method public getCurrentInputBuffer(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1    # Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getCurrentInputBuffer(Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public getCurrentWord()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getCurrentWord()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getExactCharSequence(Ljava/lang/StringBuilder;)I
    .locals 3
    .param p1    # Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getHwrSuggestion(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getHwrSuggestion(Ljava/util/ArrayList;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getInputLanguageId()S
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getInputLanguageId()S

    move-result v0

    :cond_0
    return v0
.end method

.method public getInputSequenceCount()I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getInputSequenceCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getInputTransResult()Ljava/lang/CharSequence;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInstallableLanguages(I)Ljava/util/List;
    .locals 3
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngine;->getInstallableLanguages()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    const-string v2, "InputEngineManagerImpl.getInstallableLanguages() IndexOutOfBoundsException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeyPositionByTap(II)I
    .locals 3
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->getKeyPositionByTap(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getKeyPositions([Landroid/graphics/Rect;)I
    .locals 3
    .param p1    # [Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getKeyPositions([Landroid/graphics/Rect;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMultiTapSequence(I)Ljava/lang/StringBuilder;
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getMultiTapSequence(I)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneticSpellGroup(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSuggestion(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, v2}, Lcom/diotek/ime/framework/engine/InputEngine;->getSuggestion(Ljava/util/ArrayList;Z)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSuggestion(Ljava/util/ArrayList;Z)I
    .locals 3
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->getSuggestion(Ljava/util/ArrayList;Z)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSuggestionActiveIndex()I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v2, v2, v3

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v0, v2, [I

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v2, v2, v3

    aget-object v2, v2, v1

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getActiveIndex([I)I

    aget v1, v0, v1

    :cond_0
    return v1
.end method

.method public getSuggestionCount()I
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v2, v2, v3

    aget-object v2, v2, v4

    if-eqz v2, :cond_0

    new-array v0, v4, [I

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v2, v2, v3

    aget-object v2, v2, v4

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getSuggestionCount([I)I

    aget v1, v0, v1

    :cond_0
    return v1
.end method

.method public getSuggestionForSwiftkey(Ljava/util/ArrayList;Z)V
    .locals 3
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->getSuggestionForSwiftkey(Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method public getSwiftKeyHangulCharSequenceHwKeyboard(ILjava/lang/StringBuilder;)V
    .locals 3
    .param p1    # I
    .param p2    # Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->getSwiftKeyHangulCharSequenceHwKeyboard(ILjava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public getVerbatim()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getVerbatim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXt9AutoReplacementCondition()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getXt9AutoReplacementCondition()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public getXt9LanguageId(I)I
    .locals 5
    .param p1    # I

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "XT9_VERSION"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v2, v2, v0

    aget-object v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v2, v2, v0

    aget-object v2, v2, v4

    invoke-interface {v2, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getXt9LanguageId(I)I

    move-result v2

    :goto_1
    return v2

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getXt9Version()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getXt9Version()I

    move-result v0

    :cond_0
    return v0
.end method

.method public halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputSequence()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->hasInputSequence()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initHwrPanel(Landroid/widget/FrameLayout;I)V
    .locals 3
    .param p1    # Landroid/widget/FrameLayout;
    .param p2    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->initHwrPanel(Landroid/widget/FrameLayout;I)V

    :cond_0
    return-void
.end method

.method public inputCharSequence(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->inputCharSequence(Ljava/lang/CharSequence;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inputKey(I)I
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->inputKey(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inputKey(ILandroid/graphics/PointF;)I
    .locals 3
    .param p1    # I
    .param p2    # Landroid/graphics/PointF;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->inputKey(ILandroid/graphics/PointF;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inputKeyForHwKeyboard(I)I
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->inputKey(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inputKeyWithoutBuild(I)I
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->inputKeyWithoutBuild(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inputKeyWithoutBuild(ILandroid/graphics/PointF;)I
    .locals 3
    .param p1    # I
    .param p2    # Landroid/graphics/PointF;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->inputKeyWithoutBuild(ILandroid/graphics/PointF;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inputString(Ljava/lang/StringBuilder;)I
    .locals 3
    .param p1    # Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->inputString(Ljava/lang/StringBuilder;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inputStrokeData(III)Z
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/InputEngine;->inputStrokeData(III)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isAutoAcceptBeforeStoredTrace([Z[Z)S
    .locals 3
    .param p1    # [Z
    .param p2    # [Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->isAutoAcceptBeforeStoredTrace([Z[Z)S

    move-result v0

    :cond_0
    return v0
.end method

.method public isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z
    .locals 3
    .param p1    # [Landroid/graphics/PointF;
    .param p2    # I
    .param p3    # [Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/InputEngine;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isContainInLanguageDB(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->isContainInLanguageDB(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEmojiLMLoaded()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngine;->isEmojiLMLoaded()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isNumericCharacter(I)Z
    .locals 3
    .param p1    # I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->isNumericCharacter(I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isSentenceTermPunct(I)Z
    .locals 3
    .param p1    # I

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->isSentenceTermPunct(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSentenceTermPunct(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->isSentenceTermPunct(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextCharacter(I)Z
    .locals 3
    .param p1    # I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->isTextCharacter(I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isTextCharacterForHwKeyboard(I)Z
    .locals 3
    .param p1    # I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->isTextCharacter(I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isTreatedAsLetter(I)Z
    .locals 3
    .param p1    # I

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->isTreatedAsLetter(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public joinChunjiin(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public joinHangul(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public joinNaragul(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->joinNaragul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public learnSequence(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->learnSequence(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public learnTempSuggestion(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->learnTempSuggestion(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->learnTempSuggestion(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public moveTrace(FFJ)V
    .locals 3
    .param p1    # F
    .param p2    # F
    .param p3    # J

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/engine/InputEngine;->moveTrace(FFJ)V

    :cond_0
    return-void
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)I
    .locals 3
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->onHwrPanelLongPressed(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public processStoredTrace(B)S
    .locals 3
    .param p1    # B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->processStoredTrace(B)S

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public processTrace([Landroid/graphics/PointF;I[JBZ)S
    .locals 6
    .param p1    # [Landroid/graphics/PointF;
    .param p2    # I
    .param p3    # [J
    .param p4    # B
    .param p5    # Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/InputEngine;->processTrace([Landroid/graphics/PointF;I[JBZ)S

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public processWhenPickSuggestionManually(I)I
    .locals 5
    .param p1    # I

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->processWhenPickSuggestionManually(I)I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v2, v2, v3

    aget-object v2, v2, v4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v4

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->processWhenPickSuggestionManually(I)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public recognize(IZ)I
    .locals 3
    .param p1    # I
    .param p2    # Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->recognize(IZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public reflashSelectList()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->reflashSelectList()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public refreshContextBuffer(Z)I
    .locals 3
    .param p1    # Z

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->refreshContextBuffer(Z)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public refreshContextBuffer(ZZ)I
    .locals 3
    .param p1    # Z
    .param p2    # Z

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->refreshContextBuffer(ZZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public release()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->release()V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->release()V

    :cond_1
    return-void
.end method

.method public releaseTrace(FFJ)V
    .locals 3
    .param p1    # F
    .param p2    # F
    .param p3    # J

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/engine/InputEngine;->releaseTrace(FFJ)V

    :cond_0
    return-void
.end method

.method public removeCurrentTermFromTemporaryModel()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->removeCurrentTermFromTemporaryModel()V

    :cond_0
    return-void
.end method

.method public removeTerm(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->removeTerm(I)V

    :cond_0
    return-void
.end method

.method public replaceKey(ILandroid/graphics/PointF;)I
    .locals 3
    .param p1    # I
    .param p2    # Landroid/graphics/PointF;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->replaceKey(ILandroid/graphics/PointF;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public resetDLMData()S
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->resetDLMData()S

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public resetTextFieldState()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->resetTextFieldState()V

    :cond_0
    return-void
.end method

.method public romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActiveWordStatusChangable(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setActiveWordStatusChangable(Z)V

    :cond_0
    return-void
.end method

.method public setChineseFuzzyPinyin()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->setChineseFuzzyPinyin()V

    :cond_0
    return-void
.end method

.method public setChinesePhoneticIndex(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setChinesePhoneticIndex(I)V

    :cond_0
    return-void
.end method

.method public setContextAwareUniqueID(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setContextAwareUniqueID(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCurrentEngineIndex(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/InputEngine;->initHwrPanel(Landroid/widget/FrameLayout;I)V

    :cond_0
    iput p1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    :cond_1
    return-void
.end method

.method public setEmojiPredictionEnabled(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setEmojiPredictionEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setFieldSpecificType(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setFieldSpecificType(I)V

    :cond_0
    return-void
.end method

.method public setHWInputEngineIndex(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1    # Landroid/os/Handler;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setHandler(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public setHwrPanelRect(IIII)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/engine/InputEngine;->setHwrPanelRect(IIII)V

    :cond_0
    return-void
.end method

.method public setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z
    .locals 3
    .param p1    # I
    .param p2    # Lcom/diotek/ime/framework/engine/InputEngine;
    .param p3    # Lcom/diotek/ime/framework/engine/InputEngine;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    array-length v2, v2

    if-gt v2, p1, :cond_1

    :cond_0
    const-string v0, "SamsungIME"

    const-string v2, "Input engine setting fail!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v2, v2, p1

    aput-object p2, v2, v1

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v2, v2, p1

    aget-object v1, v2, v1

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngine;->init()I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, p1

    aput-object p3, v1, v0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, p1

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngine;->init()I

    goto :goto_0
.end method

.method public setInputEngineWithoutInit(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z
    .locals 3
    .param p1    # I
    .param p2    # Lcom/diotek/ime/framework/engine/InputEngine;
    .param p3    # Lcom/diotek/ime/framework/engine/InputEngine;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    array-length v2, v2

    if-gt v2, p1, :cond_1

    :cond_0
    const-string v0, "SamsungIME"

    const-string v2, "Input engine setting fail!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v2, v2, p1

    aput-object p2, v2, v1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, p1

    aput-object p3, v1, v0

    goto :goto_0
.end method

.method public setIntentionalEvent(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setIntentionalEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIsPrivateImeOptionsCSC(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setIsPrivateImeOptionsCSC(Z)V

    :cond_0
    return-void
.end method

.method public setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V
    .locals 3
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    :cond_0
    return-void
.end method

.method public setKeyboardSize(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->setKeyboardSize(II)V

    :cond_0
    return-void
.end method

.method public setOnInputStrokeCallback(Lcom/diotek/ime/framework/engine/dhwr/AddStroke;)V
    .locals 3
    .param p1    # Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setOnInputStrokeCallback(Lcom/diotek/ime/framework/engine/dhwr/AddStroke;)V

    :cond_0
    return-void
.end method

.method public setOptionsByState()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->setOptionsByState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setParameterForCapsLockState(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setParameterForCapsLockState(Z)V

    :cond_0
    return-void
.end method

.method public setSuggestionActiveIndex(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setActiveIndex(I)V

    :cond_0
    return-void
.end method

.method public setVerbatim(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setVerbatim(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVerbatirmsInPrediction(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setVerbatirmsInPrediction(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setXt9AutoReplacementCondition(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setXt9AutoReplacementCondition(Z)V

    :cond_0
    return-void
.end method

.method public splitHangul(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startTrace(FFJ)V
    .locals 3
    .param p1    # F
    .param p2    # F
    .param p3    # J

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/engine/InputEngine;->startTrace(FFJ)V

    :cond_0
    return-void
.end method

.method public trimSwiftkeyMemory()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->trimSwiftkeyMemory()V

    :cond_0
    return-void
.end method

.method public updateAcuteAccentState(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->updateAcuteAccentState(Z)V

    :cond_0
    return-void
.end method

.method public updateEngine()I
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    :try_start_0
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngine;->updateEngine()I

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngine;->clearContext()I

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3, v1}, Lcom/diotek/ime/framework/engine/InputEngine;->setUsingLanguage(I)I

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngine;->updateShiftState()V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngine;->setOptionsByState()I

    :cond_0
    iget v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngine;->updateEngine()I

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngine;->clearContext()I

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3, v1}, Lcom/diotek/ime/framework/engine/InputEngine;->setUsingLanguage(I)I

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngine;->updateShiftState()V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngine;->setOptionsByState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v6

    :catch_0
    move-exception v0

    const-string v3, "InputEngineManagerImpl"

    const-string v4, "InputEngineManagerImpl.updateEngine(): Reached in exception , Returned zero"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p2    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public updateLdbList()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->ldbUpdate()V

    :cond_0
    return-void
.end method

.method public updateLdbListDelete(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->deleteLdb(I)V

    :cond_0
    return-void
.end method

.method public updateSelectList()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->updateSelectList()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateShiftState()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->updateShiftState()V

    :cond_0
    return-void
.end method

.method public wordSelected(ILjava/lang/CharSequence;)I
    .locals 5
    .param p1    # I
    .param p2    # Ljava/lang/CharSequence;

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->wordSelected(ILjava/lang/CharSequence;)I

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public writeDBdataToFileOnFinishInput()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->writeDBdataToFileOnFinishInput()V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->writeDBdataToFileOnFinishInput()V

    :cond_0
    return-void
.end method

.method public writeWordToDLM([CIIZZ)S
    .locals 6
    .param p1    # [C
    .param p2    # I
    .param p3    # I
    .param p4    # Z
    .param p5    # Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/InputEngine;->writeWordToDLM([CIIZZ)S

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
