.class Lcom/android/keyguard/KeyguardViewManager$3;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardViewManager;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewManager;

.field final synthetic val$lastView:Lcom/android/keyguard/KeyguardViewBase;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewManager;Lcom/android/keyguard/KeyguardViewBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardViewManager$3;->val$lastView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$3;->val$lastView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->cleanUp()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewManager;->access$200(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewManager;->access$200(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$3;->val$lastView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewManager;->access$900(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardGone()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
