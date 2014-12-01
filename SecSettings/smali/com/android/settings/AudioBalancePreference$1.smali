.class Lcom/android/settings/AudioBalancePreference$1;
.super Ljava/lang/Object;
.source "AudioBalancePreference.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AudioBalancePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AudioBalancePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/AudioBalancePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AudioBalancePreference$1;->this$0:Lcom/android/settings/AudioBalancePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "AudioBalancePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown audio focus change code,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    const-string v0, "AudioBalancePreference"

    const-string v1, "AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference$1;->this$0:Lcom/android/settings/AudioBalancePreference;

    # getter for: Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/settings/AudioBalancePreference;->access$000(Lcom/android/settings/AudioBalancePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference$1;->this$0:Lcom/android/settings/AudioBalancePreference;

    # getter for: Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/settings/AudioBalancePreference;->access$000(Lcom/android/settings/AudioBalancePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference$1;->this$0:Lcom/android/settings/AudioBalancePreference;

    # getter for: Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/settings/AudioBalancePreference;->access$000(Lcom/android/settings/AudioBalancePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    :pswitch_2
    const-string v0, "AudioBalancePreference"

    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference$1;->this$0:Lcom/android/settings/AudioBalancePreference;

    # getter for: Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/settings/AudioBalancePreference;->access$000(Lcom/android/settings/AudioBalancePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    :pswitch_3
    const-string v0, "AudioBalancePreference"

    const-string v1, "AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
