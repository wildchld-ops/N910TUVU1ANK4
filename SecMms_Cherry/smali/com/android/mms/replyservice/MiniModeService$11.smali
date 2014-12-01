.class Lcom/android/mms/replyservice/MiniModeService$11;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/replyservice/MiniModeService;->setContentViewInner(IIII)V
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

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService$11;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$11;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mMainActivity:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$2000(Lcom/android/mms/replyservice/MiniModeService;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$11;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$11;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService$11;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mLaunchMainRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/mms/replyservice/MiniModeService;->access$2100(Lcom/android/mms/replyservice/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$11;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService$11;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mLaunchMainRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/mms/replyservice/MiniModeService;->access$2100(Lcom/android/mms/replyservice/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService$11;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget v3, v3, Lcom/android/mms/replyservice/MiniModeService;->CLOSE_MINIAPP_DELAY:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
