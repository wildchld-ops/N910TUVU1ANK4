.class public Lcom/android/phone/callsettings/AutoRejectVideoCallList;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AutoRejectVideoCallList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;,
        Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;,
        Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;,
        Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static FROM:[Ljava/lang/String;

.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private final DELETE_SCREEN:I

.field private final DIALOG_SCREEN:I

.field private final NORMAL_SCREEN:I

.field private final QUERY_COMPLETE:I

.field private autoreject_maxcount:I

.field private contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

.field private createLayout:Landroid/widget/LinearLayout;

.field private defaultName:Ljava/lang/String;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeType:I

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

.field private mAutoRejectItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;",
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

.field private mEnableCheckedView:Z

.field private mFirstVisibleItem:I

.field mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private mIsOutgoing:Z

.field private mIsSelectAll:Z

.field private mIsSelectAllmode:Z

.field private mIsUnselectAll:Z

.field private mListView:Landroid/widget/ListView;

.field private mModeCallback:Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mScreenType:I

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheck:Landroid/view/View;

.field private mSelectedItem:I

.field private mUpdateScreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "%d"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->SRC_TAGS:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "reject_number"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "reject_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "reject_match"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->FROM:[Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->NORMAL_SCREEN:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->DELETE_SCREEN:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->DIALOG_SCREEN:I

    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->defaultName:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->QUERY_COMPLETE:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mUpdateScreen:Z

    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mFirstVisibleItem:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsOutgoing:Z

    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsForeground:Z

    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionMode:Landroid/view/ActionMode;

    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionModeType:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsUnselectAll:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsSelectAll:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsSelectAllmode:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mEnableCheckedView:Z

    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mModeCallback:Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mEditModeFromMenu:Z

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$1;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$2;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$2;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->stopContactQuery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectAllCheck:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateDeleteScreenItems()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mFirstVisibleItem:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Integer;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/view/ActionMode;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;
    .param p1    # Landroid/view/ActionMode;

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->callMatchCriteriaToEditNum()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/callsettings/AutoRejectVideoCallList;ILandroid/widget/ListView;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;
    .param p1    # I
    .param p2    # Landroid/widget/ListView;

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->sendTouchEvent(ILandroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mEnableCheckedView:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mEnableCheckedView:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionModeType:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mEditModeFromMenu:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mEditModeFromMenu:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->hasUnknownItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/AutoRejectVideoCallList;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object p1
.end method

.method private addUnknownItem()V
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unknown_videocall_mode"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const v6, 0x7f09000a

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v6, 0x7f0907a6

    :cond_0
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v6, 0x7f09035b

    :cond_1
    iget-object v7, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private callMatchCriteriaToEditNum()V
    .locals 6

    const/4 v3, 0x3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "UPDATE_ID"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SELECT_NUMBER"

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MATCH_MODE"

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v0, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isOutgoing"

    iget-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsOutgoing:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f090789

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-class v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0902dd

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_1
.end method

.method private deleteAutoRejectNumber(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

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

    const-string v1, "AutoRejectVideoCallList"

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

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getActivity()Landroid/app/Activity;

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

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private hasUnknownItem()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsOutgoing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    const v0, 0x7f0a0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Lcom/android/phone/callsettings/AutoRejectVideoCallList$1;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mModeCallback:Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mModeCallback:Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    const v0, 0x7f0a0119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectAll:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectAllCheck:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "add_panel"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0151

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$4;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$4;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$5;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$6;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$6;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "AutoRejectVideoCallList"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "AutoRejectVideoCallList"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private makeScreen()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeScreen : ScreenType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v13}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;Z)V

    const/4 v10, 0x0

    iput v12, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "country_detector"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/CountryDetector;

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->hasUnknownItem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->addUnknownItem()V

    :cond_0
    iput-boolean v12, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mUpdateScreen:Z

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoRejectNum idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "checked ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V

    const-string v0, "number_format_with_country_iso"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v7}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v11, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    :cond_5
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateCount()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->startContactQuery()V

    return-void
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

    invoke-virtual {p2, v8}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private startContactQuery()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Lcom/android/phone/callsettings/AutoRejectVideoCallList$1;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    const-string v0, "AutoRejectVideoCallList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID of contactQueryThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->start()V

    :cond_0
    return-void
.end method

.method private stopContactQuery()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    :cond_0
    return-void
.end method

.method private updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "reject_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "reject_checked"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    int-to-long v2, p3

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateCount()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateTitleBar()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void
.end method

.method private updateDeleteScreenItems()V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectAllCheck:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    iget v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    iget-object v5, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    move v2, v3

    :cond_2
    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectAllCheck:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void
.end method

.method private updateTitleBar()V
    .locals 5

    const v4, 0x7f090549

    const v3, 0x7f090789

    const/4 v2, 0x1

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->hasUnknownItem()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "separate_call_reject"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const v0, 0x7f090547

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v0, v2, :cond_8

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    const v0, 0x7f0902e3

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addAutoRejectList()V
    .locals 6

    const/4 v3, 0x3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "isOutgoing"

    iget-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsOutgoing:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f090789

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0902dd

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    :cond_1
    const-string v0, "AutoRejectVideoCallList"

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

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-ne p2, v6, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0902ef

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    const-string v4, "mics_kor_common"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0902d4

    new-instance v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$8;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$8;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    const v4, 0x7f0902f1

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const v4, 0x7f0902f0

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public deleteManyItems()V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->deleteAutoRejectNumber(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_3

    const-string v3, "AutoRejectList"

    const-string v4, "softkeyLeftRun - no item"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    const v3, 0x7f09038c

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->displayToast(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

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
    .param p1    # Landroid/content/res/Configuration;

    const-string v0, "changed "

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x1

    const-string v2, "AutoRejectVideoCallList"

    const-string v3, "onCreate "

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoreject_maxcount"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->autoreject_maxcount:I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->defaultName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "isOutgoing"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsOutgoing:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getArgument : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsOutgoing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsOutgoing:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_OUTGOINGCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->setHasOptionsMenu(Z)V

    return-void

    :cond_2
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

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

    const/4 v2, 0x0

    const v1, 0x7f040010

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "blacklist_id"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    const-string v1, "screen_type"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->initLayout(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentObserver:Landroid/database/ContentObserver;

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

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V

    goto :goto_1

    :sswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/widget/ListView;

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_0

    :cond_1
    const v1, 0x7f0a0119

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->performClick()Z

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
    .locals 3
    .param p1    # Landroid/view/MenuItem;

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->addAutoRejectList()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mEditModeFromMenu:Z

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->setActionMode(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->twShowMultiChoiceMode(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->softkeyRightRun(Landroid/view/View;)V

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

    const-string v0, "AutoRejectVideoCallList"

    const-string v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsForeground:Z

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->stopContactQuery()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1    # Landroid/view/Menu;

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0902cf

    invoke-interface {p1, v3, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x7f020005

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    const-string v1, "ctc_vip_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x6

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const v1, 0x7f0902d4

    invoke-interface {p1, v3, v5, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x7f020006

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->hasUnknownItem()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->autoreject_maxcount:I

    if-ge v0, v1, :cond_4

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-eq v1, v2, :cond_5

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_6

    move v1, v2

    :goto_3
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->autoreject_maxcount:I

    if-ge v0, v1, :cond_7

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_3

    :cond_7
    move v1, v3

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string v0, "AutoRejectVideoCallList"

    const-string v1, "onResume "

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-boolean v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsForeground:Z

    iget-boolean v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mUpdateScreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->stopContactQuery()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mFirstVisibleItem:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateTitleBar()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->startContactQuery()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "AutoRejectVideoCallList"

    const-string v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "blacklist_id"

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "screen_type"

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

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

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionModeType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionModeType:I

    if-ne v0, v2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionModeType:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionModeType:I

    goto :goto_0
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->deleteDialog(ZIZ)V

    :goto_1
    return-void

    :cond_3
    const-string v3, "No items selected"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected updatePopupMenuItemsVisibility()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v0, v4

    if-ne v3, v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsSelectAll:Z

    if-nez v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsUnselectAll:Z

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0a000d

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsSelectAll:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0a023c

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsUnselectAll:Z

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
