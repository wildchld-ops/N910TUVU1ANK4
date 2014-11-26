.class Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;
.super Ljava/lang/Object;
.source "KeyguardMagazineCardHolderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->build(Lcom/samsung/android/magazinecard/MagazineCardRecord;Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "KeyguardMagazineCardHolderView"

    const-string v3, "Card clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
    invoke-static {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$200(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getFocusedCard()Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "KeyguardMagazineCardHolderView"

    const-string v3, "Reset cards"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->restoreDefaultCardState()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
    invoke-static {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$200(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getKeyguardHostView()Lcom/android/keyguard/KeyguardHostView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardHostView;->showBouncer(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    # setter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsCardSelected:Z
    invoke-static {v2, v4}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$002(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Z)Z

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
    invoke-static {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$200(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getKeyguardHostView()Lcom/android/keyguard/KeyguardHostView;

    move-result-object v2

    const/16 v3, 0xfa

    invoke-virtual {v2, v4, v3}, Lcom/android/keyguard/KeyguardHostView;->showBouncerFrameOnly(ZI)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->isCardExpanded()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->isCardExpandable()Z

    move-result v2

    if-ne v2, v5, :cond_2

    const-string v2, "KeyguardMagazineCardHolderView"

    const-string v3, "Expand cards"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->unlockAndLaunchApplication()Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2$1;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-string v2, "KeyguardMagazineCardHolderView"

    const-string v3, "select card"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # invokes: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->setCardScale(Z)V
    invoke-static {v0, v5}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$300(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Z)V

    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->unlockAndLaunchApplication()Z

    goto :goto_0
.end method
