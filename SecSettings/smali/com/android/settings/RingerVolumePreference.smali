.class public Lcom/android/settings/RingerVolumePreference;
.super Landroid/preference/VolumePreference;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I

.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_SECTION_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private isWidget:Ljava/lang/Boolean;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOpenRingerVolumeDialog:Z

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;

.field private mVolume:Lcom/android/settings/SoundSettings;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_SECTION_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b0453
        0x7f0b044f
        0x7f0b0457
        0x7f0b045b
        0x7f0b045d
        0x7f0b0461
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x2
        0x5
        0x4
        0x1
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x7f0b0452
        0x7f0b044e
        0x7f0b0456
        0x7f0b045a
        0x7f0b045c
        0x7f0b0460
    .end array-data

    :array_3
    .array-data 4
        0x7f0b0451
        0x7f0b044c
        0x7f0b0454
        0x7f0b0459
    .end array-data

    :array_4
    .array-data 4
        0x1080491
        0x1080487
        0x1080480
        0x108047b
        0x108048c
        0x1080483
    .end array-data

    :array_5
    .array-data 4
        0x108048e
        0x1080485
        0x108047e
        0x108047a
        0x108048b
        0x1080483
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/settings/RingerVolumePreference;->mOpenRingerVolumeDialog:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->isWidget:Ljava/lang/Boolean;

    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    new-instance v0, Lcom/android/settings/RingerVolumePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RingerVolumePreference$1;-><init>(Lcom/android/settings/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/RingerVolumePreference$3;

    invoke-direct {v0, p0}, Lcom/android/settings/RingerVolumePreference$3;-><init>(Lcom/android/settings/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/RingerVolumePreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/preference/VolumePreference;->setStreamType(I)V

    const v0, 0x7f0401b8

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/VolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RingerVolumePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/RingerVolumePreference;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/RingerVolumePreference;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/RingerVolumePreference;)[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/RingerVolumePreference;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/RingerVolumePreference;)[Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/RingerVolumePreference;ILandroid/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingerVolumePreference;->setDualColorSeekbar(ILandroid/widget/SeekBar;)V

    return-void
.end method

.method private cleanup()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aput-object v4, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_3
    return-void
.end method

.method private getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const-string v3, "RingerVolumePreference"

    const-string v4, "Package name is not found"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private setDualColorSeekbar(ILandroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RingerVolumePreference"

    const-string v1, "setDualColorSeekbar set dual"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setUseDualColorProgressBar(Z)V

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setDualColorProgress(I)Z

    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    const-string v0, "RingerVolumePreference"

    const-string v1, "setDualColorSeekbar set single"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setUseDualColorProgressBar(Z)V

    goto :goto_1
.end method

.method private updateSlidersAndMutedStates()V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_6

    sget-object v4, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v2, v4, v0

    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v6, :cond_3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-nez v3, :cond_2

    sget-object v4, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v4, v4, v0

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v4

    if-eq v2, v4, :cond_5

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x1080489

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x1080482

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x108048d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v4, v4, v0

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-nez v3, :cond_4

    sget-object v4, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v4, v4, v0

    :goto_4
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v4, v4, v0

    goto :goto_4

    :cond_5
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public directVolume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->isWidget:Ljava/lang/Boolean;

    return-void
.end method

.method public onActivityStop()V
    .locals 4

    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 26

    invoke-super/range {p0 .. p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    new-instance v20, Landroid/content/IntentFilter;

    invoke-direct/range {v20 .. v20}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/RingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v11, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    sget-object v10, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/RingerVolumePreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/RingerVolumePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ultra_powersaving_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.resource://com.android.phone/raw/low_power_ringtone"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/RingerVolumePreference;->mContext:Landroid/content/Context;

    invoke-static {v2, v13}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object v11, v13

    :cond_0
    const/16 v17, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v2, v2, v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v5, v2, v17

    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v2, v2, v17

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const-string v2, "RingerVolumePreference"

    const-string v3, "onBindDialogView call dual color"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v2, v2, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v3, v3, v17

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings/RingerVolumePreference;->setDualColorSeekbar(ILandroid/widget/SeekBar;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    move-object/from16 v25, v0

    new-instance v2, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v3, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v6, v3, v17

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/RingerVolumePreference;->getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v2, v25, v17

    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v3, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v6, v6, v17

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v3, v2, v17

    goto :goto_1

    :cond_2
    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_3

    sget-object v2, Lcom/android/settings/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v2, v2, v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v9, v2, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/RingerVolumePreference;->updateSlidersAndMutedStates()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_4

    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/settings/RingerVolumePreference$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/RingerVolumePreference$2;-><init>(Lcom/android/settings/RingerVolumePreference;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v18, 0x7f0b044c

    :goto_3
    const/16 v17, 0x0

    :goto_4
    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_SECTION_ID:[I

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_a

    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_SECTION_ID:[I

    aget v2, v2, v17

    move/from16 v0, v18

    if-eq v2, v0, :cond_5

    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_SECTION_ID:[I

    aget v2, v2, v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    :cond_6
    const v18, 0x7f0b0451

    goto :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/RingerVolumePreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_8
    const v18, 0x7f0b044c

    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/RingerVolumePreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const v2, 0x7f0b0450

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    const-string v21, "com.sec.android.app.clockpackage"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/RingerVolumePreference;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_12

    :cond_b
    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    if-nez v22, :cond_c

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    const v18, 0x7f0b0458

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v18, 0x7f0b0459

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-nez v2, :cond_e

    const v18, 0x7f0b045e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v18, 0x7f0b045f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Settings_WaitToneVolumeDisable"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const v18, 0x7f0b045f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "all_sound_off"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v2, 0x1

    if-ne v8, v2, :cond_10

    new-instance v19, Landroid/content/Intent;

    const-string v2, "android.intent.action.SOUND_OFF_TOAST"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_10
    return-void

    :cond_11
    const v18, 0x7f0b0454

    goto/16 :goto_5

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_6
.end method

.method protected onDialogClosed(Z)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/RingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v7, v1, v3

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    invoke-virtual {v7}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v8, "RingerVolumePreference"

    const-string v9, "onDialogClosed : mVolumeChangeReceiver is not registered."

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_PHONE_PROFILE"

    invoke-static {v8}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "sound_profile_mode"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "profile_music_volume"

    iget-object v9, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v10, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v10, v10, v12

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "profile_ring_volume"

    iget-object v9, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v10, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "profile_notification_volume"

    iget-object v9, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v10, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "profile_system_volume"

    iget-object v9, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v10, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "content://com.android.settings/profile"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    int-to-long v9, v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v0, v6, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    invoke-direct {p0}, Lcom/android/settings/RingerVolumePreference;->cleanup()V

    iput-boolean v12, p0, Lcom/android/settings/RingerVolumePreference;->mOpenRingerVolumeDialog:Z

    iget-object v8, p0, Lcom/android/settings/RingerVolumePreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/RingerVolumePreference;->isWidget:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/android/settings/RingerVolumePreference;->mVolume:Lcom/android/settings/SoundSettings;

    invoke-virtual {v8}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_3
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    :sswitch_0
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/RingerVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    return-void

    :cond_2
    check-cast p1, Lcom/android/settings/RingerVolumePreference$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/android/settings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    invoke-super {p0}, Landroid/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Lcom/android/settings/RingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/settings/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/settings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v4

    const/4 v0, 0x0

    :goto_1
    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    if-eqz v3, :cond_1

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method public setObject(Lcom/android/settings/SoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RingerVolumePreference;->mVolume:Lcom/android/settings/SoundSettings;

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/RingerVolumePreference;->mOpenRingerVolumeDialog:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/RingerVolumePreference;->mOpenRingerVolumeDialog:Z

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
