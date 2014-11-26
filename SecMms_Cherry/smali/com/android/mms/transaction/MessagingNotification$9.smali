.class final Lcom/android/mms/transaction/MessagingNotification$9;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->foregroundPresidentialAlert(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    # invokes: Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I
    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->access$1700(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->mNotification:Landroid/app/Notification;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1800()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->mNotification:Landroid/app/Notification;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1800()Landroid/app/Notification;

    move-result-object v1

    iput-object v2, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->mNotification:Landroid/app/Notification;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1800()Landroid/app/Notification;

    move-result-object v1

    iput-object v2, v1, Landroid/app/Notification;->vibrate:[J

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->mNotification:Landroid/app/Notification;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1800()Landroid/app/Notification;

    move-result-object v1

    const v2, 0x7f020086

    iput v2, v1, Landroid/app/Notification;->icon:I

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->mNotification:Landroid/app/Notification;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1800()Landroid/app/Notification;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->priority:I

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x41c

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->mNotification:Landroid/app/Notification;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1800()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method
