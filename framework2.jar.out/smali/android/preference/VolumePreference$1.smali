.class Landroid/preference/VolumePreference$1;
.super Ljava/lang/Object;
.source "VolumePreference.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/VolumePreference;


# direct methods
.method constructor <init>(Landroid/preference/VolumePreference;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/VolumePreference$1;->this$0:Landroid/preference/VolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAudioFocusChange - focusChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/preference/VolumePreference$1;->this$0:Landroid/preference/VolumePreference;

    # getter for: Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;
    invoke-static {v0}, Landroid/preference/VolumePreference;->access$100(Landroid/preference/VolumePreference;)Landroid/preference/VolumePreference$SeekBarVolumizer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/VolumePreference$1;->this$0:Landroid/preference/VolumePreference;

    # getter for: Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;
    invoke-static {v0}, Landroid/preference/VolumePreference;->access$100(Landroid/preference/VolumePreference;)Landroid/preference/VolumePreference$SeekBarVolumizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
