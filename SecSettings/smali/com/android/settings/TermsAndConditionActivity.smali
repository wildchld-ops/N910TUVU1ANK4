.class public Lcom/android/settings/TermsAndConditionActivity;
.super Landroid/app/Activity;
.source "TermsAndConditionActivity.java"


# instance fields
.field private handler_loading:Landroid/os/Handler;

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mTextDlg:Landroid/app/AlertDialog;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/TermsAndConditionActivity;->s:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/TermsAndConditionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TermsAndConditionActivity$1;-><init>(Lcom/android/settings/TermsAndConditionActivity;)V

    iput-object v0, p0, Lcom/android/settings/TermsAndConditionActivity;->handler_loading:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/settings/TermsAndConditionActivity;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/settings/TermsAndConditionActivity;->loadingDialog:Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/android/settings/TermsAndConditionActivity;->mTextDlg:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TermsAndConditionActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0    # Lcom/android/settings/TermsAndConditionActivity;

    iget-object v0, p0, Lcom/android/settings/TermsAndConditionActivity;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/TermsAndConditionActivity;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/TermsAndConditionActivity;

    iget-object v0, p0, Lcom/android/settings/TermsAndConditionActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/TermsAndConditionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/settings/TermsAndConditionActivity;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/TermsAndConditionActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/TermsAndConditionActivity;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/settings/TermsAndConditionActivity;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/TermsAndConditionActivity;->showPageOfText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/TermsAndConditionActivity;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/TermsAndConditionActivity;

    iget-object v0, p0, Lcom/android/settings/TermsAndConditionActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/TermsAndConditionActivity;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/TermsAndConditionActivity;

    invoke-direct {p0}, Lcom/android/settings/TermsAndConditionActivity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/TermsAndConditionActivity;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/settings/TermsAndConditionActivity;

    iget-object v0, p0, Lcom/android/settings/TermsAndConditionActivity;->handler_loading:Landroid/os/Handler;

    return-object v0
.end method

.method private createThreadAndDialog()V
    .locals 5

    const-string v1, ""

    const-string v2, "Now Loading..."

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TermsAndConditionActivity;->loadingDialog:Landroid/app/ProgressDialog;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/TermsAndConditionActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/TermsAndConditionActivity$3;-><init>(Lcom/android/settings/TermsAndConditionActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getFilePath()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/TermsAndConditionActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "txt/%y%z/eula.txt"

    iget-object v5, p0, Lcom/android/settings/TermsAndConditionActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->getEulaVersion(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, "eula.txt"

    const-string v6, "eula_1.txt"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v5, "%y"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "%z"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x5f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v3, :cond_1

    move-object v4, v3

    :goto_1
    return-object v4

    :catch_0
    move-exception v1

    const-string v5, "TermsAndConditionActivity"

    const-string v6, "country is not using in file path"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "txt/%y%z/eula.txt"

    iget-object v5, p0, Lcom/android/settings/TermsAndConditionActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->getEulaVersion(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, "eula.txt"

    const-string v6, "eula_1.txt"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string v5, "%y"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "%z"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const-string v3, "txt/%y%z/eula.txt"

    iget-object v5, p0, Lcom/android/settings/TermsAndConditionActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->getEulaVersion(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, "eula.txt"

    const-string v6, "eula_1.txt"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v5, "%y"

    const-string v6, "en"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "%z"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v5, "TermsAndConditionActivity"

    const-string v6, "country is not using in file path"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_2
.end method

.method private showPageOfText(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/TermsAndConditionActivity;->getApplicationContext()Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/TermsAndConditionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v5, 0x7f0401ae

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0b043a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/TermsAndConditionActivity;->s:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0b0195

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f09004f

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/TermsAndConditionActivity;->mTextDlg:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/settings/TermsAndConditionActivity;->mTextDlg:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/settings/TermsAndConditionActivity$2;

    invoke-direct {v6, p0}, Lcom/android/settings/TermsAndConditionActivity$2;-><init>(Lcom/android/settings/TermsAndConditionActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v5, p0, Lcom/android/settings/TermsAndConditionActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/TermsAndConditionActivity;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/android/settings/TermsAndConditionActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TermsAndConditionActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/TermsAndConditionActivity;->createThreadAndDialog()V

    return-void
.end method
