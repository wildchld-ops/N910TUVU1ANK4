.class public Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
.super Landroid/app/ListFragment;
.source "FingerPrintManagerListDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;,
        Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;
    }
.end annotation


# static fields
.field private static mFingerCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private static mItem_del:Landroid/view/MenuItem;

.field private static mItem_rename:Landroid/view/MenuItem;

.field private static mItem_trash:Landroid/view/MenuItem;


# instance fields
.field public actionModeControl:Z

.field private listpopup:Landroid/widget/ListPopupWindow;

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

.field private mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

.field private mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mListMode:I

.field private mMultiActionMode:Landroid/view/ActionMode;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mlistView:Landroid/widget/ListView;

.field private select:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->actionModeControl:Z

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$1;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 3
    .param p1    # Z

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkDeleteButtonstate()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->updateSelectionMenu()V

    :cond_2
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;
    .locals 1
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/view/ActionMode;I)V
    .locals 0
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
    .param p1    # Landroid/view/ActionMode;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->deRegisterAllFingerprint(Landroid/view/ActionMode;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;
    .locals 0
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
    .param p1    # Landroid/widget/ListPopupWindow;

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->select:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->select:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1302(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .param p0    # Landroid/view/MenuItem;

    sput-object p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$1402(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .param p0    # Landroid/view/MenuItem;

    sput-object p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_rename:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/view/ActionMode;
    .locals 1
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
    .param p1    # Landroid/view/ActionMode;

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Z)V
    .locals 0
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic access$1700()Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 0
    .param p0    # Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sput-object p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;
    .locals 1
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V
    .locals 0
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->resetFingerprintSupportingFeatures()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V
    .locals 0
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)I
    .locals 1
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Z
    .locals 1
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkFingerprintUsageInPersona()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Z
    .locals 1
    .param p0    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkFingerprintUsageNQuality()Z

    move-result v0

    return v0
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

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

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

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

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

    iget v2, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled(I)Z

    move-result v6

    if-ne v7, v6, :cond_0

    const-string v6, "FingerPrintManagerListDelete"

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
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "knox_finger_print_plus"

    invoke-static {v6, v9, v8, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v7, :cond_1

    const-string v6, "FingerPrintManagerListDelete"

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
    const-string v6, "FingerPrintManagerListDelete"

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
    const-string v6, "FingerPrintManagerListDelete"

    const-string v7, "isFingerprintUsedinPersonas: Unable to access PersonaManager."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v6, "FingerPrintManagerListDelete"

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

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

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

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    const-string v5, "FingerPrintManagerListDelete"

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
    const-string v5, "FingerPrintManagerListDelete"

    const-string v6, "isFingerprintUsedinPersonas: Unable to access PersonaManager."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v5, "FingerPrintManagerListDelete"

    const-string v6, "isFingerprintUsedinPersonas: Any persona doesn\'t use fingerprint as lock type."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method private checkFingerprintUsageNQuality()Z
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

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
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->getCurrentLockQuality(Landroid/content/Context;)I

    move-result v3

    const/high16 v4, 0x10000

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private deRegisterAllFingerprint(Landroid/view/ActionMode;I)V
    .locals 13
    .param p1    # Landroid/view/ActionMode;
    .param p2    # I

    const/high16 v12, 0x1040000

    const/4 v11, 0x0

    const v10, 0x104000a

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    const-string v5, "FingerPrintManagerListDelete"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deRegisterAllFingerprint : selectedcount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "personal_mode_lock_type"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkFingerprintUsageInPersonal()Z

    move-result v1

    const-string v5, "FingerPrintManagerListDelete"

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

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

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

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void

    :cond_0
    const v5, 0x7f0918a4

    goto :goto_0

    :cond_1
    const v5, 0x61000

    if-eq v3, v5, :cond_2

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkFingerprintUsageInPersonal()Z

    move-result v5

    if-ne v8, v5, :cond_6

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getFingerprintSupportingFeatures()Z

    move-result v5

    if-eqz v5, :cond_4

    if-ne p2, v8, :cond_3

    const v5, 0x7f09189f

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0918cd

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_3
    const v5, 0x7f0918a0

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    if-ne p2, v8, :cond_5

    const v5, 0x7f0918a1

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    const v5, 0x7f0918a2

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getFingerprintSupportingFeatures()Z

    move-result v5

    if-eqz v5, :cond_8

    if-ne p2, v8, :cond_7

    const v5, 0x7f09189d

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0918cd

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$4;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$4;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    :cond_7
    const v5, 0x7f09189e

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_8
    if-ne p2, v8, :cond_9

    const v5, 0x7f09189b

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0918cd

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$5;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$5;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    :cond_9
    const v5, 0x7f09189c

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method private getFingerprintSupportingFeatures()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_secret_box"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_webpass"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_used_samsungaccount"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private resetFingerprintSupportingFeatures()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_secret_box"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_webpass"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_fingerIndex"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_used_samsungaccount"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_lock_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_lock_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0918e6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0918ef

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$6;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$6;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public checkDeleteButtonstate()V
    .locals 5

    const v4, 0x7f090b6d

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_del:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f02017b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_rename:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mListMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_rename:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_1
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mListMode:I

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f02017d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_rename:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_7

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    const v1, 0x7f02024d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    const v1, 0x7f02024e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public customlistdelete()V
    .locals 9

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v5

    const/4 v4, 0x1

    const-string v6, "FingerPrintManagerListDelete"

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

    const-string v6, "FingerPrintManagerListDelete"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[mFingerRegistedStatus] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "FingerPrintManagerListDelete"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[mEnrolledFingerCount] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, -0x1

    const/4 v2, 0x1

    :goto_1
    const/4 v6, 0x3

    if-gt v2, v6, :cond_1

    iget v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    const/4 v7, 0x1

    shl-int/2addr v7, v2

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

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

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->showSensorErrorDialog()V

    :cond_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->updateFingerList()V

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_0
    new-instance v2, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    invoke-direct {v2, p0, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$1;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "selectedindex"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->updateSelectionMenu()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkDeleteButtonstate()V

    :cond_2
    const-string v2, "listmode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mListMode:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mListMode:I

    if-eq v2, v5, :cond_3

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_rename:Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_rename:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mListMode:I

    if-ne v2, v5, :cond_4

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    const v3, 0x7f02024d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v2, v3, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_5
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/AbsListView;->setEnableDragBlock(Z)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$2;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setTwMultiSelectedListener(Landroid/widget/AdapterView$OnTwMultiSelectedListener;)V

    return-void

    :cond_6
    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    const v3, 0x7f02024e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v5, 0x0

    const v1, 0x7f0400c0

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->textView:Landroid/widget/TextView;

    const v2, 0x7f09189a

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->textView:Landroid/widget/TextView;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    const-string v1, "FingerPrintManagerListDelete"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->actionModeControl:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FingerPrintManagerListDelete"

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
    .param p1    # Landroid/widget/ListView;
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkDeleteButtonstate()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, p3, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->updateSelectionMenu()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-ne v1, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f09188f

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerPrintManagerListDelete"

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

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, p3, v4}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f091890

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerPrintManagerListDelete"

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

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkDeleteButtonstate()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    return-void
.end method

.method public onPositiveClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->updateFingerList()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public renameFingerPrint()V
    .locals 9

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v5

    const-string v6, "FingerPrintManagerListDelete"

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

    const-string v6, "FingerPrintManagerListDelete"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[mFingerRegistedStatus] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "FingerPrintManagerListDelete"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[mEnrolledFingerCount] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, -0x1

    const/4 v2, 0x1

    :goto_1
    const/4 v6, 0x3

    if-gt v2, v6, :cond_1

    iget v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    const/4 v7, 0x1

    shl-int/2addr v7, v2

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    new-instance v4, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-direct {v4, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;-><init>(I)V

    invoke-virtual {v4, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "dialog"

    invoke-virtual {v4, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    if-gt v0, v5, :cond_2

    iput v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_2
    const/4 v0, 0x3

    if-gt v7, v0, :cond_5

    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    shl-int v1, v5, v7

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0, v7}, Lcom/samsung/android/fingerprint/FingerprintManager;->getIndexName(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

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
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0400c5

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :goto_4
    const-string v0, "FingerPrintManagerListDelete"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mFingerRegistedStatus] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FingerPrintManagerListDelete"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mEnrolledFingerCount] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_4
.end method
