.class Lcom/android/settings/RingerVolumePreference$2;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RingerVolumePreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/RingerVolumePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RingerVolumePreference$2;->this$0:Lcom/android/settings/RingerVolumePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/16 v6, 0x65

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$2;->this$0:Lcom/android/settings/RingerVolumePreference;

    # getter for: Lcom/android/settings/RingerVolumePreference;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/RingerVolumePreference;->access$100(Lcom/android/settings/RingerVolumePreference;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference$2;->this$0:Lcom/android/settings/RingerVolumePreference;

    # getter for: Lcom/android/settings/RingerVolumePreference;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/RingerVolumePreference;->access$100(Lcom/android/settings/RingerVolumePreference;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "android.media.EXTRA_RINGER_MODE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v6, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$2;->this$0:Lcom/android/settings/RingerVolumePreference;

    # getter for: Lcom/android/settings/RingerVolumePreference;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/RingerVolumePreference;->access$100(Lcom/android/settings/RingerVolumePreference;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference$2;->this$0:Lcom/android/settings/RingerVolumePreference;

    # getter for: Lcom/android/settings/RingerVolumePreference;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/RingerVolumePreference;->access$100(Lcom/android/settings/RingerVolumePreference;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v6, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
