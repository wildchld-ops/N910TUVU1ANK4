.class Lcom/android/mms/replyservice/MiniModeService$8;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/replyservice/MiniModeService;->initWindowEventListeners()V
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

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 11

    const/16 v10, 0x30

    const/4 v9, 0x0

    const/16 v7, -0x2710

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v6, p1}, Lcom/android/mms/replyservice/MiniModeService;->onWindowFocusChanged(Z)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # setter for: Lcom/android/mms/replyservice/MiniModeService;->mLastFocus:Z
    invoke-static {v6, p1}, Lcom/android/mms/replyservice/MiniModeService;->access$902(Lcom/android/mms/replyservice/MiniModeService;Z)Z

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mFirstShow:Z
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$1000(Lcom/android/mms/replyservice/MiniModeService;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # setter for: Lcom/android/mms/replyservice/MiniModeService;->mFirstShow:Z
    invoke-static {v6, v9}, Lcom/android/mms/replyservice/MiniModeService;->access$1002(Lcom/android/mms/replyservice/MiniModeService;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # setter for: Lcom/android/mms/replyservice/MiniModeService;->mLastFocus:Z
    invoke-static {v6, p1}, Lcom/android/mms/replyservice/MiniModeService;->access$902(Lcom/android/mms/replyservice/MiniModeService;Z)Z

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v6}, Lcom/android/mms/replyservice/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v6}, Lcom/android/mms/replyservice/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mFirstShow:Z
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$1000(Lcom/android/mms/replyservice/MiniModeService;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v6, v7, :cond_6

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # setter for: Lcom/android/mms/replyservice/MiniModeService;->mFirstShow:Z
    invoke-static {v6, v9}, Lcom/android/mms/replyservice/MiniModeService;->access$1002(Lcom/android/mms/replyservice/MiniModeService;Z)Z

    :goto_2
    if-eqz p1, :cond_a

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$1100(Lcom/android/mms/replyservice/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v7, v7, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v8, v8, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mSavedSoftInputMode:I
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$1600(Lcom/android/mms/replyservice/MiniModeService;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mSavedSoftInputMode:I
    invoke-static {v7}, Lcom/android/mms/replyservice/MiniModeService;->access$1600(Lcom/android/mms/replyservice/MiniModeService;)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    :cond_3
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mDimEnabled:Z
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$1700(Lcom/android/mms/replyservice/MiniModeService;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$1800(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/mms/replyservice/MiniModeService;->access$100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;
    invoke-static {v7}, Lcom/android/mms/replyservice/MiniModeService;->access$1900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/minimode/MainView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v7, 0x11

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v9, v9, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v9}, Lcom/sec/android/app/minimode/MainView;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v9, v9, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v9}, Lcom/sec/android/app/minimode/MainView;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_5
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$1500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/Window;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v7, v7, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v6, "Mms/MiniModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v8, v8, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not attached to window manager"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$1100(Lcom/android/mms/replyservice/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->isOccupiedPosition(II)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_7
    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mIsTabletMode:Z
    invoke-static {}, Lcom/android/mms/replyservice/MiniModeService;->access$1200()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v6}, Lcom/android/mms/replyservice/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v7}, Lcom/android/mms/replyservice/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v7

    # invokes: Lcom/android/mms/replyservice/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/mms/replyservice/MiniModeService$Vec2D;
    invoke-static {v6, v7}, Lcom/android/mms/replyservice/MiniModeService;->access$1300(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    iget v8, v5, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->x:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    iget v8, v5, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->y:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_4
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$1500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/Window;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v7, v7, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1

    :cond_8
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # invokes: Lcom/android/mms/replyservice/MiniModeService;->calculateNextPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    invoke-static {v6, v0, v3}, Lcom/android/mms/replyservice/MiniModeService;->access$1400(Lcom/android/mms/replyservice/MiniModeService;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4

    :cond_9
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v6}, Lcom/android/mms/replyservice/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v7}, Lcom/android/mms/replyservice/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v7

    # invokes: Lcom/android/mms/replyservice/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/mms/replyservice/MiniModeService$Vec2D;
    invoke-static {v6, v7}, Lcom/android/mms/replyservice/MiniModeService;->access$1300(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    iget v8, v5, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->x:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    iget v8, v5, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->y:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$1500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/Window;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v7, v7, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_2

    :cond_a
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v7, v7, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    # setter for: Lcom/android/mms/replyservice/MiniModeService;->mSavedSoftInputMode:I
    invoke-static {v6, v7}, Lcom/android/mms/replyservice/MiniModeService;->access$1602(Lcom/android/mms/replyservice/MiniModeService;I)I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mDimEnabled:Z
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$1700(Lcom/android/mms/replyservice/MiniModeService;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/mms/replyservice/MiniModeService;->access$100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    # setter for: Lcom/android/mms/replyservice/MiniModeService;->mOldDecorViewWidth:I
    invoke-static {v6, v7}, Lcom/android/mms/replyservice/MiniModeService;->access$302(Lcom/android/mms/replyservice/MiniModeService;I)I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    # setter for: Lcom/android/mms/replyservice/MiniModeService;->mOldDecorViewHeight:I
    invoke-static {v6, v7}, Lcom/android/mms/replyservice/MiniModeService;->access$402(Lcom/android/mms/replyservice/MiniModeService;I)I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;
    invoke-static {v7}, Lcom/android/mms/replyservice/MiniModeService;->access$1900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/minimode/MainView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v6, v6, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/minimode/MainView;->postInvalidateDelayed(J)V

    goto/16 :goto_3
.end method
