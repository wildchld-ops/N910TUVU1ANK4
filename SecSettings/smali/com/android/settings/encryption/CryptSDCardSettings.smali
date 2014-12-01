.class public Lcom/android/settings/encryption/CryptSDCardSettings;
.super Landroid/preference/PreferenceFragment;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;
    }
.end annotation


# static fields
.field private static final PRODUCT_DEVICE:Ljava/lang/String;


# instance fields
.field private MDPP_PROPERTY:Ljava/lang/String;

.field private mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

.field private mApplyButton:Landroid/widget/Button;

.field private mApplyButtonSelected:Z

.field private mContentView:Landroid/view/View;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

.field private mEnableDisableButton:Landroid/widget/Button;

.field private mEnableDisableButtonSelected:Z

.field private mEncryptDefault:Z

.field private mEncryptExcludeMedia:Z

.field private mEncryptFull:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsDisabledByAdmin:Z

.field private mParent:Landroid/app/Activity;

.field private mSDLayout:Landroid/widget/LinearLayout;

.field private mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mSdCardEnc2Messages:Landroid/widget/TextView;

.field private mSdCardLine1:Landroid/view/View;

.field private mSdCardLine2:Landroid/view/View;

.field private mSdCardSelectedOptionMessages:Landroid/widget/TextView;

.field private mStartedByAdmin:Z

.field private mStartedByIntent:Z

.field private mSync:Ljava/lang/Object;

.field private mTextDesc:Landroid/widget/TextView;

.field private mTextEncMessages:Landroid/widget/TextView;

.field private mThis:Landroid/app/Fragment;

.field private mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

.field private mValueChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product.device"

    const-string v1, "None"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardSelectedOptionMessages:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardEnc2Messages:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardLine1:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardLine2:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    new-instance v0, Lcom/android/settings/encryption/CryptSDCardSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$1;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/encryption/CryptSDCardSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->applyEncryptionUpdates()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings/encryption/CryptSDCardSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButtonSelected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->enableAllUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->disableAllUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mThis:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/encryption/CryptSDCardSettings;Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/encryption/CryptSDCardSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/encryption/CryptSDCardSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButtonSelected:Z

    return p1
.end method

.method private applyEncryptionUpdates()V
    .locals 7

    const/16 v6, 0x37

    const/4 v5, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButtonSelected:Z

    if-ne v1, v4, :cond_0

    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButtonSelected:Z

    invoke-direct {p0, v6}, Lcom/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation(I)Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_1
    iget-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    iget-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x6

    :goto_3
    invoke-direct {v0, v1, v2, v4}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    const-string v1, "Enforcing"

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iput v5, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->showEncryptionOptionConfirm(Landroid/dirEncryption/SDCardEncryptionPolicies;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const/4 v2, 0x5

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_3

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->showFullEncryptionOption(Landroid/dirEncryption/SDCardEncryptionPolicies;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v1

    if-eq v1, v4, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButtonSelected:Z

    if-ne v1, v4, :cond_7

    :cond_6
    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButtonSelected:Z

    :cond_7
    invoke-direct {p0, v6}, Lcom/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation(I)Z

    goto :goto_0
.end method

.method private dipToFixel(I)I
    .locals 3

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private disableAllUI()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "Disable All UI"

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private enableAllUI()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->updatePrefUI()V

    return-void
.end method

.method private initVariables()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "initialize Variables"

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mValueChanged:Z

    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButtonSelected:Z

    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButtonSelected:Z

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->init()V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->init()V

    return-void
.end method

.method private isAdminApplied()Z
    .locals 6

    const/4 v5, 0x2

    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v5, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v3, 0x4

    iput v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    :cond_0
    iget v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v5, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isEncryptionApplied()Z
    .locals 4

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CryptKeeperSDSettings"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private restorePrefs()V
    .locals 11

    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v4, "restorePrefs"

    invoke-direct {p0, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v4, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "adminStart"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    if-nez v4, :cond_1

    new-instance v4, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v4}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    :cond_1
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v7, "device_policy"

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iput v8, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iput v9, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    :cond_2
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v4, :cond_6

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v9, v4, :cond_7

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v10, v4, :cond_8

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v4, :cond_9

    move v4, v5

    :goto_4
    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v9, v4, :cond_a

    move v4, v5

    :goto_5
    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v10, v4, :cond_b

    move v4, v5

    :goto_6
    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v4, :cond_3

    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    const-string v4, "Disabled by Admin"

    invoke-direct {p0, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    :cond_3
    iput-boolean v6, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mValueChanged:Z

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->enableAllUI()V

    return-void

    :cond_4
    const-string v4, "CryptSDCardSettings started by user"

    invoke-direct {p0, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v4, "CryptSDCardSettings started by user"

    invoke-direct {p0, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v4, v6

    goto :goto_1

    :cond_7
    move v4, v6

    goto :goto_2

    :cond_8
    move v4, v6

    goto :goto_3

    :cond_9
    move v4, v6

    goto :goto_4

    :cond_a
    move v4, v6

    goto :goto_5

    :cond_b
    move v4, v6

    goto :goto_6
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 6

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionManager;->getKeyguardStoredPasswordQuality()I

    move-result v1

    const/high16 v3, 0x20000

    if-ge v1, v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const v3, 0x61000

    if-ne v1, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v3, v4, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v4, 0x7f090e2d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f090e2e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_0
.end method

.method private showEncryptionOptionConfirm(Landroid/dirEncryption/SDCardEncryptionPolicies;)V
    .locals 4

    new-instance v1, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    const v0, 0x7f090e23

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "enc"

    iget v3, p1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fullEnc"

    iget v3, p1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "excludeMedia"

    iget v3, p1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    return-void
.end method

.method private showFinalConfirmation(Ljava/lang/String;Landroid/dirEncryption/SDCardEncryptionPolicies;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowFinalConfirm - enc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fullEnc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " excludeMedia : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/encryption/CryptSDCardConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    const v0, 0x7f090e2c

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "password"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "enc"

    iget v3, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fullEnc"

    iget v3, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "excludeMedia"

    iget v3, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    return-void
.end method

.method private showFullEncryptionOption(Landroid/dirEncryption/SDCardEncryptionPolicies;)V
    .locals 4

    new-instance v1, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/encryption/CryptSDCardFullOption;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    const v0, 0x7f090e23

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "enc"

    iget v3, p1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fullEnc"

    iget v3, p1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "excludeMedia"

    iget v3, p1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    return-void
.end method

.method private startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    const v3, 0x7f09021d

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "CryptKeeperSDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updatePrefUI()V
    .locals 24

    const-string v20, "updatePrefUI"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    const-string v20, "parent activity is null, cannot display UI, removing fragment"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardSelectedOptionMessages:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardEnc2Messages:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardLine1:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardLine2:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    move/from16 v20, v0

    if-nez v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x7f090836

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_2

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "lt01"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "lt02"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "millet"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "santos7"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "kona"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "degas"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "rubens"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_13

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v20, v0

    const/16 v21, 0xf1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->dipToFixel(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    const-string v20, "Enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_5

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "lt01"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "lt02"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "millet"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "santos7"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "kona"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "degas"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "rubens"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_15

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v20, v0

    const/16 v21, 0xf1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->dipToFixel(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_5
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    move-object/from16 v20, v0

    const-string v21, "device_policy"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    if-eqz v5, :cond_18

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/app/admin/DevicePolicyManager;->satisfyFIPSPassword(I)Z

    move-result v20

    if-nez v20, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->disableAllUI()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x7f090e15

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_8

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "lt01"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "lt02"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "millet"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "santos7"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "kona"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "degas"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    sget-object v20, Lcom/android/settings/encryption/CryptSDCardSettings;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v21, "rubens"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_16

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v20, v0

    const/16 v21, 0xf1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->dipToFixel(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_8
    :goto_3
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/encryption/CryptSDCardSettings;->upgradeQualityForEncryption(I)I

    move-result v10

    const/high16 v20, 0x20000

    move/from16 v0, v20

    if-ne v10, v0, :cond_17

    const v20, 0x7f090e1f

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const/4 v12, 0x0

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/dirEncryption/DirEncryptionManager;->getLastError()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_b

    const-string v20, "removed"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    const-string v20, "bad_removal"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20

    :cond_a
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v20, 0x7f090e2f

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    move/from16 v20, v0

    if-eqz v20, :cond_28

    const v20, 0x7f090e35

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    move/from16 v20, v0

    if-nez v20, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    move/from16 v20, v0

    if-eqz v20, :cond_29

    :cond_d
    const v20, 0x7f090e3b

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u2022 "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0x7f090e26

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u2022 "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0x7f090e27

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    move/from16 v20, v0

    if-nez v20, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2b

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v20

    if-eqz v20, :cond_2a

    const v20, 0x7f090e3d

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v20, 0x7f090e34

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v20, "Enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v20, 0x7f090e45

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardSelectedOptionMessages:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardEnc2Messages:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->isEnabled()Z

    move-result v20

    if-eqz v20, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v20, v0

    const/16 v21, 0x190

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->dipToFixel(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x7f090835

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v20, v0

    const/16 v21, 0x190

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->dipToFixel(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v20, v0

    const/16 v21, 0x190

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->dipToFixel(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_3

    :cond_17
    const v20, 0x7f090e20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v19

    if-eqz v19, :cond_1a

    const-string v20, "Service is busy: Disabling UI"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    move/from16 v20, v0

    if-eqz v20, :cond_19

    const v20, 0x7f090e28

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->disableAllUI()V

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_19
    const v20, 0x7f090e29

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_1a
    const/4 v13, 0x0

    const-string v20, "Service is not busy"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isEncryptionApplied()Z

    move-result v20

    if-eqz v20, :cond_9

    const v20, 0x7f090e30

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_5

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/dirEncryption/DirEncryptionManager;->getAdditionalSpaceRequired()I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4090000000000000L

    div-double v16, v20, v22

    const-wide/high16 v20, 0x4090000000000000L

    div-double v14, v16, v20

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "spaceInMB: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "spaceInGB: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    const-wide/high16 v20, 0x3ff0000000000000L

    cmpg-double v20, v16, v20

    if-gez v20, :cond_1b

    const-wide/high16 v16, 0x3ff0000000000000L

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1d

    const-wide/high16 v20, 0x3ff0000000000000L

    cmpg-double v20, v14, v20

    if-gez v20, :cond_1c

    const v20, 0x7f090e58

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_1c
    const v20, 0x7f090e56

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_1d
    const-wide/high16 v20, 0x3ff0000000000000L

    cmpg-double v20, v14, v20

    if-gez v20, :cond_1e

    const v20, 0x7f090e59

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_1e
    const v20, 0x7f090e57

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :sswitch_1
    const v20, 0x7f090e5a

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_6

    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1f

    const v20, 0x7f090e5a

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_1f
    const v20, 0x7f090e5b

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_20
    const-string v20, "removed"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    const-string v20, "checking"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    if-nez v13, :cond_b

    if-eqz v5, :cond_b

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/app/admin/DevicePolicyManager;->satisfyFIPSPassword(I)Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    move/from16 v20, v0

    if-eqz v20, :cond_25

    const-string v20, "Enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_21

    const v20, 0x7f090e44

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    move/from16 v20, v0

    if-nez v20, :cond_22

    const-string v20, "Enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_24

    :cond_22
    const v20, 0x7f090e32

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_24
    const v20, 0x7f090e40

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    move/from16 v20, v0

    if-nez v20, :cond_26

    const-string v20, "Enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_27

    :cond_26
    const v20, 0x7f090e31

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_e

    :cond_27
    const v20, 0x7f090e3f

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_28
    const v20, 0x7f090e33

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v12, v0, :cond_c

    const v20, 0x7f090e36

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v20, "Enforcing"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v20, 0x7f090e43

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardLine1:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardLine2:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_2a
    const v20, 0x7f090e3c

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardLine1:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardLine2:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x7 -> :sswitch_2
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method private upgradeQualityForEncryption(I)I
    .locals 6

    const/high16 v5, 0x20000

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v3

    if-eqz v3, :cond_0

    move v2, p1

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ge p1, v5, :cond_1

    const/high16 p1, 0x50000

    :cond_1
    if-ge p1, v5, :cond_2

    const/high16 p1, 0x20000

    :cond_2
    move v2, p1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v2, 0x37

    if-eq p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    :goto_2
    iget-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x6

    :goto_3
    invoke-direct {v1, v2, v3, v4}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->showFinalConfirmation(Ljava/lang/String;Landroid/dirEncryption/SDCardEncryptionPolicies;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    const/4 v3, 0x5

    goto :goto_2

    :cond_4
    const/4 v4, 0x7

    goto :goto_3
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    iput-object p0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mThis:Landroid/app/Fragment;

    const-string v0, "onAttach"

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const v1, 0x7f04005d

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const-string v1, "security.mdpp"

    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->MDPP_PROPERTY:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0b0126

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0b012b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0b0128

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardSelectedOptionMessages:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0b012a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardEnc2Messages:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0b0127

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardLine1:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0b0129

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSdCardLine2:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0b012d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0b012e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/encryption/CryptSDCardSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$2;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/encryption/CryptSDCardSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$3;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0b012c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    new-instance v1, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    return-object v1
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->isAdminApplied()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SD card is unmounted, mount SD card"

    invoke-direct {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->mountVolume()Z

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->initVariables()V

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-direct {v1, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;

    const v2, 0x7f090e2a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    const v2, 0x7f090e2b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getPolicyChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;->setPolicyChanged(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    return-void
.end method
