.class Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "ContainerAdminIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$1;->this$0:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    # getter for: Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->access$300()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$1;->this$0:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    # getter for: Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v3}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->access$000(Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "intentsFwdedToContainerAdmin"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeGenericValueAsUser(ILjava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_0

    # getter for: Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No entry for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to delete in the database"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$1;->this$0:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    invoke-virtual {v3}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->registerDynamicIntents()V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    # getter for: Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
