.class Lcom/android/systemui/statusbar/phone/MockListener$1;
.super Landroid/content/BroadcastReceiver;
.source "MockListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/MockListener;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MockListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MockListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MockListener$1;->this$0:Lcom/android/systemui/statusbar/phone/MockListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.service.notification.cts.SERVICE_CHECK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MockListener"

    const-string v3, "SERVICE_CHECK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "android.service.notification.cts.SERVICE_POSTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "MockListener"

    const-string v3, "SERVICE_POSTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TAGS"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MockListener$1;->this$0:Lcom/android/systemui/statusbar/phone/MockListener;

    # getter for: Lcom/android/systemui/statusbar/phone/MockListener;->mPosted:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/MockListener;->access$000(Lcom/android/systemui/statusbar/phone/MockListener;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Landroid/content/BroadcastReceiver;->setResultExtras(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    goto :goto_0

    :cond_1
    const-string v2, "android.service.notification.cts.SERVICE_PAYLOADS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MockListener"

    const-string v3, "SERVICE_PAYLOADS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TAGS"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MockListener$1;->this$0:Lcom/android/systemui/statusbar/phone/MockListener;

    # getter for: Lcom/android/systemui/statusbar/phone/MockListener;->mPayloads:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/MockListener;->access$100(Lcom/android/systemui/statusbar/phone/MockListener;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Landroid/content/BroadcastReceiver;->setResultExtras(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    goto :goto_0

    :cond_2
    const-string v2, "android.service.notification.cts.SERVICE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "MockListener"

    const-string v3, "SERVICE_REMOVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TAGS"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MockListener$1;->this$0:Lcom/android/systemui/statusbar/phone/MockListener;

    # getter for: Lcom/android/systemui/statusbar/phone/MockListener;->mRemoved:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/MockListener;->access$200(Lcom/android/systemui/statusbar/phone/MockListener;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Landroid/content/BroadcastReceiver;->setResultExtras(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    goto :goto_0

    :cond_3
    const-string v2, "android.service.notification.cts.SERVICE_CLEAR_ONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "MockListener"

    const-string v3, "SERVICE_CLEAR_ONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MockListener$1;->this$0:Lcom/android/systemui/statusbar/phone/MockListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CODE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/service/notification/NotificationListenerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "android.service.notification.cts.SERVICE_CLEAR_ALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "MockListener"

    const-string v3, "SERVICE_CLEAR_ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MockListener$1;->this$0:Lcom/android/systemui/statusbar/phone/MockListener;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService;->cancelAllNotifications()V

    goto/16 :goto_0

    :cond_5
    const-string v2, "android.service.notification.cts.SERVICE_RESET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "MockListener"

    const-string v3, "SERVICE_RESET"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MockListener$1;->this$0:Lcom/android/systemui/statusbar/phone/MockListener;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MockListener;->resetData()V

    goto/16 :goto_0

    :cond_6
    const-string v2, "MockListener"

    const-string v3, "unknown action"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    goto/16 :goto_0
.end method
