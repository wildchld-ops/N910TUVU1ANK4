.class Lcom/android/systemui/recent/RecentsWindow$4;
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

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsWindow$4;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    :try_start_0
    # getter for: Lcom/android/systemui/recent/RecentsWindow;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/recent/RecentsWindow;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mUserChangedReceiver : onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow$4;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsWindow;->access$800(Lcom/android/systemui/recent/RecentsWindow;)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->makeFlashBarList()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow$4;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsWindow;->access$000(Lcom/android/systemui/recent/RecentsWindow;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateAppListRelayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
