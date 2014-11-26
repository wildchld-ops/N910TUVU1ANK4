.class public Lcom/android/settings/settingssearch/SettingsSearchActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsSearchActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;,
        Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;
    }
.end annotation


# static fields
.field private static RESTORE_DB:Z

.field private static mArrayResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mKeyWord:Ljava/lang/String;

.field private static mSearchListAdapter:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

.field private static mSearchListPathAdapter:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

.field private static mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

.field private static mSearchViewFoncused:Z

.field private static mSupportHistory:Z

.field private static mSupportPath:Z

.field private static mprevKeyWord:Ljava/lang/String;


# instance fields
.field private isHistoryViewState:Z

.field private mClipVisible:Z

.field private mLeftSideView:Landroid/view/View;

.field private mNegativeColoursObserver:Landroid/database/ContentObserver;

.field private mNoResultlayout:Landroid/view/View;

.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRightSideView:Landroid/view/View;

.field private mSearchListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field mSearchViewOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mTalkbackObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchViewFoncused:Z

    sput-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListAdapter:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    sput-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListPathAdapter:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mArrayResultList:Ljava/util/ArrayList;

    sput-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    sput-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mprevKeyWord:Ljava/lang/String;

    sput-boolean v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->RESTORE_DB:Z

    sput-boolean v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSupportPath:Z

    sput-boolean v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSupportHistory:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mNoResultlayout:Landroid/view/View;

    iput-boolean v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->isHistoryViewState:Z

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mLeftSideView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mRightSideView:Landroid/view/View;

    iput-boolean v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mClipVisible:Z

    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/settingssearch/SettingsSearchActivity$1;-><init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mNegativeColoursObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/settingssearch/SettingsSearchActivity$2;-><init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mTalkbackObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity$3;-><init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity$5;-><init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$6;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity$6;-><init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchViewOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method private SearchDB()V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-virtual {v0}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getCount_searchinfo()I

    move-result v0

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-virtual {v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getCount_titleinfo()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-virtual {v0}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getCount_titleinfo()I

    move-result v0

    if-ge v0, v3, :cond_1

    :cond_0
    const-string v0, "SettingSearch/SettingsSearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " searchinfo count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-virtual {v2}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getCount_searchinfo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " title count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-virtual {v2}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getCount_titleinfo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESTORE_SEARCH_DB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sput-boolean v3, Lcom/android/settings/settingssearch/SettingsSearchActivity;->RESTORE_DB:Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->RESTORE_DB:Z

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mArrayResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Ljava/util/ArrayList;

    sput-object p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mArrayResultList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/settingssearch/SettingsSearchActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0    # Lcom/android/settings/settingssearch/SettingsSearchActivity;

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;

    sput-object p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/settingssearch/SettingsSearchActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/settings/settingssearch/SettingsSearchActivity;

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSupportPath:Z

    return v0
.end method

.method static synthetic access$1300()Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;
    .locals 1

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListPathAdapter:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/android/settings/settingssearch/SettingsSearchListAdapter;
    .locals 1

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListAdapter:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/settings/settingssearch/SettingsSearchManager;
    .locals 1

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/settingssearch/SettingsSearchManager;)Lcom/android/settings/settingssearch/SettingsSearchManager;
    .locals 0
    .param p0    # Lcom/android/settings/settingssearch/SettingsSearchManager;

    sput-object p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/settingssearch/SettingsSearchActivity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/settings/settingssearch/SettingsSearchActivity;
    .param p1    # Ljava/util/ArrayList;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->updateList(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSupportHistory:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->RESTORE_DB:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->RESTORE_DB:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings/settingssearch/SettingsSearchActivity;)Z
    .locals 1
    .param p0    # Lcom/android/settings/settingssearch/SettingsSearchActivity;

    iget-boolean v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->isHistoryViewState:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/settingssearch/SettingsSearchActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/settings/settingssearch/SettingsSearchActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->isHistoryViewState:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V
    .locals 0
    .param p0    # Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->updateHistoryList()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V
    .locals 0
    .param p0    # Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->displayProgressDialog()V

    return-void
.end method

.method private dismisProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private displayProgressDialog()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->RESTORE_DB:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->showProgressDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->dismisProgressDialog()V

    goto :goto_0
.end method

.method private getHistoryDate(Ljava/lang/Long;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/Long;

    const/4 v2, 0x0

    sget-object v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (Today)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private historyItemSorting(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;-><init>(Lcom/android/settings/settingssearch/SettingsSearchActivity$1;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    add-int/lit8 v1, v0, 0x1

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    iget-object v3, v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->timeMillis:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    iget-object v3, v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->timeMillis:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    iget-object v3, v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->key:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    iget-object v3, v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->time:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    iget-object v3, v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->timeMillis:Ljava/lang/Long;

    iput-object v3, v2, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->timeMillis:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    iget-object v4, v4, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->key:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    iget-object v4, v4, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->time:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    iget-object v4, v4, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->timeMillis:Ljava/lang/Long;

    iput-object v4, v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->timeMillis:Ljava/lang/Long;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    iget-object v4, v2, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->key:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    iget-object v4, v2, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->time:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->time:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    iget-object v4, v2, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->timeMillis:Ljava/lang/Long;

    iput-object v4, v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->timeMillis:Ljava/lang/Long;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-object p1
.end method

.method private showProgressDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    const-string v0, ""

    const v1, 0x7f091834

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method private updateHistoryList()V
    .locals 9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    const-string v7, "search_history"

    sget-object v8, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;-><init>(Lcom/android/settings/settingssearch/SettingsSearchActivity$1;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->key:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    iput-object v6, v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->timeMillis:Ljava/lang/Long;

    iget-object v6, v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->timeMillis:Ljava/lang/Long;

    invoke-direct {p0, v6}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->getHistoryDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->time:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->historyItemSorting(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->updateHistorySearchItem(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "HISTORY_MODE"

    invoke-direct {p0, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->updateList(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private updateHistorySearchItem(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    new-instance v2, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {v2}, Lcom/android/settings/settingssearch/SettingsSearchItem;-><init>()V

    sget-object v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    iget-object v4, v4, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->key:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getTitleInfoDBFromKey(Ljava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;

    iget-object v4, v4, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;->time:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private updateList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 10
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mNoResultlayout:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSupportPath:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->isHistoryViewState:Z

    if-eqz v5, :cond_5

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mNoResultlayout:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    sget-object v6, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->updatePathSearchItems(Ljava/util/ArrayList;)[Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v7

    invoke-direct {v5, v6, v7, p2}, Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;-><init>(Landroid/content/Context;[Lcom/android/settings/settingssearch/SettingsSearchItem;Ljava/lang/String;)V

    sput-object v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListPathAdapter:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mNoResultlayout:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    sget-object v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mprevKeyWord:Ljava/lang/String;

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mprevKeyWord:Ljava/lang/String;

    if-ne v5, p2, :cond_4

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_1
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    sget-object v6, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListPathAdapter:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v5, v1, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :goto_2
    sput-object p2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mprevKeyWord:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    sget-object v6, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListPathAdapter:Lcom/android/settings/settingssearch/SettingsSearchListPathAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/settingssearch/SettingsSearchItem;

    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    new-instance v5, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    sget-object v6, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f04021c

    invoke-direct {v5, v6, v7, v2, p2}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;-><init>(Landroid/content/Context;I[Lcom/android/settings/settingssearch/SettingsSearchItem;Ljava/lang/String;)V

    sput-object v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListAdapter:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    sget-object v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListAdapter:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    invoke-virtual {v5}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mNoResultlayout:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mNoResultlayout:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    sget-object v6, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListAdapter:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method

.method private updatePathSearchItems(Ljava/util/ArrayList;)[Lcom/android/settings/settingssearch/SettingsSearchItem;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;)[",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;"
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0901bb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v4, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v7, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v4, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    new-instance v1, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {v1}, Lcom/android/settings/settingssearch/SettingsSearchItem;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v7, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/settingssearch/SettingsSearchItem;

    const-string v8, ""

    iput-object v8, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-object v4, v1, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-direct {v2}, Lcom/android/settings/settingssearch/SettingsSearchItem;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/settingssearch/SettingsSearchItem;

    iget-object v4, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/settingssearch/SettingsSearchItem;

    const-string v8, "end_of_same_path_menu"

    iput-object v8, v7, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    iput-object v4, v2, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Lcom/android/settings/settingssearch/SettingsSearchItem;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/settings/settingssearch/SettingsSearchItem;

    return-object v7
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSupportPath:Z

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSupportHistory:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/16 v5, 0x14

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    new-instance v5, Landroid/widget/SearchView;

    sget-object v6, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v8}, Landroid/widget/SearchView;->setIconified(Z)V

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    const v6, 0x7f090629

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->onActionViewExpanded()V

    sget-object v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    sget-object v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f04021f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    const v5, 0x7f0b053b

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mLeftSideView:Landroid/view/View;

    const v5, 0x7f0b053c

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mRightSideView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mLeftSideView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mRightSideView:Landroid/view/View;

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->updateSideViewVisibility(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x100

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget-boolean v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSupportPath:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->isHistoryViewState:Z

    if-eqz v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v5, 0x7f040220

    invoke-virtual {v1, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mNoResultlayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mNoResultlayout:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mNoResultlayout:Landroid/view/View;

    const v6, 0x7f0b02e5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mNoResultlayout:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Lcom/android/settings/settingssearch/SettingsSearchManager;

    sget-object v6, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->SearchDB()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    const-string v0, "SettingSearch/SettingsSearchActivity"

    const-string v1, "onDestory() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->isHistoryViewState:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const-string v1, "SettingSearch/SettingsSearchActivity"

    const-string v2, "onKeyDown() return true"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return v3
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_window_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v2, "SettingSearch/SettingsSearchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyLongPress() multiWindowValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    const-string v1, "SettingSearch/SettingsSearchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyLongPress() multiWindowValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SettingSearch/SettingsSearchActivity"

    const-string v1, "onKeyUp() call onToBackMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->onToBackMenu()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->onToBackMenu()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "SettingSearch/SettingsSearchActivity"

    const-string v3, "onPause() "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mNegativeColoursObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mTalkbackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    const-string v3, "clipboardEx"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mClipVisible:Z

    :goto_0
    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchViewFoncused:Z

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mClipVisible:Z

    goto :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;

    sput-object p1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;-><init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x0

    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v3
.end method

.method public onResume()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v2, "SettingSearch/SettingsSearchActivity"

    const-string v3, "onResume() "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "high_contrast"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mNegativeColoursObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mTalkbackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.settings.SETTING_SEARCH_DB_UPDATE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchViewFoncused:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v2, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-instance v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$4;

    invoke-direct {v3, p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity$4;-><init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSupportHistory:Z

    if-eqz v2, :cond_5

    const-string v2, ""

    sget-object v3, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->RESTORE_DB:Z

    if-nez v2, :cond_5

    iput-boolean v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->isHistoryViewState:Z

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->updateHistoryList()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->displayProgressDialog()V

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "SEAR"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mClipVisible:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    const-string v3, "clipboardEx"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->showUIDataDialog()V

    :cond_4
    return-void

    :cond_5
    iput-boolean v6, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->isHistoryViewState:Z

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mArrayResultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    sget-object v3, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getTitleInfoDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mArrayResultList:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mArrayResultList:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->updateList(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onToBackMenu()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isGridSettingEnabed()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.GridSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SettingsTabActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
