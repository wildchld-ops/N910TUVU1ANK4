.class public Lcom/android/mms/prioritysender/AddThreadListActivity;
.super Landroid/app/Activity;
.source "AddThreadListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;,
        Lcom/android/mms/prioritysender/AddThreadListActivity$ThreadListQueryHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/AddThreadListActivity"

.field private static final THREAD_LIST_QUERY_TOKEN:I = 0x6a5


# instance fields
.field private mActionbarTitle:Landroid/widget/TextView;

.field private final mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewBackground:Landroid/widget/ImageView;

.field private mIsSelectAllmode:Z

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mListView:Lcom/android/mms/ui/MsgSweepActionListView;

.field private mMaxCount:I

.field private mMaxDialog:Landroid/app/AlertDialog;

.field private mMaxToast:Landroid/widget/Toast;

.field mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

.field private mQueryHandler:Lcom/android/mms/prioritysender/AddThreadListActivity$ThreadListQueryHandler;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectedButton:Landroid/widget/Button;

.field private mToast:Landroid/widget/Toast;

.field private mTotalConversations:Landroid/widget/TextView;

.field private mTotalConversationsLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mIsSelectAllmode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    new-instance v0, Lcom/android/mms/prioritysender/AddThreadListActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/prioritysender/AddThreadListActivity$2;-><init>(Lcom/android/mms/prioritysender/AddThreadListActivity;)V

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/prioritysender/AddThreadListActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/prioritysender/AddThreadListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/prioritysender/AddThreadListActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/prioritysender/AddThreadListActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectedButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/prioritysender/AddThreadListActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->showToast(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/prioritysender/AddThreadListActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mMaxCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/prioritysender/AddThreadListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->showMaxToast()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/prioritysender/AddThreadListActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->updateEmptyScreen(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/prioritysender/AddThreadListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/prioritysender/AddThreadListActivity;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/prioritysender/AddThreadListActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isEmptyViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showMaxToast()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mMaxToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const v0, 0x7f0c0482

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mMaxToast:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showToast(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    if-le p1, v1, :cond_1

    const v0, 0x7f0c045c

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mToast:Landroid/widget/Toast;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const v0, 0x7f0c045d

    invoke-virtual {p0, v0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method private startAsyncQuery()V
    .locals 5

    :try_start_0
    const-string v1, "recipient_ids NOT LIKE \'% %\'"

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mQueryHandler:Lcom/android/mms/prioritysender/AddThreadListActivity$ThreadListQueryHandler;

    const/16 v3, 0x6a5

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v1}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private updateEmptyScreen(I)V
    .locals 6

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v5, 0x0

    const-string v0, "Mms/AddThreadListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEmptyScreen(), resultCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setVisibility(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectedButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectedButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->updateEmptyViewBackground()V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->updateSelectionMenu()V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectedButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectedButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0002

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateEmptyViewBackground()V
    .locals 4

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->isEmptyViewVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v3, 0x7f0202a5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_2
    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v3, 0x7f0202a6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->updateEmptyViewBackground()V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->updateSelectionButtonHeight()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f040010

    invoke-virtual {p0, v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxCount"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mMaxCount:I

    new-instance v1, Lcom/android/mms/prioritysender/AddThreadListActivity$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/prioritysender/AddThreadListActivity$ThreadListQueryHandler;-><init>(Lcom/android/mms/prioritysender/AddThreadListActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mQueryHandler:Lcom/android/mms/prioritysender/AddThreadListActivity$ThreadListQueryHandler;

    const v1, 0x7f0b0046

    invoke-virtual {p0, v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0b0048

    invoke-virtual {p0, v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MsgSweepActionListView;

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04003c

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b014a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mTotalConversations:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v6, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setChoiceMode(I)V

    new-instance v1, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    invoke-direct {v1, p0, v6}, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;-><init>(Lcom/android/mms/prioritysender/AddThreadListActivity;Lcom/android/mms/prioritysender/AddThreadListActivity$1;)V

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setMultiChoiceModeListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->twSetCustomMultiChoiceMode(Z)V

    const v1, 0x7f0b004f

    invoke-virtual {p0, v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectAll:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0051

    invoke-virtual {p0, v1}, Lcom/android/mms/prioritysender/AddThreadListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/prioritysender/AddThreadListActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/prioritysender/AddThreadListActivity$1;-><init>(Lcom/android/mms/prioritysender/AddThreadListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/mms/ui/ConversationListAdapter;

    invoke-direct {v1, p0, v6}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/ConversationListAdapter;->setMultiMode(Z)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->twShowMultiChoiceMode(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->startAsyncQuery()V

    return-void
.end method

.method public selectAllList()V
    .locals 6

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mIsSelectAllmode:Z

    iget v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mMaxCount:I

    iget-object v4, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCheckedItemCount()I

    move-result v4

    sub-int v2, v3, v4

    if-gtz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3, v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->setItemChecked(IZ)V

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_1

    :cond_3
    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    invoke-virtual {v3}, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->updateSelectionMenu()V

    :cond_4
    iget-object v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mIsSelectAllmode:Z

    goto :goto_0
.end method

.method public unSelectAllList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity;->mModeCallback:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->updateSelectionMenu()V

    :cond_0
    return-void
.end method
