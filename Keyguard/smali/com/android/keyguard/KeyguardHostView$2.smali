.class Lcom/android/keyguard/KeyguardHostView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$200(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$200(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->access$202(Lcom/android/keyguard/KeyguardHostView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onMusicClientIdChanged(IZLandroid/app/PendingIntent;)V
    .locals 4
    .param p1    # I
    .param p2    # Z
    .param p3    # Landroid/app/PendingIntent;

    const/4 v0, 0x2

    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget v1, v1, Lcom/android/keyguard/KeyguardHostView;->mClientGeneration:I

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_6

    const-string v1, "hide"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " transport, gen:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iput p1, v1, Lcom/android/keyguard/KeyguardHostView;->mClientGeneration:I

    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # invokes: Lcom/android/keyguard/KeyguardHostView;->isVideoPlaying(Landroid/app/PendingIntent;)Z
    invoke-static {v1, p3}, Lcom/android/keyguard/KeyguardHostView;->access$400(Lcom/android/keyguard/KeyguardHostView;Landroid/app/PendingIntent;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$500(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # setter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardHostView;->access$502(Lcom/android/keyguard/KeyguardHostView;I)I

    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_4

    const-string v1, "KeyguardHostView"

    const-string v2, "update widget: transport state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardHostView;->access$600(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void

    :cond_6
    const-string v1, "show"

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$500(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v1, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onMusicPlaybackStateChanged(IJ)V
    .locals 6
    .param p1    # I
    .param p2    # J

    const/4 v1, 0x2

    const/4 v2, 0x1

    sget-boolean v3, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v3, :cond_0

    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "music state changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v3}, Lcom/android/keyguard/KeyguardHostView;->access$500(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v3

    if-eqz v3, :cond_4

    # invokes: Lcom/android/keyguard/KeyguardHostView;->isMusicPlaying(I)Z
    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostView;->access$700(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    :goto_0
    if-ne p1, v2, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isJapanFeature()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, -0x1

    :cond_1
    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mMusicWidgetRemoveHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$900(Lcom/android/keyguard/KeyguardHostView;)Landroid/os/Handler;

    move-result-object v1

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mMusicWidgetRemoveHandlerId:I
    invoke-static {}, Lcom/android/keyguard/KeyguardHostView;->access$800()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    # operator++ for: Lcom/android/keyguard/KeyguardHostView;->mMusicWidgetRemoveHandlerId:I
    invoke-static {}, Lcom/android/keyguard/KeyguardHostView;->access$808()I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mMusicWidgetRemoveHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$900(Lcom/android/keyguard/KeyguardHostView;)Landroid/os/Handler;

    move-result-object v1

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mMusicWidgetRemoveHandlerId:I
    invoke-static {}, Lcom/android/keyguard/KeyguardHostView;->access$800()I

    move-result v2

    const-wide/32 v3, 0x1d8a8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send mMusicWidgetRemoveHandler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mMusicWidgetRemoveHandlerId:I
    invoke-static {}, Lcom/android/keyguard/KeyguardHostView;->access$800()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$500(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # setter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardHostView;->access$502(Lcom/android/keyguard/KeyguardHostView;I)I

    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_3

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update widget: play state changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardHostView;->access$600(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    if-eq p1, v2, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mMusicWidgetRemoveHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$900(Lcom/android/keyguard/KeyguardHostView;)Landroid/os/Handler;

    move-result-object v1

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mMusicWidgetRemoveHandlerId:I
    invoke-static {}, Lcom/android/keyguard/KeyguardHostView;->access$800()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove mMusicWidgetRemoveHandler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mMusicWidgetRemoveHandlerId:I
    invoke-static {}, Lcom/android/keyguard/KeyguardHostView;->access$800()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$300(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$300(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserView(Z)V

    :cond_0
    return-void
.end method
