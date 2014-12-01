.class Lcom/android/settings/notificationreminder/NotificationReminderService$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReminderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notificationreminder/NotificationReminderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;


# direct methods
.method constructor <init>(Lcom/android/settings/notificationreminder/NotificationReminderService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderService;->loadNotifications()[Landroid/service/notification/StatusBarNotification;
    invoke-static {v1}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$100(Lcom/android/settings/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    # setter for: Lcom/android/settings/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;
    invoke-static {v0, v1}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$002(Lcom/android/settings/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)[Landroid/service/notification/StatusBarNotification;

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    # getter for: Lcom/android/settings/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;
    invoke-static {v0}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$000(Lcom/android/settings/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    # getter for: Lcom/android/settings/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;
    invoke-static {v0}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$000(Lcom/android/settings/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    # getter for: Lcom/android/settings/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;
    invoke-static {v1}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$000(Lcom/android/settings/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderService;->hasClearableItems([Landroid/service/notification/StatusBarNotification;)Z
    invoke-static {v0, v1}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$200(Lcom/android/settings/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    # getter for: Lcom/android/settings/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;
    invoke-static {v1}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$000(Lcom/android/settings/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderService;->hasCheckedPacakages([Landroid/service/notification/StatusBarNotification;)Z
    invoke-static {v0, v1}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$300(Lcom/android/settings/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderService;->updateLedFlashLocked(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$400(Lcom/android/settings/notificationreminder/NotificationReminderService;Z)V

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderService;->updateSoundLocked()V
    invoke-static {v0}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$500(Lcom/android/settings/notificationreminder/NotificationReminderService;)V

    const-string v0, "NotificationReminderService"

    const-string v1, "Alram!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderService;->updateLedFlashLocked(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$400(Lcom/android/settings/notificationreminder/NotificationReminderService;Z)V

    goto :goto_0
.end method
