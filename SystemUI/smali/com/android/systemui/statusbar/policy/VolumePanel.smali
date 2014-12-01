.class public Lcom/android/systemui/statusbar/policy/VolumePanel;
.super Landroid/widget/LinearLayout;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "VolumePanel-SystemUI"


# instance fields
.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioService:Landroid/media/IAudioService;

.field private mBarExpanded:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIcon:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSettingsButton:Landroid/widget/ImageView;

.field private mSettingsButtonListener:Landroid/view/View$OnClickListener;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTracking:Z

.field private final mVoiceCapable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/VolumePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/VolumePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/systemui/statusbar/policy/VolumePanel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/VolumePanel$1;-><init>(Lcom/android/systemui/statusbar/policy/VolumePanel;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/statusbar/policy/VolumePanel$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/VolumePanel$2;-><init>(Lcom/android/systemui/statusbar/policy/VolumePanel;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioService:Landroid/media/IAudioService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mVoiceCapable:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/VolumePanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mTracking:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/VolumePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateVolume()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/VolumePanel;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getStreamMaxVolume(I)I
    .locals 1

    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0}, Landroid/media/IAudioService;->getRemoteStreamMaxVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1

    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0}, Landroid/media/IAudioService;->getRemoteStreamVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private setStreamVolume(III)V
    .locals 1

    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, p2}, Landroid/media/IAudioService;->setRemoteStreamVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private updateContentDescription()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateIcon()V
    .locals 10

    const/4 v9, 0x3

    const/4 v4, -0x1

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->values()[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    iget v7, v6, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->streamType:I

    iget v8, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    if-ne v7, v8, :cond_0

    packed-switch v5, :pswitch_data_1

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_0
    const v4, 0x7f020315

    goto :goto_0

    :pswitch_1
    const v4, 0x7f02030b

    goto :goto_0

    :pswitch_2
    const v4, 0x7f020311

    goto :goto_0

    :pswitch_3
    iget v4, v6, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->iconVibrateRes:I

    goto :goto_2

    :pswitch_4
    iget v4, v6, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->iconMuteRes:I

    goto :goto_2

    :pswitch_5
    iget v4, v6, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->iconRes:I

    goto :goto_2

    :cond_1
    iget v7, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    if-ne v7, v9, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v9}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v7

    and-int/lit16 v7, v7, 0x3a0

    if-eqz v7, :cond_2

    packed-switch v5, :pswitch_data_2

    :cond_2
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_6
    const v4, 0x7f020308

    goto :goto_3

    :pswitch_7
    const v4, 0x7f020309

    goto :goto_3

    :pswitch_8
    const v4, 0x7f020308

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method private updateVolume()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBarExpanded:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/media/AudioManager;->getActiveStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    const-string v0, "VolumePanel-SystemUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActiveStreamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/media/AudioManager;->getActiveStreamType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMin(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateIcon()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/VolumePanel;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMin(I)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onBarCollapse()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBarExpanded:Z

    return-void
.end method

.method public onBarExpand()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateVolume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBarExpanded:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateContentDescription()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f08015d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMuteAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f08015e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateVolume()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateContentDescription()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    if-eqz p3, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->getStreamVolume(I)I

    move-result v0

    if-eq v0, p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mVoiceCapable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    const/16 v1, 0x1000

    invoke-direct {p0, v0, p2, v1}, Lcom/android/systemui/statusbar/policy/VolumePanel;->setStreamVolume(III)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateIcon()V

    :cond_1
    return-void

    :pswitch_0
    const-string v0, "VolumePanel-SystemUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RingerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mTracking:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mTracking:Z

    iget v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method
