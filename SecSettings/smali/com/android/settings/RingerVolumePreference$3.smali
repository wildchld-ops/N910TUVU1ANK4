.class Lcom/android/settings/RingerVolumePreference$3;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RingerVolumePreference;
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

    iput-object p1, p0, Lcom/android/settings/RingerVolumePreference$3;->this$0:Lcom/android/settings/RingerVolumePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_1
    # getter for: Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I
    invoke-static {}, Lcom/android/settings/RingerVolumePreference;->access$200()[I

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_2

    # getter for: Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I
    invoke-static {}, Lcom/android/settings/RingerVolumePreference;->access$300()[I

    move-result-object v3

    aget v3, v3, v0

    if-ne v3, v5, :cond_3

    move v1, v0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/RingerVolumePreference$3;->this$0:Lcom/android/settings/RingerVolumePreference;

    # getter for: Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    invoke-static {v3}, Lcom/android/settings/RingerVolumePreference;->access$400(Lcom/android/settings/RingerVolumePreference;)[Landroid/preference/VolumePreference$SeekBarVolumizer;

    move-result-object v3

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v3, p0, Lcom/android/settings/RingerVolumePreference$3;->this$0:Lcom/android/settings/RingerVolumePreference;

    # getter for: Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/settings/RingerVolumePreference;->access$500(Lcom/android/settings/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    const-string v3, "RingerVolumePreference"

    const-string v4, "onReceive call dual color"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/RingerVolumePreference$3;->this$0:Lcom/android/settings/RingerVolumePreference;

    # getter for: Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I
    invoke-static {}, Lcom/android/settings/RingerVolumePreference;->access$300()[I

    move-result-object v4

    aget v4, v4, v1

    iget-object v5, p0, Lcom/android/settings/RingerVolumePreference$3;->this$0:Lcom/android/settings/RingerVolumePreference;

    # getter for: Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/android/settings/RingerVolumePreference;->access$600(Lcom/android/settings/RingerVolumePreference;)[Landroid/widget/SeekBar;

    move-result-object v5

    aget-object v5, v5, v1

    # invokes: Lcom/android/settings/RingerVolumePreference;->setDualColorSeekbar(ILandroid/widget/SeekBar;)V
    invoke-static {v3, v4, v5}, Lcom/android/settings/RingerVolumePreference;->access$700(Lcom/android/settings/RingerVolumePreference;ILandroid/widget/SeekBar;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
