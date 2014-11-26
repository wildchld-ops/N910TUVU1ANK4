.class public Lcom/diotek/ime/implement/setting/ACDeleteLanguages;
.super Landroid/app/Activity;
.source "ACDeleteLanguages.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "KLLanguagesSettings"

.field private static mDeleteDlg:Landroid/app/AlertDialog;

.field private static mDeletePopup:Z


# instance fields
.field private mAllSelected:Z

.field private final mDeletingLPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayView:Landroid/widget/ListView;

.field public mDownloadedLanguageMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

.field public mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field private mExtraBundle:Landroid/os/Bundle;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mIntent:Landroid/content/Intent;

.field private final mLPlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListAdapter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

.field private mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMenu:Landroid/view/Menu;

.field private mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

.field private mSelectallArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectallview:Landroid/widget/ListView;

.field private mSelectedLanguageSharedPreference:Landroid/content/SharedPreferences;

.field public mSupportedLanguages:[Lcom/diotek/ime/framework/common/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeleteDlg:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletePopup:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mAllSelected:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSupportedLanguages:[Lcom/diotek/ime/framework/common/Language;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Landroid/content/Intent;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/ACDeleteLanguages;
    .param p1    # Landroid/content/Intent;

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;Z)V
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/ACDeleteLanguages;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->setDoneMenuEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mAllSelected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/ACDeleteLanguages;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mAllSelected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletePopup:Z

    return p0
.end method

.method static synthetic access$800()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeleteDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Landroid/os/Bundle;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mExtraBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$902(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/ACDeleteLanguages;
    .param p1    # Landroid/os/Bundle;

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mExtraBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method private getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;-><init>(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$3;-><init>(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getSelectAllViewTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$2;-><init>(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private isSelectedLanguage(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "selected"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectedLanguageSharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private makeDeletePopup()V
    .locals 7

    const v4, 0x7f0e009f

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-boolean v2, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletePopup:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0e00a0

    new-instance v3, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$4;

    invoke-direct {v3, p0}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$4;-><init>(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$5;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$5;-><init>(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$6;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$6;-><init>(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_1

    const v1, 0x7f0e01e6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    sput-boolean v5, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletePopup:Z

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeleteDlg:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    const v1, 0x7f0e01e7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private setDoneMenuEnabled(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mMenu:Landroid/view/Menu;

    const v1, 0x7f08012b

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method


# virtual methods
.method getDownloadedLanguageList()V
    .locals 9

    const/4 v8, -0x1

    const-string v5, "downloaded"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSupportedLanguages:[Lcom/diotek/ime/framework/common/Language;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v8, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDownloadedLanguageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->setDoneMenuEnabled(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;

    const v8, 0x7f0300a4

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v4, 0x7f0300a3

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    const-string v4, ""

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    iput-boolean v5, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mAllSelected:Z

    sput-boolean v5, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletePopup:Z

    const v4, 0x7f0800d4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectallArray:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectallArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectallArray:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v8, v5, v6}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->getSelectAllViewTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectallview:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSupportedLanguages:[Lcom/diotek/ime/framework/common/Language;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDownloadedLanguageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->getDownloadedLanguageList()V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDownloadedLanguageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->isSelectedLanguage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mLPlist:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v8, v5, v6}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mListAdapter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    const v4, 0x7f0800d5

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mListAdapter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setClickable(Z)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDisplayView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1    # Landroid/view/Menu;

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mMenu:Landroid/view/Menu;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->setDoneMenuEnabled(Z)V

    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->makeDeletePopup()V

    sget-object v1, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeleteDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08012b -> :sswitch_1
        0x7f08012d -> :sswitch_2
    .end sparse-switch
.end method
