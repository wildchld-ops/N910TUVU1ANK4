.class Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "queryEventRegulator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;
    }
.end annotation


# instance fields
.field private mComp:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mHandler:Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 2
    .param p2    # Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator;->mComp:Lcom/android/mms/ui/ComposeMessageFragment;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator;->mComp:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator;Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator;->mHandler:Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;

    return-void
.end method


# virtual methods
.method public setMode(IZ)V
    .locals 1
    .param p1    # I
    .param p2    # Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator;->mHandler:Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->setPendingTime(IZ)V

    return-void
.end method

.method public startQuery()V
    .locals 2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "call query"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator;->mHandler:Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment$queryEventRegulator$queryHandler;->onEvent()V

    return-void
.end method
