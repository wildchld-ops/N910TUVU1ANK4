.class Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
.super Ljava/lang/Object;
.source "WapPushReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/WapPushReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WPMInfo"
.end annotation


# instance fields
.field private action:I

.field private created:J

.field private id:I

.field final synthetic this$0:Lcom/android/mms/transaction/WapPushReceiverService;


# direct methods
.method private constructor <init>(Lcom/android/mms/transaction/WapPushReceiverService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->this$0:Lcom/android/mms/transaction/WapPushReceiverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->id:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->created:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->action:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/WapPushReceiverService;Lcom/android/mms/transaction/WapPushReceiverService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;-><init>(Lcom/android/mms/transaction/WapPushReceiverService;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->created:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->created:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->id:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->id:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->action:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->action:I

    return p1
.end method
