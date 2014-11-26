.class Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;
.super Ljava/lang/Object;
.source "RejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1    # Landroid/view/animation/Animation;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastAnimationId:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$000(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    const-string v3, "Animation is done!"

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$300(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I

    move-result v3

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$202(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;I)I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v2, v2, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v2, v2, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I
    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$300(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    const-string v3, "animation done, notifyDataSetChanged()"

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v2, v2, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method
