.class Lcom/android/systemui/recent/RecentsWindow$5;
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

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsWindow$5;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/recent/RecentsWindow;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Knox Setup Complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->removeUserData(I)V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow$5;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsWindow;->access$800(Lcom/android/systemui/recent/RecentsWindow;)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->makeFlashBarList()V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow$5;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsWindow;->access$000(Lcom/android/systemui/recent/RecentsWindow;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->updateAppListRelayout()V

    return-void
.end method
