.class Lcom/android/mms/transaction/MessagingNotificationAlert$1;
.super Landroid/content/BroadcastReceiver;
.source "MessagingNotificationAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotificationAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MessagingNotificationAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$1;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$1;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    sget-object v1, Lcom/android/mms/transaction/MessagingNotificationAlert;->mMediaPlayer:Landroid/media/MediaPlayer;

    # invokes: Lcom/android/mms/transaction/MessagingNotificationAlert;->setVolume(Landroid/media/MediaPlayer;)V
    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotificationAlert;->access$000(Lcom/android/mms/transaction/MessagingNotificationAlert;Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method
