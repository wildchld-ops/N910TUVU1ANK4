.class Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentsCustomButtonReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCustomButtonEnabled:Z
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$9100(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->checkApplicationForButton(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    invoke-static {v4, p1, v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$8900(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->addRecentsCustomButton(Landroid/content/pm/ActivityInfo;)V
    invoke-static {v4, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$9000(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/pm/ActivityInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCustomButtonEnabled:Z
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$9100(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCustomButtonActivityInfo:Landroid/content/pm/ActivityInfo;
    invoke-static {v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$9200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->removeRecentsCustomButton()V
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$5100(Lcom/android/systemui/recent/RecentsPanelView;)V

    goto :goto_0

    :cond_2
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCustomButtonEnabled:Z
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$9100(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCustomButtonActivityInfo:Landroid/content/pm/ActivityInfo;
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$9200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCustomButtonEnabled:Z
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$9100(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->checkApplicationForButton(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    invoke-static {v4, p1, v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$8900(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCustomButtonEnabled:Z
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$9100(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v1, :cond_6

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->removeRecentsCustomButton()V
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$5100(Lcom/android/systemui/recent/RecentsPanelView;)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCustomButtonEnabled:Z
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$9100(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$RecentsCustomButtonReceiver;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->addRecentsCustomButton(Landroid/content/pm/ActivityInfo;)V
    invoke-static {v4, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$9000(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/pm/ActivityInfo;)V

    goto/16 :goto_0
.end method
