.class public Lcom/android/mms/ui/ManageSDMessages;
.super Landroid/app/Activity;
.source "ManageSDMessages.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ManageSDMessages$ModeCallback;,
        Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;,
        Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;,
        Lcom/android/mms/ui/ManageSDMessages$CancelListener;
    }
.end annotation


# static fields
.field public static final DIALOG_DELETE_CONFIRM:I = 0x3fc

.field public static final DIALOG_DELETE_ERROR:I = 0x3f7

.field public static final DIALOG_IMPORT_ERROR:I = 0x3f2

.field public static final DIALOG_IMPORT_PROGRESS_BAR:I = 0x3ed

.field public static final LIST_MULTIMODE_ALL:I = 0x0

.field private static final MENU_SELECT:I = 0x0

.field private static final SHOW_BUSY:I = 0x2

.field private static final SHOW_EMPTY:I = 0x1

.field private static final SHOW_LIST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/ManageSDMessages"

.field private static final VMSG_BODY:I = 0x5

.field private static final VMSG_DATE:I = 0x4

.field private static final VMSG_INBOX_ADDR:I = 0x2

.field private static final VMSG_SENT_ADDR:I = 0x3

.field private static final VMSG_TYPE:I = 0x0

.field private static final VMSG_TYPE_SENT:Ljava/lang/String; = "SENT"


# instance fields
.field private arFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private arMsgItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MsgItem;",
            ">;"
        }
    .end annotation
.end field

.field private fileList:[Ljava/io/File;

.field private finish:Z

.field private mActionbarTitle:Landroid/widget/TextView;

.field mAudioManager:Landroid/media/AudioManager;

.field private mCancelListener:Lcom/android/mms/ui/ManageSDMessages$CancelListener;

.field private mCheckedMsgIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsLastItemOfSelectAll:Z

.field private mIsSelectAllmode:Z

.field private mListMultiMode:I

.field private mMessageListView:Landroid/widget/ListView;

.field mModeCallback:Lcom/android/mms/ui/ManageSDMessages$ModeCallback;

.field private mMsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mProgressCount:I

.field private mSDCardMultiActionMode:Landroid/view/ActionMode;

.field private mSaveRunnable:Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mSelectedButton:Landroid/widget/Button;

.field private mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

.field private mState:I

.field private mTargetDirectory:Ljava/lang/String;

.field private mUncheckItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected m_Receiver:Landroid/content/BroadcastReceiver;

.field private showMenu:Z

.field private vmg:Lcom/android/mms/ui/VMessage;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mSDCardMultiActionMode:Landroid/view/ActionMode;

    iput v3, p0, Lcom/android/mms/ui/ManageSDMessages;->mListMultiMode:I

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mModeCallback:Lcom/android/mms/ui/ManageSDMessages$ModeCallback;

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mContext:Landroid/content/Context;

    iput-boolean v3, p0, Lcom/android/mms/ui/ManageSDMessages;->mIsSelectAllmode:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/ManageSDMessages;->mIsLastItemOfSelectAll:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/ManageSDMessages;->showMenu:Z

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    new-instance v0, Lcom/android/mms/ui/VMessage;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/VMessage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->vmg:Lcom/android/mms/ui/VMessage;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getExternalSdCardStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Backup/vMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mTargetDirectory:Ljava/lang/String;

    iput v3, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgressCount:I

    new-instance v0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;-><init>(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/ui/ManageSDMessages$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSaveRunnable:Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mUncheckItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/mms/ui/ManageSDMessages$CancelListener;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/ManageSDMessages$CancelListener;-><init>(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/ui/ManageSDMessages$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mCancelListener:Lcom/android/mms/ui/ManageSDMessages$CancelListener;

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/ManageSDMessages;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ManageSDMessages;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSDMessages;->finish:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/ManageSDMessages;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ManageSDMessages;->finish:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ManageSDMessages;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/ManageSDMessages;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ManageSDMessages;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSDMessages;->copyToPhoneMemory(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mUncheckItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ManageSDMessages;)Lcom/android/mms/menu/SelectionMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/menu/SelectionMenu;)Lcom/android/mms/menu/SelectionMenu;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/mms/ui/ManageSDMessages;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/mms/ui/ManageSDMessages;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectedButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ManageSDMessages;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ManageSDMessages;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSDCardMultiActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/mms/ui/ManageSDMessages;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages;->mSDCardMultiActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ManageSDMessages;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mListMultiMode:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/mms/ui/ManageSDMessages;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/ManageSDMessages;->mListMultiMode:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ManageSDMessages;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/mms/ui/ManageSDMessages;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ManageSDMessages;->mIsSelectAllmode:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ManageSDMessages;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mIsLastItemOfSelectAll:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/ManageSDMessages;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ManageSDMessages;->mIsLastItemOfSelectAll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ManageSDMessages;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSDMessages;->getSDList()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ManageSDMessages;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages;->mMsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ManageSDMessages;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSDMessages;->updateState(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ManageSDMessages;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/ManageSDMessages;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ManageSDMessages;->showMenu:Z

    return p1
.end method

.method private copyToPhoneMemory(I)Z
    .locals 16

    new-instance v8, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ManageSDMessages;->mTargetDirectory:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ManageSDMessages;->vmg:Lcom/android/mms/ui/VMessage;

    invoke-virtual {v1, v8}, Lcom/android/mms/ui/VMessage;->readFileFromSDCard1(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mma, yyyy MMM dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v14, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v9, 0x0

    const-string v2, ""

    const-string v3, ""

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x5

    if-le v1, v4, :cond_1

    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_1
    const-string v1, "SENT"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_1
    if-nez v2, :cond_2

    const v1, 0x7f0c013b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ManageSDMessages;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v15, :cond_3

    const-string v15, "2000.1.1.12.00.00"

    :cond_3
    :try_start_0
    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_2
    const-wide/16 v12, 0x0

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    :goto_3
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "SENT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ManageSDMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    :goto_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2

    :cond_5
    const-string v1, "Mms/ManageSDMessages"

    const-string v4, "copyToPhoneMemory(): value of date is null!"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ManageSDMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    goto :goto_4
.end method

.method private getSDList()V
    .locals 9

    const/4 v8, 0x1

    const-string v4, "Mms/ManageSDMessages"

    const-string v5, "getSDList()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->mTargetDirectory:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    if-eqz v4, :cond_5

    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v4, Lcom/android/mms/ui/ManageSDMessages$3;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ManageSDMessages$3;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/mms/ui/ManageSDMessages;->showMenu:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v4, "Mms/ManageSDMessages"

    const-string v5, "NullPointerException in getSDList()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_6
    :goto_4
    const/4 v1, 0x0

    :goto_5
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->vmg:Lcom/android/mms/ui/VMessage;

    new-instance v6, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/ManageSDMessages;->mTargetDirectory:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/VMessage;->readFileFromSDCard2(Ljava/io/File;)Lcom/android/mms/ui/MsgItem;

    move-result-object v2

    if-eqz v2, :cond_8

    iget v4, v2, Lcom/android/mms/ui/MsgItem;->boxId:I

    if-eq v4, v8, :cond_7

    iget v4, v2, Lcom/android/mms/ui/MsgItem;->boxId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    :cond_7
    iget-object v4, v2, Lcom/android/mms/ui/MsgItem;->body:Ljava/lang/String;

    if-nez v4, :cond_a

    :cond_8
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    goto :goto_4

    :cond_a
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    const-string v4, "Mms/ManageSDMessages"

    const-string v5, "getSDList()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initResourceRefs()V
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/ManageSDMessages$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSDMessages$2;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private initSDLists()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ManageSDMessages$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSDMessages$4;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateState(I)V
    .locals 4

    const v3, 0x7f0c0274

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mState:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/mms/ui/ManageSDMessages;->mState:I

    packed-switch p1, :pswitch_data_0

    const-string v0, "Mms/ManageSDMessages"

    const-string v1, "Invalid State"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSDMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSDMessages;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSDMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSDMessages;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->setProgressBarIndeterminateVisibility(Z)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->setProgress(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Mms/ManageSDMessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mModeCallback:Lcom/android/mms/ui/ManageSDMessages$ModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mModeCallback:Lcom/android/mms/ui/ManageSDMessages$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->updateSelectionButtonHeight()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSDMessages;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ManageSDMessages;->requestWindowFeature(I)Z

    const v2, 0x7f040095

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ManageSDMessages;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSDMessages;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mContentResolver:Landroid/content/ContentResolver;

    const v2, 0x7f0b0198

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ManageSDMessages;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    const v3, 0x7f0b0199

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSDMessages;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSDMessages;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v2, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;-><init>(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/ui/ManageSDMessages$1;)V

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mModeCallback:Lcom/android/mms/ui/ManageSDMessages$ModeCallback;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages;->mModeCallback:Lcom/android/mms/ui/ManageSDMessages$ModeCallback;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSDMessages;->updateState(I)V

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSDMessages;->initResourceRefs()V

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSDMessages;->initSDLists()V

    new-instance v2, Lcom/android/mms/ui/ManageSDMessages$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ManageSDMessages$1;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->m_Receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->m_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/ManageSDMessages;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const v4, 0x7f0c0272

    const v6, 0x7f0c004d

    const/4 v5, 0x1

    move-object v1, p0

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSDMessages;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c026f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgressCount:I

    goto :goto_0

    :sswitch_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0270

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/ManageSDMessages$5;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ManageSDMessages$5;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0271

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/ManageSDMessages$6;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ManageSDMessages$6;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_0
        0x3f2 -> :sswitch_1
        0x3f7 -> :sswitch_2
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->m_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0x7f0b0094

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    :goto_1
    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    if-ne v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSDMessages;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->updateState(I)V

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSDMessages;->initResourceRefs()V

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSDMessages;->initSDLists()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSDMessages;->finish()V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mListMultiMode:I

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->twShowMultiChoiceMode(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgressCount:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages;->mCancelListener:Lcom/android/mms/ui/ManageSDMessages$CancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages;->mSaveRunnable:Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const-string v0, "Mms/ManageSDMessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareOptionsMenu(), showMenu is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ManageSDMessages;->showMenu:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSDMessages;->showMenu:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f0c048f

    invoke-interface {p1, v0, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "Mms/ManageSDMessages"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public selectAllList()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mIsSelectAllmode:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages;->mMsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages;->mMsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mIsLastItemOfSelectAll:Z

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unSelectAllList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mModeCallback:Lcom/android/mms/ui/ManageSDMessages$ModeCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mModeCallback:Lcom/android/mms/ui/ManageSDMessages$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->updateSelectionMenu()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSDCardMultiActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSDCardMultiActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_2
    return-void
.end method
