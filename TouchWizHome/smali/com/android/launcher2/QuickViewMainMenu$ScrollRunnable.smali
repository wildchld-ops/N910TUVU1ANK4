.class Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;
.super Ljava/lang/Object;
.source "QuickViewMainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickViewMainMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# static fields
.field private static final STATE_NOT_IN_QUEUE:I = 0x0

.field private static final STATE_PAGE_SCROLLING:I = 0x1

.field private static final STATE_WAITING_TO_SCROLL:I = 0x2


# instance fields
.field private mState:I

.field final synthetic this$0:Lcom/android/launcher2/QuickViewMainMenu;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewMainMenu;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    return v0
.end method

.method private postForScrollToComplete()V
    .locals 3

    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/QuickViewMainMenu;->access$600(Lcom/android/launcher2/QuickViewMainMenu;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    iget v1, v1, Lcom/android/launcher2/QuickViewMainMenu;->PAGE_SNAP_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public postForScrollDelayed()V
    .locals 3

    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/QuickViewMainMenu;->access$600(Lcom/android/launcher2/QuickViewMainMenu;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mScrollDelay:I
    invoke-static {v1}, Lcom/android/launcher2/QuickViewMainMenu;->access$500(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public removeSelf()V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/QuickViewMainMenu;->access$600(Lcom/android/launcher2/QuickViewMainMenu;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    const/4 v2, -0x1

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    iput v4, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isLauncherDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->postForScrollDelayed()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I
    invoke-static {v1}, Lcom/android/launcher2/QuickViewMainMenu;->access$200(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z
    invoke-static {v1}, Lcom/android/launcher2/QuickViewMainMenu;->access$300(Lcom/android/launcher2/QuickViewMainMenu;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I
    invoke-static {v1}, Lcom/android/launcher2/QuickViewMainMenu;->access$400(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I
    invoke-static {v3}, Lcom/android/launcher2/QuickViewMainMenu;->access$400(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->postForScrollToComplete()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->scrollLeft()V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z
    invoke-static {v1}, Lcom/android/launcher2/QuickViewMainMenu;->access$300(Lcom/android/launcher2/QuickViewMainMenu;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I
    invoke-static {v1}, Lcom/android/launcher2/QuickViewMainMenu;->access$400(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v1

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I
    invoke-static {v3}, Lcom/android/launcher2/QuickViewMainMenu;->access$400(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->postForScrollToComplete()V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->scrollRight()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
