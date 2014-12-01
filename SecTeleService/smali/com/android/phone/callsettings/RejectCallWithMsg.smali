.class public Lcom/android/phone/callsettings/RejectCallWithMsg;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "RejectCallWithMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;,
        Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;,
        Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    }
.end annotation


# static fields
.field private static FROM:[Ljava/lang/String;


# instance fields
.field private createLayout:Landroid/widget/LinearLayout;

.field emptyText:Landroid/widget/FrameLayout;

.field private handler:Landroid/os/Handler;

.field istoastshowing:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeType:I

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field mCheckClickListener:Landroid/view/View$OnClickListener;

.field private mCheckedCount:I

.field private mCheckedItemPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDeleteDlg:Landroid/app/AlertDialog;

.field private mEditModeFromMenu:Z

.field private mEdited:I

.field private mEmptyViewBackground:Landroid/widget/ImageView;

.field private mEnableCheckedView:Z

.field private mEnableClickSound:Z

.field private mIsForeground:Z

.field protected mIsLandscape:Z

.field private mIsSelectAllmode:Z

.field mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mListView:Landroid/widget/ListView;

.field private mModeCallback:Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;

.field private mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

.field mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheck:Landroid/view/View;

.field private mSelectAllMode:Z

.field private mSelectedItem:I

.field private mSelectedItemForEdit:I

.field private mState:I

.field private mTempEditString:Ljava/lang/String;

.field private mTouchCheckItem:Z

.field private mUpdateScreen:Z

.field private mUpdated:Z

.field private rejectMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rejectMsgListID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private remindList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reject_message"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "remind_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->istoastshowing:Z

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAllMode:Z

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionModeType:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsSelectAllmode:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEnableCheckedView:Z

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mModeCallback:Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEditModeFromMenu:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTouchCheckItem:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEnableClickSound:Z

    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$1;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$2;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg$2;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$5;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$5;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$6;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/view/ActionMode;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;
    .param p1    # Landroid/view/ActionMode;

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/RejectCallWithMsg;I)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteRejectMessage(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEnableCheckedView:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEnableCheckedView:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAllMode:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAllMode:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/callsettings/RejectCallWithMsg;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionModeType:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEditModeFromMenu:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEnableClickSound:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEnableClickSound:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/media/AudioManager;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsSelectAllmode:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAllCheck:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateItem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTouchCheckItem:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsg;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTouchCheckItem:Z

    return p1
.end method

.method private addRejectMessage(Ljava/lang/String;I)J
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "reject_message"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "edit_checked"

    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "remind_time"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v0, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItemForEdit:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private deleteRejectMessage()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RejectCallWithMsg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private deleteRejectMessage(I)V
    .locals 4

    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RejectCallWithMsg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getRejectMessage()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    const-string v5, "_id desc"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    const/16 v4, 0x8

    const/4 v5, 0x0

    const v2, 0x7f0a01f0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Lcom/android/phone/callsettings/RejectCallWithMsg$1;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mModeCallback:Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mModeCallback:Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    const v2, 0x7f0a01f1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const v2, 0x7f0a0119

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f0a011a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAllCheck:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->showRejectMessage(Landroid/database/Cursor;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const v2, 0x7f0a01f2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEmptyViewBackground:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsLandscape:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v3, 0x7f020239

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_1
    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsg$3;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$3;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "add_panel"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0a0151

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsg$4;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$4;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v3, 0x7f02023a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "RejectCallWithMsg"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "RejectCallWithMsg"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private refreshRejectList()V
    .locals 7

    const v6, 0x7f02023a

    const v5, 0x7f020239

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->showRejectMessage(Landroid/database/Cursor;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsLandscape:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsLandscape:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private showRejectMessage(Landroid/database/Cursor;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    if-ne v2, v4, :cond_2

    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "Edited"

    invoke-direct {p0, v7, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    :goto_2
    const-string v7, "RejectCallWithMsg"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RejectMsg idx"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Reject Message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isChanged "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget-object v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    move v1, v2

    :cond_0
    const/4 v0, 0x6

    if-le v1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteRejectMessage()V

    :cond_1
    return-void

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    const-wide/16 v7, 0x1

    sub-long v7, v5, v7

    const-string v2, "modify_reject_message"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[Ljava/lang/String;

    long-to-int v7, v7

    aget-object v2, v2, v7

    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "string"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "RejectCallWithMsg"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not Edited, Use Default valuerejectMessage = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2

    :cond_4
    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    long-to-int v7, v7

    aget-object v2, v2, v7

    goto :goto_3

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method

.method private updateCount()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateTitleBar()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void
.end method

.method private updateDeleteItems()V
    .locals 5

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAllCheck:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    :goto_1
    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private updateItem(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "SELECTED_MESSAGE"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    const v5, 0x7f0902fa

    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v5, 0x7f090789

    :cond_2
    const-class v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0
.end method

.method private updateRejectMessage()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState = :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateRejectMessage(Ljava/lang/String;II)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    const/4 v5, 0x0

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "reject_message"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "edit_checked"

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "remind_time"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateTitleBar()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    const v1, 0x7f0902f8

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "reject_call_with_message_icon_mode"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09091e

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090789

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public goToEditRejectMsgScreen(I)V
    .locals 6

    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItemForEdit:I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "SELECTED_MESSAGE"

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const v5, 0x7f0902fa

    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v5, 0x7f090789

    :cond_0
    const-class v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "REJECT_MESSAGE_RESULT_Intent"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;)V

    const-string v0, "EDITED_MESSAGE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EDITED_REMINDTIME"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "UPDATED"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->saveRejectMessage(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    const/4 v0, 0x1

    const-string v1, "Configuration"

    const-string v2, "changed "

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsLandscape:Z

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsLandscape:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v1, 0x7f020239

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v1, 0x7f02023a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsLandscape:Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v1, 0x7f04008d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "editString"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    const-string v1, "selectedItem"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    const-string v1, "actionMode"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionModeType:I

    const-string v1, "fromMenu"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEditModeFromMenu:Z

    const-string v1, "checkedItems"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "checkedItems"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->initLayout(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v6

    :goto_1
    return v6

    :sswitch_0
    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_1
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    instance-of v6, v4, Landroid/widget/ListView;

    if-eqz v6, :cond_1

    move-object v2, v4

    check-cast v2, Landroid/widget/ListView;

    :cond_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "childView view : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateItem(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEditModeFromMenu:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->setActionMode(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->twShowMultiChoiceMode(Z)V

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEnableClickSound:Z

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z

    const-string v0, "RejectCallWithMsg"

    const-string v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8
    .param p1    # Landroid/view/Menu;

    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/android/phone/callsettings/RejectCallWithMsg$9;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$9;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0902cf

    invoke-interface {p1, v3, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x7f020005

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const v1, 0x7f090453

    invoke-interface {p1, v3, v5, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-eq v1, v6, :cond_5

    if-ge v0, v7, :cond_5

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_6

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    if-ge v0, v7, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    if-eq v1, v6, :cond_8

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateTitleBar()V

    return-void

    :cond_5
    move v1, v3

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method public onResume()V
    .locals 5

    const/16 v4, 0x8

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z

    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->removeDialog(I)V

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current mState in onResume = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v1, :cond_6

    :goto_0
    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->refreshRejectList()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->refreshRejectList()V

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v0, "editString"

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "selectedItem"

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "actionMode"

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionModeType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "fromMenu"

    iget-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEditModeFromMenu:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "checkedItems"

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public saveRejectMessage(Ljava/lang/String;I)V
    .locals 11
    .param p1    # Ljava/lang/String;
    .param p2    # I

    move-object v4, p1

    const-wide/16 v1, 0x0

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    iput v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f09038d

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v6, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    const v6, 0x7f090391

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f090391

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_6

    iget-boolean v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v6, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage(Ljava/lang/String;II)V

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v6}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->notifyDataSetInvalidated()V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_3
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0902b1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v6, 0x6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-le v6, v7, :cond_7

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, v4, p2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->addRejectMessage(Ljava/lang/String;I)J

    move-result-wide v1

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v6, "RejectCallWithMsg"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Added ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_7
    const-string v6, "RejectCallWithMsg"

    const-string v7, "max in saveRejectMessage - no add"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_4

    :cond_8
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public selectAllList()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsSelectAllmode:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setActionMode(I)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActionMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionModeType:I

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionModeType:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionModeType:I

    goto :goto_0
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const-string v0, "softkeyLeftRun"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$7;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$7;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$8;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$8;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unSelectAllList()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mModeCallback:Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method
