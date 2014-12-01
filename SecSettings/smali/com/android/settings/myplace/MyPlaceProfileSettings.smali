.class public Lcom/android/settings/myplace/MyPlaceProfileSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    }
.end annotation


# static fields
.field private static OPTION_SELECTED:Z


# instance fields
.field alert:Landroid/app/AlertDialog;

.field private carmode:Z

.field private categoriesSelectMethod:Landroid/preference/PreferenceCategory;

.field private fixedMenuNum:I

.field private helpRequest:I

.field private isKnoxUser:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mAddMode:Z

.field private mAlert:Landroid/app/AlertDialog;

.field private mAutoConnect:Landroid/preference/CheckBoxPreference;

.field private mDefaultName:Ljava/lang/String;

.field private mEditMode:Z

.field private mEditName:Landroid/widget/EditText;

.field private mFlag:Z

.field private mGuideText:Landroid/widget/TextView;

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mId:I

.field private mIsFromHelp:Z

.field mIsMobileConnected:Z

.field private mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

.field private mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

.field private mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

.field private mLbsMode:Z

.field mLocationBitmap:Landroid/graphics/Bitmap;

.field private mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

.field private mMethodPreference:Landroid/preference/PreferenceScreen;

.field private mMobileDataChargeDialog:Landroid/app/AlertDialog;

.field private mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

.field private mSaveButton:Landroid/widget/Button;

.field private mSelectMethod:Landroid/preference/PreferenceScreen;

.field private mTextName:Landroid/widget/TextView;

.field private mcancelButton:Landroid/widget/Button;

.field private setFlag1:Z

.field private setFlag2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->OPTION_SELECTED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mFlag:Z

    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag1:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag2:Z

    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->carmode:Z

    new-instance v0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-direct {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAlert:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsMobileConnected:Z

    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iput v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isPlaceInfoChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->carmode:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showMobileDateChargeEnableDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->requestGPSLocation()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isKnoxUser:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    return v0
.end method

.method static synthetic access$2702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->OPTION_SELECTED:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/settings/myplace/MyPlaceProfileSettings;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep4Dialog()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/settings/myplace/MyPlaceProfileSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->fixedMenuNum:I

    return v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f07008f

    invoke-virtual {p0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "key_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    const-string v1, "key_map"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/myplace/MyPlaceGpsPreference;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    const-string v1, "key_select_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    const-string v1, "key_auto_connect"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    const-string v1, "categories_select_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->categoriesSelectMethod:Landroid/preference/PreferenceCategory;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->categoriesSelectMethod:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    new-instance v1, Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x3f3

    invoke-direct {v1, v2, v4, p0, v3}, Lcom/android/settings/myplace/MyPlaceItemsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    new-instance v1, Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x3f4

    invoke-direct {v1, v2, v4, p0, v3}, Lcom/android/settings/myplace/MyPlaceItemsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    new-instance v1, Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x3f2

    invoke-direct {v1, v2, v4, p0, v3}, Lcom/android/settings/myplace/MyPlaceItemsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    const-string v2, "key_pref_wifi"

    invoke-virtual {v1, v2}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    const-string v2, "key_pref_bt"

    invoke-virtual {v1, v2}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    const-string v2, "key_pref_gps"

    invoke-virtual {v1, v2}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setKey(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_3
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-boolean v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isKnoxUser:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setEnabled(Z)V

    :cond_4
    return-object v0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    if-ne v1, v5, :cond_7

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method private initPlaceInfo()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLbsMode:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    if-eqz v1, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mDefaultName:Ljava/lang/String;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Home"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x7f091762

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/EditText;->setSelection(II)V

    return-void

    :cond_3
    :try_start_1
    iget-boolean v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-eqz v1, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09175e

    invoke-virtual {p0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, ""

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MyPlaceSettings"

    const-string v1, "CursorWindowAllocationException"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v1, v2, :cond_6

    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location_type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "location_type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timestamp_utc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "timestamp_utc"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "address"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi_name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wifi_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bluetooth_name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bluetooth_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "location_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "timestamp_utc"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mTimestamp:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$2002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "address"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "latitude"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "longitude"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "extra_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "wifi_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "wifi_bssid"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "bluetooth_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "bluetooth_mac_address"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_7
    const-string v1, "Car"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, 0x7f091764

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_8
    const-string v1, "Work"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v0, 0x7f091763

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_9
    const-string v1, "Gym"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v0, 0x7f091765

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_a
    const-string v1, "School"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f091766

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private isPlaceInfoChanged()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.samsung.android.internal.intelligence.useranalysis/place/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v0, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v0, v2, :cond_0

    const-string v0, "MyPlaceSettings"

    const-string v2, "_id is not match"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v2, "location_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v0, v2, :cond_1

    const-string v0, "MyPlaceSettings"

    const-string v2, "location_type is changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlaceInfoChanged() returns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MyPlaceSettings"

    const-string v2, "mProfileName is changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "address"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "MyPlaceSettings"

    const-string v2, "mGpsLocation is changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v0, "latitude"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_4

    const-string v0, "MyPlaceSettings"

    const-string v2, "mGpsLatitude is changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v0, "longitude"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_5

    const-string v0, "MyPlaceSettings"

    const-string v2, "mGpsLongitude is changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v0

    const-string v2, "extra_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->compareByteArray([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "MyPlaceSettings"

    const-string v2, "mByteMap is changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "wifi_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "MyPlaceSettings"

    const-string v2, "mWifiApName is changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "wifi_bssid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "MyPlaceSettings"

    const-string v2, "mWifiApBSSID is changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bluetooth_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "MyPlaceSettings"

    const-string v2, "mBtDeviceName is changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bluetooth_mac_address"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "MyPlaceSettings"

    const-string v2, "mBtMacAddress is changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_0

    :cond_a
    const-string v0, "MyPlaceSettings"

    const-string v2, "moveToFirst() is failed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move v0, v7

    goto/16 :goto_0
.end method

.method private requestGPSLocation()V
    .locals 6

    const-wide v4, 0x412e848000000000L

    const-string v0, "MyPlaceSettings"

    const-string v1, "map is clicked. start mapview"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.myplace.SELECT_MAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "location"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "map_latitude"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "map_longtitude"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showHelpStep1Dialog()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ec

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    :cond_3
    return-void
.end method

.method private showHelpStep2Dialog()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ed

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v0, :cond_3

    const v0, 0x7f0b000b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0b0275

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/settings/myplace/MyPlaceProfileSettings$15;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$15;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {v3, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, v4}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_3
    sget-boolean v0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->OPTION_SELECTED:Z

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->resetAnimation()V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    :cond_4
    return-void
.end method

.method private showHelpStep3Dialog()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ee

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b000b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$16;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$16;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {v3, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    :cond_2
    return-void
.end method

.method private showHelpStep4Dialog()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ef

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b0167

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$17;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$17;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    :cond_1
    return-void
.end method

.method private showMobileDateChargeEnableDialog()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsMobileConnected:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040087

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0b00a6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsMobileConnected:Z

    if-eqz v3, :cond_1

    const v3, 0x7f091482

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f091487

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v0, 0x7f0b0195

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090859

    new-instance v3, Lcom/android/settings/myplace/MyPlaceProfileSettings$11;

    invoke-direct {v3, p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$11;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;Landroid/view/View;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$12;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$12;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/myplace/MyPlaceProfileSettings$13;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$13;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :cond_1
    const v3, 0x7f091483

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f091486

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateProfile()V
    .locals 7

    const v6, 0x7f091612

    const v5, 0x7f09160e

    const/4 v4, 0x1

    const v3, 0x7f040155

    const v2, 0x7f040154

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    const v1, 0x7f091770

    invoke-virtual {v0, v1}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setWidgetLayoutResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v0, v5}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setWidgetLayoutResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v0, v6}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setWidgetLayoutResource(I)V

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    const v1, 0x7f091770

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    if-ne v0, v4, :cond_2

    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlaceInfo.mByteMap is not null, mPlaceInfo.mByteMap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLocationBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/settings/myplace/MyPlaceGpsPreference;->setGpsImage(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceGPS:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setWidgetLayoutResource(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceWifi:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setWidgetLayoutResource(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mItemPreferenceBT:Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->setWidgetLayoutResource(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, ""

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "MyPlaceSettings"

    const-string v2, "checkNetwork() : NetworkInfo is null. return false"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNetwork() : ConnectivityManager.TYPE_MOBILE return : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    const-string v4, "MyPlaceSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWifiAvail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isConnected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public compareByteArray([B[B)Z
    .locals 4

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compareByteArray return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public configureActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040064

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    return-void
.end method

.method getSelectedTypeIndex()I
    .locals 3

    const/4 v2, 0x2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    iget v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    iget v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_4
    iget v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method getSelectedTypeIndexMAP()I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isDuplicatePlaceName()Z
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLBHsuport()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isMobileDataConnected()Z
    .locals 2

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string v3, "MyPlaceSettings"

    const-string v4, "onActivityCreated"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f040157

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2, v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0344

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0345

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mTextName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0346

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mGuideText:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mGuideText:Landroid/widget/TextView;

    const v4, 0x7f091773

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/myplace/MyPlaceProfileSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$2;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->fixedMenuNum:I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    iput v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->fixedMenuNum:I

    :cond_1
    iget v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    iget v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->fixedMenuNum:I

    if-ge v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    new-instance v0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->initPlaceInfo()V

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->registerForContextMenu(Landroid/view/View;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v4, 0x2

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, -0x1

    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(), requestCode :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MyPlaceSettings"

    const-string v1, "onActivityResult is resetPlaceInfo"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    :cond_0
    if-ne p1, v5, :cond_4

    if-ne p2, v3, :cond_3

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "ssid"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "bssid"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # += operator for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$412(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_2

    iput v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_3
    if-nez p2, :cond_1

    const-string v0, "MyPlaceSettings"

    const-string v1, "onActivityResult is RESULT_CANCELED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-ne p1, v4, :cond_7

    if-ne p2, v3, :cond_6

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "DeviceName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "MacAddress"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # += operator for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$412(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_2

    iput v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    goto :goto_1

    :cond_6
    if-nez p2, :cond_2

    const-string v0, "MyPlaceSettings"

    const-string v1, "onActivityResult is RESULT_CANCELED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_2

    iput v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    goto :goto_1

    :cond_7
    if-ne p1, v8, :cond_a

    if-ne p2, v3, :cond_9

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "DeviceName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "MacAddress"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # += operator for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$412(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    :cond_8
    iput v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    goto :goto_1

    :cond_9
    if-nez p2, :cond_2

    const-string v0, "MyPlaceSettings"

    const-string v1, "onActivityResult is RESULT_CANCELED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    if-ne p2, v3, :cond_d

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "location"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "latitude"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x412e848000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "longitude"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x412e848000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # += operator for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$412(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    :cond_b
    const-string v0, "map"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_GPS_LOCATION_REQUEST, btMap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v1, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    goto/16 :goto_1

    :cond_c
    const-string v0, "MyPlaceSettings"

    const-string v1, "Location information is empty / SKIP"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, ""

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_1

    :cond_d
    if-nez p2, :cond_2

    const-string v0, "MyPlaceSettings"

    const-string v1, "onActivityResult is RESULT_CANCELED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/myplace/MyPlaceItemsPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {v1}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->getPrefID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlacePartialInfo(I)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v0, 0x2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v0, 0x3

    :cond_2
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v0, 0x4

    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep2Dialog()V

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep3Dialog()V

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep4Dialog()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f07008f

    invoke-virtual {p0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setHasOptionsMenu(Z)V

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v6, 0x64

    if-lt v3, v6, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isKnoxUser:Z

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const-string v3, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "my place id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "fromHelp"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    const-string v3, "car_mode"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->carmode:Z

    const-string v3, "edit_mode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    const-string v3, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "edit mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "add_mode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    const-string v3, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "lbs_mode"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLbsMode:Z

    const-string v3, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sbl mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLbsMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLbsMode:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v6, "location"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v6, "latitude"

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v3, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v6, "longitude"

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v3, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v3, v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    const-string v3, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sbl mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "default_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mDefaultName:Ljava/lang/String;

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "myplacehelp"

    invoke-virtual {v3, v6, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "value"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->configureActionBar()V

    :cond_2
    return-void

    :cond_3
    move v3, v5

    goto/16 :goto_0

    :cond_4
    const-string v3, "MyPlaceSettings"

    const-string v6, "Bundle is null"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->finish()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-boolean v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f120007

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mcancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f090cdd

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    const v2, 0x7f0901ba

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v1, 0x1

    const v2, 0x7f090746

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    const-string v1, "MyPlaceSettings"

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09074b

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isDuplicatePlaceName()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09176c

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "location_type"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "address"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "latitude"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v3, "longitude"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v3, "extra_data"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "wifi_name"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "wifi_bssid"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bluetooth_name"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bluetooth_mac_address"

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "monitoring_status"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-eqz v3, :cond_4

    const-string v3, "category"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "timestamp_utc"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.MYPLACE_ADDED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    const-string v4, "uri"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "timestamp_utc"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->carmode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showToast()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f091768

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->finish()V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isPlaceInfoChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "timestamp_utc"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.MYPLACE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "changed_id"

    iget v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "timestamp_utc"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->finish()V

    move v0, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7f0b013b -> :sswitch_1
        0x7f0b013c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "myplacehelp"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAlert:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAlert:Landroid/app/AlertDialog;

    :cond_0
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    iput-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const-string v3, "value"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iput-boolean v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag1:Z

    :cond_1
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    iput-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const-string v3, "value"

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    iput-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const-string v3, "value"

    const/4 v4, 0x3

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_3
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    iput-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const-string v3, "value"

    const/4 v4, 0x4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_4
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v3, :cond_5

    iput-boolean v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag2:Z

    :cond_5
    iput v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    instance-of v0, p1, Lcom/android/settings/myplace/MyPlaceItemsPreference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/myplace/MyPlaceItemsPreference;

    invoke-virtual {p1}, Lcom/android/settings/myplace/MyPlaceItemsPreference;->getPrefID()I

    move-result v0

    const/16 v1, 0x3f2

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->checkNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09176b

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings.myplace.MyPlaceProfileSettings"

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DoNotShowDialogData"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "DoNotShowDialogWlan"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "enable"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "MyPlaceSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doNotShowData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doNotShowWlan="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCloudChargeEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showMobileDateChargeEnableDialog()V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showMobileDateChargeEnableDialog()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->requestGPSLocation()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->requestGPSLocation()V

    goto :goto_0

    :cond_5
    const/16 v1, 0x3f3

    if-ne v0, v1, :cond_7

    const-string v0, "MyPlaceSettings"

    const-string v1, "PREF wifi is clicked. start wifi network picker"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "extra_location_services"

    const-string v2, "location"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x3f4

    if-ne v0, v1, :cond_0

    const-string v0, "MyPlaceSettings"

    const-string v1, "PREF bt is clicked. start bt device picker"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.bluetooth.CheckBluetoothLEStateActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    const v3, 0x7f09176e

    const/high16 v5, 0x1040000

    const/4 v2, 0x1

    const-wide v6, 0x412e848000000000L

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-ne v0, v2, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isLBHsuport()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00cd

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSelectedTypeIndexMAP()I

    move-result v2

    new-instance v3, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAlert:Landroid/app/AlertDialog;

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-ne v0, v2, :cond_d

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isLBHsuport()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->checkNetwork()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09176b

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings.myplace.MyPlaceProfileSettings"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "DoNotShowDialogData"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "DoNotShowDialogWlan"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "enable"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "MyPlaceSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doNotShowData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doNotShowWlan="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCloudChargeEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showMobileDateChargeEnableDialog()V

    goto/16 :goto_0

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showMobileDateChargeEnableDialog()V

    goto/16 :goto_0

    :cond_7
    const-string v0, "MyPlaceSettings"

    const-string v1, "map is clicked. start mapview"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.myplace.SELECT_MAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, ""

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const-string v1, "location"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    const-string v1, "map_latitude"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "map_longtitude"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "MyPlaceSettings"

    const-string v1, "map is clicked. start mapview"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.myplace.SELECT_MAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    const-string v1, ""

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const-string v1, "location"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_c
    const-string v1, "map_latitude"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "map_longtitude"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00cb

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSelectedTypeIndex()I

    move-result v2

    new-instance v3, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;

    invoke-direct {v3, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAlert:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00cc

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSelectedTypeIndex()I

    move-result v2

    new-instance v3, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;

    invoke-direct {v3, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/myplace/MyPlaceProfileSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$9;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAlert:Landroid/app/AlertDialog;

    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep2Dialog()V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "MyPlaceSettings"

    const-string v3, "onResume() "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "myplacehelp"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    if-nez v2, :cond_6

    const-string v2, "value"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag2:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag1:Z

    if-eqz v2, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V

    iput-boolean v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag1:Z

    :cond_2
    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag2:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void

    :cond_3
    if-ne v1, v6, :cond_4

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep2Dialog()V

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep3Dialog()V

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep4Dialog()V

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    if-ne v2, v5, :cond_7

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V

    goto :goto_0

    :cond_7
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    if-ne v2, v6, :cond_2

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep3Dialog()V

    goto :goto_0
.end method

.method resetPlaceInfo()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, ""

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v3, v1, v3

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method resetPlacePartialInfo(I)V
    .locals 6

    const-wide/16 v4, 0x0

    const v3, 0x7f09124b

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetPlacePartialInfo() : menu "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Ater Type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, ""

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v2, v1, v2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    # setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3f2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showToast()Z
    .locals 7

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v0, ""

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "getprop ro.csc.sales_code"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    const-string v3, "SM-N900"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SGH-I337"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "ATT"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en_US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
