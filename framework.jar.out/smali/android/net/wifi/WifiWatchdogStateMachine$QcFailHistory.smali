.class Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QcFailHistory"
.end annotation


# instance fields
.field apIndex:I

.field avoidance:Z

.field bssid:Ljava/lang/String;

.field bytes:I

.field currentDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field dataRate:I

.field detection:Z

.field error:I

.field line:I

.field poorLinkLine:I

.field qcId:I

.field qcStep:I

.field qcTrigger:I

.field rssi:I

.field ssid:Ljava/lang/String;

.field state:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

.field time:Ljava/util/Date;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->rssi:I

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->dataRate:I

    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->detection:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->avoidance:Z

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->apIndex:I

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->currentDnsList:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;IIIIIIZZILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # Z
    .param p10    # Z
    .param p11    # I
    .param p12    # Ljava/lang/String;
    .param p13    # Ljava/lang/String;
    .param p14    # I
    .param p15    # I

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    iput p3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    iput p4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    iput p5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    iput p6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    iput p7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->rssi:I

    iput p8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->dataRate:I

    iput-boolean p9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->detection:Z

    iput-boolean p10, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->avoidance:Z

    iput p11, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->apIndex:I

    iput-object p12, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    iput-object p13, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    iput p14, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    iput p15, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    return-void
.end method
