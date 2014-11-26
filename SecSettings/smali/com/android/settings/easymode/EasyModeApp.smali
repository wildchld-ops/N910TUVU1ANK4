.class public Lcom/android/settings/easymode/EasyModeApp;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final HUGE_FONT_INDEX:I

.field private static final LARGE_FONT_SCALE:F

.field private static mModeItem:[Ljava/lang/String;

.field private static mPackageName:[Ljava/lang/String;


# instance fields
.field private easy_mode_apps:Landroid/preference/PreferenceScreen;

.field private easy_mode_camera:Landroid/preference/CheckBoxPreference;

.field private easy_mode_clock:Landroid/preference/CheckBoxPreference;

.field private easy_mode_email:Landroid/preference/CheckBoxPreference;

.field private easy_mode_gallery:Landroid/preference/CheckBoxPreference;

.field private easy_mode_home:Landroid/preference/CheckBoxPreference;

.field private easy_mode_internet:Landroid/preference/CheckBoxPreference;

.field private easy_mode_messages:Landroid/preference/CheckBoxPreference;

.field private easy_mode_music:Landroid/preference/CheckBoxPreference;

.field private easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

.field private easy_mode_phone:Landroid/preference/CheckBoxPreference;

.field private easy_mode_select_all:Landroid/preference/CheckBoxPreference;

.field private easy_mode_splanner:Landroid/preference/CheckBoxPreference;

.field private easy_mode_video:Landroid/preference/CheckBoxPreference;

.field private easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mChangeFont:Z

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mCurrentEsayModeState:I

.field private mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

.field private mFontCategory:Landroid/preference/PreferenceCategory;

.field private mFontSizePref:Lcom/android/settings/FontSizeListPreference;

.field private mHelpTextView:Landroid/widget/TextView;

.field private mHomeCategory:Landroid/preference/PreferenceCategory;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mModeState:I

.field private mOldEsayModeState:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSaveButton:Landroid/widget/Button;

.field private mSupportFolderType:Z

.field private mTempView:Landroid/view/View;

.field private mcancelButton:Landroid/widget/Button;

.field private objValue:Ljava/lang/Object;

.field private previousIndex:I

.field private selected_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/settings/Utils;->has7StepsLargeFontScale()F

    move-result v0

    sput v0, Lcom/android/settings/easymode/EasyModeApp;->LARGE_FONT_SCALE:F

    invoke-static {}, Lcom/android/settings/Utils;->has7StepsHugeFontIndex()I

    move-result v0

    sput v0, Lcom/android/settings/easymode/EasyModeApp;->HUGE_FONT_INDEX:I

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.app.easylauncher"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.incallui"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.samsung.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.app.clockpackage"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sec.android.app.myfiles"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.sec.android.app.music"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.samsung.everglades.video"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.sec.android.app.voicenote"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iput v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mOldEsayModeState:I

    iput v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurrentEsayModeState:I

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->previousIndex:I

    iput-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mChangeFont:Z

    iput-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mSupportFolderType:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;
    .locals 1
    .param p0    # Lcom/android/settings/easymode/EasyModeApp;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0    # Lcom/android/settings/easymode/EasyModeApp;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/easymode/EasyModeApp;Z)V
    .locals 0
    .param p0    # Lcom/android/settings/easymode/EasyModeApp;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/settings/easymode/EasyModeApp;->startLauncher(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0
    .param p0    # Lcom/android/settings/easymode/EasyModeApp;

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->saveEasyModeApps()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/easymode/EasyModeApp;)I
    .locals 1
    .param p0    # Lcom/android/settings/easymode/EasyModeApp;

    iget v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/easymode/EasyModeApp;)Z
    .locals 1
    .param p0    # Lcom/android/settings/easymode/EasyModeApp;

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->isDefaultEasyLauncher()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/easymode/EasyModeApp;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/easymode/EasyModeApp;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/easymode/EasyModeApp;)Z
    .locals 1
    .param p0    # Lcom/android/settings/easymode/EasyModeApp;

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->checkLeastOnEasyMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/easymode/EasyModeApp;)Z
    .locals 1
    .param p0    # Lcom/android/settings/easymode/EasyModeApp;

    iget-boolean v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mSupportFolderType:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/easymode/EasyModeApp;I)I
    .locals 0
    .param p0    # Lcom/android/settings/easymode/EasyModeApp;
    .param p1    # I

    iput p1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private checkAllEasyModeApps()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "EasyModeApp"

    const-string v2, "KKK checkAllEasyModeApps"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_8
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_a
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_c
    const-string v0, "EasyModeApp"

    const-string v1, "KKK checkAllEasyModeApps return true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private checkLeastOnEasyMode()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "EasyModeApp"

    const-string v2, "KKK checkLeastOnEasyMode"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_8
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_9
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_a
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_b
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_c
    const-string v0, "EasyModeApp"

    const-string v1, "KKK checkLeastOnEasyMode return false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private initPreference()V
    .locals 7

    const/4 v6, 0x0

    const-string v3, "EasyModeApp"

    const-string v4, "KKK initPreference"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "easy_mode_apps"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "EasyModeApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KKK initPreference : mCurConfig.orientation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400a4

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :goto_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "font_size"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/FontSizeListPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v3, "font_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mFontCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mFontCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v3, "home_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mHomeCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mHomeCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v3, "easy_mode_home"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_home:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_home:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v3, "easy_mode_select_all"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    const-string v3, "easy_mode_camera"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    const-string v3, "SM-C115"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v3, "easy_mode_clock"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    const-string v3, "easy_mode_email"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    const-string v3, "easy_mode_gallery"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    const-string v3, "easy_mode_internet"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    const-string v3, "easy_mode_messages"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    const-string v3, "easy_mode_myfiles"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    const-string v3, "easy_mode_music"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    const-string v3, "easy_mode_phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    const-string v3, "easy_mode_splanner"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    const-string v3, "easy_mode_video"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    const-string v3, "easy_mode_voicerecorder"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    return-void

    :catch_0
    move-exception v1

    const-string v3, "EasyModeApp"

    const-string v4, "Unable to retrieve orientation"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400a5

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private isDefaultEasyLauncher()Z
    .locals 5

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.easylauncher"

    const-string v4, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isVzwSetupRunning()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "VZW"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "persist.sys.vzw_setup_running"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Verizon Setup Wizard is Running ?? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private saveEasyModeApps()V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_camera"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v0, v2

    :goto_0
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_camera"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v2

    :goto_1
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    if-eq v1, v0, :cond_0

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeCameraIntent(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_clock"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v2

    :goto_2
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_email"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v2

    :goto_3
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_gallery"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    move v4, v2

    :goto_4
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    :cond_3
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_internet"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v2

    :goto_5
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    :cond_4
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_messages"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_12

    move v0, v2

    :goto_6
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_messages"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    move v4, v2

    :goto_7
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    if-eq v1, v0, :cond_5

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeMessageIntent(Z)V

    :cond_5
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_myfiles"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    move v4, v2

    :goto_8
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    :cond_6
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_music"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    move v0, v2

    :goto_9
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_music"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_16

    move v4, v2

    :goto_a
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    if-eq v1, v0, :cond_7

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeMusicIntent(Z)V

    :cond_7
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_contacts"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_17

    move v4, v2

    :goto_b
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeContactIntent(Z)V

    :cond_8
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_9

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_splanner"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_18

    move v4, v2

    :goto_c
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    :cond_9
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_a

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_video"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_19

    move v4, v2

    :goto_d
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    :cond_a
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_voicerecorder"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1a

    move v0, v2

    :goto_e
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_voicerecorder"

    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1b

    :goto_f
    invoke-virtual {v4, v5, v2}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    if-eq v1, v0, :cond_b

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeVoiceNotentent(Z)V

    :cond_b
    return-void

    :cond_c
    move v0, v3

    goto/16 :goto_0

    :cond_d
    move v4, v3

    goto/16 :goto_1

    :cond_e
    move v4, v3

    goto/16 :goto_2

    :cond_f
    move v4, v3

    goto/16 :goto_3

    :cond_10
    move v4, v3

    goto/16 :goto_4

    :cond_11
    move v4, v3

    goto/16 :goto_5

    :cond_12
    move v0, v3

    goto/16 :goto_6

    :cond_13
    move v4, v3

    goto/16 :goto_7

    :cond_14
    move v4, v3

    goto/16 :goto_8

    :cond_15
    move v0, v3

    goto/16 :goto_9

    :cond_16
    move v4, v3

    goto/16 :goto_a

    :cond_17
    move v4, v3

    goto/16 :goto_b

    :cond_18
    move v4, v3

    goto :goto_c

    :cond_19
    move v4, v3

    goto :goto_d

    :cond_1a
    move v0, v3

    goto :goto_e

    :cond_1b
    move v2, v3

    goto :goto_f
.end method

.method private startLauncher(Z)V
    .locals 1
    .param p1    # Z

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->isVzwSetupRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/easymode/EasyModeEnabler;->startLauncher(Z)V

    goto :goto_0
.end method

.method private updateCheckBoxState(Z)V
    .locals 5
    .param p1    # Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "EasyModeApp"

    const-string v3, "KKK updateCheckBoxState"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_camera"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_clock"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_email"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_gallery"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_internet"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_messages"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_myfiles"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_music"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_contacts"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_splanner"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_video"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_a
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_voicerecorder"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_b
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->checkAllEasyModeApps()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    move v0, v2

    goto/16 :goto_0

    :cond_e
    move v0, v2

    goto/16 :goto_1

    :cond_f
    move v0, v2

    goto/16 :goto_2

    :cond_10
    move v0, v2

    goto/16 :goto_3

    :cond_11
    move v0, v2

    goto/16 :goto_4

    :cond_12
    move v0, v2

    goto/16 :goto_5

    :cond_13
    move v0, v2

    goto/16 :goto_6

    :cond_14
    move v0, v2

    goto :goto_7

    :cond_15
    move v0, v2

    goto :goto_8

    :cond_16
    move v0, v2

    goto :goto_9

    :cond_17
    move v0, v2

    goto :goto_a

    :cond_18
    move v0, v2

    goto :goto_b

    :cond_19
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_c
.end method

.method private updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/preference/Preference;
    .param p2    # Landroid/content/pm/ApplicationInfo;
    .param p3    # Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private updatePreperenceStatus()V
    .locals 12

    const-string v9, "EasyModeApp"

    const-string v10, "KKK updatePreperenceStatus"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    sget-object v9, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    array-length v6, v9

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_1c

    :try_start_0
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v9, "com.android.contacts"

    const-string v10, "com.android.dialer.DialtactsActivity"

    invoke-direct {v1, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/pm/ActivityInfo;

    invoke-direct {v5}, Landroid/content/pm/ActivityInfo;-><init>()V

    const-string v9, "com.android.incallui"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v9, "com.sec.android.app.camera"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v9, "com.sec.android.app.camera"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_2
    :try_start_1
    const-string v9, "com.sec.android.app.clockpackage"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v9, "com.android.contacts"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    const/16 v10, 0x20

    invoke-virtual {v9, v1, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0xff

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_2
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v4}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_4
    const/16 v9, 0x80

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    :cond_5
    const-string v9, "com.samsung.contacts"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    const-string v9, "com.samsung.contacts"

    const-string v10, "com.android.dialer.DialtactsActivity"

    invoke-direct {v1, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    const/16 v10, 0x20

    invoke-virtual {v9, v1, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xff

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_3
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v4}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_6
    const/16 v9, 0x80

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    :cond_7
    const-string v9, "com.android.email"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v9, "com.sec.android.gallery3d"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v9, "com.sec.android.app.sbrowser"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v9, "com.android.mms"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v9, "com.sec.android.app.music"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string v9, "com.sec.android.app.myfiles"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v9, "com.android.calendar"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const-string v9, "com.samsung.everglades.video"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const-string v9, "com.sec.android.app.voicenote"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_10
    const-string v9, "com.sec.android.app.clockpackage"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_11
    const-string v9, "com.android.contacts"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    const-string v9, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_12
    const-string v9, "com.samsung.contacts"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    const-string v9, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_13
    const-string v9, "com.android.email"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_14
    const-string v9, "com.sec.android.gallery3d"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_15
    const-string v9, "com.sec.android.app.sbrowser"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_16
    const-string v9, "com.android.mms"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_17
    const-string v9, "com.sec.android.app.music"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_18
    const-string v9, "com.sec.android.app.myfiles"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_19
    const-string v9, "com.android.calendar"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_1a
    const-string v9, "com.samsung.everglades.video"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_1b
    const-string v9, "com.sec.android.app.voicenote"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_1c
    return-void
.end method

.method private updateState()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v3, "easy_mode_switch"

    invoke-virtual {v0, v3}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    const-string v3, "EasyModeApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KKK updateState mEasyModeState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    const-string v3, "EasyModeApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KKK saved_value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , selected_value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    if-ne v0, v3, :cond_1

    move v3, v0

    :goto_1
    invoke-virtual {v4, v3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    if-ne v3, v2, :cond_2

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK saved_value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , mModeState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method initswitchBtn()V
    .locals 3

    const-string v0, "EasyModeApp"

    const-string v1, "KKK initswitchBtn"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBarSwitch:Landroid/widget/Switch;

    instance-of v0, v1, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f040064

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBarLayout:Landroid/view/View;

    :cond_1
    new-instance v0, Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/easymode/EasyModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1    # Landroid/content/res/Configuration;

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v1, "EasyModeApp"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mTempView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_0

    const-string v1, "EasyModeApp"

    const-string v2, "horizontal"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a5

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0b00ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    const v2, 0x7f09093d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mTempView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v0, v3, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-array v1, v4, [Ljava/lang/String;

    sput-object v1, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    const-string v1, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f091402

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    :goto_2
    sget-object v1, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0914de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const v1, 0x7f0b01a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0400a7

    sget-object v5, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK onConfigurationChanged selected_value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f0200f6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_3
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    invoke-virtual {v1, v2, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void

    :cond_0
    const-string v1, "EasyModeApp"

    const-string v2, "vertical"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a4

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    const v2, 0x7f09093c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_2
    sget-object v1, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0914f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f0200f5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v1, "EasyModeApp"

    const-string v2, "KKK onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f070053

    invoke-virtual {p0, v1}, Lcom/android/settings/easymode/EasyModeApp;->addPreferencesFromResource(I)V

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/settings/easymode/EasyModeApp;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->initPreference()V

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->previousIndex:I

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_easy_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mSupportFolderType:Z

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_flag_for_talkback"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0914f2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_flag_for_talkback"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lcom/android/settings/easymode/EasyModeApp;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0914de

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0401ae

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v1, 0x7f0401ac

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b0195

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v5, 0x7f0b0439

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f09007e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/easymode/EasyModeApp$3;

    invoke-direct {v4, p0, v1, v0}, Lcom/android/settings/easymode/EasyModeApp$3;-><init>(Lcom/android/settings/easymode/EasyModeApp;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v0, 0x7f0b013b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mcancelButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/easymode/EasyModeApp$1;

    invoke-direct {v2, p0}, Lcom/android/settings/easymode/EasyModeApp$1;-><init>(Lcom/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b013c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    const v1, 0x7f090466

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/easymode/EasyModeApp$2;

    invoke-direct {v1, p0}, Lcom/android/settings/easymode/EasyModeApp$2;-><init>(Lcom/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->initswitchBtn()V

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    const-string v4, "EasyModeApp"

    const-string v5, "KKK onCreateView"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v4, "EasyModeApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KKK initPreference : mCurConfig.orientation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0400a5

    invoke-static {v4, v5, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mTempView:Landroid/view/View;

    const v4, 0x7f0b00c9

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f0b00ca

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    const v5, 0x7f09093d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4, v1, v7, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-array v4, v8, [Ljava/lang/String;

    sput-object v4, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    const-string v4, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f091402

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    :goto_3
    sget-object v4, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0914de

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const v4, 0x7f0b01a5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0400a7

    sget-object v8, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_switch"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v2

    const-string v4, "EasyModeApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KKK onCreateView mEasyModeState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v9, :cond_3

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mImageView:Landroid/widget/ImageView;

    const v5, 0x7f0200f6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_4
    const-string v4, "EasyModeApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KKK onCreateView mModeState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-direct {p0, v9}, Lcom/android/settings/easymode/EasyModeApp;->updateCheckBoxState(Z)V

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->requestFocus()Z

    return-object v3

    :catch_0
    move-exception v0

    const-string v4, "EasyModeApp"

    const-string v5, "Unable to retrieve orientation"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0400a4

    invoke-static {v4, v5, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    const v5, 0x7f09093c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_2
    sget-object v4, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0914f2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    goto/16 :goto_3

    :cond_3
    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mImageView:Landroid/widget/ImageView;

    const v5, 0x7f0200f5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KKK onItemClick position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    iput v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperenceStatus()V

    iput p3, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KKK onItemClick mModeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0200f5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "EasyModeApp"

    const-string v1, "KKK onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/easymode/EasyModeEnabler;->pause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "EasyModeApp"

    const-string v5, "KKK onPreferenceTreeClick"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mOpenDetailMenu:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/android/settings/easymode/EasyModeApp;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    sget v4, Lcom/android/settings/easymode/EasyModeApp;->mSettingValue:I

    if-ne v4, v2, :cond_3

    move v1, v2

    :goto_0
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/settings/easymode/EasyModeApp;->setAllOptionCheck(Z)V

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->checkAllEasyModeApps()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->setAllOptionCheck(Z)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "EasyModeApp"

    const-string v3, "KKK onResume"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeEnabler;->resume()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.intent.action.easy_mode_switch_change"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mChangeFont:Z

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->updateState()V

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperenceStatus()V

    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iget-boolean v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mOpenDetailMenu:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/android/settings/easymode/EasyModeApp;->mSettingValue:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_parent_preference_key"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/easymode/EasyModeApp;->mSettingValue:I

    if-ne v3, v0, :cond_2

    :goto_0
    const-string v1, "easy_mode_select_all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/easymode/EasyModeApp;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setAllOptionCheck(Z)V
    .locals 3

    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KKK setAllOptionCheck state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method public setDefaultLauncher(Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK setDefaultLauncher isEasy : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Landroid/content/ComponentName;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v1

    const-string v0, "EasyModeApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "make mHomeComponentSet ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.launcher"

    const-string v4, "com.android.launcher2.Launcher"

    invoke-direct {v0, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.easylauncher"

    const-string v2, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x100000

    invoke-virtual {v1, v3, v2, v5, v0}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.sec.android.app.easylauncher"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.nttdocomo.android.dhome"

    const-string v2, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setLargeFont()V
    .locals 6

    const/4 v5, 0x2

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mSupportFolderType:Z

    if-eqz v3, :cond_1

    const-wide v3, 0x3ffa3d70a3d70a3dL

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "STANDARD_FONT_SIZE"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget v3, Lcom/android/settings/easymode/EasyModeApp;->HUGE_FONT_INDEX:I

    if-ne v2, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "large_font"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "EasyModeApp"

    const-string v4, "KKK android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mSupportFolderType:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->writeFontSizePreference(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    const-string v3, "EasyModeApp"

    const-string v4, "Unable to retrieve font size"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-wide v3, 0x3ff30a3d70a3d70aL

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public setStandardFont()V
    .locals 6

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "STANDARD_FONT_SIZE"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-boolean v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mSupportFolderType:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0030

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    :goto_0
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const-string v3, "EasyModeApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KKK setStandardFont fontIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " configValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->writeFontSizePreference(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "font_size"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/android/settings/easymode/EasyModeApp;->HUGE_FONT_INDEX:I

    if-ne v0, v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "large_font"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "EasyModeApp"

    const-string v2, "setStandardFont android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "font_size"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a002c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "EasyModeApp"

    const-string v1, "KKK writeFontSizePreference"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK writeFontSizePreference : fontScale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mSupportFolderType:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x3fc00000

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    sget v0, Lcom/android/settings/easymode/EasyModeApp;->LARGE_FONT_SCALE:F

    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mChangeFont:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "EasyModeApp"

    const-string v1, "KKK Unable to save font size"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
