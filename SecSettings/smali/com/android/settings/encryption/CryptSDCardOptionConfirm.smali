.class public Lcom/android/settings/encryption/CryptSDCardOptionConfirm;
.super Landroid/preference/PreferenceFragment;
.source "CryptSDCardOptionConfirm.java"


# static fields
.field private static final PRODUCT_DEVICE:Ljava/lang/String;


# instance fields
.field private DEBUG:Z

.field private mButtonApply:Landroid/widget/Button;

.field private mContentView:Landroid/view/View;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mEnableDisableButton:Landroid/widget/Button;

.field private mParent:Landroid/app/Activity;

.field private mSDLayout:Landroid/widget/LinearLayout;

.field private mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mSdCardEnc2Messages:Landroid/widget/TextView;

.field private mSdCardEncMessages:Landroid/widget/TextView;

.field private mSdCardLine1:Landroid/view/View;

.field private mSdCardLine2:Landroid/view/View;

.field private mSdCardSelectedOptionMessages:Landroid/widget/TextView;

.field private mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product.device"

    const-string v1, "None"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->PRODUCT_DEVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->DEBUG:Z

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardSelectedOptionMessages:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEnc2Messages:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine1:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine2:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mEnableDisableButton:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/encryption/CryptSDCardOptionConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->applyEncryptionUpdates()V

    return-void
.end method

.method private applyEncryptionUpdates()V
    .locals 1

    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->runKeyguardConfirmation(I)Z

    return-void
.end method

.method private dipToFixel(I)I
    .locals 3

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

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

.method private disableUI()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardSelectedOptionMessages:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEnc2Messages:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private restoreUI()V
    .locals 10

    const/16 v9, 0xa

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/16 v6, 0x8

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardSelectedOptionMessages:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEnc2Messages:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine1:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine2:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v5, "lt01"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v5, "lt02"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v5, "millet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v5, "santos7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v5, "kona"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v5, "degas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->PRODUCT_DEVICE:Ljava/lang/String;

    const-string v5, "rubens"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/16 v5, 0xf1

    invoke-direct {p0, v5}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->dipToFixel(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    const v4, 0x7f090e55

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/16 v5, 0x190

    invoke-direct {p0, v5}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->dipToFixel(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_3
    const v4, 0x7f090e3e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-eq v4, v7, :cond_4

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v4, v8, :cond_8

    :cond_4
    const v4, 0x7f090e3b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v4, v7, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2022 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f090e26

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v4, v8, :cond_6

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2022 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f090e27

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-eq v4, v7, :cond_7

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v4, v8, :cond_9

    :cond_7
    const v4, 0x7f090e3c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardSelectedOptionMessages:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEnc2Messages:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine1:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine2:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine1:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine2:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 6

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

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
    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

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

.method private showFinalConfirmation(Landroid/dirEncryption/SDCardEncryptionPolicies;)V
    .locals 4

    new-instance v1, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/encryption/CryptSDCardConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    const v0, 0x7f090e2c

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

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x37

    if-eq p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v1, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v3, v3, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-direct {v0, v1, v2, v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->showFinalConfirmation(Landroid/dirEncryption/SDCardEncryptionPolicies;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    const-string v0, "CryptSDCardOptionConfirm"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const v0, 0x7f04005d

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardSelectedOptionMessages:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardEnc2Messages:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine1:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSdCardLine2:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mEnableDisableButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mEnableDisableButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "enc"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fullEnc"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "excludeMedia"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    const-string v0, "CryptSDCardOptionConfirm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MM Option - enc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fullEnc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " excludeMedia : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v0, v3, :cond_1

    :cond_0
    const-string v0, "CryptSDCardOptionConfirm"

    const-string v1, "Read Policy failure from getArguments()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mButtonApply:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/encryption/CryptSDCardOptionConfirm$1;

    invoke-direct {v1, p0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm$1;-><init>(Lcom/android/settings/encryption/CryptSDCardOptionConfirm;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSDLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSDLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mSDLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getPolicyChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->disableUI()V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->restoreUI()V

    goto :goto_0
.end method
