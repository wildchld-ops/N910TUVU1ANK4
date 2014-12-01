.class Lcom/android/mms/animation/MsgDeleteActionAnimation$1;
.super Ljava/lang/Object;
.source "MsgDeleteActionAnimation.java"

# interfaces
.implements Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/animation/MsgDeleteActionAnimation;->createDeleteActionThreadAnim()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;


# direct methods
.method constructor <init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyTransformation(F)V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$000(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mTransferDelItemAnim : onApplyTransformation "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->hideSelectedChildItems()V

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->calculateOffsetForTransDelAnim(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBeginTransDeleteAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->hideSelectedChildItems()V

    return-void
.end method

.method public onCancelTransDeleteAnimation()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$000(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mTransferDelItemAnim : onCancelTransDeleteAnimation "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v2

    const/high16 v3, 0x3f800000

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->calculateOffsetForTransDelAnim(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->onEndTransDeleteAnimation()V

    return-void
.end method

.method public onEndTransDeleteAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$000(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mTransferDelItemAnim : onEndTransDeleteAnimation "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->hideSelectedChildItems()V

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-boolean v0, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsTransferDelItemAnim:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsTransferDelItemAnim:Z

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->afterDelAnim()V

    :cond_0
    return-void
.end method
