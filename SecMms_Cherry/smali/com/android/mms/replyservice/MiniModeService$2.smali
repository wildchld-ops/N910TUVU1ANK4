.class Lcom/android/mms/replyservice/MiniModeService$2;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService$2;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$2;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$2;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$2;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$2;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mOldDecorViewWidth:I
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$300(Lcom/android/mms/replyservice/MiniModeService;)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$2;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mOldDecorViewHeight:I
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$400(Lcom/android/mms/replyservice/MiniModeService;)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$2;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$2;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService$2;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
