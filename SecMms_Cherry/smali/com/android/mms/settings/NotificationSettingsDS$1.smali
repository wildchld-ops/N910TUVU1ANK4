.class Lcom/android/mms/settings/NotificationSettingsDS$1;
.super Ljava/lang/Object;
.source "NotificationSettingsDS.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/NotificationSettingsDS;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/NotificationSettingsDS;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/NotificationSettingsDS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/NotificationSettingsDS$1;->this$0:Lcom/android/mms/settings/NotificationSettingsDS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettingsDS$1;->this$0:Lcom/android/mms/settings/NotificationSettingsDS;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/settings/NotificationSettingsDS$1;->this$0:Lcom/android/mms/settings/NotificationSettingsDS;

    # getter for: Lcom/android/mms/settings/NotificationSettingsDS;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/mms/settings/NotificationSettingsDS;->access$000(Lcom/android/mms/settings/NotificationSettingsDS;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->changeNotificationOption(Landroid/content/Context;Z)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.intent.SwitchStatusChange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isChecked"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/settings/NotificationSettingsDS$1;->this$0:Lcom/android/mms/settings/NotificationSettingsDS;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
