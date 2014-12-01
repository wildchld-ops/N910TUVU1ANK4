.class public Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;
.super Landroid/os/Handler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "queryHandler"
.end annotation


# static fields
.field private static final MMS_MODE:I = 0x1

.field private static final PENDING_DEFAULT:I = 0x12c

.field private static final PENDING_MMS:I = 0x258

.field private static final SMS_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/ComposeMessageFragment/QueryHandler"


# instance fields
.field private PENDING_TIMEOUT:I

.field private mComp:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mHasEvent:Z

.field private mIgnoreCount:I

.field private mIsPending:Z

.field private mMode:I

.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mMode:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->PENDING_TIMEOUT:I

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mIgnoreCount:I

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mComp:Lcom/android/mms/ui/ComposeMessageFragment;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mIsPending:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mHasEvent:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/ComposeMessageFragment/QueryHandler"

    const-string v1, "has event just query"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->onEvent()V

    :cond_0
    return-void
.end method

.method public onEvent()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mIsPending:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/ComposeMessageFragment/QueryHandler"

    const-string v1, "requery later"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mHasEvent:Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mMode:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mIgnoreCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    const-string v0, "Mms/ComposeMessageFragment/QueryHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore query mIgnoreCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mIgnoreCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mIgnoreCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mIgnoreCount:I

    goto :goto_0

    :cond_1
    const-string v0, "Mms/ComposeMessageFragment/QueryHandler"

    const-string v1, "do query"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mIsPending:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mHasEvent:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewBySimSlot()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mComp:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mCurViewByMode:I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15600(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startMsgListViewByQuery(I)V

    :goto_1
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->PENDING_TIMEOUT:I

    int-to-long v0, v0

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mComp:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startMsgListQuery()V

    goto :goto_1
.end method

.method public setPendingTime(IZ)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Mms/ComposeMessageFragment/QueryHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mMode:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->PENDING_TIMEOUT:I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mMode:I

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :cond_1
    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->mIgnoreCount:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->PENDING_TIMEOUT:I

    goto :goto_0
.end method
