.class Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
.super Lcom/android/internal/util/StateMachine;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LppLocManSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;
    }
.end annotation


# instance fields
.field private firstTimeGps:Z

.field private mAllNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

.field private mGpsBatch:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

.field private mIndoor:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;

.field private mOutdoor:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;

.field private mRestricted:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;

.field private mStatNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

.field private mVehNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

.field private mWalkNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

.field final synthetic this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;


# direct methods
.method protected constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mStatNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mWalkNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mVehNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mIndoor:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mOutdoor:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mGpsBatch:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mRestricted:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->firstTimeGps:Z

    const-string v0, "LppLocationManager"

    const-string v1, "Creating State Machine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mStatNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mStatNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mWalkNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mWalkNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mIndoor:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mIndoor:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mOutdoor:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mOutdoor:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mVehNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mVehNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mGpsBatch:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mGpsBatch:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mRestricted:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mRestricted:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mStatNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2000(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->firstTimeGps:Z

    return v0
.end method

.method static synthetic access$2002(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->firstTimeGps:Z

    return p1
.end method

.method static synthetic access$2400(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->exit()V

    return-void
.end method

.method static synthetic access$2600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mOutdoor:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Z
    .locals 1

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->isWifiAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mIndoor:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mRestricted:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4000(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4400(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mWalkNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mGpsBatch:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    return-object v0
.end method

.method static synthetic access$5100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6000(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mVehNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/android/internal/util/IState;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->getState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mStatNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    return-object v0
.end method

.method private exit()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->quit()V

    return-void
.end method

.method private getState()Lcom/android/internal/util/IState;
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method private isWifiAvailable()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
