.class Lcom/android/mms/settings/NotificationSettings$4;
.super Landroid/content/BroadcastReceiver;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/settings/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/NotificationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/NotificationSettings$4;->this$0:Lcom/android/mms/settings/NotificationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.mms.intent.SwitchStatusChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings$4;->this$0:Lcom/android/mms/settings/NotificationSettings;

    const-string v1, "isChecked"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z
    invoke-static {v0, v1}, Lcom/android/mms/settings/NotificationSettings;->access$402(Lcom/android/mms/settings/NotificationSettings;Z)Z

    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings$4;->this$0:Lcom/android/mms/settings/NotificationSettings;

    # getter for: Lcom/android/mms/settings/NotificationSettings;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/mms/settings/NotificationSettings;->access$000(Lcom/android/mms/settings/NotificationSettings;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings$4;->this$0:Lcom/android/mms/settings/NotificationSettings;

    # getter for: Lcom/android/mms/settings/NotificationSettings;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/mms/settings/NotificationSettings;->access$000(Lcom/android/mms/settings/NotificationSettings;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettings$4;->this$0:Lcom/android/mms/settings/NotificationSettings;

    # getter for: Lcom/android/mms/settings/NotificationSettings;->mIsSwitchCheckState:Z
    invoke-static {v1}, Lcom/android/mms/settings/NotificationSettings;->access$400(Lcom/android/mms/settings/NotificationSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings$4;->this$0:Lcom/android/mms/settings/NotificationSettings;

    # invokes: Lcom/android/mms/settings/NotificationSettings;->setElementEnable()V
    invoke-static {v0}, Lcom/android/mms/settings/NotificationSettings;->access$100(Lcom/android/mms/settings/NotificationSettings;)V

    :cond_1
    return-void
.end method
