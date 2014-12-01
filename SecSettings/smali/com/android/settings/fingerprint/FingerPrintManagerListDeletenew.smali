.class public Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;
.super Landroid/app/ListFragment;
.source "FingerPrintManagerListDeletenew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;
    }
.end annotation


# static fields
.field private static mFingerCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private static mItem_cancel:Landroid/view/MenuItem;

.field private static mItem_del:Landroid/view/MenuItem;

.field private static mItem_rename:Landroid/view/MenuItem;

.field private static mItem_trash:Landroid/view/MenuItem;

.field private static mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# instance fields
.field private mButtonSellectAll:Landroid/view/View;

.field private mCustomListDel:Landroid/view/View;

.field private mEnrolledFingerCount:I

.field private mEnrolledFingerStatus:I

.field private mFingerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mListMode:I

.field private mSelectedTitle:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mlistView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$1;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method private SelectAllCheck()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private ToggleAllCheck(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkDeleteButtonstate()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->initializeActionBarTitle()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300()Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->resetFingerprintSupportingFeatures()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic access$700()Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 0

    sput-object p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object p0
.end method

.method private checkFingerprintUsageInPersona()Z
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "2.0"

    const-string v9, "version"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "persona"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v8}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaInfo;

    iget v2, v6, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled(I)Z

    move-result v6

    if-ne v7, v6, :cond_0

    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PersonaId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " use fingerprint as lock type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    :goto_1
    return v6

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "knox_finger_print_plus"

    invoke-static {v6, v9, v8, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v7, :cond_1

    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PersonaId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " use fingerprint plus as lock type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto :goto_1

    :cond_1
    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PersonaId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doesn\'t use fingerprint as lock type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    const-string v6, "FingerPrintManagerListDeletenew"

    const-string v7, "isFingerprintUsedinPersonas: Unable to access PersonaManager."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v6, "FingerPrintManagerListDeletenew"

    const-string v7, "isFingerprintUsedinPersonas: Any persona doesn\'t use fingerprint as lock type."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    goto :goto_1
.end method

.method private checkFingerprintUsageInPersonal()Z
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "2.0"

    const-string v6, "version"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "persona"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v8}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    iget v1, v5, Landroid/content/pm/PersonaInfo;->id:I

    const-string v5, "FingerPrintManagerListDeletenew"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t use fingerprint as lock type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "FingerPrintManagerListDeletenew"

    const-string v6, "isFingerprintUsedinPersonas: Unable to access PersonaManager."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v5, "FingerPrintManagerListDeletenew"

    const-string v6, "isFingerprintUsedinPersonas: Any persona doesn\'t use fingerprint as lock type."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method private checkFingerprintUsageNQuality()Z
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    const v3, 0x61000

    if-eq v1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->getCurrentLockQuality(Landroid/content/Context;)I

    move-result v3

    const/high16 v4, 0x10000

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private deRegisterAllFingerprint(I)V
    .locals 13

    const/high16 v12, 0x1040000

    const/4 v11, 0x0

    const v10, 0x104000a

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    const-string v5, "FingerPrintManagerListDeletenew"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deRegisterAllFingerprint : selectedcount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "personal_mode_lock_type"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkFingerprintUsageInPersonal()Z

    move-result v1

    const-string v5, "FingerPrintManagerListDeletenew"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deRegisterAllFingerprint : Private mode is using F/P and Knox is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0918e6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    if-eqz v1, :cond_0

    const v5, 0x7f0918a3

    :goto_0
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void

    :cond_0
    const v5, 0x7f0918a4

    goto :goto_0

    :cond_1
    const v5, 0x61000

    if-eq v3, v5, :cond_2

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkFingerprintUsageInPersonal()Z

    move-result v5

    if-ne v8, v5, :cond_6

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getFingerprintSupportingFeatures()Z

    move-result v5

    if-eqz v5, :cond_4

    if-ne p1, v8, :cond_3

    const v5, 0x7f09189f

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0918cd

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$5;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$5;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :cond_3
    const v5, 0x7f0918a0

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    if-ne p1, v8, :cond_5

    const v5, 0x7f0918a1

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    const v5, 0x7f0918a2

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getFingerprintSupportingFeatures()Z

    move-result v5

    if-eqz v5, :cond_8

    if-ne p1, v8, :cond_7

    const v5, 0x7f09189d

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0918cd

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$6;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$6;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :cond_7
    const v5, 0x7f09189e

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_8
    if-ne p1, v8, :cond_9

    const v5, 0x7f09189b

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0918cd

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$7;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$7;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :cond_9
    const v5, 0x7f09189c

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method private getFingerprintSupportingFeatures()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_secret_box"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_webpass"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_used_samsungaccount"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private initializeActionBarTitle()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectedTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectedTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private resetFingerprintSupportingFeatures()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_secret_box"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_webpass"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_fingerIndex"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_used_samsungaccount"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0918e6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0918ef

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$9;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$9;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$8;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$8;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public checkDeleteButtonstate()V
    .locals 5

    const v4, 0x7f090b6d

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f02017b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_rename:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mListMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_rename:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_1
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mListMode:I

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f02017d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_rename:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_7

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    const v1, 0x7f02024d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    const v1, 0x7f02024e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public customlistdelete()Z
    .locals 9

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v5

    const/4 v4, 0x1

    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "customlistdelete(),  count is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", selected item count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[mFingerRegistedStatus] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[mEnrolledFingerCount] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, -0x1

    const/4 v2, 0x1

    :goto_1
    const/4 v6, 0x3

    if-gt v2, v6, :cond_1

    iget v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    const/4 v7, 0x1

    shl-int/2addr v7, v2

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v6, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->removeEnrolledFinger(I)Z

    move-result v6

    and-int/2addr v4, v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->showSensorErrorDialog()V

    :cond_3
    return v4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b01c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mCustomListDel:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b01c2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mButtonSellectAll:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b01c3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sput-object v3, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sget-object v3, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setCheckBoxAnimationEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->updateFingerList()V

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v3, v4, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020788

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->initializeActionBarTitle()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v3, "selectedindex"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkDeleteButtonstate()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->initializeActionBarTitle()V

    :cond_2
    const-string v3, "listmode"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mListMode:I

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->SelectAllCheck()V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setEnableDragBlock(Z)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$2;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$2;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setTwMultiSelectedListener(Landroid/widget/AdapterView$OnTwMultiSelectedListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->ToggleAllCheck(Z)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->initializeActionBarTitle()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f090127

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020259

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0916b5

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_rename:Landroid/view/MenuItem;

    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mListMode:I

    if-eq v0, v3, :cond_0

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_rename:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkDeleteButtonstate()V

    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0400c1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FingerPrintManagerListDeletenew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->initializeActionBarTitle()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkDeleteButtonstate()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->SelectAllCheck()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-ne v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f09188f

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerPrintManagerListDeletenew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, p3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f091890

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerPrintManagerListDeletenew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    :goto_1
    return v7

    :pswitch_1
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v4

    iget v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    if-ne v4, v7, :cond_2

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkFingerprintUsageInPersona()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f091aef

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f091aee

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkFingerprintUsageNQuality()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    const-string v7, "%s\n%s\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0901fd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09187e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f091908

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0918d2

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->deRegisterAllFingerprint(I)V

    goto/16 :goto_0

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0918cd

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    const v7, 0x7f09189b

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$3;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$3;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$4;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$4;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_3
    const v7, 0x7f09189c

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->renameFingerPrint()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkDeleteButtonstate()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    return-void
.end method

.method public onPositiveClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->updateFingerList()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_cancel:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_cancel:Landroid/view/MenuItem;

    const v2, 0x7f020177

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    const v2, 0x7f02017b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    const v2, 0x7f02017d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_cancel:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public renameFingerPrint()V
    .locals 9

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v5

    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "customlistdelete(),  count is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", selected item count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[mFingerRegistedStatus] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[mEnrolledFingerCount] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, -0x1

    const/4 v2, 0x1

    :goto_1
    const/4 v6, 0x3

    if-gt v2, v6, :cond_1

    iget v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    const/4 v7, 0x1

    shl-int/2addr v7, v2

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    new-instance v4, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-direct {v4, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;-><init>(I)V

    invoke-virtual {v4, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "dialog"

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateFingerList()V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    if-gt v0, v5, :cond_2

    iput v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;->notifyDataSetChanged()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_2
    const/4 v0, 0x3

    if-gt v7, v0, :cond_5

    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    shl-int v1, v5, v7

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0, v7}, Lcom/samsung/android/fingerprint/FingerprintManager;->getIndexName(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091899

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0400c5

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    :goto_4
    const-string v0, "FingerPrintManagerListDeletenew"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mFingerRegistedStatus] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FingerPrintManagerListDeletenew"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mEnrolledFingerCount] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;->notifyDataSetChanged()V

    goto :goto_4
.end method
