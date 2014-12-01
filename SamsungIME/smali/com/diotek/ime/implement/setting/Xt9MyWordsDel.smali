.class public Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;
.super Landroid/app/Activity;
.source "Xt9MyWordsDel.java"


# instance fields
.field private mAllSelected:Z

.field private mDeleteDlg:Landroid/app/AlertDialog;

.field private final mDeletingWordsList:Ljava/util/ArrayList;
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

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mListAdapter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

.field private mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMenu:Landroid/view/Menu;

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;

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

.field private final mWordlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mAllSelected:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeleteDlg:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->setDoneMenuEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mAllSelected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mAllSelected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDisplayView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->removeWordFromUserModel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    return-object v0
.end method

.method private generateWordUserModel()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->resetTemporaryModel()V

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/Trainer;->getTermCounts()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/Term;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v4

    invoke-virtual {v2}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->staticModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;-><init>(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;-><init>(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectAllViewClicklistener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getSelectAllViewTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$4;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$4;-><init>(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectAllViewTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private makeDeletePopup()V
    .locals 6

    const v5, 0x7f0e009f

    const/4 v4, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0e00a0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;-><init>(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    const v2, 0x7f0e00ac

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeleteDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_1

    const v2, 0x7f0e00aa

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeleteDlg:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_1
.end method

.method private removeWordFromUserModel(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->resetTemporaryModel()V

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v1

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->dynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    return-void
.end method

.method private setDoneMenuEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mMenu:Landroid/view/Menu;

    const v1, 0x7f08012b

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->setDoneMenuEnabled(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const v13, 0x7f03009f

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DBController()Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    :cond_0
    const v8, 0x7f03009e

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    const-string v8, ""

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    iput-boolean v12, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mAllSelected:Z

    const v8, 0x7f0800d4

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallview:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00a2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallArray:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallArray:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-direct {v8, p0, v13, v9, v10}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallview:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallview:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->getSelectAllViewTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallview:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->generateWordUserModel()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v8, v3, v11}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->getMyWordsList(Ljava/util/ArrayList;Z)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v8, v3, v12}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->getMyWordsList(Ljava/util/ArrayList;Z)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance v8, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-direct {v8, p0, v13, v9, v10}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mListAdapter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    const v8, 0x7f0800d5

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDisplayView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mListAdapter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    new-instance v9, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$1;

    invoke-direct {v9, p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$1;-><init>(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)V

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDisplayView:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mListAdapter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDisplayView:Landroid/widget/ListView;

    invoke-virtual {v8, v11}, Landroid/view/View;->setClickable(Z)V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDisplayView:Landroid/widget/ListView;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDisplayView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mMenu:Landroid/view/Menu;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->setDoneMenuEnabled(Z)V

    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->makeDeletePopup()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08012b -> :sswitch_1
        0x7f08012d -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
