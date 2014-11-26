.class Lcom/android/systemui/recent/RecentsWindow$6;
.super Landroid/content/BroadcastReceiver;
.source "RecentsWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsWindow;-><init>(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsWindow$6;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/recent/RecentsWindow;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Emergency mode changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow$6;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsWindow;->access$300(Lcom/android/systemui/recent/RecentsWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow$6;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsWindow;->access$000(Lcom/android/systemui/recent/RecentsWindow;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow$6;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # invokes: Lcom/android/systemui/recent/RecentsWindow;->initRecentPanel()V
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsWindow;->access$200(Lcom/android/systemui/recent/RecentsWindow;)V

    :cond_0
    return-void
.end method
