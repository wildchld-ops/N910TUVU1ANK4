.class Lcom/android/settings/notificationreminder/NotificationReminderService$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings/notificationreminder/NotificationReminderService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$2;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderService$2;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderService;

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderService;->updateAlaramRepeating()V
    invoke-static {v0}, Lcom/android/settings/notificationreminder/NotificationReminderService;->access$600(Lcom/android/settings/notificationreminder/NotificationReminderService;)V

    return-void
.end method
