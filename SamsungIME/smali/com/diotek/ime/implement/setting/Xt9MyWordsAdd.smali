.class public Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;
.super Landroid/app/Activity;
.source "Xt9MyWordsAdd.java"


# instance fields
.field private final MIN_WORD_LENGTH:I

.field private mAddWordDoneToast:Landroid/widget/Toast;

.field private mAddingEditText:Landroid/widget/EditText;

.field private mEdittingWord:Ljava/lang/String;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mIsKorMode:Z

.field private mMenu:Landroid/view/Menu;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSwiftkeyWrapper:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->MIN_WORD_LENGTH:I

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mEdittingWord:Ljava/lang/String;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mAddingEditText:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mTextWatcher:Landroid/text/TextWatcher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mIsKorMode:Z

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mAddWordDoneToast:Landroid/widget/Toast;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mSwiftkeyWrapper:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->controlMenuItem()V

    return-void
.end method

.method private addWord()V
    .locals 15

    const v13, 0x7f0e00a8

    const/4 v14, 0x0

    const v11, 0x7f0800d3

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mAddingEditText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v11, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mIsKorMode:Z

    if-eqz v11, :cond_1

    if-eqz v1, :cond_1

    const-string v11, " "

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e00a7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mAddWordDoneToast:Landroid/widget/Toast;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mAddWordDoneToast:Landroid/widget/Toast;

    invoke-virtual {v11, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mAddWordDoneToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v11, "input_method"

    invoke-virtual {p0, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v5, v11, v14}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v9

    invoke-virtual {v9}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v11

    invoke-interface {v11}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->addWordToUserModel(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    const/16 v11, 0x20

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v11, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->addMyWord(Ljava/lang/CharSequence;)I

    move-result v7

    if-nez v7, :cond_6

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mEdittingWord:Ljava/lang/String;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    iget-object v12, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mEdittingWord:Ljava/lang/String;

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->deleteMyWord(Ljava/lang/CharSequence;)I

    :cond_5
    :goto_2
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v11, v14}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->writeDBdataToFile(B)V

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    const/4 v12, 0x3

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->writeDBdataToFile(B)V

    goto :goto_1

    :cond_6
    const/16 v11, 0x14

    if-ne v7, v11, :cond_7

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_7
    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v11, :cond_8

    if-eqz v7, :cond_8

    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mLeftButtonClickListener addMyWord error : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v11, 0x7f0e00a9

    invoke-static {v2, v11, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private addWordToUserModel(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->resetTemporaryModel()V

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v0

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    return-void
.end method

.method private cancelWord()V
    .locals 4

    const v2, 0x7f0800d3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private controlMenuItem()V
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mAddingEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mIsKorMode:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mEdittingWord:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mEdittingWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->setDoneMenuItemEnabled(Z)V

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->setDoneMenuItemEnabled(Z)V

    goto :goto_0
.end method

.method private getTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mTextWatcher:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd$1;-><init>(Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mTextWatcher:Landroid/text/TextWatcher;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private setDoneMenuItemEnabled(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mMenu:Landroid/view/Menu;

    const v1, 0x7f08012e

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100006

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->controlMenuItem()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const v6, 0x7f0e00a4

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DBController()Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const v3, 0x7f03009d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "CURRENT_MODE"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "EDITTING_WORD"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mEdittingWord:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v3

    if-nez v3, :cond_5

    const v3, 0x7f0e009e

    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    const-string v3, ""

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    :goto_1
    if-nez v2, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x14

    invoke-virtual {v3, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_2
    const v3, 0x7f0800d3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mAddingEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mAddingEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mAddingEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mEdittingWord:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mAddingEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mEdittingWord:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mAddingEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mEdittingWord:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mEdittingWord:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/EditText;->setSelection(II)V

    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mAddingEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->getTextWatcher()Landroid/text/TextWatcher;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mIsKorMode:Z

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, ""

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mAddWordDoneToast:Landroid/widget/Toast;

    return-void

    :cond_4
    const v3, 0x7f0e00a1

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e00a3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    move v2, v4

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->mMenu:Landroid/view/Menu;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->controlMenuItem()V

    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

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

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->addWord()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->cancelWord()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08012d -> :sswitch_2
        0x7f08012e -> :sswitch_1
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
