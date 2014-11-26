.class Lcom/android/mms/settings/TextMessagesSettings$2;
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

    iput-object p1, p0, Lcom/android/mms/settings/TextMessagesSettings$2;->this$0:Lcom/android/mms/settings/TextMessagesSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/TextMessagesSettings$2;->this$0:Lcom/android/mms/settings/TextMessagesSettings;

    # invokes: Lcom/android/mms/settings/TextMessagesSettings;->refreshSIMPreferences()V
    invoke-static {v1}, Lcom/android/mms/settings/TextMessagesSettings;->access$000(Lcom/android/mms/settings/TextMessagesSettings;)V

    :cond_0
    return-void
.end method
