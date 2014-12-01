.class Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;
.super Landroid/os/Handler;
.source "ReadChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ReadChangedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadChangedHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ReadChangedReceiver$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotificationsForMarkAsRead(Landroid/content/Context;)V

    const-string v1, "Mms/ReadChangedReceiver"

    const-string v2, "handleMessage. done"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
