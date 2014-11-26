.class public Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "EditRejectCallWithMsgIconMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;,
        Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;
    }
.end annotation


# instance fields
.field private mBodyEditText:Landroid/widget/EditText;

.field private mBodyMsg:Ljava/lang/String;

.field private mIconIndex:I

.field private mImageButton:Landroid/widget/ImageButton;

.field private mImageDlg:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

.field private mInputMgr:Landroid/view/inputmethod/InputMethodManager;

.field private mLandColumnWidth:I

.field private mLandGridViewWidth:I

.field private mLandHorizonSpace:I

.field private mLandMarginLeft:I

.field private mLandMarginRight:I

.field private mNewIconIndex:I

.field private mPortColumnWidth:I

.field private mPortGridViewWidth:I

.field private mPortHorizonSpace:I

.field private mPortMarginLeft:I

.field private mPortMarginRight:I

.field private mSaveButton:Landroid/widget/Button;

.field private mSaveItem:Landroid/view/MenuItem;

.field private mTitleEditText:Landroid/widget/EditText;

.field private mTitleMsg:Ljava/lang/String;

.field private mViewRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    iput v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mIconIndex:I

    iput v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I

    iput-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleMsg:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyMsg:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveItem:Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveButton:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;

    iput v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mPortGridViewWidth:I

    iput v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mPortColumnWidth:I

    iput v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mPortHorizonSpace:I

    iput v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mPortMarginLeft:I

    iput v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mPortMarginRight:I

    iput v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mLandGridViewWidth:I

    iput v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mLandColumnWidth:I

    iput v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mLandHorizonSpace:I

    iput v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mLandMarginLeft:I

    iput v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mLandMarginRight:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-direct {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->doSave()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/view/MenuItem;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mPortColumnWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mPortHorizonSpace:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mPortGridViewWidth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mPortMarginLeft:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mPortMarginRight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mLandColumnWidth:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mLandHorizonSpace:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mLandGridViewWidth:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mLandMarginLeft:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mLandMarginRight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageDlg:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;)Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;
    .param p1    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageDlg:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;I)I
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/widget/ImageButton;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private doSave()V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyMsg:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eq v6, v7, :cond_0

    const/4 v2, 0x1

    const-string v6, "msgBody"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleMsg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eq v6, v7, :cond_1

    const/4 v2, 0x1

    const-string v6, "title"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I

    if-eq v6, v8, :cond_2

    iget v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I

    iget v7, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mIconIndex:I

    if-eq v6, v7, :cond_2

    const/4 v2, 0x1

    const-string v6, "iconId"

    iget v7, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, p0, v8, v4}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    return-void
.end method

.method private getDimensions()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mPortGridViewWidth:I

    const v1, 0x7f0e005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mPortColumnWidth:I

    const v1, 0x7f0e005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mPortHorizonSpace:I

    const v1, 0x7f0e005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mPortMarginLeft:I

    const v1, 0x7f0e005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mPortMarginRight:I

    const v1, 0x7f0e005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mLandGridViewWidth:I

    const v1, 0x7f0e005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mLandColumnWidth:I

    const v1, 0x7f0e0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mLandHorizonSpace:I

    const v1, 0x7f0e0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mLandMarginLeft:I

    const v1, 0x7f0e0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mLandMarginRight:I

    return-void
.end method

.method private isLandscape()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageDlg:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageDlg:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    # invokes: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->changedGridViewParams(I)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->access$900(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v6, "iconId"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mIconIndex:I

    const-string v6, "title"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleMsg:Ljava/lang/String;

    const-string v6, "msgBody"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyMsg:Ljava/lang/String;

    const-string v6, "EditIconMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "icon id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mIconIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", title: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleMsg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyMsg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getDimensions()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_1
    if-eqz v0, :cond_3

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v6, 0x7f04001d

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setCustomView(I)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    const v6, 0x7f0a008c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v6, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$1;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$1;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0a008d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveButton:Landroid/widget/Button;

    const v7, 0x7f090151

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyMsg:Ljava/lang/String;

    if-eqz v6, :cond_4

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyMsg:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x0

    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$2;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$2;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;

    return-void

    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    const v8, 0x7f0902d5

    const v7, 0x7f0902d1

    const/4 v6, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    :goto_0
    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    :goto_1
    invoke-interface {p1, v2, v3, v0, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020003

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v4, 0x2

    invoke-interface {p1, v2, v4, v0, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v4, 0x3

    invoke-interface {p1, v2, v4, v1, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020004

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v4, 0x4

    invoke-interface {p1, v2, v4, v1, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v2, 0x7f040080

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mViewRoot:Landroid/view/View;

    const v2, 0x7f0a01d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleMsg:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleMsg:Ljava/lang/String;

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0xf

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$3;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v2, 0x7f0a01d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyMsg:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$4;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$4;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v2, 0x7f0a01d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageButton:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mIconIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageButton:Landroid/widget/ImageButton;

    sget-object v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->THUMB_ICONS:[I

    iget v4, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mIconIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageButton:Landroid/widget/ImageButton;

    sget-object v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->THUMB_ICONS:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iput v6, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    const-string v0, "EditIconMode"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->doSave()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 11
    .param p1    # Landroid/view/Menu;

    const/4 v10, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->isLandscape()Z

    move-result v0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveItem:Landroid/view/MenuItem;

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mSaveItem:Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
