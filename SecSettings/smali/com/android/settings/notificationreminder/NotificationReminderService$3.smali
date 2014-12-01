.class Lcom/android/settings/notificationreminder/NotificationReminderService$3;
.super Landroid/service/notification/INotificationListener$Stub;
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

    iput-object p1, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$3;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    invoke-direct {p0}, Landroid/service/notification/INotificationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationReminderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notiifcation posted! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$3;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$3;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderService;->loadNotifications()[Landroid/service/notification/StatusBarNotification;
    invoke-static {v2}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$100(Lcom/android/settings/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    # setter for: Lcom/android/settings/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;
    invoke-static {v1, v2}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$002(Lcom/android/settings/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)[Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$3;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    # getter for: Lcom/android/settings/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;
    invoke-static {v1}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$000(Lcom/android/settings/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$3;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    # getter for: Lcom/android/settings/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;
    invoke-static {v1}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$000(Lcom/android/settings/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$3;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$3;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    # getter for: Lcom/android/settings/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;
    invoke-static {v2}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$000(Lcom/android/settings/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderService;->hasClearableItems([Landroid/service/notification/StatusBarNotification;)Z
    invoke-static {v1, v2}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$200(Lcom/android/settings/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$3;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$3;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    # getter for: Lcom/android/settings/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;
    invoke-static {v2}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$000(Lcom/android/settings/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderService;->hasCheckedPacakages([Landroid/service/notification/StatusBarNotification;)Z
    invoke-static {v1, v2}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$300(Lcom/android/settings/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NotificationReminderService"

    const-string v2, "Still has some RemindableNoti after some notificaions are cleared"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "NotificationReminderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notiifcation removed! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "NotificationReminderService"

    const-string v2, "turn off flash as there is no remindable notifications"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$3;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    const/4 v2, 0x0

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderService;->updateLedFlashLocked(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$400(Lcom/android/settings/notificationreminder/NotificationReminderService;Z)V

    goto :goto_0
.end method
