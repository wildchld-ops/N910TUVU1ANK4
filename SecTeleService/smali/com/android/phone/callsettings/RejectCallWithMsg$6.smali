.class Lcom/android/phone/callsettings/RejectCallWithMsg$6;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in setOnItemClickListener = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1200(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mTouchCheckItem:Z
    invoke-static {v0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$902(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsSelectAllmode:Z
    invoke-static {v0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$402(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v0, p3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->goToEditRejectMsgScreen(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$600(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    goto :goto_0
.end method
