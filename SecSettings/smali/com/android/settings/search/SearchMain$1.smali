.class Lcom/android/settings/search/SearchMain$1;
.super Landroid/content/BroadcastReceiver;
.source "SearchMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SearchMain;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SearchMain;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search/SearchMain$1;->this$0:Lcom/android/settings/search/SearchMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.settings.SETTING_SEARCH_DB_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SearchMain"

    const-string v4, "android.settings.SETTING_SEARCH_DB_UPDATE is received"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "lock"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    # setter for: Lcom/android/settings/search/SearchMain;->RESTORE_DB:Z
    invoke-static {v3}, Lcom/android/settings/search/SearchMain;->access$502(Z)Z

    iget-object v3, p0, Lcom/android/settings/search/SearchMain$1;->this$0:Lcom/android/settings/search/SearchMain;

    # invokes: Lcom/android/settings/search/SearchMain;->displayProgressDialog()V
    invoke-static {v3}, Lcom/android/settings/search/SearchMain;->access$600(Lcom/android/settings/search/SearchMain;)V

    :cond_0
    return-void
.end method
