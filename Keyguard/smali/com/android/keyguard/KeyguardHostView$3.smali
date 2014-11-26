.class Lcom/android/keyguard/KeyguardHostView$3;
.super Landroid/os/Handler;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mMusicWidgetRemoveHandlerId:I
    invoke-static {}, Lcom/android/keyguard/KeyguardHostView;->access$800()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardHostView"

    const-string v1, "mMusicWidgetRemoveHandler : remove transport control view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, -0x1

    # setter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->access$502(Lcom/android/keyguard/KeyguardHostView;I)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$600(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
