.class Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
.super Lcom/android/internal/util/StateMachine;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LppFusionSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;,
        Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;
    }
.end annotation


# instance fields
.field private mIdleState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

.field private mWaitLocState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;

.field final synthetic this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;


# direct methods
.method protected constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mWaitLocState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;

    const-string v0, "LppFusion"

    const-string v1, "Creating State Machine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->addState(Lcom/android/internal/util/State;)V

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mWaitLocState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mWaitLocState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;

    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mWaitLocState:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->goToSleep()V

    return-void
.end method

.method private goToSleep()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "LppFusion"

    const-string v1, "goToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1800(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->smHasMessages()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_SLEEP:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->addQ(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;)V
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1900(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private smHasMessages()Z
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_LIST_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_IN_BATCH_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public exit()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->quit()V

    return-void
.end method
