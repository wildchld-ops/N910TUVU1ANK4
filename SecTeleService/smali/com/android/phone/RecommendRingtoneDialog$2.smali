.class Lcom/android/phone/RecommendRingtoneDialog$2;
.super Ljava/lang/Object;
.source "RecommendRingtoneDialog.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RecommendRingtoneDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RecommendRingtoneDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/RecommendRingtoneDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RecommendRingtoneDialog$2;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    const-string v0, "RecommendRingtoneDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown audio focus change code,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "RecommendRingtoneDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog$2;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    # getter for: Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/phone/RecommendRingtoneDialog;->access$200(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog$2;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    # getter for: Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/phone/RecommendRingtoneDialog;->access$200(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog$2;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    # getter for: Lcom/android/phone/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/RecommendRingtoneDialog;->access$700(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog$2;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    # getter for: Lcom/android/phone/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/RecommendRingtoneDialog;->access$700(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog$2;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    # getter for: Lcom/android/phone/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/android/phone/RecommendRingtoneDialog;->access$800(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
