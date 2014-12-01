.class Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;
.super Ljava/lang/Object;
.source "ThrottleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/throttle/ThrottleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermanentThrottleManager"
.end annotation


# static fields
.field private static final MAX_PERMANENT_THROTTLE_ERROR_COUNT:I = 0x3


# instance fields
.field private mPermanentThrottleErrorCount:I

.field final synthetic this$0:Lcom/sec/epdg/throttle/ThrottleManager;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/throttle/ThrottleManager;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->this$0:Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->mPermanentThrottleErrorCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/throttle/ThrottleManager;Lcom/sec/epdg/throttle/ThrottleManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;-><init>(Lcom/sec/epdg/throttle/ThrottleManager;)V

    return-void
.end method


# virtual methods
.method public incrementPermanentThrottleCounter()V
    .locals 3

    iget v0, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->mPermanentThrottleErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->mPermanentThrottleErrorCount:I

    const-string v0, "[THROTTLEMANAGER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPermanentThrottleErrorCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->mPermanentThrottleErrorCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MAX_PERMANENT_THROTTLE_ERROR_COUNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isRetryThrottled()Z
    .locals 2

    iget v0, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->mPermanentThrottleErrorCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetPermanentThrottleErrorCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->mPermanentThrottleErrorCount:I

    return-void
.end method
