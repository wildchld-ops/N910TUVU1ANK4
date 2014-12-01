.class public Lcom/android/mms/ui/ConversationComposer;
.super Landroid/app/Activity;
.source "ConversationComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;
    }
.end annotation


# static fields
.field private static final ASSISTANTMENU_ACTIVITY:Ljava/lang/String; = "com.android.mms.ui.ConversationComposer"

.field private static final ASSISTANTMENU_FRAGMENT_CONVERSATIONLIST:Ljava/lang/String; = "com.android.mms.ui.ConversationListFragment"

.field private static final CLASS_COMPOSEMESSAGEACTIVITY:Ljava/lang/String; = "com.android.mms.ui.ComposeMessageActivity"

.field private static final CLASS_FORWARDMESSAGEACTIVITY:Ljava/lang/String; = "com.android.mms.ui.ForwardMessageActivity"

.field private static final CLASS_REPLYMESSAGEACTIVITY:Ljava/lang/String; = "com.android.mms.ui.ReplyMessageActivity"

.field private static final CURRENT_STEP_OF_ACTIVITY_CREATING:I = 0x0

.field private static final CURRENT_STEP_OF_ACTIVITY_ONNEWINTENT:I = 0x1

.field private static final DEBUG_MSG:Z = false

.field public static final FROM_SEARCH_VIEW:Ljava/lang/String; = "FromSearchView"

.field public static final HISTORY_SEARCHVIEW:Ljava/lang/String; = "history_searchView"

.field public static final INTENT_TYPE_DIR_MMS_SMS:Ljava/lang/String; = "vnd.android-dir/mms-sms"

.field private static final LOADING_TASK_LIMIT:I = 0xf

.field public static final SPLIT_LAYOUT_REFRESHED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/ConversationComposer"

.field private static final URI_CONVERSATIONS:Ljava/lang/String; = "content://mms-sms/conversations/"

.field private static final VERIFICATION_LOG_TAG:Ljava/lang/String; = "VerificationLog"

.field public static mIsFromSplitDiscard:Z

.field public static sIsBackToMsg:Z

.field private static skeepSipshowing:Z


# instance fields
.field public activityCreated:Z

.field private mAccessibilityManagerTemp:Landroid/view/accessibility/AccessibilityManager;

.field public mActivate:Z

.field private final mActivityStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

.field public mAuthEasySignUp:Z

.field private mCloseComposerForThreadsDelete:Z

.field private mCmasViewer:Lcom/android/mms/ui/CMASViewer;

.field private mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mConversationList:Lcom/android/mms/ui/ConversationListFragment;

.field private mEasymodeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mEmptyComposerImage:Landroid/widget/ImageView;

.field private mEmptyScreen:Landroid/widget/TextView;

.field private mEmptyViewPopup:Landroid/widget/TextView;

.field private mFinishAffinity:Z

.field private mFolderViewInvoked:Z

.field mFolderViewInvoking:Z

.field private mForceShowComposer:Z

.field private mFromFolderView:Z

.field private mFromNestedSearchView:Z

.field private mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHWKeyboardConnected:Z

.field private mHandler:Landroid/os/Handler;

.field private final mImgGetter:Landroid/text/Html$ImageGetter;

.field private mIsCmasViewer:Z

.field private mIsComposerOnly:Z

.field private mIsFinish:Z

.field private mIsFromSearchView:Z

.field private mIsLandscape:Z

.field private mIsSplitBarTouch:Z

.field private mLeftScreen:Landroid/view/View;

.field private mMenu:Landroid/view/Menu;

.field private mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mRcsActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mRightScreen:Landroid/view/View;

.field public mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

.field public mSipHandler:Lcom/android/mms/ui/SipHandler;

.field private mSplitBar:Landroid/view/View;

.field private mSplitBarLine:Landroid/view/View;

.field private mSplitManager:Lcom/android/mms/ui/SplitManager;

.field public final mSplitManagerStatusHandler:Landroid/os/Handler;

.field private mUseMoveTaskToBack:Z

.field private mUseSplitView:Z

.field private mVto:Landroid/view/ViewTreeObserver;

.field private onCmasViewStateChanged:Lcom/android/mms/ui/OnEventListener;

.field private onComposerClose:Lcom/android/mms/ui/OnEventListener;

.field private onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

.field private onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

.field public profileUri:Landroid/net/Uri;

.field private final sContactsLocalProfileObserver:Landroid/database/ContentObserver;

.field public taskMovedToBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ConversationComposer;->mIsFromSplitDiscard:Z

    sput-boolean v0, Lcom/android/mms/ui/ConversationComposer;->sIsBackToMsg:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mAccessibilityManagerTemp:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mFromFolderView:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoking:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->taskMovedToBack:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->activityCreated:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCloseComposerForThreadsDelete:Z

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mFromNestedSearchView:Z

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRcsActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->profileUri:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mAuthEasySignUp:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mFinishAffinity:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mHWKeyboardConnected:Z

    new-instance v0, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationComposer$ContentObserverHandler;-><init>(Lcom/android/mms/ui/ConversationComposer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->sContactsLocalProfileObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/ui/ConversationComposer$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$1;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mEasymodeChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/mms/ui/ConversationComposer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$2;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mActivityStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    new-instance v0, Lcom/android/mms/ui/ConversationComposer$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationComposer$3;-><init>(Lcom/android/mms/ui/ConversationComposer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/ui/ConversationComposer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$5;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManagerStatusHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/ConversationComposer$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$7;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/android/mms/ui/ConversationComposer$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$13;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerClose:Lcom/android/mms/ui/OnEventListener;

    new-instance v0, Lcom/android/mms/ui/ConversationComposer$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$14;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

    new-instance v0, Lcom/android/mms/ui/ConversationComposer$15;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$15;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

    new-instance v0, Lcom/android/mms/ui/ConversationComposer$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$16;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onCmasViewStateChanged:Lcom/android/mms/ui/OnEventListener;

    new-instance v0, Lcom/android/mms/ui/ConversationComposer$21;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$21;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mImgGetter:Landroid/text/Html$ImageGetter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ConversationComposer;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mAccessibilityManagerTemp:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/ConversationComposer;Landroid/view/accessibility/AccessibilityManager;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mAccessibilityManagerTemp:Landroid/view/accessibility/AccessibilityManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ConversationComposer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/ConversationComposer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationComposer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBarLine:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/ConversationComposer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->composerRequestsClosing()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationComposer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mFinishAffinity:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/ConversationComposer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationComposer;->mFinishAffinity:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationComposer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationComposer;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationComposer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    return v0
.end method

.method private addFragmentToActivity(IZZLandroid/content/Intent;)V
    .locals 6

    const-string v4, "Mms/ConversationComposer"

    const-string v5, "addFragmentToActivity"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const-string v4, "Mms/ConversationComposer"

    const-string v5, "Activity is finish return"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0b0144

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ConversationListFragment;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v4, :cond_3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    new-instance v4, Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {v4, p4}, Lcom/android/mms/ui/ConversationListFragment;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, p1, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    const-string v4, "Mms/ConversationComposer"

    const-string v5, "addFragmentToActivity - list"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0b0146

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v4, p4}, Lcom/android/mms/ui/ComposeMessageFragment;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, p1, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    const-string v4, "Mms/ConversationComposer"

    const-string v5, "addFragmentToActivity - composer"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private calcSplitMode()I
    .locals 4

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "FromSearchView"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mEmoticonMode:Z

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getFromChatTabStatus()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    goto :goto_0

    :cond_6
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    :cond_7
    const/4 v0, 0x0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v0, 0x2

    :cond_8
    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():unknown"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    if-nez v1, :cond_a

    const/4 v0, 0x1

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v0, 0x2

    goto :goto_1

    :cond_c
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_0
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_NONE"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_LEFT_ONLY"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_RIGHT_ONLY"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_SPLITED"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private checkDefaultSmsApps(Landroid/content/Intent;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowWriteMessage()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    sget-boolean v4, Lcom/android/mms/ui/ConversationComposer;->sIsBackToMsg:Z

    if-nez v4, :cond_1

    const-string v4, "FromSearchActivity"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "fromInternal"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v4, "Mms/ConversationComposer"

    const-string v6, "checkDefaultSmsApps - sIsBackToMsg or FromSearchActivity or fromInternal flag true so do not show default popup again"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v5, Lcom/android/mms/ui/ConversationComposer;->sIsBackToMsg:Z

    move v4, v5

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "activity"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v4, v5

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/reflector/AmbsReflector;->notifyImNotDefaultSmsApp()V

    :cond_7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "isInsideCall"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "intent"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "com.android.mms"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "CheckDefaultSmsAppsActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "is_running"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    move v4, v6

    goto/16 :goto_0

    :cond_9
    move v4, v5

    goto/16 :goto_0
.end method

.method private checkNotiIntent(Landroid/content/Intent;)V
    .locals 5

    const-string v2, "noti"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "thread_id"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private checkRemindNewFeature()V
    .locals 18

    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v5, v14, v16

    const-string v14, "pref_key_new_feature_current"

    const-wide/16 v15, 0x0

    invoke-interface/range {v13 .. v16}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    sub-long v7, v5, v10

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_0

    sget-wide v14, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mHour:J

    cmp-long v14, v7, v14

    if-lez v14, :cond_0

    const-string v14, "pref_key_new_feature_month"

    const-wide/16 v15, 0x0

    invoke-interface/range {v13 .. v16}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v14, 0x0

    cmp-long v14, v3, v14

    if-nez v14, :cond_1

    new-instance v12, Landroid/content/Intent;

    const-class v14, Lcom/android/mms/rcs/RcsNewFeatureActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v14, "show_new_feature"

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v14, "diff_time"

    invoke-virtual {v12, v14, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-wide v14, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mWeek:J

    cmp-long v14, v7, v14

    if-lez v14, :cond_0

    const-string v14, "pref_key_new_feature_month"

    const-wide/16 v15, 0x0

    invoke-interface/range {v13 .. v16}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v14, 0x0

    cmp-long v14, v1, v14

    if-nez v14, :cond_2

    new-instance v12, Landroid/content/Intent;

    const-class v14, Lcom/android/mms/rcs/RcsNewFeatureActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v14, "show_new_feature"

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0

    :cond_2
    sget-wide v14, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mMonth:J

    cmp-long v14, v7, v14

    if-lez v14, :cond_0

    new-instance v12, Landroid/content/Intent;

    const-class v14, Lcom/android/mms/rcs/RcsNewFeatureActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v14, "show_new_feature"

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v14, "diff_time"

    const/4 v15, -0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0
.end method

.method private composerRequestsClosing()V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "composerRequestsClosing()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v0

    const-string v1, "FromSearchView"

    invoke-virtual {p0, v1, v3}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    if-ne v0, v6, :cond_5

    const-string v1, "FromSearchView"

    invoke-virtual {p0, v1, v3}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCloseComposerForThreadsDelete:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->handleMoveTaskToBack()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v0, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/mms/ui/ConversationComposer$11;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationComposer$11;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    if-ne v1, v6, :cond_8

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    :cond_8
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    if-ne v1, v5, :cond_9

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversationThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryIfNeed()V

    :cond_a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCloseComposerForThreadsDelete:Z

    if-nez v1, :cond_c

    sget-boolean v1, Lcom/android/mms/ui/ConversationComposer;->mIsFromSplitDiscard:Z

    if-eqz v1, :cond_7

    :cond_c
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCloseComposerForThreadsDelete:Z

    sput-boolean v3, Lcom/android/mms/ui/ConversationComposer;->mIsFromSplitDiscard:Z

    goto :goto_1
.end method

.method private static containsOwnBundle(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-class v0, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createMultiWindowInstance()Z
    .locals 3

    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mActivityStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getComposeMessageStatus()I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    :cond_0
    :goto_0
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getComposeMessageStatus(),state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    goto :goto_0
.end method

.method private getLauncherList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleMoveTaskToBack()V
    .locals 3

    :try_start_0
    const-string v1, "FromSearchView"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FromSearchView"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromLauncher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->isLauncherTaskRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->moveTaskToBack(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "moving to back"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "Exception."

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "it\'s non root and not moved to back, just finish.."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0

    :cond_2
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "finish"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private inflateSplit()V
    .locals 3

    const v1, 0x7f0b00a5

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "initSplitManager inflate"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/view/View;

    const v2, 0x7f0b00a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBarLine:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBarLine:Landroid/view/View;

    if-nez v1, :cond_3

    :cond_1
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "initSplitManager inflate failed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/view/View;

    new-instance v2, Lcom/android/mms/ui/ConversationComposer$9;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationComposer$9;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/view/View;

    new-instance v2, Lcom/android/mms/ui/ConversationComposer$10;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationComposer$10;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method private initCmasViewer()Lcom/android/mms/ui/CMASViewer;
    .locals 5

    const v3, 0x7f0b0145

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040030

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b00c8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/CMASViewer;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/CMASViewer;->setConversationList(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/CMASViewer;->setActivity(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->onCmasViewStateChanged:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/CMASViewer;->setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    return-object v0
.end method

.method private initSplitManager()Z
    .locals 11

    const/4 v10, 0x0

    const-string v6, "Mms/ConversationComposer"

    const-string v7, "initSplitManager()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->inflateSplit()V

    :cond_0
    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v3

    const-string v6, "FromSearchView"

    invoke-virtual {p0, v6, v10}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    :cond_1
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    const/4 v2, 0x0

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v6, :cond_6

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gtz v4, :cond_4

    const-string v6, "window"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v4

    :cond_4
    if-gtz v1, :cond_5

    const-string v6, "window"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v1

    :cond_5
    const-string v6, "Mms/ConversationComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initSplitManager width="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/android/mms/ui/SplitManager;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/view/View;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/view/View;

    invoke-direct {v6, v7, v8, v9, p0}, Lcom/android/mms/ui/SplitManager;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v6, v4}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManagerStatusHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/SplitManager;->setHandler(Landroid/os/Handler;)V

    if-eqz v3, :cond_b

    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v6, v2, v10}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    const/4 v6, 0x1

    return v6

    :cond_6
    const/4 v2, 0x2

    goto :goto_0

    :cond_7
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v6, :cond_3

    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-nez v6, :cond_a

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v6, :cond_a

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v6, :cond_3

    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_b
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v6, v10}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_1
.end method

.method private isFailedNotiIntent(Landroid/content/Intent;)Z
    .locals 3

    const-string v1, "isFailedNoti"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isIntentForApplication(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromLauncher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIntentForApplication(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isItentFromSearch(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromSwitcher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isSentFailIntentFromNotibar(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromFolderView(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIntentForCmas(Landroid/content/Intent;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "cmas"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isIntentForComposer(Landroid/content/Intent;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "cmas"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-nez v1, :cond_4

    const/4 v2, 0x1

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "conversationList"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_2
    const-string v3, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIntentForComposer(),return="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    goto :goto_0

    :cond_4
    const-class v4, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-class v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.android.mms.ui.ReplyMessageActivity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1}, Lcom/android/mms/util/SmartClipUtils;->isListIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private isIntentForContact(Landroid/content/Intent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-eqz v1, :cond_2

    const-class v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    const-string v5, "android.intent.action.SENDTO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    const-string v5, "smsto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    const-string v5, "Mms/ConversationComposer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentForContact(),return="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private static isIntentForConversations(Landroid/content/Intent;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://mms-sms/conversations/"

    const-string v4, "content://mms-sms/conversations/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v5, v3, v5, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isIntentForList(Landroid/content/Intent;)Z
    .locals 3

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/mms/util/SmartClipUtils;->isListIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isIntentFromAnotherProcessWithConversationUri(Landroid/content/Intent;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentForConversations(Landroid/content/Intent;)Z

    move-result v1

    const-string v4, "fromFolderView"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static isIntentFromFolderView(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "conversationList"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isIntentFromLauncher(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIntentFromRecvNotibar(Landroid/content/Intent;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "isFromRecvNoti"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "Mms/ConversationComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIntentFromRecvNotibar(), isRecvNoti ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/high16 v2, 0x10000000

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/high16 v2, 0x4000000

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/high16 v2, 0x20000000

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isIntentFromSwitcher(Landroid/content/Intent;)Z
    .locals 2

    const/high16 v0, 0x100000

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isItentFromSearch(Landroid/content/Intent;)Z
    .locals 6

    const/4 v3, 0x0

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "fromScover"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "fromLockScreen"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private isLauncherTaskRunning()Z
    .locals 10

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getLauncherList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const-string v8, "Mms/ConversationComposer"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v7

    :cond_1
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v8, "Mms/ConversationComposer"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v7, "Mms/ConversationComposer"

    const-string v8, "Launcher task Running"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    const-string v8, "Mms/ConversationComposer"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isSentFailIntentFromNotibar(Landroid/content/Intent;)Z
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    const-string v4, "thread_id"

    invoke-virtual {p0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v4, "isFailedNoti"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    cmp-long v4, v1, v5

    if-lez v4, :cond_1

    const/high16 v4, 0x10000000

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/high16 v4, 0x4000000

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, "Mms/ConversationComposer"

    invoke-static {v5, p0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private registerRcsActionBroadcastReciver()Z
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.DELETE_MESSAGES_SUCCESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/mms/ui/ConversationComposer$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationComposer$4;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRcsActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRcsActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ConversationComposer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    return v1
.end method

.method private removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p1, v3}, Lcom/android/mms/ui/ConversationListFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    iput-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1, p2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    iput-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    :cond_1
    return-void
.end method

.method private setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    move-object v0, p1

    if-eqz p2, :cond_0

    const-string v1, "notifyFailed"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "StatusBarNoti"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "notifyFailed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "StatusBarNoti"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static setFromSplitDiscard(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/mms/ui/ConversationComposer;->mIsFromSplitDiscard:Z

    return-void
.end method

.method public static setSipStatus(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/mms/ui/ConversationComposer;->skeepSipshowing:Z

    return-void
.end method

.method private unregisterRcsActionBroadcastReciver()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRcsActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRcsActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "mRcsActionBroadcastReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public CreateConversationList()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "CreateConversationList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v3}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0b0144

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(IZZLandroid/content/Intent;)V

    :cond_2
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "CreateConversationList() Created"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowSipOnComposeMessage()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSip()V

    :cond_0
    return-void
.end method

.method public canUseSplitMode()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkFolderViewInvoke(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .locals 21

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v16

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromAnotherProcessWithConversationUri(Landroid/content/Intent;)Z

    move-result v11

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ConversationComposer;->isFailedNotiIntent(Landroid/content/Intent;)Z

    move-result v6

    const-string v17, "fromWidget"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const-string v17, "from_noti_wappush"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const-string v17, "festivalMemoryWidget"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v12

    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    if-eqz v8, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v12, v0, :cond_0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsViewMode(Landroid/content/Context;I)V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setRecoverViewModeFlag(Landroid/content/Context;Z)V

    :cond_0
    const/4 v7, 0x1

    const-string v17, "startDate"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v17, "endDate"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/4 v7, 0x1

    :cond_2
    if-eqz v7, :cond_11

    if-eqz p2, :cond_6

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    if-nez p4, :cond_3

    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-class v17, Lcom/android/mms/ui/BoxListViewActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v17, 0x34000000

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v17, "vnd.android-dir/mms-sms"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/mms/ui/ConversationComposer;->setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v5

    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    const/16 v17, 0x1

    :goto_0
    return v17

    :cond_6
    if-eqz v11, :cond_b

    if-nez p4, :cond_7

    :cond_7
    new-instance v5, Landroid/content/Intent;

    const-class v17, Lcom/android/mms/ui/BoxListViewActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v17, "thread_id"

    const-string v18, "thread_id"

    const-wide/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v17, 0x34000000

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v6, :cond_9

    if-nez p4, :cond_8

    :cond_8
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/mms/ui/ConversationComposer;->setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    const/16 v17, 0x1

    goto :goto_0

    :cond_9
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/mms/ui/ConversationComposer;->setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v5

    if-eqz v10, :cond_a

    const-string v17, "from_noti_wappush"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    const/16 v17, 0x1

    goto :goto_0

    :cond_b
    if-eqz v6, :cond_d

    if-nez p4, :cond_c

    :cond_c
    new-instance v5, Landroid/content/Intent;

    const-class v17, Lcom/android/mms/ui/BoxListViewActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v17, 0x34000000

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/mms/ui/ConversationComposer;->setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_d
    if-eqz v9, :cond_10

    const-string v17, "thread_id"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    if-nez p2, :cond_e

    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    new-instance v5, Landroid/content/Intent;

    const-class v17, Lcom/android/mms/ui/BoxListViewActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v17, 0x34000000

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_e
    if-eqz p2, :cond_12

    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const-string v17, "vnd.android-dir/mms-sms"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    new-instance v5, Landroid/content/Intent;

    const-class v17, Lcom/android/mms/ui/BoxListViewActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v17, 0x34000000

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v17, "thread_id"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v17, "fromWidget"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v17, "from_widget_outbox"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    const-string v17, "from_widget_outbox"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_10
    if-eqz v8, :cond_12

    new-instance v5, Landroid/content/Intent;

    const-class v17, Lcom/android/mms/ui/BoxListViewActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v17, 0x34000000

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "festivalMemoryWidget"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v17, "prevViewMode"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v17, "startDate"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v17, "endDate"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public closeSearchView()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->closeSearchView(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->collapseSearchMenu()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(Z)V

    :cond_1
    return-void
.end method

.method public dataCreateLDU()V
    .locals 4

    const-string v2, "Mms/ConversationComposer"

    const-string v3, "dataCreateLDU"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content://mms-sms/datacreateldu"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public finishAffinity()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mFinishAffinity:Z

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_0
.end method

.method public finishAffinityInternal()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method

.method public finishCmasViewer(Z)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "Finish CMAS Viewer"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "FromSearchView"

    invoke-virtual {p0, v1, v3}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v3, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryIfNeed()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v1

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v3, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryIfNeed()V

    goto :goto_0
.end method

.method public flickMessage(Z)Z
    .locals 24

    const-string v11, "_id DESC"

    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "simple"

    const-string v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const-wide/16 v22, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "message_count"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date DESC,_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    if-nez v12, :cond_1

    const/4 v2, 0x0

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v21

    const/4 v2, 0x1

    move/from16 v0, v21

    if-gt v0, v2, :cond_2

    const/4 v2, 0x0

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v2, 0x0

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v14

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    move/from16 v0, v21

    if-ge v13, v0, :cond_5

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v2, v4, v14

    if-eqz v2, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    const/16 v18, 0x0

    const/16 v20, 0x0

    if-eqz p1, :cond_8

    if-nez v13, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->moveToLast()Z

    move/from16 v13, v21

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f050004

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f050005

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v20

    :goto_3
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v22

    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_6
    :goto_4
    const-wide/16 v4, 0x0

    cmp-long v2, v22, v4

    if-nez v2, :cond_b

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v17

    :try_start_5
    const-string v2, "Mms/ConversationComposer"

    const-string v4, "flickMessage exception "

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v21, -0x1

    if-lt v13, v2, :cond_9

    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v13, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f050002

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f050003

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v20

    goto :goto_3

    :cond_9
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v2

    if-eqz v12, :cond_a

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_a
    throw v2

    :cond_b
    const/16 v16, 0x0

    const/4 v6, 0x0

    :try_start_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "content://mms-sms/complete-conversations-including-drafts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, "_id"

    aput-object v8, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_c

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_e

    :cond_c
    const/4 v2, 0x0

    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_d
    :try_start_8
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v6

    goto :goto_6

    :cond_e
    if-eqz v16, :cond_f

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    const/16 v16, 0x0

    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraftAndReset(Z)Z

    :cond_10
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1, v13}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(JI)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageListAdapter;->setFlickAnimation(Landroid/view/animation/Animation;)V

    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v17

    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v2, 0x0

    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    const/16 v16, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    if-eqz v16, :cond_13

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    const/16 v16, 0x0

    :cond_13
    throw v2
.end method

.method public getCMASViewerIsVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASViewer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getComposeMessageFragment()Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method public getComposerFocusStates()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mHasFocus:Z

    :cond_0
    return v0
.end method

.method public getConversationListFragment()Lcom/android/mms/ui/ConversationListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    return-object v0
.end method

.method public getEasySignUpState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mAuthEasySignUp:Z

    return v0
.end method

.method public getFinishAffinityValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mFinishAffinity:Z

    return v0
.end method

.method public getFromSearchView(Ljava/lang/String;Z)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "Mms/ConversationComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFromSearchView() entered, useSplitView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v2, "history_searchView"

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFromSearchView:Z

    goto :goto_0
.end method

.method public getIsSplitViewMode()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getNextSplitMode()I
    .locals 3

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mFromFolderView:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfileObserver()Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->sContactsLocalProfileObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method public getSplitMode()I
    .locals 4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSplitMode,return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isComposerOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    return v0
.end method

.method public isMultiWindowMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPenWindowMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isScaleWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRightScreenVisible()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeSearchView()V

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getState()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getState()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    :cond_3
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isSearchMode()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isSearchMode()Z

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSplitBarTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    return v0
.end method

.method public isSplitModeActive()Z
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeCannotCloseChatDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0551

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c0552

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c00ee

    new-instance v3, Lcom/android/mms/ui/ConversationComposer$19;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationComposer$19;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public makeCannotDeleteChatDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c055f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c0560

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c00ee

    new-instance v3, Lcom/android/mms/ui/ConversationComposer$20;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationComposer$20;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "========== onAttachFragment(Fragment fragment) =========="

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "========== onAttachFragment(Fragment is null) =========="

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/mms/ui/ConversationListFragment;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->setAnimationEnable(Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerClose:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setAnimationEnable(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/reflector/AmbsReflector;->stopListenOOBEChange()V

    goto :goto_0
.end method

.method public onCMASViewerContextItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/CMASViewer;->onContextItemSelected(Landroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method

.method public onComposeMessageFlicking(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onFlickingTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v7, "Mms/ConversationComposer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConfigurationChanged(),newConfig="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v7, p1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v7, v10, :cond_0

    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mHWKeyboardConnected:Z

    :cond_0
    iget v7, p1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v7, v5, :cond_7

    move v1, v5

    :goto_0
    iget-boolean v7, p0, Lcom/android/mms/ui/ConversationComposer;->mHWKeyboardConnected:Z

    if-eqz v7, :cond_1

    if-eqz v1, :cond_1

    iput-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mHWKeyboardConnected:Z

    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showSip()V

    :cond_1
    :goto_1
    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_9

    move v2, v5

    :goto_2
    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eq v5, v2, :cond_6

    const-string v5, "Mms/ConversationComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onConfigurationChanged():Landscape changed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v5}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v3

    if-eqz v4, :cond_4

    if-ne v3, v10, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isEnableToButtonLayoutForGroup()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setVisibleToButtonLayoutForGroup(Z)V

    :cond_4
    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v5}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v5

    if-ne v5, v10, :cond_5

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "accessibility"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    iput-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mAccessibilityManagerTemp:Landroid/view/accessibility/AccessibilityManager;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mAccessibilityManagerTemp:Landroid/view/accessibility/AccessibilityManager;

    const-string v7, "com.android.mms.ui.ConversationComposer"

    const-string v8, "com.android.mms.ui.ConversationListFragment"

    const-string v9, "Search;Compose;Delete;"

    invoke-static {v5, v7, v8, v9, v6}, Lcom/android/mms/util/UIUtils;->registerAssistantMenu(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v11, p0, Lcom/android/mms/ui/ConversationComposer;->mAccessibilityManagerTemp:Landroid/view/accessibility/AccessibilityManager;

    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v5, :cond_6

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V

    :cond_6
    return-void

    :cond_7
    move v1, v6

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v7

    if-ne v7, v5, :cond_1

    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ConversationListFragment;->mSearchPlate:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ConversationListFragment;->mSearchPlate:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ConversationListFragment;->mSearchPlate:Landroid/widget/EditText;

    invoke-virtual {v7, v8, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_1

    :cond_9
    move v2, v6

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    goto/16 :goto_3
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onContextMenuClosed(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onConversationDeleteMode()V
    .locals 2

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onConversationDeleteMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    :cond_0
    return-void
.end method

.method public onConversationDeleteStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onDeleteStarting()V

    :cond_0
    return-void
.end method

.method public onConversationShowEmptyScreen()V
    .locals 2

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onConversationShowEmptyScreen"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-super {v0, v1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v20, "Mms/ConversationComposer"

    const-string v21, "onCreate"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "VerificationLog"

    const-string v21, "onCreate"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v20, "Mms/ConversationComposer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v12}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->requestWindowFeature(I)Z

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->setProgressBarIndeterminateVisibility(Z)V

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/ConversationComposer;->checkDefaultSmsApps(Landroid/content/Intent;)Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v19

    const-string v20, "ro.csc.sales_code"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v20, "PAP"

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "need_demo_message_events"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "need_demo_message_events"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->dataCreateLDU()V

    :cond_2
    const v20, 0x7f04003b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->setContentView(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/16 v20, 0x1

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-static {v12}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromRecvNotibar(Landroid/content/Intent;)Z

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/ConversationComposer;->checkNotiIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, ""

    invoke-static/range {v20 .. v21}, Lcom/android/mms/data/YellowPageCallerid;->initialize_3rdlib(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    const/4 v13, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalUX4Chn()Z

    move-result v20

    if-eqz v20, :cond_4

    const-string v20, "festivalMemoryWidget"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v20

    if-nez v20, :cond_5

    if-eqz v13, :cond_9

    :cond_5
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v12, v6, v1, v2}, Lcom/android/mms/ui/ConversationComposer;->checkFolderViewInvoke(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoking:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoking:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    const-string v20, "kkahn/Mms/ConversationComposer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[Invoking Folder View by : checkFolderViewInvoke] mFolderViewInvoking="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoking:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/16 v20, 0x0

    goto :goto_1

    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    if-eqz v6, :cond_9

    const-string v20, "android.intent.action.SENDTO"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    const-string v20, "android.intent.action.SEND"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    const-string v20, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    :cond_8
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/ConversationComposer;->mFromFolderView:Z

    const-string v20, "fromFolderView"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v20, "exit_on_sent"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_9
    const v20, 0x7f0b0143

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/view/View;

    const v20, 0x7f0b0145

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v20

    if-eqz v20, :cond_a

    const v20, 0x7f0b0147

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/widget/TextView;

    const v20, 0x7f0b0148

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationComposer;->mEmptyComposerImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/mms/ui/ConversationComposer$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ConversationComposer$6;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmptyPopup()Z

    move-result v20

    if-eqz v20, :cond_a

    const v20, 0x7f0b0149

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationComposer;->mEmptyViewPopup:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mEmptyViewPopup:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    const v20, 0x7f0c0331

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/ui/ConversationListFragment;->applyImages(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mEmptyViewPopup:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mImgGetter:Landroid/text/Html$ImageGetter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mEmptyViewPopup:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f02021a

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/ConversationComposer;->containsOwnBundle(Landroid/os/Bundle;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    invoke-static {v12}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v20

    if-nez v20, :cond_b

    invoke-static {v12}, Lcom/android/mms/util/SmartClipUtils;->isListIntent(Landroid/content/Intent;)Z

    move-result v20

    if-nez v20, :cond_b

    if-eqz v11, :cond_c

    :cond_b
    const-string v20, "Mms/ConversationComposer"

    const-string v21, "ConversationListOn true"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v20, 0x7f0b0144

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(IZZLandroid/content/Intent;)V

    const/4 v5, 0x1

    if-eqz v11, :cond_c

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    :cond_c
    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->isRcsServiceEnabled()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v20

    if-eqz v20, :cond_e

    if-eqz v6, :cond_e

    const-string v20, "android.intent.action.SENDTO"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    const-string v20, "android.intent.action.SEND"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    const-string v20, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    :cond_d
    if-eqz v18, :cond_e

    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MessageUtils;->isAttachSupportedType(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    const-string v20, "transfercontants"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/ConversationComposer;->isIntentForComposer(Landroid/content/Intent;)Z

    move-result v20

    if-nez v20, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1a

    :cond_f
    const-string v20, "Mms/ConversationComposer"

    const-string v21, "ComposeMessageOn true"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v20, 0x7f0b0146

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(IZZLandroid/content/Intent;)V

    const/4 v4, 0x1

    :cond_10
    :goto_2
    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/ConversationComposer;->isIntentForContact(Landroid/content/Intent;)Z

    move-result v20

    if-nez v20, :cond_11

    const-string v20, "FromSearchActivity"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_1b

    :cond_11
    const-string v20, "FromSearchView"

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    const/16 v19, 0x0

    :cond_12
    :goto_3
    if-nez v5, :cond_1d

    if-eqz v4, :cond_1d

    const/16 v20, 0x1

    :goto_4
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v20

    if-eqz v20, :cond_13

    const-string v20, "fromFolderView"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_13

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/ConversationComposer;->mFromFolderView:Z

    :cond_13
    if-eqz v5, :cond_14

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    if-eqz p1, :cond_14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    :cond_14
    if-eqz v4, :cond_1e

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    if-eqz p1, :cond_15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setBundle(Landroid/os/Bundle;Z)V

    :cond_15
    if-eqz v7, :cond_16

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    :cond_16
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->initSplitManager()Z

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/ConversationComposer;->activityCreated:Z

    new-instance v20, Lcom/android/mms/ui/SipHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/SipHandler;-><init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/SipHandler;->registerReceiver()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v20

    if-eqz v20, :cond_17

    new-instance v20, Lcom/android/mms/ui/SecretModeHandler;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/SecretModeHandler;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/SecretModeHandler;->registerSecretModeReceiver()V

    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->createMultiWindowInstance()Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v20

    if-eqz v20, :cond_18

    const-string v20, "content://com.samsung.rcs.im/messages"

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mContentObserver:Landroid/database/ContentObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v20, "Mms/ConversationComposer"

    const-string v21, "broadcasting messagingOpened, to support T&C"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/rcs/transaction/ActionsFactory;->MessagingOpenedIntent()Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getWindow()Landroid/view/Window;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationComposer;->mVto:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mVto:Landroid/view/ViewTreeObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->profileUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->sContactsLocalProfileObserver:Landroid/database/ContentObserver;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string v20, "com.android.launcher.action.EASY_MODE_CHANGE"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v20, "com.android.launcher.action.EASY_MODE_CHANGE_MESSAGE"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mEasymodeChangedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lcom/android/mms/ui/ConversationComposer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->isRcsServiceEnabled()Z

    move-result v20

    if-eqz v20, :cond_19

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v20

    if-nez v20, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "connectivity"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v20

    if-nez v20, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->showDialogForRcsFirstLaunch()V

    :cond_19
    const-string v20, "Mms/ConversationComposer"

    const-string v21, "onCreate"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/ConversationComposer;->isIntentForCmas(Landroid/content/Intent;)Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->initCmasViewer()Lcom/android/mms/ui/CMASViewer;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    goto/16 :goto_2

    :cond_1b
    const-string v20, "FromNestedSearchActivity"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_1c

    const-string v20, "FromSearchView"

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/ConversationComposer;->mFromNestedSearchView:Z

    goto/16 :goto_3

    :cond_1c
    const-string v20, "FromSearchView"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_1d
    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_21

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    if-eqz p1, :cond_1f

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1f

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    :cond_1f
    if-eqz v7, :cond_20

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lcom/android/mms/ui/CMASViewer;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto/16 :goto_5

    :cond_21
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    iput-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_1

    iput-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v1}, Lcom/android/mms/ui/SipHandler;->unregisterReceiver()V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    invoke-virtual {v1}, Lcom/android/mms/ui/SecretModeHandler;->unregisterSecretModeReceiver()V

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    iput-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    :cond_5
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mFromNestedSearchView:Z

    if-nez v1, :cond_6

    const-string v1, "FromSearchView"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mVto:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mVto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->sContactsLocalProfileObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mEasymodeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mEasymodeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/mms/data/YellowPageCallerid;->unInitialize_3rdlib()V

    :cond_9
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "sContactsLocalProfileObserver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "mEasymodeChangedReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/16 v5, 0x19

    const/16 v4, 0x18

    const/16 v3, 0x14

    const/4 v2, 0x5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    if-nez v1, :cond_0

    const v1, 0x7f0b0145

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    :cond_0
    const/4 v1, 0x4

    if-ne v1, p1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    :cond_1
    if-eq v4, p1, :cond_2

    if-eq v5, p1, :cond_2

    const/16 v1, 0xa8

    if-eq v1, p1, :cond_2

    const/16 v1, 0xa9

    if-eq v1, p1, :cond_2

    const/16 v1, 0xf2

    if-eq v1, p1, :cond_2

    const/16 v1, 0xf3

    if-eq v1, p1, :cond_2

    if-ne v3, p1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-ne v1, v0, :cond_4

    :cond_3
    :goto_0
    return v0

    :cond_4
    if-eq v4, p1, :cond_5

    if-ne v5, p1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_3

    :cond_6
    if-ne p1, v2, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_7
    if-eq p1, v2, :cond_8

    if-ne p1, v3, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_9
    const/16 v1, 0x52

    if-ne p1, v1, :cond_a

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->hasFocusOnSearchView()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const-string v2, "Mms/ConversationComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyShortcut keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    and-int/lit16 v2, v2, -0x7001

    invoke-static {v2}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_2

    if-ne v0, v1, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-nez v4, :cond_2

    if-eq v6, p1, :cond_0

    :cond_2
    if-ne p1, v6, :cond_b

    const-string v4, "Mms/ConversationComposer"

    const-string v5, "back"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v4, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isEnableToButtonLayoutForGroup()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setVisibleToButtonLayoutForGroup(Z)V

    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v4, :cond_6

    if-eqz v0, :cond_5

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->handleBackKey()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v4, :cond_9

    if-ne v0, v2, :cond_9

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v4}, Lcom/android/mms/ui/CMASViewer;->getVisibility()I

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v4}, Lcom/android/mms/ui/CMASViewer;->isCMASMoreInfoVisible()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->finishCmasViewer(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v3}, Lcom/android/mms/ui/CMASViewer;->destroyCMASMoreInfo()V

    goto :goto_1

    :cond_9
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    const-string v4, "FromSearchView"

    invoke-virtual {p0, v4, v3}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_a

    if-eq v0, v2, :cond_c

    :cond_a
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    :cond_b
    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_f

    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    goto/16 :goto_0

    :cond_c
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isForwardedMessage()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_d
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v1, :cond_e

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_e
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    goto :goto_2

    :cond_f
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_10
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    if-eqz v3, :cond_11

    if-ne p1, v6, :cond_11

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    if-eqz v3, :cond_11

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->taskMovedToBack:Z

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->handleMoveTaskToBack()V

    goto/16 :goto_0

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 14

    const-string v10, "Mms/ConversationComposer"

    const-string v11, "\tonNewIntent()"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->checkDefaultSmsApps(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v10

    if-eqz v10, :cond_2

    sget-boolean v10, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v10, :cond_2

    const-string v10, "thread_id"

    const-wide/16 v11, -0x1

    invoke-virtual {p1, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v10, "secretThreadId_in_multiThreadNoti"

    const-wide/16 v11, -0x1

    invoke-virtual {p1, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    invoke-virtual {v10, v5, v6}, Lcom/android/mms/ui/SecretModeHandler;->isSecret(J)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/mms/ui/SecretModeHandler;->requestIdentifyFingerPrint(JLandroid/content/Intent;)V

    :cond_2
    :goto_1
    const-string v10, "Mms/ConversationComposer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v9

    const-string v10, "FromSearchView"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v9, 0x0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->checkNotiIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeOptionsMenu()V

    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "QuickSearch"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "query"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    if-eqz v2, :cond_6

    const-string v10, "QuickCommand"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v4, :cond_6

    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->setSearchQuery(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationListFragment;->startSearchMenu()V

    goto/16 :goto_0

    :cond_4
    const-wide/16 v10, -0x1

    cmp-long v10, v7, v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    invoke-virtual {v10, v7, v8}, Lcom/android/mms/ui/SecretModeHandler;->isSecret(J)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "com.samsung.android.intent.action.SECRET_OPEN_MESSAGE_THREAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/mms/ui/SecretModeHandler;->updateSecretMode(ZZ)V

    goto/16 :goto_1

    :cond_5
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    invoke-virtual {v10, v7, v8, p1}, Lcom/android/mms/ui/SecretModeHandler;->requestIdentifyFingerPrint(JLandroid/content/Intent;)V

    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "thread_id"

    const/4 v11, -0x1

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "vnd.android-dir/mms-sms"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_6
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "Mms/ConversationComposer"

    const-string v11, "isIntentForApplication(), just bring to front"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalUX4Chn()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "festivalMemoryWidget"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v10

    if-nez v10, :cond_9

    if-eqz v3, :cond_c

    :cond_9
    iget-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    if-eqz v10, :cond_a

    const-string v10, "Mms/ConversationComposer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onNewIntent(), mFolderViewInvoked="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",so return"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v10, :cond_b

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->showDiscardDraftConfirmDlg(Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, p1, v0, v10, v11}, Lcom/android/mms/ui/ConversationComposer;->checkFolderViewInvoke(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    const-string v10, "kkahn/Mms/ConversationComposer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mFolderViewInvoked="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    if-nez v10, :cond_0

    :cond_c
    const-string v10, "android.intent.action.SENDTO"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    :cond_d
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForList(Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_e

    invoke-static {p1}, Lcom/android/mms/util/SmartClipUtils;->isListIntent(Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_e

    if-eqz v9, :cond_f

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v10

    if-eqz v10, :cond_f

    :cond_e
    const/4 v1, 0x1

    :cond_f
    if-eqz v1, :cond_11

    const-string v10, "Mms/ConversationComposer"

    const-string v11, "isIntentForList(), show list"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v10, :cond_16

    const-string v10, "start_search"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v10, :cond_10

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mCloseComposerForThreadsDelete:Z

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    :cond_10
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationListFragment;->startSearchMenu()V

    :goto_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    :cond_11
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForComposer(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_19

    if-nez v1, :cond_12

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    :cond_12
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationListFragment;->finishMultiSelectMode()V

    :cond_13
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v10, :cond_18

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    :goto_3
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationListFragment;->dismissDeleteConfirmDialog()V

    :cond_14
    if-nez v1, :cond_15

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    :cond_15
    :goto_4
    const-string v10, "Mms/ConversationComposer"

    const-string v11, "onNewIntent()"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v10, :cond_17

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v10, p1}, Lcom/android/mms/ui/ConversationListFragment;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_2

    :cond_17
    const v10, 0x7f0b0144

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(IZZLandroid/content/Intent;)V

    goto :goto_2

    :cond_18
    const v10, 0x7f0b0146

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v10, v11, v12, p1}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(IZZLandroid/content/Intent;)V

    goto :goto_3

    :cond_19
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForCmas(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_1b

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v10, :cond_1a

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v10, p1}, Lcom/android/mms/ui/CMASViewer;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_4

    :cond_1a
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initCmasViewer()Lcom/android/mms/ui/CMASViewer;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p1}, Lcom/android/mms/ui/CMASViewer;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v10}, Lcom/android/mms/ui/CMASViewer;->onStart()V

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v10}, Lcom/android/mms/ui/CMASViewer;->onResume()V

    goto :goto_4

    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v10

    if-eqz v10, :cond_1c

    if-eqz v1, :cond_1c

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v10, :cond_1c

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraftAndReset(Z)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_1c
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsItemSelected(),item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    :goto_0
    return v1

    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v3, :cond_1

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v3}, Lcom/android/mms/ui/CMASViewer;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v3}, Lcom/android/mms/ui/CMASViewer;->isCMASMoreInfoVisible()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationComposer;->finishCmasViewer(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2}, Lcom/android/mms/ui/CMASViewer;->destroyCMASMoreInfo()V

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\t\tonPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/reflector/AmbsReflector;->stopListenOOBEChange()V

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/reflector/AmbsReflector;->stopListenInitSyncUpdated()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeContextMenu()V

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "onPrepareOptionsMenu()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->isAnyKindOfSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeSearchView()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isRightScreenVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onPrepareComposerOptionsMenu(Landroid/view/Menu;)V

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ConversationListFragment;->onPrepareListOptionsMenu(Landroid/view/Menu;)V

    :cond_4
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->closeEmptycompose()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\t\tonResume()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VerificationLog"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setFreeMessageEnabled(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->setFreeMessageStatus(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->isFreeMessageServiceEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->setComponentFreeMessage(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->isAuthEasySignUp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->updateClosedGroupChatStatus()I

    :cond_0
    sput-boolean v3, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListFragment;->setAnimationEnable(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setAnimationEnable(Z)V

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/reflector/AmbsReflector;->wakeupAcms()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromRecvNotibar(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "AcmsWrapper"

    const-string v2, "It is not from notibar."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/reflector/AmbsReflector;->listenOOBEChange(Landroid/app/Activity;)V

    :cond_4
    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/reflector/AmbsReflector;->listenInitSyncBusyChange(Landroid/app/Activity;)V

    :cond_5
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\t\tonSaveInstanceState()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeOptionsMenu()V

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->finishMultiSelectMode()V

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->startSearchMenu()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\tonStart()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mFromFolderView:Z

    if-ne v1, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASViewer;->onStart()V

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/mms/ui/ConversationComposer$8;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationComposer$8;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.dismiss"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\tonStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setRemoveComposer(Z)V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory,level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x28

    if-le v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->trim()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->trim()V

    :cond_1
    invoke-static {}, Lcom/android/mms/ui/BubbleViewCache;->clearCache()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onUserInteraction()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 10

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onWindowFocusChanged(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v6, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v7, :cond_2

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v9, "activity"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v4, "com.diotek.ime.implement.input.umlaut.HwUmlautPopup"

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move v5, v7

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    const-string v6, "CHN"

    const-string v7, "USA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/ConversationListFragment;->onWindowFocusChanged(Z)V

    goto/16 :goto_0

    :cond_3
    move v5, v8

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    goto/16 :goto_0
.end method

.method public openThread(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "cmas"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of isCmas: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/CMASViewer;->onNewIntent(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initCmasViewer()Lcom/android/mms/ui/CMASViewer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/mms/ui/CMASViewer;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASViewer;->onStart()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASViewer;->onResume()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    const v1, 0x7f0b0146

    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(IZZLandroid/content/Intent;)V

    goto :goto_1
.end method

.method public queryConversationListIfNeeded(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setDiscardContentChanged(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryIfNeed()V

    :cond_0
    return-void
.end method

.method public refreshSplitManager(Z)V
    .locals 10

    const/4 v5, 0x1

    const/4 v9, 0x2

    const/4 v6, 0x0

    const-string v4, "Mms/ConversationComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshSplitManager(),ignoreSameSplitView="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "FromSearchView"

    invoke-virtual {p0, v4, v6}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v4

    if-eq v4, v9, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v4

    if-nez v4, :cond_7

    :cond_3
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v4

    if-ne v4, v9, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v0

    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v4, :cond_8

    const/4 v1, -0x1

    :goto_1
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_9

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v4, :cond_a

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnablePrioritySender(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    if-lez v1, :cond_a

    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4, v9, v6}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    :cond_6
    :goto_3
    if-eqz v1, :cond_0

    :cond_7
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    if-ne v4, v3, :cond_c

    if-nez p1, :cond_0

    if-eqz v3, :cond_b

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->calcSplitMode()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    :goto_4
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->getListCount()I

    move-result v1

    goto :goto_1

    :cond_9
    move v4, v6

    goto :goto_2

    :cond_a
    if-nez v1, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4, v6, v6}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_3

    :cond_b
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_4

    :cond_c
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    const/4 v2, 0x0

    if-eqz v3, :cond_f

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v2, 0x2

    :cond_d
    :goto_5
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v4, :cond_e

    if-nez v3, :cond_e

    if-nez v2, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->closeWithSaveDraft()V

    :cond_e
    :goto_6
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4, v2, v6}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto/16 :goto_0

    :cond_f
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_5

    :cond_10
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_6
.end method

.method public removeComposeDraftMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_0

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "mComposeMessage is null return"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->removeDraftMessage()V

    goto :goto_0
.end method

.method public removeComposeFragmentWithoutPreProcess(J)V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f0b0146

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    invoke-direct {p0, v7, v0}, Lcom/android/mms/ui/ConversationComposer;->removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversationThreadId()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposeDraftMessage()V

    invoke-direct {p0, v7, v0}, Lcom/android/mms/ui/ConversationComposer;->removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0
.end method

.method public removeComposer()V
    .locals 6

    const/4 v5, 0x0

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "removeComposer()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/reflector/AmbsReflector;->listenOOBEChange(Landroid/app/Activity;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b0146

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/mms/ui/ConversationComposer;->skeepSipshowing:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/ConversationComposer$12;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationComposer$12;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->clearEditorInputType()V

    :cond_3
    sput-boolean v5, Lcom/android/mms/ui/ConversationComposer;->skeepSipshowing:Z

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeContextMenu()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setRemoveComposer(Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ConversationComposer;->removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    goto :goto_0
.end method

.method public removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationComposer;->removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    return-void
.end method

.method public requestAsyncEndChatSelect(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.orca.freemessage.intent.ACTION_ASYNC_END_CHAT_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/mms/freemessage/FreeMessageReceiverService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "extra_async_end_chat_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public requestChangeFontsizeOnComposer()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->resetBubblelist()V

    goto :goto_0
.end method

.method public requestChangeFontsizeOnConverationList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->resetConversatonList()V

    goto :goto_0
.end method

.method public requestDrawPointerOnConverationList(J)Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->requestDrawPointerOnConverationList(J)Z

    move-result v0

    goto :goto_0
.end method

.method public requestEndChatRequest(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.freemessage.ACTION_REQUEST_END_CHAT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/mms/freemessage/FreeMessageReceiverService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "extra_session_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "extra_chat_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const-string v1, "extra_chat_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public requestFocusOnComposer()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestFocusOnComposer()Z

    move-result v0

    goto :goto_0
.end method

.method public requestSplitModeOnConverationList(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationListAdapter;->setSplitModePreference(Z)V

    goto :goto_0
.end method

.method public requsetFocusOnConversationList(J)Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->requestFocusOnConversationList(J)Z

    move-result v0

    goto :goto_0
.end method

.method public setActionBarHomeAsUp(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isArrowAlreadyAddedInActionBar()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Mms/ConversationComposer"

    const-string v3, "CalledFromWrongThreadException"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEasySignUpState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationComposer;->mAuthEasySignUp:Z

    return-void
.end method

.method public setFinishAffinityValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationComposer;->mFinishAffinity:Z

    return-void
.end method

.method public setFreeMessageStatus(Landroid/content/Context;)V
    .locals 4

    const-string v2, "Mms/ConversationComposer"

    const-string v3, "setFreeMessageStatus"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_key_is_auth_easy_signup"

    invoke-static {p1}, Lcom/android/mms/MmsConfig;->getEasySignUpStatus(Landroid/content/Context;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_key_is_auth_free_message"

    invoke-static {p1}, Lcom/android/mms/MmsConfig;->getFreeMessageLogInStatus(Landroid/content/Context;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setFromSearchView(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "setFromSearchView() entered"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFromSearchView:Z

    return-void
.end method

.method public setGroupRecipientsSplitMode()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    return-void
.end method

.method public setMessageSelectAll(Z)V
    .locals 3

    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageSelectAll(),checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectAll(Z)V

    goto :goto_0
.end method

.method public setSickerSplitMode()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    return-void
.end method

.method public setSplitMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    return-void
.end method

.method public showDialogForRcsFirstLaunch()V
    .locals 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_key_rcs_first_launch"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c03e2

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c0525

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c00ee

    new-instance v5, Lcom/android/mms/ui/ConversationComposer$17;

    invoke-direct {v5, p0, v3}, Lcom/android/mms/ui/ConversationComposer$17;-><init>(Lcom/android/mms/ui/ConversationComposer;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/mms/ui/ConversationComposer$18;

    invoke-direct {v4, p0, v3}, Lcom/android/mms/ui/ConversationComposer$18;-><init>(Lcom/android/mms/ui/ConversationComposer;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    return-void
.end method

.method public showEmptyScreen(Z)V
    .locals 8

    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    const-string v2, "Mms/ConversationComposer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showEmptyScreen(),show="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyComposerImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v1, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->getListCount()I

    move-result v2

    if-gtz v2, :cond_5

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnablePrioritySender(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Mms/ConversationComposer"

    const-string v3, "showEmptyScreen(), No message"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/widget/TextView;

    const v3, 0x7f0202a7

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/widget/TextView;

    const v3, 0x7f0c0272

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyComposerImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmptyPopup()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyViewPopup:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyViewPopup:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "GATE"

    const-string v3, "<GATE-M>NO_MESSAGES</GATE-M>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-void

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "showEmptyScreen(), No selected item"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/widget/TextView;

    const v3, 0x7f0202a8

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/widget/TextView;

    const v3, 0x7f0c0193

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyComposerImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v4, v5

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyComposerImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyComposerImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyViewPopup:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyViewPopup:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public startEasySignUp()V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.orca.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "accept_disclaimer_silently"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "agreeMarketing"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Mms/ConversationComposer"

    const-string v3, "Easy signUp agent is not found"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryDelayed(J)V

    goto :goto_0
.end method

.method public updatePrioritySenderList()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->startPrioritySenderQueryDelayed(J)V

    goto :goto_0
.end method
