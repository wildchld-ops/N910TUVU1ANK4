.class Lcom/android/incallui/InCallPresenter$StatusBarEventsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarEventsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method private constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$StatusBarEventsReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/InCallPresenter;Lcom/android/incallui/InCallPresenter$1;)V
    .locals 0
    .param p1    # Lcom/android/incallui/InCallPresenter;
    .param p2    # Lcom/android/incallui/InCallPresenter$1;

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter$StatusBarEventsReceiver;-><init>(Lcom/android/incallui/InCallPresenter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter$StatusBarEventsReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v3}, Lcom/android/incallui/InCallPresenter;->access$700(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter$StatusBarEventsReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v3}, Lcom/android/incallui/InCallPresenter;->access$700(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v3

    const-string v4, "com.android.incallui.InCallActivity"

    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallActivity;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v3, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter$StatusBarEventsReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    const/4 v4, 0x1

    # setter for: Lcom/android/incallui/InCallPresenter;->isStatusBarExpanded:Z
    invoke-static {v3, v4}, Lcom/android/incallui/InCallPresenter;->access$802(Lcom/android/incallui/InCallPresenter;Z)Z

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter$StatusBarEventsReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v3}, Lcom/android/incallui/InCallPresenter;->access$700(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->setCameraStateOff()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter$StatusBarEventsReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    const/4 v4, 0x0

    # setter for: Lcom/android/incallui/InCallPresenter;->isStatusBarExpanded:Z
    invoke-static {v3, v4}, Lcom/android/incallui/InCallPresenter;->access$802(Lcom/android/incallui/InCallPresenter;Z)Z

    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter$StatusBarEventsReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v3}, Lcom/android/incallui/InCallPresenter;->access$700(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->setCameraStateOn()V

    goto :goto_0
.end method
