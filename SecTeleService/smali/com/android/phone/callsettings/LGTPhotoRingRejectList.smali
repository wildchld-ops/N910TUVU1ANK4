.class public Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "LGTPhotoRingRejectList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;,
        Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;,
        Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;,
        Lcom/android/phone/callsettings/LGTPhotoRingRejectList$QueryThread;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static FROM:[Ljava/lang/String;

.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static defaultName:Ljava/lang/String;


# instance fields
.field private final DELETE_SCREEN:I

.field private final DIALOG_SCREEN:I

.field private final NORMAL_SCREEN:I

.field private final QUERY_COMPLETE:I

.field private autoreject_maxcount:I

.field private contactQueryThread:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$QueryThread;

.field private createLayout:Landroid/widget/LinearLayout;

.field private createView:Landroid/widget/ImageView;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeType:I

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mAutoRejectAdapter:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

.field private mAutoRejectItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

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

.field private mContentURI:Landroid/net/Uri;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mEditModeFromMenu:Z

.field private mEmpty:Landroid/widget/TextView;

.field private mEnableCheckedView:Z

.field private mFirstVisibleItem:I

.field private mFromContextMenu:Z

.field mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private mIsOutgoing:Z

.field private mIsSelectAll:Z

.field private mIsSelectAllmode:Z

.field private mIsUnselectAll:Z

.field private mListView:Landroid/widget/ListView;

.field private mModeCallback:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mSavedCnt:I

.field private mScreenType:I

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheck:Landroid/view/View;

.field private mSelectedItem:I

.field private mUpdateScreen:Z

.field private queryString:Ljava/lang/String;

.field private searchLayout:Landroid/widget/LinearLayout;

.field private svSearch:Landroid/widget/SearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "%d"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->SRC_TAGS:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "photoring_reject_number"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "photoring_reject_checked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->FROM:[Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->defaultName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->NORMAL_SCREEN:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->DELETE_SCREEN:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->DIALOG_SCREEN:I

    iput v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->QUERY_COMPLETE:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mUpdateScreen:Z

    iput-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mFromContextMenu:Z

    iput v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedCount:I

    iput v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mFirstVisibleItem:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mIsOutgoing:Z

    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mIsForeground:Z

    iput-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    iput v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionModeType:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mIsUnselectAll:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mIsSelectAll:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mIsSelectAllmode:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mEnableCheckedView:Z

    iput-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mModeCallback:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mEditModeFromMenu:Z

    iput v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSavedCnt:I

    new-instance v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$1;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$2;

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$2;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->stopContactQuery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->updateDeleteScreenItems()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->queryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->makeScreen()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/SearchView;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;I)I
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;I)I
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$1902(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;I)I
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mFirstVisibleItem:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->callMatchCriteriaToEditNum()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mFromContextMenu:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Integer;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/view/ActionMode;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
    .param p1    # Landroid/view/ActionMode;

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;ILandroid/widget/ListView;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
    .param p1    # I
    .param p2    # Landroid/widget/ListView;

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->sendTouchEvent(ILandroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mEnableCheckedView:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mEnableCheckedView:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->createLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionModeType:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mEditModeFromMenu:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mEditModeFromMenu:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->hasUnknownItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object p1
.end method

.method private addUnknownItem()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "photoring_unknown_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const v0, 0x7f09000a

    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f0907a6

    :cond_0
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f09035b

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private callMatchCriteriaToEditNum()V
    .locals 6

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "UPDATE_ID"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SELECT_NUMBER"

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f090789

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0907ed

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0
.end method

.method private deleteAutoRejectNumber(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

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

    const-string v1, "LGTPhotoRingRejectList"

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

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getAutoRejectNumber()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private hasUnknownItem()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v2, 0x7f0a0033

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    const v2, 0x7f0a009a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mEmpty:Landroid/widget/TextView;

    const-string v2, "support_mcid_with_alertinfo"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mEmpty:Landroid/widget/TextView;

    const v3, 0x7f090a88

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    new-instance v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Lcom/android/phone/callsettings/LGTPhotoRingRejectList$1;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mModeCallback:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mModeCallback:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$ActionModeCallback;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    const v2, 0x7f0a0119

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a011a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$3;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$3;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0152

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->createView:Landroid/widget/ImageView;

    const-string v2, "add_panel"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->createView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->createView:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$4;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$4;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0153

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->searchLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->searchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a0154

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setIconified(Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$5;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$5;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    const v3, 0x10203df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    const v3, 0x10203e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$6;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$6;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$7;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$7;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$8;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$8;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$9;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$9;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mEmpty:Landroid/widget/TextView;

    const v3, 0x7f090825

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "LGTPhotoRingRejectList"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "LGTPhotoRingRejectList"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private makeScreen()V
    .locals 15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeScreen : ScreenType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->log(Ljava/lang/String;Z)V

    const/4 v13, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedCount:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "country_detector"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/CountryDetector;

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->hasUnknownItem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->addUnknownItem()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mUpdateScreen:Z

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoRejectNum idx"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Number "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "checked ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->queryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "number_format_with_country_iso"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v14, v3, v8}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSavedCnt:I

    :cond_4
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    :cond_6
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->updateCount()V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->queryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->queryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->startContactQuery()V

    :cond_7
    return-void

    :cond_8
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v7, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->defaultName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->queryString:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->queryString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_a
    const-string v0, "number_format_with_country_iso"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v10}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_b
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v14, v3, v8, v7}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_1
.end method

.method private sendTouchEvent(ILandroid/widget/ListView;)V
    .locals 9
    .param p1    # I
    .param p2    # Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v7, 0x0

    move v4, p1

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    if-eqz p2, :cond_0

    invoke-virtual {p2, v8}, Landroid/widget/AbsListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private startContactQuery()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$QueryThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$QueryThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$QueryThread;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Lcom/android/phone/callsettings/LGTPhotoRingRejectList$1;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$QueryThread;

    const-string v0, "LGTPhotoRingRejectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID of contactQueryThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$QueryThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$QueryThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private stopContactQuery()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$QueryThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$QueryThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$QueryThread;

    :cond_0
    return-void
.end method

.method private updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "photoring_reject_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "photoring_reject_checked"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    int-to-long v2, p3

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateCount()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->updateTitleBar()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void
.end method

.method private updateDeleteScreenItems()V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedCount:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedCount:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    iget v4, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedCount:I

    iget-object v5, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    move v2, v3

    :cond_2
    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void
.end method

.method private updateTitleBar()V
    .locals 6

    const v5, 0x7f0907ed

    const v4, 0x7f090789

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->hasUnknownItem()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const-string v1, "call_block_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "separate_call_reject"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    if-ne v0, v3, :cond_3

    :cond_2
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    const v0, 0x7f090548

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "call_block_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    if-eq v0, v2, :cond_6

    iget v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    if-ne v0, v3, :cond_7

    :cond_6
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const v0, 0x7f090547

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    const-string v1, "action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_9
    iget v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    if-eq v1, v2, :cond_a

    iget v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    if-ne v1, v3, :cond_b

    :cond_a
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->autoreject_maxcount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public addAutoRejectList()V
    .locals 6

    const/4 v3, 0x3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "isOutgoing"

    iget-boolean v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mIsOutgoing:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f090789

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0902dd

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    :cond_1
    const-string v0, "LGTPhotoRingRejectList"

    const-string v1, "Fragment is not added, ignore it!."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method public deleteDialog(ZIZ)V
    .locals 8
    .param p1    # Z
    .param p2    # I
    .param p3    # Z

    const v7, 0x7f0902ed

    const/4 v6, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-boolean p3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mFromContextMenu:Z

    if-ne p2, v6, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0902ef

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    const-string v4, "mics_kor_common"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0902d4

    new-instance v6, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$14;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$14;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0902d1

    new-instance v6, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$13;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$13;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$15;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$15;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    const v4, 0x7f0902f1

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const v4, 0x7f0902f0

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public deleteFromContextMenu()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->deleteAutoRejectNumber(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectedItem:I

    const v0, 0x7f09038c

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->displayToast(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    iput v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->updateCount()V

    return-void
.end method

.method public deleteManyItems()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    move v1, v3

    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->deleteAutoRejectNumber(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    const-string v0, "LGTPhotoRingRejectList"

    const-string v1, "softkeyLeftRun - no item"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    const v0, 0x7f09038c

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->displayToast(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "changed "

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v4, 0x1

    const-string v1, "LGTPhotoRingRejectList"

    const-string v2, "onCreate "

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/16 v1, 0x32

    iput v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->autoreject_maxcount:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->defaultName:Ljava/lang/String;

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1    # I

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f0902d2

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0902d4

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "LGTPhotoRingRejectList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedItem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectedItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$11;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$11;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f090028

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$12;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$12;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v2, 0x0

    const v1, 0x7f040071

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "photoring_blacklist_id"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectedItem:I

    const-string v1, "screen_type"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->initLayout(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->makeScreen()V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    iget v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->makeScreen()V

    goto :goto_1

    :sswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/widget/ListView;

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_1
    const v1, 0x7f0a0119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->addAutoRejectList()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mEditModeFromMenu:Z

    iput v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->makeScreen()V

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->setActionMode(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->twShowMultiChoiceMode(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->softkeyRightRun(Landroid/view/View;)V

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
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string v0, "LGTPhotoRingRejectList"

    const-string v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-boolean v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mIsForeground:Z

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->svSearch:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->stopContactQuery()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0902cf

    invoke-interface {p1, v2, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f020005

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const-string v0, "ctc_vip_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x6

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f0902d4

    invoke-interface {p1, v2, v5, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f020006

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSavedCnt:I

    iget v4, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->autoreject_maxcount:I

    if-ge v0, v4, :cond_4

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    if-eq v0, v1, :cond_5

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSavedCnt:I

    if-lez v0, :cond_6

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const-string v0, "add_panel"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->createView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSavedCnt:I

    iget v4, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->autoreject_maxcount:I

    if-ge v0, v4, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    iget v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->searchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->searchLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string v0, "LGTPhotoRingRejectList"

    const-string v1, "onResume "

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-boolean v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mIsForeground:Z

    iget-boolean v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mUpdateScreen:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->removeDialog(I)V

    iget v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mDeleteDialog:Landroid/app/AlertDialog;

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->stopContactQuery()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->makeScreen()V

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mFirstVisibleItem:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->updateTitleBar()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->startContactQuery()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "LGTPhotoRingRejectList"

    const-string v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "photoring_blacklist_id"

    iget v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "screen_type"

    iget v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

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

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->log(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionModeType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionModeType:I

    if-ne v0, v2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionModeType:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionModeType:I

    goto :goto_0
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->deleteDialog(ZIZ)V

    :goto_1
    return-void

    :cond_3
    const-string v3, "No items selected"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$10;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$10;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected updatePopupMenuItemsVisibility()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    iget-object v4, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v0, v4

    if-ne v3, v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mIsSelectAll:Z

    if-nez v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mIsUnselectAll:Z

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0a000d

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mIsSelectAll:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0a023c

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mIsUnselectAll:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
