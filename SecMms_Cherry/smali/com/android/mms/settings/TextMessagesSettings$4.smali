.class Lcom/android/mms/settings/TextMessagesSettings$4;
.super Landroid/content/BroadcastReceiver;
.source "TextMessagesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/settings/TextMessagesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/TextMessagesSettings;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/TextMessagesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/TextMessagesSettings$4;->this$0:Lcom/android/mms/settings/TextMessagesSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/mms/settings/TextMessagesSettings$4;->this$0:Lcom/android/mms/settings/TextMessagesSettings;

    # invokes: Lcom/android/mms/settings/TextMessagesSettings;->refreshSIMPreferences()V
    invoke-static {v3}, Lcom/android/mms/settings/TextMessagesSettings;->access$000(Lcom/android/mms/settings/TextMessagesSettings;)V

    :cond_0
    return-void
.end method
