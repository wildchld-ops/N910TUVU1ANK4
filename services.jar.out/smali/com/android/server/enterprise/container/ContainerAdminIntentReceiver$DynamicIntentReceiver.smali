.class Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContainerAdminIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DynamicIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;->this$0:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v3

    # getter for: Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->access$300()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    # getter for: Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->access$300()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;->this$0:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    # invokes: Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->sendBroadcastToAdmin(Landroid/content/Context;Landroid/content/Intent;I)V
    invoke-static {v4, p1, p2, v3}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->access$200(Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0
.end method
