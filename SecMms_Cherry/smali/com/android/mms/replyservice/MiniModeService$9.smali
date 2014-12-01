.class Lcom/android/mms/replyservice/MiniModeService$9;
.super Landroid/os/Handler;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/replyservice/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/replyservice/MiniModeService;


# direct methods
.method constructor <init>(Lcom/android/mms/replyservice/MiniModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v0, 0x1

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v0, :cond_1

    :goto_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # invokes: Lcom/android/mms/replyservice/MiniModeService;->getComponentName()Landroid/content/ComponentName;
    invoke-static {v4}, Lcom/android/mms/replyservice/MiniModeService;->access$800(Lcom/android/mms/replyservice/MiniModeService;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v4}, Lcom/android/mms/replyservice/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v5}, Lcom/android/mms/replyservice/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v5

    # invokes: Lcom/android/mms/replyservice/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/mms/replyservice/MiniModeService$Vec2D;
    invoke-static {v4, v5}, Lcom/android/mms/replyservice/MiniModeService;->access$1300(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v4, v4, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v5, v5

    iget v6, v3, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->x:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v4, v4, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v5, v5

    iget v6, v3, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->y:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;
    invoke-static {v4}, Lcom/android/mms/replyservice/MiniModeService;->access$1100(Lcom/android/mms/replyservice/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v5, v5, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/replyservice/MiniModeService;->move(II)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/mms/replyservice/MiniModeService;->access$100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/mms/replyservice/MiniModeService;->access$200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/mms/replyservice/MiniModeService;->access$200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/mms/replyservice/MiniModeService;->access$100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    # setter for: Lcom/android/mms/replyservice/MiniModeService;->mOldDecorViewWidth:I
    invoke-static {v4, v5}, Lcom/android/mms/replyservice/MiniModeService;->access$302(Lcom/android/mms/replyservice/MiniModeService;I)I

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    # setter for: Lcom/android/mms/replyservice/MiniModeService;->mOldDecorViewHeight:I
    invoke-static {v4, v5}, Lcom/android/mms/replyservice/MiniModeService;->access$402(Lcom/android/mms/replyservice/MiniModeService;I)I

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v4, v4, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v4}, Lcom/sec/android/app/minimode/MainView;->invalidate()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    const/4 v5, 0x7

    # invokes: Lcom/android/mms/replyservice/MiniModeService;->handleClose(I)V
    invoke-static {v4, v5}, Lcom/android/mms/replyservice/MiniModeService;->access$000(Lcom/android/mms/replyservice/MiniModeService;I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v4}, Lcom/android/mms/replyservice/MiniModeService;->show()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService$9;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v4}, Lcom/android/mms/replyservice/MiniModeService;->hide()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
