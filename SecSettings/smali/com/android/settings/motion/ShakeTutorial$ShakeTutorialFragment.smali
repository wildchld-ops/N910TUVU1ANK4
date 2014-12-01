.class public Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ShakeTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/ShakeTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShakeTutorialFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;
    }
.end annotation


# static fields
.field private static final mAnimationImage:[I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

.field private mBTdevice1:Landroid/preference/Preference;

.field private mBTdevice2:Landroid/preference/Preference;

.field private mCanShake:Z

.field private mContext:Landroid/content/Context;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mRetryDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationImage:[I

    return-void

    :array_0
    .array-data 4
        0x7f020490
        0x7f020491
        0x7f020490
        0x7f020491
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    iput-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mRetryDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    iput-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$1;-><init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    iput-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$2;-><init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    iput-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$3;-><init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    iput-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    return p1
.end method

.method static synthetic access$200()Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1

    sget-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)Landroid/hardware/motion/MRListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->removeBTPreference()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->addBTPreference()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->stopAnimation()V

    return-void
.end method

.method private addBTPreference()V
    .locals 2

    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    const-string v1, "BT device 1"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    const v1, 0x7f02020f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    const-string v1, "BT device 2"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    const v1, 0x7f020213

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private removeBTPreference()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method private startAnimation()V
    .locals 2

    const-string v0, "ShakeTutorial"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->updateAnimation()V

    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    const-string v0, "ShakeTutorial"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    const/16 v3, 0x66

    const-string v0, "ShakeTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    :cond_0
    iget v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->stopAnimation()V

    iget v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090114

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    const v1, 0x7f090fde

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f02020f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    new-instance v1, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;-><init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    const v2, 0x7f0902b1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v1, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iput-boolean v4, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    return-void

    :cond_0
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f02020e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f020218

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    const-string v0, "ShakeTutorial"

    const-string v1, "context is assigned"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v1, 0x7f09007e

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02047b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->showGuideDialog()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->stopAnimation()V

    sget-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->updateAnimation()V

    sget-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "ShakeTutorial"

    const-string v1, "onStop : remove handler message"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    return-void
.end method

.method public showGuideDialog()V
    .locals 10

    const/4 v9, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    iput-object v9, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v6, 0x7f040085

    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0b00a6

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0b019d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.samsung.swift.app.kiesair"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v6, 0x7f090fdd

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    if-nez v3, :cond_1

    const-string v6, "CHM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const v6, 0x7f090fe0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_1
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f090fd4

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f090859

    invoke-virtual {v0, v6, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    iget-object v6, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$6;

    invoke-direct {v7, p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$6;-><init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->startAnimation()V

    return-void

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const v6, 0x7f090fdf

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
