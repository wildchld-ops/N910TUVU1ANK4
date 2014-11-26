.class public Lcom/android/mms/ui/CMASPreviewDialog;
.super Landroid/app/AlertDialog;
.source "CMASPreviewDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMASPreview/Dialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVibrator:Landroid/os/Vibrator;

.field private mplayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    const-string v1, "CMASPreview/Dialog"

    const-string v2, "dismiss"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreviewDialog;->stopCmasAlert()V

    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreviewDialog;->stopCmasVibrator()V

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const/4 v7, 0x1

    const-string v4, "CMASPreview/Dialog"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const v4, 0x7f0c0322

    invoke-virtual {p0, v4}, Landroid/app/Dialog;->setTitle(I)V

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0323

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v5, -0x2

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0324

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v6, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    const/high16 v4, 0x10000

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreviewDialog;->playCmasAlert()V

    const-string v4, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreviewDialog;->playCmasVibrator()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected playCmasAlert()V
    .locals 7

    const-string v3, "android.resource://com.android.mms/raw/cmas_ringtone"

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    :goto_0
    return-void

    :cond_0
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const-string v4, "CMASPreview/Dialog"

    const-string v5, "Am now in playing"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "CMASPreview/Dialog"

    const-string v5, "Exception in tree click"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "CMASPreview/Dialog"

    const-string v5, "Ringtone str not found"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected playCmasVibrator()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0xc

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0

    nop

    :array_0
    .array-data 8
        0x1f4
        0x7d0
        0x1f4
        0x3e8
        0x1f4
        0x3e8
        0x1f4
        0x7d0
        0x1f4
        0x3e8
        0x1f4
        0x3e8
    .end array-data
.end method

.method protected stopCmasAlert()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mplayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method protected stopCmasVibrator()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreviewDialog;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method
