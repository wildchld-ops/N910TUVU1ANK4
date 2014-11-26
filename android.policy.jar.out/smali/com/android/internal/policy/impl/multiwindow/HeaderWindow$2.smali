.class Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;
.super Ljava/lang/Object;
.source "HeaderWindow.java"

# interfaces
.implements Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowFacade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$200(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/os/SystemVibrator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIvt:[B
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$100(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$200(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/os/SystemVibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # invokes: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->validateGuideView()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v1

    const v2, 0x108068a

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideResource(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastX:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$600(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFirstX:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$700(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastY:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFirstY:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIsDockingCanceled:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1002(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Z)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastX:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$600(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v2

    # setter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingX:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1102(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastY:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I

    move-result v2

    # setter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingY:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->access$1202(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method
