.class Landroid/net/wifi/WifiStateMachine$WifiMobility;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiMobility"
.end annotation


# instance fields
.field mAddNextWithoutCheck:Z

.field private mBlockNetID:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockNetSSID:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockNetTime:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEAPGeneral:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEAPSSID:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEAPTemporar:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mIgnorableId:Ljava/lang/Integer;

.field private mLastSSID:Ljava/lang/String;

.field private mSSID:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTime:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mUnBlockTimer:Ljava/util/Timer;

.field private mnetID:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 2

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    # getter for: Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TO_STORE:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    # getter for: Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TO_STORE:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mTime:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    # getter for: Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TO_STORE:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mnetID:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    # getter for: Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_BLOCK_MAX:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$500()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    # getter for: Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_BLOCK_MAX:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$500()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    # getter for: Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_BLOCK_MAX:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$500()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetID:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    # getter for: Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TO_STORE:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    # getter for: Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TO_STORE:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    # getter for: Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TO_STORE:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mAddNextWithoutCheck:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mUnBlockTimer:Ljava/util/Timer;

    const/16 v0, 0x3e7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mIgnorableId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public addEAP(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_0
    :goto_0
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiMobilityEAP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added newnetwork tempor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " general: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_4
    :goto_2
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "WifiMobilityEAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network upgraded tempor:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " general: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_2
.end method

.method public addNetwork(Ljava/lang/String;Ljava/lang/Long;I)V
    .locals 3

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TO_STORE:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mTime:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mnetID:Ljava/util/Vector;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiMobility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with mTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " net id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mTime:Ljava/util/Vector;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mTime:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mnetID:Ljava/util/Vector;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mnetID:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mTime:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mnetID:Ljava/util/Vector;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiMobility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with mTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " net id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkBlockedNetworks()V
    .locals 7

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "WifiMobility"

    const-string v4, " -+- Checking networks blocks -+-"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v0, v3

    sget v5, Landroid/net/wifi/WifiStateMachine;->WIFI_HIGHMOBILITY:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "WifiMobility"

    const-string v4, "Network is still blocked, doing nothing"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v4, "WifiMobility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " -+- Network unlocked -+- "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v4

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetID:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetID:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mUnBlockTimer:Ljava/util/Timer;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->stopTimer()V

    :cond_5
    return-void
.end method

.method public checkNetworkIsMobile(Ljava/lang/String;Ljava/lang/Long;I)Z
    .locals 12

    const/4 v3, -0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_c

    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mAddNextWithoutCheck:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mAddNextWithoutCheck:Z

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "WifiMobility"

    const-string v8, "... On demand - network was added without checking ..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_3

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "WifiMobility"

    const-string v8, " --- Trying to seek network in blocked list ---"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v4, 0x0

    :goto_1
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v7, v8, v10

    sget v9, Landroid/net/wifi/WifiStateMachine;->WIFI_HIGHMOBILITY:I

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_5

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v1, v8, v10

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "WifiMobility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timediff: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiMobility"

    const-string v8, " --- Network is still  blocked, returning false ---"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_2
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v4, v7, :cond_9

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, -0x1

    if-ne v3, v7, :cond_7

    move v3, v4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "WifiMobility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found match #: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    const/4 v7, -0x1

    if-eq v3, v7, :cond_a

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mTime:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    :cond_a
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "WifiMobility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "final timedifference: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "count of found networks is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v7, 0x2

    if-ge v0, v7, :cond_c

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v7, -0x1

    if-eq v3, v7, :cond_10

    sget v7, Landroid/net/wifi/WifiStateMachine;->WIFI_HIGHMOBILITY:I

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-gtz v7, :cond_10

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    # getter for: Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_BLOCK_MAX:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$500()I

    move-result v8

    if-ge v7, v8, :cond_d

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v7, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    invoke-virtual {v7, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetID:Ljava/util/Vector;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->startTimer()V

    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v7, v8, v10

    sget v9, Landroid/net/wifi/WifiStateMachine;->WIFI_HIGHMOBILITY:I

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_f

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "WifiMobility"

    const-string v8, "Too much networks stored, refusing connection"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_f
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetID:Ljava/util/Vector;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetID:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v7, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    invoke-virtual {v7, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetID:Ljava/util/Vector;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->startTimer()V

    goto :goto_3

    :cond_10
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public checkScanResults()V
    .locals 12

    const/4 v11, 0x5

    :try_start_0
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    const/4 v7, 0x0

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v9}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v9

    if-ne v8, v9, :cond_1

    iget v8, v5, Landroid/net/wifi/ScanResult;->level:I

    sget v9, Landroid/net/wifi/WifiStateMachine;->WIFI_CONNECT_THRESHOLD:I

    if-ge v8, v9, :cond_3

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eqz v8, :cond_1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v8, v11, :cond_1

    const/4 v7, 0x1

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "WifiMobility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Meet network with low RSSI : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v8, "WifiMobility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EXCEPTION"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v7, 0x0

    :try_start_1
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v8

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    const/4 v8, 0x0

    iput v8, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "WifiMobility"

    const-string v9, "Network level is high enough, enabling it"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v7, :cond_0

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "WifiMobility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ignorable is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mIgnorableId:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "WifiMobility"

    const-string v9, "Network had low RSSI, disabling it"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v8

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v10, 0x5

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public clearIgnorableId()V
    .locals 1

    const/16 v0, 0x3e7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mIgnorableId:Ljava/lang/Integer;

    return-void
.end method

.method public deleteEAP(Ljava/lang/Integer;)V
    .locals 4

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiMobilityEAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting : gen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tempor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public findEAP(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "WifiMobilityEAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found SSID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method

.method public getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public handleEAP(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    const-string v6, "WifiMobilityEAP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handling message:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Not subscribed to the requested service"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_1
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    iget v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v8, 0x7

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    goto :goto_0

    :cond_2
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "WifiMobilityEAP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail on SSID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v6, "WifiMobilityEAP"

    const-string v7, "fail reading info"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v6, "Temporarily denied access"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "General failure"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_5
    const/4 v0, -0x1

    const/4 v1, -0x1

    const-string v6, "General failure"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v0, 0x1

    const/16 v1, 0x9

    :cond_6
    const-string v6, "Temporarily denied access"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v0, 0x2

    const/16 v1, 0x8

    :cond_7
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    if-eqz v6, :cond_11

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->findEAP(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->addEAP(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->shouldBlock(Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_9
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    iget v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v1}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    goto :goto_1

    :cond_a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->deleteEAP(Ljava/lang/Integer;)V

    :cond_b
    :goto_2
    return-void

    :cond_c
    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->shouldBlock(Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_e
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "WifiMobilityEAP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ssid is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    iget v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v1}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    const-string v6, "WifiMobilityEAP"

    const-string v7, "not subscribed handled"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_10
    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->deleteEAP(Ljava/lang/Integer;)V

    goto :goto_2

    :cond_11
    const-string v6, "WifiMobilityEAP"

    const-string v7, "fail reading info"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setIgnorableId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mIgnorableId:Ljava/lang/Integer;

    return-void
.end method

.method public setLastSSID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    return-void
.end method

.method public shouldBlock(Ljava/lang/Integer;)Z
    .locals 3

    const/4 v2, 0x3

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startTimer()V
    .locals 6

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mUnBlockTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mUnBlockTimer:Ljava/util/Timer;

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiMobility"

    const-string v1, "Started timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mUnBlockTimer:Ljava/util/Timer;

    new-instance v1, Landroid/net/wifi/WifiStateMachine$WifiMobility$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$WifiMobility$1;-><init>(Landroid/net/wifi/WifiStateMachine$WifiMobility;)V

    const-wide/16 v2, 0x0

    # getter for: Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TIMER_INTERVAL:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$800()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method public stopTimer()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mUnBlockTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiMobility"

    const-string v1, "Stoped timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mUnBlockTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mUnBlockTimer:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method public unLockMobilityByNetID(Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mAddNextWithoutCheck:Z

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiMobility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received mnetID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->setIgnorableId(Ljava/lang/Integer;)V

    return-void
.end method
