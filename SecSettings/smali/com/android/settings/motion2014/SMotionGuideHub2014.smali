.class public Lcom/android/settings/motion2014/SMotionGuideHub2014;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SMotionGuideHub2014.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;
    }
.end annotation


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAdvancedCategory:Landroid/preference/PreferenceCategory;

.field private mAdvancedSetting:Landroid/preference/Preference;

.field private mAdvancedSettingsIsTop:Z

.field private mAirBrowseDialog:Landroid/app/AlertDialog;

.field private mAirBrowsePreference:Landroid/preference/Preference;

.field private mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmailBody:Landroid/preference/CheckBoxPreference;

.field private mFlipCloseStatus:Z

.field private mFolderDialog:Landroid/app/AlertDialog;

.field private mFunctionTitleID1:I

.field private mFunctionTitleID2:I

.field private mFunctionTitleID3:I

.field private mFunctionTitleView1:Landroid/widget/TextView;

.field private mFunctionTitleView2:Landroid/widget/TextView;

.field private mFunctionTitleView3:Landroid/widget/TextView;

.field private mGuideAniResID1:I

.field private mGuideAniResID2:I

.field private mGuideAniResID3:I

.field private mGuideContent1:Ljava/lang/String;

.field private mGuideContent2:Ljava/lang/String;

.field private mGuideContent3:Ljava/lang/String;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHasAdvancedSettings:Z

.field private mHasListView:Z

.field private mHeadMessageID:I

.field private mHeadMessageView:Landroid/widget/TextView;

.field private mImageView1:Landroid/widget/ImageView;

.field private mImageView2:Landroid/widget/ImageView;

.field private mImageView3:Landroid/widget/ImageView;

.field private mInternetWindow:Landroid/preference/CheckBoxPreference;

.field private mIsTurningOverOnly:Z

.field private mListView:Landroid/widget/ListView;

.field private mMessageView1:Landroid/widget/TextView;

.field private mMessageView2:Landroid/widget/TextView;

.field private mMessageView3:Landroid/widget/TextView;

.field private mMotionDBItem:Ljava/lang/String;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mMotionType:Ljava/lang/String;

.field private mNotePageView:Landroid/preference/CheckBoxPreference;

.field private mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

.field private mNumOfTutorial:I

.field private mPalmTouch:Landroid/preference/CheckBoxPreference;

.field private final mQuickApplicationObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSinglePhotoView:Landroid/preference/CheckBoxPreference;

.field private mSmartPause:Landroid/preference/CheckBoxPreference;

.field private mSmartPauseObserver:Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;

.field private mSupportFolderType:Z

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mTurnOver:Landroid/preference/CheckBoxPreference;

.field private mTutorialTitleID1:I

.field private mTutorialTitleID2:I

.field private mTutorialTitleID3:I

.field private mTutorialTitleView1:Landroid/widget/TextView;

.field private mTutorialTitleView2:Landroid/widget/TextView;

.field private mTutorialTitleView3:Landroid/widget/TextView;

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent3:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID1:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID2:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID3:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID1:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID2:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID3:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID2:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID3:I

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    iput-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    iput-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSettingsIsTop:Z

    iput-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    iput-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasListView:Z

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v0, Lcom/android/settings/motion2014/SMotionGuideHub2014$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$13;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mQuickApplicationObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V
    .locals 0
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirBrowseAndScrollChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V
    .locals 0
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirWakeupChanged(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V
    .locals 0
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->updateStatus()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;I)V
    .locals 0
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTryActually(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V
    .locals 0
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTurnOverTryActually(Z)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1    # Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1    # Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1    # Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method private broadcastAirBrowseAndScrollChanged(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastAirWakeupChanged(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_WAKE_UP_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastStatusChanged(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private isAllAirTurnAndScrollOptionDisabled()Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "air_motion_scroll_email_body"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll_web_page"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_single_photo_view"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_turn_internet_window"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_turn_now_playing_on_music"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_turn_note_page_view"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    or-int/2addr v2, v3

    or-int/2addr v2, v4

    or-int/2addr v2, v5

    or-int/2addr v2, v6

    or-int/2addr v2, v7

    or-int/2addr v2, v8

    if-ge v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAllMutePauseOptionDisabled()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "motion_overturn"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static {v3}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_palm_touch"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    :goto_1
    or-int/2addr v0, v3

    or-int/2addr v0, v1

    if-ge v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1
.end method

.method private isAllMutePauseOptionunCkecked()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static {v3}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    or-int/2addr v0, v2

    if-ge v0, v1, :cond_4

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method private setArgument(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x2

    const v4, 0x7f0919c2

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "air_wake_up"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasListView:Z

    const-string v0, "air_motion_wake_up"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f091048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    :cond_0
    const v0, 0x7f020027

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    iput v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    :goto_0
    return-void

    :cond_1
    const-string v1, "air_turn_and_scroll"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasListView:Z

    const-string v0, "air_motion_turn"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f09104b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    :cond_2
    const v0, 0x7f02002a

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    iput v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto :goto_0

    :cond_3
    const v1, 0x7f09104a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v1, "pick_up"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "motion_pick_up"

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090fe4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    :goto_2
    const v0, 0x7f020495

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    iput v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090fe3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090fe2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string v1, "pick_up_to_call_out"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "motion_pick_up_to_call_out"

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ffa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    :goto_3
    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    :cond_8
    const v0, 0x7f020477

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    iput v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ff9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ff8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_3

    :cond_b
    const-string v0, "merged_mute_or_pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "motion_merged_mute_pause"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mIsTurningOverOnly:Z

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    const v0, 0x7f091054

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    :cond_c
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09100e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    :cond_d
    :goto_5
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f02015f

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    const v0, 0x7f091053

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID1:I

    :cond_e
    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_10

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090fe7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    :cond_f
    const v0, 0x7f0204ab

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID2:I

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mIsTurningOverOnly:Z

    if-nez v0, :cond_13

    const v0, 0x7f091052

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID2:I

    :cond_10
    :goto_6
    iput v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    :cond_11
    const v0, 0x7f091055

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    goto :goto_4

    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09100f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_5

    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f091056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    goto :goto_6

    :cond_14
    const-string v0, "quick_application_access"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "quick_application_access"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f091c14

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    const v0, 0x7f020582

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    iput v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    :cond_15
    const-string v0, "palm_swipe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "surface_palm_swipe"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09100c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    :goto_7
    const v0, 0x7f02015e

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    iput v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09100b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_7

    :cond_17
    const-string v0, "SMotionGuideHub"

    const-string v1, "Cannot get correct motion information"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showAirbrowseDialog()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0401b0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0b043d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09105d

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b043e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e000b

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v4, 0x7f09105e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SPR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "VZW"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TMB"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "USC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CRI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "VMU"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "BST"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "XAS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TFN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "XAR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CSP"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const v1, 0x7f0e000c

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v4, 0x7f09105f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b043f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f091060

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f020028

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f091061

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$10;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$10;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2014/SMotionGuideHub2014$9;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$9;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showFolderDialog()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0919c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090859

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$8;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$8;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2014/SMotionGuideHub2014$7;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$7;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showTalkBackDisableDialog(Ljava/lang/String;)V
    .locals 4

    const v2, 0x7f0910ae

    const v1, 0x7f0910ad

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    const-string v0, "air_motion_turn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090836

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :cond_0
    const-string v0, "surface_palm_swipe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f091002

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f091003

    goto :goto_0

    :cond_1
    const-string v0, "motion_merged_mute_pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f09112e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f09129f

    invoke-virtual {p0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0910af

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showUseRingDialog()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ff1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090ff0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090859

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$6;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$6;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090ff2

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$5;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private startTryActually(Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x2

    const/16 v3, 0xa

    const-string v0, "air_wake_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showFolderDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "air_turn_and_scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p2, v4, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showFolderDialog()V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AirScrollTry"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showFolderDialog()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MotionTest"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_6
    const-string v0, "pick_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "pick_up_to_call_out"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "KDI"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "com.android.contacts.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    iget-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showFolderDialog()V

    goto/16 :goto_0

    :cond_a
    const-string v1, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "merged_mute_or_pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-ne p2, v4, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PALM_TOUCH_TUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "SMotionGuideHub"

    const-string v1, "MotionTutorialSettings Tutorial Palm touch to mute/pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    if-ne p2, v2, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_e

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showUseRingDialog()V

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTurnOverTryActually(Z)V

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_HELP_VIDEO_SMART_PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "file:///system/media/video/video_help.mp4"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_11
    const-string v0, "palm_swipe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_12
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.pickuptutorial.PALMSWIPETUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PalmMotionTest"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "SMotionGuideHub"

    const-string v1, "MotionTutorialSettings Tutorial Palm swipe to capture"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private startTurnOverTryActually(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.alarm.OverturnTutorialAlarmScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateStatus()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v1, "air_turn_and_scroll"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_scroll_email_body"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_single_photo_view"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_internet_window"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_now_playing_on_music"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_note_page_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    :goto_6
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    :goto_7
    return-void

    :cond_1
    move v0, v3

    goto/16 :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    move v1, v3

    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_6

    :cond_8
    const-string v1, "merged_mute_or_pause"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mIsTurningOverOnly:Z

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "surface_palm_touch"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_8
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_overturn"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_9
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_pause"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_b

    :goto_a
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_7

    :cond_9
    move v1, v3

    goto :goto_8

    :cond_a
    move v1, v3

    goto :goto_9

    :cond_b
    move v2, v3

    goto :goto_a

    :cond_c
    const-string v1, "palm_swipe"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_d

    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_d
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "SMotionGuideHub"

    const-string v2, "MDM: Screen Capture Disabled"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_7

    :cond_e
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_7
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    :cond_4
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    :cond_5
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f04020d

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0b0503

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageView:Landroid/widget/TextView;

    const v3, 0x7f0b0504

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView1:Landroid/widget/TextView;

    const v3, 0x7f0b0508

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView2:Landroid/widget/TextView;

    const v3, 0x7f0b050c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView3:Landroid/widget/TextView;

    const v3, 0x7f0b0505

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    const v3, 0x7f0b0509

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    const v3, 0x7f0b050d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView3:Landroid/widget/ImageView;

    const v3, 0x7f0b0506

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView1:Landroid/widget/TextView;

    const v3, 0x7f0b050a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView2:Landroid/widget/TextView;

    const v3, 0x7f0b050e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView3:Landroid/widget/TextView;

    const v3, 0x7f0b0507

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView1:Landroid/widget/TextView;

    const v3, 0x7f0b050b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView2:Landroid/widget/TextView;

    const v3, 0x7f0b050f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView3:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent3:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView3:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID1:I

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID2:I

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID3:I

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView3:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID1:I

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID2:I

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID3:I

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView3:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_a
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID2:I

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_b
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID3:I

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_c
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-boolean v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSettingsIsTop:Z

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :goto_d
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageView:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView1:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView2:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView3:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView3:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent3:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_8
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView1:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView1:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID1:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_9
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView2:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView2:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID2:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    :cond_a
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView3:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView3:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID3:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    :cond_b
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView1:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView1:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID1:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_7

    :cond_c
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView2:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView2:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID2:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8

    :cond_d
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView3:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView3:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID3:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9

    :cond_e
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    const v4, 0x7f020582

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_a

    :cond_f
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID2:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_b

    :cond_10
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView3:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID3:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_c

    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto/16 :goto_d
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "default"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "air_motion_wake_up"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirWakeupChanged(Z)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "air_motion_turn"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_4

    move v2, v0

    :goto_3
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_scroll"

    if-eqz p2, :cond_5

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirBrowseAndScrollChanged(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    const-string v2, "motion_merged_mute_pause"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mIsTurningOverOnly:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_overturn"

    if-eqz p2, :cond_7

    :goto_5
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_a

    :goto_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto :goto_6

    :cond_b
    const-string v2, "surface_palm_swipe"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_d

    :goto_7
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto :goto_7

    :cond_e
    const-string v2, "quick_application_access"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "SMotionGuideHub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KKK onCheckChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_application_access"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "quick_application_access"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_11

    :goto_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_11
    move v0, v1

    goto :goto_8
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTryActually(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1    # Landroid/os/Bundle;

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mIsTurningOverOnly:Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v18, "type"

    const-string v19, "default"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    const-string v18, "hasAdvancedSettings"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    const-string v18, "AdvancedSettingsIsTop"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSettingsIsTop:Z

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "merged_mute_or_pause"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const v19, 0x7f091043

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->setTitle(I)V

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v0, v6, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->setArgument(Ljava/lang/String;)V

    const v18, 0x7f0700bc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_c

    new-instance v18, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0f004c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const/16 v19, 0x10

    const/16 v20, 0x10

    invoke-virtual/range {v18 .. v20}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v19, v0

    new-instance v20, Landroid/app/ActionBar$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    const v23, 0x800015

    invoke-direct/range {v20 .. v23}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v18, "advanced_air_call_accept_auto_start_speaker"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->removePreference(Ljava/lang/String;)V

    const-string v18, "advanced_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const-string v18, "advanced_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    const-string v18, "learn_about_the_sensor"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowsePreference:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mIsTurningOverOnly:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowsePreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mOpenDetailMenu:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v18, "extra_parent_preference_key"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v18, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1c

    sget v18, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    const/16 v17, 0x1

    :goto_5
    const-string v18, "air_turn_and_scroll"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const-string v18, "email_body"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    :cond_6
    :goto_6
    const/16 v18, -0x1

    sput v18, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    :cond_7
    :goto_7
    new-instance v18, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPauseObserver:Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;

    return-void

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    const-string v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    :cond_9
    const-string v18, "hasAdvancedSettings"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    goto/16 :goto_0

    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_b
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const-string v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const v18, 0x7f040065

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    check-cast v13, Landroid/preference/PreferenceActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const/16 v19, 0x10

    const/16 v20, 0x10

    invoke-virtual/range {v18 .. v20}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    new-instance v19, Landroid/app/ActionBar$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    const v22, 0x800015

    invoke-direct/range {v19 .. v22}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const v18, 0x7f0b013e

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Switch;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    goto/16 :goto_3

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v18, "air_turn_and_scroll"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v18

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    const v19, 0x7f0910da

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const v18, 0x7f070014

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->addPreferencesFromResource(I)V

    const-string v18, "email_body"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    const-string v18, "single_photo_view"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    const-string v18, "internet_window"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    const-string v18, "now_playing_on_music"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    const-string v18, "bgm_on_lock_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    const-string v18, "note_page_view"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    const-string v15, "com.samsung.android.snote"

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const/16 v19, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    if-eqz v11, :cond_11

    const-string v18, "SMotionGuideHub"

    const-string v19, "S note is Installed."

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0910e9

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setTitle(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string v19, "com.sec.android.app.sbrowser"

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    const v19, 0x7f0910d9

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_8

    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0910e7

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setTitle(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v18, "SMotionGuideHub"

    const-string v19, "S note is NOT Installed"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "air_motion_turn_note_page_view"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_9

    :cond_12
    const-string v18, "merged_mute_or_pause"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v18

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const v19, 0x7f091043

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->setTitle(I)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    const v19, 0x7f091051

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowsePreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const v18, 0x7f070083

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->addPreferencesFromResource(I)V

    const-string v18, "palm_touch"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    const-string v18, "turn_over"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    const-string v18, "smart_pause"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    const-string v18, "smart_pause"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->removePreference(Ljava/lang/String;)V

    const-string v18, "smart_screen_pause_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->removePreference(Ljava/lang/String;)V

    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_14

    const-string v18, "palm_touch"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->removePreference(Ljava/lang/String;)V

    :cond_14
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_15

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    :cond_15
    const-string v18, "turn_over"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_5

    :cond_17
    const-string v18, "single_photo_view"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_6

    :cond_18
    const-string v18, "internet_window"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_6

    :cond_19
    const-string v18, "now_playing_on_music"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_6

    :cond_1a
    const-string v18, "bgm_on_lock_screen"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_6

    :cond_1b
    const-string v18, "note_page_view"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_6

    :cond_1c
    const-string v18, "learn_about_the_sensor"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowsePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_7
.end method

.method public onPause()V
    .locals 4

    const v3, 0x7f090fad

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "air_turn_and_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->isAllAirTurnAndScrollOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirBrowseAndScrollChanged(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPauseObserver:Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mQuickApplicationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    :cond_1
    const-string v0, "merged_mute_or_pause"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->isAllMutePauseOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_merged_mute_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_merged_mute_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mOpenDetailMenu:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :goto_0
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    if-nez p2, :cond_3

    :cond_1
    :goto_1
    return v2

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "air_motion_scroll_email_body"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    :goto_3
    const-string v0, "air_turn_and_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->isAllAirTurnAndScrollOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "air_motion_turn_single_photo_view"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_4
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_7
    move v0, v3

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "air_motion_turn_internet_window"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    :goto_5
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "air_motion_scroll_web_page"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    :goto_6
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_9
    move v0, v3

    goto :goto_5

    :cond_a
    move v0, v3

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "air_motion_turn_now_playing_on_music"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    :goto_7
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_c
    move v0, v3

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "air_motion_turn_bgm_on_lock_screen"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    :goto_8
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_e
    move v0, v3

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "air_motion_turn_note_page_view"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    :goto_9
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_10
    move v0, v3

    goto :goto_9

    :cond_11
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "surface_palm_touch"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v2

    :goto_a
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_12
    move v0, v3

    goto :goto_a

    :cond_13
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_16

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "motion_overturn"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    :goto_c
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto :goto_b

    :cond_15
    move v0, v3

    goto :goto_c

    :cond_16
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "smart_pause"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v2

    :goto_d
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "com.sec.SMART_PAUSE_CHANGED"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastStatusChanged(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_smart_pause_noti"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showSmartPauseDialog()V

    goto/16 :goto_3

    :cond_18
    move v0, v3

    goto :goto_d

    :cond_19
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowsePreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showAirbrowseDialog()V

    goto/16 :goto_3

    :cond_1a
    const-string v0, "merged_mute_or_pause"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->isAllMutePauseOptionunCkecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    :cond_1b
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v1, "default"

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->updateStatus()V

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_pause"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPauseObserver:Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_application_access"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mQuickApplicationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    return-void
.end method

.method public showSmartPauseDialog()V
    .locals 11

    const v10, 0x7f091058

    const/16 v3, 0x8

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f04023a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f0b0579

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0b019d

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0b057a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0195

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0b057b

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v2, 0x7f091062

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "%s"

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v8, "com.sec.feature.multiwindow"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    const v3, 0x7f091065

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v8, :cond_1

    const v3, 0x7f091066

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v8, "%s"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "%s"

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\n- "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v8, 0x7f091063

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\n- "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v8, 0x7f091064

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090836

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$11;

    invoke-direct {v2, p0, v5, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$11;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v4, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/motion2014/SMotionGuideHub2014$12;

    invoke-direct {v0, p0, v5, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$12;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    const-string v3, "SMotionGuideHub"

    const-string v8, "1)There is no %s."

    invoke-static {v3, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string v8, "SMotionGuideHub"

    const-string v9, "2)There is no %s."

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
