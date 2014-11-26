.class public Lcom/android/mms/spam/SetupSpamNumberList;
.super Landroid/app/Activity;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;,
        Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;,
        Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;,
        Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;
    }
.end annotation


# static fields
.field private static final CANCEL_ITEM:I = 0x3

.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static final CREATE_ITEM:I = 0x1

.field private static final DELETE_ITEM:I = 0x2

.field private static final DELETE_SPAM_ITEM:I = 0x1

.field private static final EDIT_DELETE_DIALOG:I = 0x64

.field private static final EDIT_SPAM_ITEM:I = 0x0

.field public static final LIST_MULTIMODE_ALL:I = 0x0

.field public static final LIST_MULTIMODE_DELETE:I = 0x1

.field public static final MATCH_CRITERIA_RESULT:I = 0x3

.field public static final PICK_CONTACT_NUMBER:I = 0x2

.field public static final PICK_LOGS_NUMBER:I = 0x1

.field private static final STATE_VALUE_BLACKLIST_ID:Ljava/lang/String; = "blacklist_id"

.field private static final TAG:Ljava/lang/String; = "Mms/SetupSpamNumberList"

.field public static final UNKNOWN_MODE:Ljava/lang/String; = "unknown_mode"


# instance fields
.field private CHECKBOX_FLOATING_DEFAULT_DURATION:I

.field private final DELETE_SCREEN:I

.field private final NORMAL_SCREEN:I

.field private final QUERY_COMPLETE:I

.field private SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

.field private checked_cnt:I

.field private contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

.field private defaultName:Ljava/lang/String;

.field private edad:Landroid/app/AlertDialog;

.field private mActionbarTitle:Landroid/widget/TextView;

.field mAudioManager:Landroid/media/AudioManager;

.field private mCheckedMsgPositions:Ljava/util/ArrayList;
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

.field private mContext:Landroid/content/Context;

.field private mCreate:Landroid/widget/LinearLayout;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDeleteModeDialog:Landroid/app/AlertDialog;

.field private mEmptyBackgroundImage:Landroid/widget/ImageView;

.field private mEmptySpamKeywordLayout:Landroid/widget/FrameLayout;

.field private mEmptySpamKeywordstring:Landroid/widget/TextView;

.field private mEnableCheckedView:Z

.field mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/view/View;

.field private mHeaderViewCount:I

.field private mIsInEditMode:Z

.field private mIsLandscape:Z

.field private mIsLastItemOfSelectAll:Z

.field private mIsSelectAll:Z

.field private mIsSelectAllmode:Z

.field private mIsUnselectAll:Z

.field private mListMultiMode:I

.field private mListView:Landroid/widget/ListView;

.field private mMenuCreate:Landroid/view/MenuItem;

.field private mMenuDelete:Landroid/view/MenuItem;

.field private mMessageCount:I

.field mModeCallback:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

.field private mMultiActionMode:Landroid/view/ActionMode;

.field public mScreenType:I

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private final mSelectAllOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mSelectedButton:Landroid/widget/Button;

.field private mSelectedItem:I

.field private mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

.field private mSpamNumberItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/spam/SpamFilter$SpamFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private mSpamNumberListContextMenu:Landroid/view/ContextMenu;

.field private final mSpamNumberListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mUpdateChecked:Z

.field private mUpdateScreen:Z

.field private selectAll:Landroid/widget/LinearLayout;

.field private selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field spamPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/mms/spam/SetupSpamNumberList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/mms/spam/SetupSpamNumberList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListContextMenu:Landroid/view/ContextMenu;

    iput v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->NORMAL_SCREEN:I

    iput v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->DELETE_SCREEN:I

    iput v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->defaultName:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->QUERY_COMPLETE:I

    iput-boolean v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateScreen:Z

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->edad:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuCreate:Landroid/view/MenuItem;

    iput v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMultiActionMode:Landroid/view/ActionMode;

    iput-boolean v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateChecked:Z

    iput-boolean v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsUnselectAll:Z

    iput-boolean v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsSelectAll:Z

    iput v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListMultiMode:I

    iput-boolean v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsSelectAllmode:Z

    iput-boolean v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsLastItemOfSelectAll:Z

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mModeCallback:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iput v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMessageCount:I

    iput-boolean v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsInEditMode:Z

    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->CHECKBOX_FLOATING_DEFAULT_DURATION:I

    iput-boolean v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEnableCheckedView:Z

    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamNumberList$1;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$2;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/spam/SetupSpamNumberList$2;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$3;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamNumberList$3;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectAllOnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$10;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamNumberList$10;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/spam/SetupSpamNumberList;)Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->stopContactQuery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/spam/SetupSpamNumberList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/spam/SetupSpamNumberList;)I
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListMultiMode:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/mms/spam/SetupSpamNumberList;I)I
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListMultiMode:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/mms/spam/SetupSpamNumberList;)I
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/spam/SetupSpamNumberList;I)I
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->callMatchCriteriaToEditNum()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/spam/SetupSpamNumberList;I)V
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamNumberList;->deleteSpamNumber(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamNumberList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/view/ActionMode;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMultiActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p1    # Landroid/view/ActionMode;

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMultiActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p1    # Landroid/view/ContextMenu;

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/mms/spam/SetupSpamNumberList;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/lang/String;ZI)V
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/spam/SetupSpamNumberList;->updateSpamNumber(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/view/View$OnCreateContextMenuListener;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/spam/SetupSpamNumberList;)Z
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEnableCheckedView:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/mms/spam/SetupSpamNumberList;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEnableCheckedView:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mCheckedMsgPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mCheckedMsgPositions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p1    # Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/app/AlertDialog;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p1    # Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/mms/spam/SetupSpamNumberList;)Z
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateChecked:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/mms/spam/SetupSpamNumberList;)Z
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/mms/spam/SetupSpamNumberList;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsSelectAllmode:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/mms/spam/SetupSpamNumberList;)Z
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsLastItemOfSelectAll:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/mms/spam/SetupSpamNumberList;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsLastItemOfSelectAll:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/mms/spam/SetupSpamNumberList;)Z
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsInEditMode:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/mms/spam/SetupSpamNumberList;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsInEditMode:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/mms/spam/SetupSpamNumberList;)I
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->CHECKBOX_FLOATING_DEFAULT_DURATION:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/spam/SetupSpamNumberList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/spam/SetupSpamNumberList;)I
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .param p0    # Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->updateDeleteScreenItems()V

    return-void
.end method

.method private callMatchCriteriaToEditNum()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    :cond_0
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v2

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "UPDATE_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "SELECT_NUMBER"

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "MATCH_MODE"

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "UPDATE_MODE"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Lcom/android/mms/spam/SetupSpamNumberList;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private deleteSpamNumber(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->delete(I)V

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getSpam(I)Landroid/database/Cursor;
    .locals 6
    .param p1    # I

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filter_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout()V
    .locals 5

    const/4 v4, 0x0

    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ae

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    const v1, 0x7f0b0396

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAll:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    const v1, 0x7f0b0397

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAll:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectAllOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberList$4;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberList$4;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberList$5;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberList$5;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberList$6;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberList$6;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;Lcom/android/mms/spam/SetupSpamNumberList$1;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mModeCallback:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mModeCallback:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    goto :goto_0
.end method

.method private isEmptyViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMultiSelectMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMultiActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeScreen()V
    .locals 14

    const-string v0, "Mms/SetupSpamNumberList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeScreen : ScreenType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->spamPreference:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_spam_option_unknown_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const v4, 0x7f0c02b6

    invoke-virtual {p0, v4}, Lcom/android/mms/spam/SetupSpamNumberList;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->getSpam(I)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v13

    :cond_1
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_9

    const/4 v7, 0x1

    :goto_0
    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x4

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0c0293

    invoke-virtual {v10, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-nez v0, :cond_5

    if-gtz v13, :cond_d

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->setEmptyBgImage()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    const v1, 0x7f0c02ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->startContactQuery()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    :cond_6
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMessageCount:I

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMultiActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMessageCount:I

    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->invalidateOptionsMenu()V

    return-void

    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_a
    const v0, 0x7f0c03ed

    invoke-virtual {v10, v0}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_c
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAll:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    const-string v0, ""

    invoke-virtual {v10, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method private setCheckedState()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-boolean v5, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateChecked:Z

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mCheckedMsgPositions:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "Mms/SetupSpamNumberList"

    const-string v3, "prevent null point exception just return"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateChecked:Z

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mCheckedMsgPositions:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mCheckedMsgPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int v3, v1, v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_2
    iput-boolean v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateChecked:Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method private setEmptyBgImage()V
    .locals 4

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->isEmptyViewVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    const v3, 0x7f0202a5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_2
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    const v3, 0x7f0202a6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method private startContactQuery()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;Lcom/android/mms/spam/SetupSpamNumberList$1;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    const-string v0, "Mms/SetupSpamNumberList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID of contactQueryThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    invoke-virtual {v2}, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    invoke-virtual {v0}, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->start()V

    :cond_0
    return-void
.end method

.method private stopContactQuery()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    invoke-virtual {v0}, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    :cond_0
    return-void
.end method

.method private updateDeleteScreenItems()V
    .locals 5

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->invalidateOptionsMenu()V

    return-void
.end method

.method private updateSpamNumber(Ljava/lang/String;ZI)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # I

    const/4 v4, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "filter"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "enable"

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p3, p1, p2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->update(ILjava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public autoreject_delete_cancel(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    const-string v0, "Cancel softkey clicked !!"

    invoke-direct {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method public autoreject_delete_items(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    const-string v0, "Delete softkey clicked !!"

    invoke-direct {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method public deleteDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0076

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0182

    new-instance v3, Lcom/android/mms/spam/SetupSpamNumberList$12;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamNumberList$12;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0183

    new-instance v3, Lcom/android/mms/spam/SetupSpamNumberList$11;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamNumberList$11;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/spam/SetupSpamNumberList$13;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamNumberList$13;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

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
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->invalidateOptionsMenu()V

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->setEmptyBgImage()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mModeCallback:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mModeCallback:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->updateSelectionButtonHeight()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mModeCallback:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->updateTitleTextSize()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c02b1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->defaultName:Ljava/lang/String;

    const v0, 0x7f0400a1

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->setContentView(I)V

    const v0, 0x7f0b0159

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    const v0, 0x7f0b036e

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0b036f

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "blacklist_id"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->spamPreference:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->initLayout()V

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_1
    return v5

    :sswitch_0
    iget v7, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-ne v7, v5, :cond_0

    iput v6, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    goto :goto_1

    :sswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    const v5, 0x7f0b039b

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->performClick()Z

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v5, "Mms/SetupSpamNumberList"

    const-string v7, "Unexpected ClassCastException."

    invoke-static {v5, v7, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v6

    goto :goto_1

    :cond_1
    const v5, 0x7f0b019d

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_0

    :cond_2
    const v5, 0x7f0b0396

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1    # Landroid/view/MenuItem;

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return v1

    :sswitch_0
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-ne v2, v1, :cond_0

    iput v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->finish()V

    goto :goto_0

    :sswitch_1
    iput v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x24000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/spam/SetupSpamNumberList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->edad:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->edad:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->edad:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->edad:Landroid/app/AlertDialog;

    :cond_1
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v2, :cond_2

    iput v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-ne v2, v1, :cond_6

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/mms/spam/SetupSpamNumberList;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListMultiMode:I

    if-ne v2, v1, :cond_5

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    :cond_5
    iput v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListMultiMode:I

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->twShowMultiChoiceMode(Z)V

    goto :goto_1

    :cond_6
    :sswitch_3
    invoke-virtual {p0, v3}, Lcom/android/mms/spam/SetupSpamNumberList;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "Mms/SetupSpamNumberList"

    const-string v1, "onPause "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->stopContactQuery()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .param p1    # Landroid/view/Menu;

    const v9, 0x7f0c007c

    const v8, 0x7f020008

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v3, :cond_5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f0c0127

    invoke-interface {p1, v6, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuCreate:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuCreate:Landroid/view/MenuItem;

    const v4, 0x7f0202ed

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuCreate:Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeleteButtonOnActionBar()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f0c0127

    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuCreate:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuCreate:Landroid/view/MenuItem;

    const v4, 0x7f0202ed

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuCreate:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v5, v7, v5, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    if-gt v1, v6, :cond_2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_3
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    :cond_4
    if-lez v1, :cond_2

    invoke-interface {p1, v6, v7, v5, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_5
    invoke-interface {p1, v5, v7, v5, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0440

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_6
    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    if-gtz v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "Mms/SetupSpamNumberList"

    const-string v1, "onRestoreInstanceState "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "blacklist_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    :cond_0
    const-string v0, "Mms/SetupSpamNumberList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectedItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "Mms/SetupSpamNumberList"

    const-string v1, "onResume "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateScreen:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->removeDialog(I)V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    invoke-virtual {v0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->notifyDataSetInvalidated()V

    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    :cond_1
    iput-boolean v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateScreen:Z

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->setCheckedState()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->startContactQuery()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v0, "Mms/SetupSpamNumberList"

    const-string v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-static {p0}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->finish()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMessageCount:I

    :cond_0
    return-void
.end method

.method public selectAllList()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mCheckedMsgPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsSelectAllmode:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    invoke-virtual {v1}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    invoke-virtual {v1}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsLastItemOfSelectAll:Z

    :cond_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public showItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V
    .locals 4
    .param p1    # Landroid/view/ContextMenu;
    .param p2    # Landroid/view/View;
    .param p3    # I

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;Lcom/android/mms/spam/SetupSpamNumberList$1;)V

    const v1, 0x7f0c0050

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v1, 0x1

    const v2, 0x7f0c007c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v4, "Mms/SetupSpamNumberList"

    const-string v5, "checkedarray null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    :goto_1
    if-lez v2, :cond_2

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0076

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-le v3, v5, :cond_3

    const v4, 0x7f0c02b9

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_2
    const v4, 0x104000a

    new-instance v5, Lcom/android/mms/spam/SetupSpamNumberList$7;

    invoke-direct {v5, p0}, Lcom/android/mms/spam/SetupSpamNumberList$7;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/mms/spam/SetupSpamNumberList$8;

    invoke-direct {v5, p0}, Lcom/android/mms/spam/SetupSpamNumberList$8;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_3
    const v4, 0x7f0c02b8

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberList$9;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberList$9;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unSelectAllList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mCheckedMsgPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    invoke-virtual {v0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mModeCallback:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mModeCallback:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->updateSelectionMenu()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMultiActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMultiActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    return-void
.end method
