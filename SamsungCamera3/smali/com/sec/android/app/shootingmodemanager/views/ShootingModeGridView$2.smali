.class Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;
.super Landroid/os/Handler;
.source "ShootingModeGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$500(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$500(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragPosition:I
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$600(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I
    invoke-static {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$700(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragPosition:I
    invoke-static {v2}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$600(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)I

    move-result v2

    # invokes: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->insert(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$800(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;II)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # setter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I
    invoke-static {v0, v3}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$702(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;I)I

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # setter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragPosition:I
    invoke-static {v0, v3}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$602(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;I)I

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # setter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I
    invoke-static {v0, v3}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$902(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;I)I

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # setter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I
    invoke-static {v0, v3}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$1002(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;I)I

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # setter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimating:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$1102(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$400(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$500(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$500(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$400(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$500(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$500(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$400(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    const/16 v1, 0xc8

    # setter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeLeft:I
    invoke-static {v0, v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$1202(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;I)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
