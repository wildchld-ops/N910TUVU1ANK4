.class Lcom/android/systemui/recent/RecentsWindow$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentsWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsWindow$1;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.systemui.recent.action.CLOSE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow$1;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsWindow;->access$000(Lcom/android/systemui/recent/RecentsWindow;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow$1;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsWindow;->access$000(Lcom/android/systemui/recent/RecentsWindow;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow$1;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsWindow;->access$100(Lcom/android/systemui/recent/RecentsWindow;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow$1;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsWindow;->access$000(Lcom/android/systemui/recent/RecentsWindow;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "com.android.systemui.recent.action.WINDOW_ANIMATION_START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow$1;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsWindow;->access$000(Lcom/android/systemui/recent/RecentsWindow;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow$1;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsWindow;->access$000(Lcom/android/systemui/recent/RecentsWindow;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView;->onWindowAnimationStart()V

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow$1;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # invokes: Lcom/android/systemui/recent/RecentsWindow;->initRecentPanel()V
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsWindow;->access$200(Lcom/android/systemui/recent/RecentsWindow;)V

    goto :goto_0

    :cond_3
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow$1;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsWindow;->access$300(Lcom/android/systemui/recent/RecentsWindow;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow$1;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsWindow;->access$300(Lcom/android/systemui/recent/RecentsWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "flip_font_style"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow$1;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mFlipFont:I
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsWindow;->access$400(Lcom/android/systemui/recent/RecentsWindow;)I

    move-result v2

    if-eq v2, v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow$1;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # invokes: Lcom/android/systemui/recent/RecentsWindow;->initRecentPanel()V
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsWindow;->access$200(Lcom/android/systemui/recent/RecentsWindow;)V

    :cond_4
    # getter for: Lcom/android/systemui/recent/RecentsWindow;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/recent/RecentsWindow;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONFIGURATION_CHANGED Font:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsWindow$1;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mFlipFont:I
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsWindow;->access$400(Lcom/android/systemui/recent/RecentsWindow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
