.class Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment$1;
.super Ljava/lang/Object;
.source "TapAndHoldDelayCustomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;

    # getter for: Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/touchsensibility/TapAndHoldView;
    invoke-static {v0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->access$000(Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/android/settings/touchsensibility/TapAndHoldView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/touchsensibility/TapAndHoldView;->checkLongPressStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;

    # getter for: Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->access$100(Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    :goto_0
    # getter for: Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->access$200()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;

    # getter for: Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->access$400(Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;

    # getter for: Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->access$300(Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;

    # getter for: Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/touchsensibility/TapAndHoldView;
    invoke-static {v0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->access$000(Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/android/settings/touchsensibility/TapAndHoldView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/touchsensibility/TapAndHoldView;->checkLongPressStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;

    # getter for: Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->access$100(Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
