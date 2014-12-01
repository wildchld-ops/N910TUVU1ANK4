.class public Lcom/android/mms/ui/MessageOptions;
.super Ljava/lang/Object;
.source "MessageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageOptions$CancelMessageListener;,
        Lcom/android/mms/ui/MessageOptions$SendNowListener;,
        Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;,
        Lcom/android/mms/ui/MessageOptions$RestoreSpamTask;,
        Lcom/android/mms/ui/MessageOptions$AttachCancelListener;,
        Lcom/android/mms/ui/MessageOptions$AttachOkListener;,
        Lcom/android/mms/ui/MessageOptions$FileEndWithFilter;,
        Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;,
        Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;,
        Lcom/android/mms/ui/MessageOptions$CreationOkListener;,
        Lcom/android/mms/ui/MessageOptions$ResendSingleMsgListener;,
        Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;
    }
.end annotation


# static fields
.field private static final ALL_THREADS_PROJECTION:[Ljava/lang/String;

.field private static final ATT_SERVICE_CONTACT:Ljava/lang/String; = "7726"

.field static final COLUMN_ID:I = 0x0

.field static final COLUMN_MMS_MESSAGE_BOX:I = 0x2

.field static final COLUMN_MMS_MESSAGE_TYPE:I = 0x1

.field static final COLUMN_SMS_ADDRESS:I = 0x2

.field static final COLUMN_SMS_DATE:I = 0x3

.field static final COLUMN_SMS_ERROR_CODE:I = 0x4

.field static final COLUMN_SMS_PRIORITY:I = 0x6

.field static final COLUMN_SMS_TYPE:I = 0x1

.field public static final CONTENT_RESTRICTION:I = -0x5

.field public static final COPY_TO_SIM_FAIL:I = 0x1

.field public static final COPY_TO_SIM_FUL:I = 0x3

.field public static final COPY_TO_SIM_INVALID_FORMAT:I = 0x4

.field public static final COPY_TO_SIM_LMS:I = 0x5

.field public static final COPY_TO_SIM_MMS:I = 0x6

.field public static final COPY_TO_SIM_NOTAVAILABLE:I = 0x2

.field public static final COPY_TO_SIM_SUCCESS:I = 0x0

.field private static final DELETE_MESSAGE_TOKEN:I = 0x25e4

.field public static final IMAGE_TOO_LARGE:I = -0x4

.field public static final LAUNCH_DEFAULT:I = 0x0

.field public static final LAUNCH_FROM_CONTACT_HISTORY:I = 0x1

.field public static final LAUNCH_FROM_FOLDER_VIEW:I = 0x2

.field public static final LAUNCH_FROM_MISSED_WIDGET:I = 0x3

.field public static final LAUNCH_FROM_SEARCHLIST_ON_FOLDER_VIEW:I = 0x4

.field public static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x1b

.field private static final MENU_ATTACHMENT_LIST:I = 0x23

.field public static final MENU_BLOCK_NUMBER_SETTING:I = 0x29

.field private static final MENU_CALL_MESSAGE:I = 0x30

.field private static final MENU_CALL_RECIPIENT:I = 0x2a

.field private static final MENU_CANCEL_MESSAGE:I = 0x27

.field private static final MENU_CONNECT_URL:I = 0x2e

.field private static final MENU_COPY_MESSAGE_TEXT:I = 0x18

.field private static final MENU_COPY_MESSAGE_TO_SIM:I = 0x1f

.field private static final MENU_COPY_MESSAGE_TO_SIM2:I = 0x5a

.field private static final MENU_COPY_TO_SDCARD:I = 0x21

.field public static final MENU_DELETE_MESSAGE:I = 0x12

.field public static final MENU_DOWNLOAD_MESSAGE:I = 0x25

.field private static final MENU_EDIT_MESSAGE:I = 0xe

.field private static final MENU_FORWARD_MESSAGE:I = 0x15

.field private static final MENU_LOCK_MESSAGE:I = 0x1c

.field private static final MENU_PHOTORING_CALL_RECIPIENT:I = 0x2f

.field private static final MENU_REGISTER_TO_CALENDAR:I = 0x22

.field public static final MENU_REPLY_MESSAGE:I = 0x20

.field private static final MENU_REPLY_TO_ALL:I = 0x24

.field public static final MENU_REPORT_AS_SPAM:I = 0x31

.field private static final MENU_RESEND_MESSAGE:I = 0x1e

.field private static final MENU_RESTORE_MESSAGE:I = 0x28

.field private static final MENU_SAVE_RINGTONE:I = 0x2d

.field private static final MENU_SEND_NOW:I = 0x26

.field public static final MENU_UNBLOCK_NUMBER_SETTING:I = 0x2c

.field public static final MENU_UNLOCK_MESSAGE:I = 0x1d

.field private static final MENU_VIDEO_CALL_RECIPIENT:I = 0x2b

.field public static final MENU_VIEW_CONTACT:I = 0x1a

.field public static final MENU_VIEW_GROUP_MESSAGE_RECIPIENTS:I = 0x6c

.field private static final MENU_VIEW_MESSAGE_DETAILS:I = 0x11

.field public static final MESSAGE_SIZE_EXCEEDED:I = -0x2

.field public static final OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/MessageOptions"

.field public static final UNKNOWN_ERROR:I = -0x1

.field public static final UNSUPPORTED_TYPE:I = -0x3

.field public static deleteDialog:Landroid/app/AlertDialog;

.field public static detailDialog:Landroid/app/AlertDialog;

.field public static detailDialogSpam:Landroid/app/AlertDialog;

.field static mLaunchApp:I

.field static mType:Ljava/lang/String;

.field static msgId:J

.field public static sReplyLaunched:Z

.field private static final sResIdRegisterCalendar:I


# instance fields
.field private final LOW_STORAGE_THRESHOLD:J

.field private TargetDirectory:Ljava/io/File;

.field public isLockedMessageList:Z

.field mActivity:Landroid/app/Activity;

.field private mAddressToCall:Ljava/lang/String;

.field private mAttachList:Landroid/widget/ListView;

.field private mAttachmentView:Landroid/widget/LinearLayout;

.field mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

.field mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mCurSlideLocation:I

.field private mDragSelectedIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mRecipients:Lcom/android/mms/data/ContactList;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllDivider:Landroid/widget/ImageView;

.field private mSelectAllView:Landroid/widget/RelativeLayout;

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field protected mSendNowConfirmDialog:Landroid/content/DialogInterface;

.field private mSendNowDeliveryReport:Z

.field private mSendNowLocked:Z

.field private mSendNowReadReport:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field private mSendSimSlot:I

.field private mTargetDirectory:Ljava/lang/String;

.field private mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

.field private numberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPannerLabelCaleder()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c034c

    :goto_0
    sput v0, Lcom/android/mms/ui/MessageOptions;->sResIdRegisterCalendar:I

    sput-object v3, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    sput-object v3, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageOptions;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    sput-object v3, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    return-void

    :cond_0
    const v0, 0x7f0c034d

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mConversation:Lcom/android/mms/data/Conversation;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowDeliveryReport:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowReadReport:Z

    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachList:Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllDivider:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

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

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mTargetDirectory:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->LOW_STORAGE_THRESHOLD:J

    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iput-object p4, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mConversation:Lcom/android/mms/data/Conversation;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowDeliveryReport:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowReadReport:Z

    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachList:Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllDivider:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

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

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mTargetDirectory:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->LOW_STORAGE_THRESHOLD:J

    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sput-wide p4, Lcom/android/mms/ui/MessageOptions;->msgId:J

    sput-object p6, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    sput v3, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    new-instance v0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    const-string v0, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLaunchApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mConversation:Lcom/android/mms/data/Conversation;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowDeliveryReport:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowReadReport:Z

    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachList:Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllDivider:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

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

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mTargetDirectory:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->LOW_STORAGE_THRESHOLD:J

    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sput-wide p4, Lcom/android/mms/ui/MessageOptions;->msgId:J

    sput-object p6, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    sput p7, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    new-instance v0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    const-string v0, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLaunchApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mConversation:Lcom/android/mms/data/Conversation;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowDeliveryReport:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowReadReport:Z

    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachList:Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllDivider:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

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

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mTargetDirectory:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->LOW_STORAGE_THRESHOLD:J

    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sput-wide p4, Lcom/android/mms/ui/MessageOptions;->msgId:J

    sput-object p6, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iput-object p7, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    sput v3, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    new-instance v0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    const-string v0, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLaunchApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static MultipleCopyMessageToSIM(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;II)I
    .locals 19

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v14, 0x4

    :cond_1
    :goto_0
    return v14

    :cond_2
    const/4 v14, 0x1

    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    invoke-virtual/range {v18 .. v18}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MultipleCopyMessageToSIM] stime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/16 v6, 0x8

    invoke-virtual {v15, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const/16 v4, 0x9

    const/16 v6, 0xf

    invoke-virtual {v15, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MultipleCopyMessageToSIM] temp_date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MultipleCopyMessageToSIM] temp_date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timestamp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static/range {p6 .. p6}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v3

    :goto_1
    const/4 v10, 0x0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v5, ""

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_5

    const-string v4, "pref_key_manage_smsc_address_sim2"

    const-string v6, "Not Set"

    invoke-interface {v12, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    const/4 v4, 0x1

    if-le v10, v4, :cond_7

    const/4 v14, 0x5

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string v4, "pref_key_manage_smsc_address"

    const-string v6, "Not Set"

    invoke-interface {v12, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_6
    const-string v4, "pref_key_manage_smsc_address"

    const-string v6, "Not Set"

    invoke-interface {v12, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSP()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getSMSPAvailable()Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_8
    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MultipleCopyMessageToSIM] Copy Address : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MultipleCopyMessageToSIM] Copy body : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/SmsManager;->MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    const/4 v4, 0x1

    if-eq v13, v4, :cond_9

    const/4 v4, 0x2

    if-ne v13, v4, :cond_a

    :cond_9
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x3

    if-ne v13, v4, :cond_b

    const/4 v14, 0x3

    goto/16 :goto_0

    :cond_b
    if-nez v13, :cond_1

    const/4 v14, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const-string v4, "Mms/MessageOptions"

    const-string v6, "NumberFormatException :"

    invoke-static {v4, v6, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const v4, 0x7f0c001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions;->resendGroupSmsMessageItem(Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageOptions;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/MessageOptions;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageOptions;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/MessageOptions;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/MessageOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MessageOptions;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/MessageOptions;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MessageOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowDeliveryReport:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/MessageOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowDeliveryReport:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MessageOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowReadReport:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/mms/ui/MessageOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowReadReport:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/MessageOptions;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->resendSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mDragSelectedIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/MessageOptions;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mDragSelectedIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageOptions;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;

    return-object p1
.end method

.method private buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0xb

    if-ge p2, v1, :cond_1

    add-int/lit8 p2, p2, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private checkAvailableStorage()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->getAvailableStorage()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkCRForRawAttachment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "Raw Attachment"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Lcom/android/mms/ui/MessageOptions$FileEndWithFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".vmg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/MessageOptions$FileEndWithFilter;-><init>(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkMsgCount(J)I
    .locals 9

    const/4 v8, -0x1

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v8, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/mms/ui/MessageOptions;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v0, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMsgCount : retVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :catch_0
    move-exception v7

    const-string v0, "Mms/MessageOptions"

    const-string v2, "exception : NullPointerException @ forwardMessage"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static closeDeleteDialog()V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/MessageOptions"

    const-string v2, "Catch a IllegalArgumentException: "

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v3, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static closeDetailDialog()V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/MessageOptions"

    const-string v2, "Catch a IllegalArgumentException: "

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v3, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static closeDetailSpamDialog()V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/MessageOptions"

    const-string v2, "Catch a IllegalArgumentException: "

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v3, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private confirmCancelDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c012f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz p2, :cond_0

    const v1, 0x7f0c033c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const v1, 0x7f0c033b

    goto :goto_0
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz p2, :cond_0

    const v1, 0x7f0c0079

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c007c

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v1, 0x7f0c0078

    goto :goto_0
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0288

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c028b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private convertAddress(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v5, p2, p3}, Lcom/android/mms/ui/MessageUtils;->getViewTitleStrings(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v5, v2, -0x1

    if-eq v1, v5, :cond_1

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private createAttachmentDialog(ZJLjava/util/ArrayList;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;Z)V"
        }
    .end annotation

    new-instance v9, Lcom/android/mms/ui/AttachmentListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v3, 0x7f040021

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v9, v2, v3, v0, v1}, Lcom/android/mms/ui/AttachmentListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Z)V

    new-instance v11, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p5, :cond_0

    const v2, 0x7f0c0422

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040020

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    const v3, 0x7f0b004f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    const v3, 0x7f0b007a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    const v3, 0x7f0b0051

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    const v3, 0x7f0b0052

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllDivider:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachList:Landroid/widget/ListView;

    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachList:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEnableDragBlock(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/mms/ui/MessageOptions$4;

    invoke-direct {v3, p0, v9}, Lcom/android/mms/ui/MessageOptions$4;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/AttachmentListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTwMultiSelectedListener(Landroid/widget/AdapterView$OnTwMultiSelectedListener;)V

    if-nez p5, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllDivider:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/mms/ui/MessageOptions$5;

    invoke-direct {v3, p0, v9}, Lcom/android/mms/ui/MessageOptions$5;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/AttachmentListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_3

    if-eqz p5, :cond_2

    const v12, 0x7f0c0182

    new-instance v2, Lcom/android/mms/ui/MessageOptions$AttachOkListener;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object v3, p0

    move v5, p1

    move-wide v6, p2

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions$AttachOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJZ)V

    invoke-virtual {v11, v12, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_2
    const v2, 0x7f0c004e

    new-instance v3, Lcom/android/mms/ui/MessageOptions$AttachCancelListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/MessageOptions$AttachCancelListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageOptions$1;)V

    invoke-virtual {v11, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/mms/ui/MessageOptions$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageOptions$6;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    const/4 v2, -0x1

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/mms/ui/AttachmentListAdapter;->setSaveButton(Landroid/widget/Button;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v9, v2}, Lcom/android/mms/ui/AttachmentListAdapter;->setSelectAllCheckbox(Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    return-void

    :cond_0
    const v2, 0x7f0c011f

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllDivider:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const v12, 0x7f0c00e1

    new-instance v2, Lcom/android/mms/ui/MessageOptions$AttachOkListener;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object v3, p0

    move v5, p1

    move-wide v6, p2

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions$AttachOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJZ)V

    invoke-virtual {v11, v12, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_3
    const v8, 0x7f0c0028

    new-instance v2, Lcom/android/mms/ui/MessageOptions$AttachOkListener;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object v3, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/MessageOptions$AttachOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJ)V

    invoke-virtual {v11, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method private deleteFailedMsg(Lcom/android/mms/ui/MessageItem;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MessageOptions;->checkMsgCount(J)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-static {v5, v2, v3, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/data/Conversation;->clearThreadId(J)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    :cond_0
    const-string v5, "sms"

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6, v4, v8, v8}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v5, "mms"

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6, v4, v8, v8}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V
    .locals 12

    const-string v2, "Mms/MessageOptions"

    const-string v3, "forwardMessageStartActivityForMms()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "exit_on_sent"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "forwarded_message"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-direct {p0, v2, v3, v4}, Lcom/android/mms/ui/MessageOptions;->convertAddress(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    const-string v2, "recipients"

    invoke-virtual {v9, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "edit_message"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v2, "fromFolderView"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const/4 v11, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x0

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    const-string v2, "msg_uri"

    invoke-virtual {v9, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "subject"

    move-object/from16 v0, p4

    invoke-virtual {v9, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "IsSlide"

    invoke-virtual {v9, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "checkCRMode"

    move/from16 v0, p5

    invoke-virtual {v9, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "reserved"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "reservedTime"

    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-virtual {v9, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget v2, p1, Lcom/android/mms/ui/MessageItem;->mReserved:I

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "locked_message_list"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    if-nez p6, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuInsertSenderInfoWhenFwdMsg()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isInsertSenderInfoWhenFwdMsgEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/android/mms/ui/MessageUtils;->getSenderInformation(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string v2, "sender_information"

    invoke-virtual {v9, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v3, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->deleteFailedMsg(Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception v8

    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c003f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getAvailableStorage()J
    .locals 6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method private getCallableRecipient()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getFailedAddress(J)[Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "address"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    add-int/lit8 v7, v8, 0x1

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v8

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v10

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move v8, v7

    goto :goto_0
.end method

.method private getNameWithoutEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v2, 0xb

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\\"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "/"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, ":"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "*"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "?"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "\""

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "<"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, ">"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "|"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, ";"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "\n"

    aput-object v3, v0, v2

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    const-string v2, "\\\\"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[*]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[?]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[|]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v1, v1, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, v5, v5}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

    return-object v1
.end method

.method private getRecordFileName(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyMMdd_HHmm_S"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-wide v5, p1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/mms/ui/MessageOptions;->getNameWithoutEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/android/mms/ui/MessageOptions;->buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/MessageOptions;->checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/android/mms/ui/MessageOptions;->buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private hasBody()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasBody = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v4, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageItem;->getBodyAt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSingleSms(Lcom/android/mms/ui/MessageItem;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v3, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static isSingleSms(Lcom/android/mms/ui/MessageItem;I)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_1

    const-string v3, "Mms/MessageOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smsManager.divideMessage messages.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private islockmessage(Ljava/lang/String;)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string v4, "wpm"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v7, v0

    :cond_0
    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    const-string v4, "mms"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "locked"

    aput-object v4, v2, v0

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v4, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    const-wide/16 v3, 0x1

    cmp-long v0, v8, v3

    if-nez v0, :cond_2

    const/4 v7, 0x1

    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "locked"

    aput-object v4, v2, v0

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v4, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private launchOrMoveBackToComposerForReply()V
    .locals 8

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    const-string v5, "address"

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "requestLockedMessageView"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms.ui.ReplyMessageActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    const/high16 v5, 0x4000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static notifyFolderViewerClose()V
    .locals 1

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private openNewcomposerStartActivityForMms(Ljava/util/ArrayList;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    const v10, 0x7f0c002e

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v6, "Mms/MessageOptions"

    const-string v7, "openNewcomposerStartActivityForMms()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-class v7, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "add_recipient_message"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "sendto"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v2, :cond_0

    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v6, "msg_uri"

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v6, "subject"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v6, v8}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "sms_body"

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7, v8}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v6, "checkCRMode"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->hasOnlySignatureText()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->resetDraftMessage()V

    invoke-static {v9}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlideForCompose(Z)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/data/WorkingMessage;->saveDraft(ZZ)Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "Mms/MessageOptions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ExceedMessageSizeException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/mms/ExceedMessageSizeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6, v5, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showErrorPopup(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportAsSpam(Lcom/android/mms/ui/MessageItem;Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1, p2}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const-string v1, "7726"

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-static {p1, v1, v2, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->send()V

    return-void
.end method

.method public static reportAsSpamKor(Lcom/android/mms/ui/MessageItem;Landroid/app/Activity;)V
    .locals 5

    const-string v3, "Mms/MessageOptions"

    const-string v4, "reportAsSpamKor Start"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c04d1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c04d2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    new-instance v4, Lcom/android/mms/ui/MessageOptions$8;

    invoke-direct {v4, v2, v1}, Lcom/android/mms/ui/MessageOptions$8;-><init>(Lcom/android/mms/ui/MessageItem;Landroid/app/Activity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private resendFreeMessageFTItem(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V
    .locals 12

    const/4 v11, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Mms/MessageOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resendFreeMessageItem(),msgItem="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v5

    new-array v1, v11, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    aput-object v4, v1, v0

    new-instance v7, Lcom/android/mms/data/ContactList;

    invoke-direct {v7}, Lcom/android/mms/data/ContactList;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SKT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v4, "KT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v4, "LGU+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v4, "KOR_OPEN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/android/mms/util/TelephonyUtils;->checkCSAvailability(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageFtContentPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageFtContentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    invoke-virtual {v7, v8}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->convertToFreeMessage(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/data/WorkingMessage;->sendFileTansfer([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method private resendFreeMessageItem(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resendFreeMessageItem(),msgItem="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    new-array v2, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SKT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LGU+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KOR_OPEN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/android/mms/util/TelephonyUtils;->checkCSAvailability(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v8

    iget-boolean v9, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-virtual {v1, p2, v3, v8, v9}, Lcom/android/mms/data/WorkingMessage;->callasyncSendChat(Lcom/android/mms/data/Conversation;Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v3, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-wide v8, p1, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-virtual {v1, v3, v8, v9}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    move-object v1, v0

    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    :cond_6
    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send Chat message, threadId="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private resendGroupSmsMessageItem(Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    .locals 11

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSimSlot()I

    move-result v9

    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resendGroupSmsMessageItem(), mSimSlot ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-nez v1, :cond_2

    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGU+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KOR_OPEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/util/TelephonyUtils;->checkCSAvailability(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0, v9}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_5
    move-object v1, v0

    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PriorityLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    :cond_6
    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "type=5"

    const/4 v6, 0x0

    invoke-static {v1, v2, v10, v3, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V

    goto/16 :goto_1

    :catch_0
    move-exception v8

    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 20

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/mms/util/TelephonyUtils;->checkPSAvailability(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v16

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getSimSlot()I

    move-result v11

    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "m_size"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-long v12, v2

    const-wide/16 v18, 0x0

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    add-long v18, v18, v2

    goto :goto_1

    :cond_2
    cmp-long v2, v18, v12

    if-ltz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v3, 0x7f0c00e7

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    :cond_4
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->updatePendingStatus()V

    new-instance v15, Lcom/android/mms/transaction/MmsMessageSender;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    int-to-long v3, v3

    invoke-direct {v15, v2, v14, v3, v4}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v15, v11}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PriorityLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/mms/ui/MessageItem;->mMMSPriority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mMMSPriority:I

    invoke-interface {v15, v2}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    :cond_7
    :try_start_1
    invoke-interface/range {v15 .. v17}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v14, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private resendRcsMessageItem(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resendRcsMessageItem(),msgItem="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    new-array v2, v10, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SKT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LGU+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KOR_OPEN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v1, v10}, Lcom/android/mms/util/TelephonyUtils;->checkCSAvailability(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    move-object v1, v0

    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    :cond_3
    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v8, v11, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to send Chat message, threadId="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private resendSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resendSmsMessageItem(),msgItem="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    new-array v2, v10, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSimSlot()I

    move-result v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SKT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LGU+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KOR_OPEN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v1, v10}, Lcom/android/mms/util/TelephonyUtils;->checkCSAvailability(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v7}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PriorityLevel="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v9, p1, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    :cond_3
    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v3, v8, v11, v11}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to send SMS message, threadId="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private tryToResendGroupSms(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V
    .locals 16

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageOptions;->getFailedAddress(J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v9

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v4

    array-length v11, v7

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_2

    aget-object v13, v7, v10

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v13}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const-string v12, ""

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v2, 0x7f0c04f2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c018a

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    array-length v1, v4

    if-ne v9, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v2, 0x7f0c018d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    :cond_3
    invoke-virtual {v8, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v15, 0x7f0c018e

    new-instance v1, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    invoke-virtual {v8, v15, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0183

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private tryToResendSingleMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-ge v2, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c018a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v3, 0x7f0c04f2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c018e

    new-instance v3, Lcom/android/mms/ui/MessageOptions$ResendSingleMsgListener;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    invoke-direct {v3, p0, p1, p3, v4}, Lcom/android/mms/ui/MessageOptions$ResendSingleMsgListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c0183

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public ReplyAllMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mms/ui/MessageItem;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v5, 0x7f0c0033

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSubject()Z

    move-result v2

    if-eq v2, v4, :cond_2

    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "sendto"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "subject"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v2, "replyAll"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public SpamOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v6, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-string v6, "MDET"

    invoke-static {v4, v6}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v4, v7, v5}, Lcom/android/mms/ui/MessageOptions;->viewSpamMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    move v4, v5

    goto :goto_0

    :sswitch_1
    new-instance v1, Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;

    invoke-direct {v1, p0, v7}, Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageOptions$1;)V

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageOptions;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V

    move v4, v5

    goto :goto_0

    :sswitch_2
    const-string v6, "mms"

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/mms/util/DummyFramework$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v7, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    :goto_1
    new-instance v0, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;ZZ)V

    invoke-direct {p0, v0, v4}, Lcom/android/mms/ui/MessageOptions;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    move v4, v5

    goto :goto_0

    :cond_1
    const-string v6, "sms"

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/mms/util/DummyFramework$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v7, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v6, "ft"

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/mms/spam/SpamFilter;->SPAM_FREE_MESSAGE_FT_CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v6, "ft"

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/mms/spam/SpamFilter;->SPAM_RCS_FT_CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    :cond_4
    sget-object v6, Lcom/android/mms/spam/SpamFilter;->SPAM_FREE_MESSAGE_CONTENT_URI:Landroid/net/Uri;

    sget-wide v7, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    :sswitch_3
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->getSpamReport()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v6}, Lcom/android/mms/ui/MessageOptions;->reportAsSpamKor(Lcom/android/mms/ui/MessageItem;Landroid/app/Activity;)V

    :cond_5
    :goto_2
    move v4, v5

    goto/16 :goto_0

    :cond_6
    if-ne v2, v5, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0c04d0

    invoke-static {v6, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_2
        0x28 -> :sswitch_1
        0x31 -> :sswitch_3
    .end sparse-switch
.end method

.method public addChnRecomposeOption(Landroid/view/Menu;)V
    .locals 12

    const/16 v11, 0x6c

    const/16 v10, 0x2b

    const/16 v9, 0x2a

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v5, v5, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisableEasyModeForComposer()Z

    move-result v5

    if-nez v5, :cond_5

    move v1, v3

    :goto_0
    const-string v2, ""

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, v6, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ";"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    if-ne v5, v3, :cond_6

    aget-object v5, v0, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v5, v5, Lcom/android/mms/ui/MessageItem;->mReserved:I

    if-ne v5, v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-nez v1, :cond_1

    const/16 v5, 0xe

    const v6, 0x7f0c0092

    invoke-interface {p1, v3, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x7f0200f3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    aget-object v3, v0, v4

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v3, :cond_2

    const v3, 0x7f0c0005

    invoke-interface {p1, v4, v9, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x7f0200ec

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v5

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->getEnableVideoCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v3, :cond_3

    const v3, 0x7f0c023c

    invoke-interface {p1, v4, v10, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x7f02010f

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3
    aget-object v3, v0, v4

    iput-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    :cond_4
    :goto_1
    return-void

    :cond_5
    move v1, v4

    goto/16 :goto_0

    :cond_6
    array-length v5, v0

    if-le v5, v3, :cond_4

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v3, :cond_4

    const v3, 0x7f0c0026

    invoke-interface {p1, v4, v11, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200ed

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method public confirmRegisterAsSpamNumber()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c03ed

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c03ef

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessageOptions$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageOptions$7;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public copyMessageToSDCARD(Lcom/android/mms/ui/MessageItem;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/ui/MessageOptions;->writeFile(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00a0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0278

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;I)V
    .locals 32

    const-string v6, "Mms/MessageOptions"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "copyMessageToSIM(),msgItem="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0c033d

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-wide/from16 v24, v0

    new-instance v27, Landroid/text/format/Time;

    invoke-direct/range {v27 .. v27}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    invoke-virtual/range {v27 .. v27}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v6, "Mms/MessageOptions"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "stime : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x2

    const/16 v28, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    const/16 v6, 0x9

    const/16 v28, 0xf

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    const-string v6, "Mms/MessageOptions"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "temp_date : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Mms/MessageOptions"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "temp_date : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v6, "Mms/MessageOptions"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "timestamp : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v5, ""

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    move/from16 v0, p3

    if-ne v0, v6, :cond_4

    const-string v6, "pref_key_manage_smsc_address_sim2"

    const-string v28, "Not Set"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Not Set"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/mms/util/TelephonyUtils;->getSmsc(Landroid/content/SharedPreferences;I)Ljava/lang/String;

    move-result-object v5

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    if-nez v5, :cond_7

    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0c001a

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    const-string v6, "pref_key_manage_smsc_address"

    const-string v28, "Not Set"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    const-string v6, "pref_key_manage_smsc_address"

    const-string v28, "Not Set"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "Not Set"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_6
    invoke-static/range {v18 .. v18}, Lcom/android/mms/util/TelephonyUtils;->getSmsc(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static/range {p3 .. p3}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v3

    :goto_2
    invoke-virtual {v3, v4}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/4 v6, 0x1

    move/from16 v0, v16

    if-le v0, v6, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0c001a

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSP()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getSMSPAvailable()Z

    move-result v6

    if-nez v6, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0c001a

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_a
    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz p2, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v12

    :goto_3
    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0c001b

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_b
    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v12, v6

    goto :goto_3

    :cond_c
    const/16 v26, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    array-length v6, v12

    if-ge v15, v6, :cond_10

    :try_start_0
    aget-object v6, v12, v15

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    aget-object v6, v12, v15

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0c001b

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v13

    const-string v6, "Mms/MessageOptions"

    const-string v28, "NumberFormatException :"

    move-object/from16 v0, v28

    invoke-static {v6, v0, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0c001b

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_e
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_f
    :try_start_1
    aget-object v6, v12, v15

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/SmsManager;->MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v19

    const-string v6, "Mms/MessageOptions"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "copyMessageToSIM() i="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " result="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v19, :cond_e

    const/4 v6, 0x3

    move/from16 v0, v19

    if-ne v0, v6, :cond_13

    array-length v6, v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    sub-int/2addr v6, v15

    add-int/2addr v14, v6

    move/from16 v26, v19

    :cond_10
    :goto_6
    const-string v6, "Mms/MessageOptions"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "copyMessageToSIM() totalResult="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move/from16 v0, p3

    invoke-static {v6, v0}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    if-nez v26, :cond_16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v28, 0x7f0c019e

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v6

    const/16 v28, 0x1

    move/from16 v0, v28

    if-le v6, v0, :cond_12

    :cond_11
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "SIM"

    invoke-virtual {v9, v6, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-static {v6, v9, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_13
    const/4 v6, 0x1

    move/from16 v0, v19

    if-eq v0, v6, :cond_14

    const/4 v6, 0x2

    move/from16 v0, v19

    if-ne v0, v6, :cond_15

    :cond_14
    move/from16 v26, v19

    goto :goto_6

    :cond_15
    move/from16 v26, v19

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    :cond_16
    const/4 v6, 0x1

    move/from16 v0, v26

    if-eq v0, v6, :cond_17

    const/4 v6, 0x2

    move/from16 v0, v26

    if-ne v0, v6, :cond_1c

    :cond_17
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x2

    move/from16 v0, v26

    if-ne v0, v6, :cond_1a

    const v6, 0x7f0c0186

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v6

    if-eqz v6, :cond_19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0c0091

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v28, " "

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0c0335

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    const-string v29, "SIM"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_18
    :goto_7
    const v6, 0x7f0c0182

    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v10, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0c0091

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v28, " "

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0c0335

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_7

    :cond_1a
    const/4 v6, 0x1

    move/from16 v0, v26

    if-ne v0, v6, :cond_18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v6

    if-eqz v6, :cond_1b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v28, 0x7f0c041b

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v28, "SIM"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v28, 0x7f0c0336

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v28, "SIM"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_7

    :cond_1b
    const v6, 0x7f0c041b

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v28, 0x7f0c0336

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_7

    :cond_1c
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    array-length v6, v12

    sub-int v21, v6, v14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v28, 0x7f0c018f

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v28, "SIM"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-nez v21, :cond_1d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v28, 0x7f0c0190

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v28, "SIM"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_8
    const v6, 0x7f0c0182

    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v10, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v28, 0x7f0c0192

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v28, "SIM"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    :cond_1e
    const v6, 0x7f0c018f

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    if-nez v21, :cond_1f

    const v6, 0x7f0c0190

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    :cond_1f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v28, 0x7f0c0192

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_8
.end method

.method public createOptionsMenu(Landroid/view/Menu;)V
    .locals 14

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisableEasyModeForComposer()Z

    move-result v9

    if-nez v9, :cond_e

    const/4 v3, 0x1

    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v9, v9, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v9, v9, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v9, v9, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    const/16 v10, 0x20

    const/4 v11, 0x0

    const v12, 0x7f0c0094

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020103

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const v12, 0x7f0c0093

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020104

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x1

    const/16 v10, 0x26

    const/4 v11, 0x0

    const v12, 0x7f0c02eb

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020109

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v9, 0x1

    const/16 v10, 0x27

    const/4 v11, 0x0

    const v12, 0x7f0c02ec

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200cc

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_4
    const/16 v9, 0x2a

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    if-nez v9, :cond_9

    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->getCallableRecipient()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/mms/util/TelephonyUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVoLTECallIcon()Z

    move-result v9

    if-eqz v9, :cond_10

    new-instance v6, Lcom/android/mms/VoLTEStateTracker;

    invoke-direct {v6}, Lcom/android/mms/VoLTEStateTracker;-><init>()V

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Lcom/android/mms/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v9, 0x0

    const/16 v10, 0x2a

    const/4 v11, 0x0

    const v12, 0x7f0c0005

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0b0011

    invoke-static {v10}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_5
    :goto_2
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/mms/MmsConfig;->getEnableVideoCall(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    const/16 v10, 0x2b

    const/4 v11, 0x0

    const v12, 0x7f0c023c

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02010f

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v9

    const-string v10, "LGU+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isLGUUsim()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->isUltraPowerSavingMode()Z

    move-result v9

    if-nez v9, :cond_7

    const/4 v9, 0x0

    const/16 v10, 0x2f

    const/4 v11, 0x0

    const v12, 0x7f0c0006

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ec

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SKT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/android/mms/util/TelephonyUtils;->isSKTSIM(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    const/16 v10, 0x30

    const/4 v11, 0x0

    const v12, 0x7f0c04c4

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ec

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v9

    const-string v10, "KT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKTSIM()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnableKTShowMe()Z

    move-result v9

    if-nez v9, :cond_11

    const/4 v9, 0x0

    const/16 v10, 0x30

    const/4 v11, 0x0

    const v12, 0x7f0c04c5

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ec

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_9
    :goto_3
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v9, v9, Lcom/android/mms/ui/MessageItem;->mReserved:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_a

    const/4 v9, 0x1

    const/16 v10, 0x12

    const/4 v11, 0x0

    const v12, 0x7f0c042a

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020008

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_a
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-string v10, "com.android.contacts"

    invoke-static {v9, v10}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    sget-object v10, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    :cond_b
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v9

    if-eqz v9, :cond_12

    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v9, 0x80000

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v9, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_c

    sget-object v9, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_c
    const/4 v9, 0x0

    const/16 v10, 0x1a

    const/4 v11, 0x0

    const v12, 0x7f0c004a

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ed

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :cond_d
    :goto_4
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v9, v9, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v9, :cond_13

    const/4 v9, 0x1

    const/16 v10, 0x12

    const/4 v11, 0x0

    const v12, 0x7f0c042a

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020008

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_f
    const/4 v9, 0x0

    const/16 v10, 0x2a

    const/4 v11, 0x0

    const v12, 0x7f0c0005

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ec

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_2

    :cond_10
    const/4 v9, 0x0

    const/16 v10, 0x2a

    const/4 v11, 0x0

    const v12, 0x7f0c0005

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ec

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_2

    :cond_11
    const/4 v9, 0x0

    const/16 v10, 0x30

    const/4 v11, 0x0

    const v12, 0x7f0c04c6

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ec

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_12
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/data/Contact;

    invoke-virtual {v9}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v9, 0x0

    const/16 v10, 0x1b

    const/4 v11, 0x0

    const v12, 0x7f0c004b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ea

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_13
    if-nez v3, :cond_14

    sget-object v9, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/mms/ui/MessageOptions;->islockmessage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v9, 0x1

    const/16 v10, 0x1d

    const/4 v11, 0x0

    const v12, 0x7f0c042d

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02010b

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_14
    :goto_5
    if-nez v3, :cond_16

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v9

    if-eqz v9, :cond_18

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_16

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v9

    if-nez v9, :cond_15

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v9

    if-eqz v9, :cond_16

    :cond_15
    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    const v12, 0x7f0c042b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ef

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_16
    :goto_6
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v9, v9, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1a

    const/4 v9, 0x1

    const/16 v10, 0x12

    const/4 v11, 0x0

    const v12, 0x7f0c042a

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020008

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    const v12, 0x7f0c042b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ef

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_17
    const/4 v9, 0x1

    const/16 v10, 0x1c

    const/4 v11, 0x0

    const v12, 0x7f0c042c

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200f9

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_5

    :cond_18
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v10, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/MessageItem;->getBodyAt(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_16

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v9

    if-nez v9, :cond_19

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v9

    if-eqz v9, :cond_16

    :cond_19
    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    const v12, 0x7f0c042b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ef

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_6

    :cond_1a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v9

    if-eqz v9, :cond_1d

    sget v9, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1b

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1b

    const/4 v9, 0x1

    const/16 v10, 0x12

    const/4 v11, 0x0

    const v12, 0x7f0c042a

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020008

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_1b
    const-string v9, "wpm"

    sget-object v10, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v9, 0x1

    const/16 v10, 0x12

    const/4 v11, 0x0

    const v12, 0x7f0c042a

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020008

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    const v12, 0x7f0c042b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ef

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_1c
    sget v9, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1d

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_1d

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1d

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v9, v9, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v10, 0x82

    if-ne v9, v10, :cond_1d

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v9

    if-nez v9, :cond_1d

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v10, v10, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v9

    const/16 v10, 0x81

    if-eq v9, v10, :cond_1d

    const/4 v9, 0x0

    const/16 v10, 0x25

    const/4 v11, 0x0

    const v12, 0x7f0c0013

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200f1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1d
    const-string v9, "wpm"

    sget-object v10, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v9, 0x1

    const/16 v10, 0x12

    const/4 v11, 0x0

    const v12, 0x7f0c042a

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020008

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    const v12, 0x7f0c042b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ef

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v9

    if-eqz v9, :cond_1f

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageOptions;->addChnRecomposeOption(Landroid/view/Menu;)V

    :cond_1f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v9

    if-eqz v9, :cond_20

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v9}, Lcom/android/mms/util/TelephonyUtils;->isEnableLinkUrlService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/4 v9, 0x0

    const/16 v10, 0x2e

    const/4 v11, 0x0

    const v12, 0x7f0c01a4

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200f8

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_20
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v9

    if-nez v9, :cond_21

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_23

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v9

    if-eqz v9, :cond_23

    :cond_21
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v9

    if-eqz v9, :cond_22

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v9}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v9

    if-nez v9, :cond_23

    :cond_22
    const/4 v9, 0x1

    const/16 v10, 0x15

    const/4 v11, 0x0

    const v12, 0x7f0c0012

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200f4

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_23
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v9

    if-eqz v9, :cond_2a

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v9, v9, Lcom/android/mms/ui/MessageItem;->mReserved:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v9

    if-eqz v9, :cond_24

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v9}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v9

    if-nez v9, :cond_2a

    :cond_24
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v9

    if-eqz v9, :cond_25

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDelaySending()Z

    move-result v9

    if-nez v9, :cond_2a

    :cond_25
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_26

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2a

    :cond_26
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/android/mms/util/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2a

    if-nez v3, :cond_2a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v9

    if-nez v9, :cond_28

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v9

    const/4 v10, 0x1

    if-gt v9, v10, :cond_28

    :cond_27
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v9

    if-nez v9, :cond_28

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSOnechipOnQCOM()Z

    move-result v9

    if-eqz v9, :cond_33

    :cond_28
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/mms/util/TelephonyUtils;->isSimReady(I)Z

    move-result v9

    if-eqz v9, :cond_29

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;I)Z

    move-result v9

    if-eqz v9, :cond_29

    const/4 v9, 0x1

    const/16 v10, 0x1f

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/mms/ui/MessageUtils;->getCopyToSimMenuName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_29
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/mms/util/TelephonyUtils;->isSimReady(I)Z

    move-result v9

    if-eqz v9, :cond_2a

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;I)Z

    move-result v9

    if-eqz v9, :cond_2a

    const/4 v9, 0x1

    const/16 v10, 0x5a

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/mms/ui/MessageUtils;->getCopyToSimMenuName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_2a
    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveVMessage()Z

    move-result v9

    if-eqz v9, :cond_2c

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v9}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isExternalSdCardMounted()Z

    move-result v9

    if-eqz v9, :cond_2c

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v9, v9, Lcom/android/mms/ui/MessageItem;->mReserved:I

    if-nez v9, :cond_2c

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2b

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2c

    :cond_2b
    if-nez v3, :cond_2c

    const/4 v9, 0x0

    const/16 v10, 0x21

    const/4 v11, 0x0

    const v12, 0x7f0c0276

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020106

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2c
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplyAll()Z

    move-result v9

    if-eqz v9, :cond_2d

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v9

    if-eqz v9, :cond_2d

    if-nez v3, :cond_2d

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v11, p0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    invoke-static {v9, v10, v11}, Lcom/android/mms/ui/MessageUtils;->getReplyAllCount(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/4 v9, 0x1

    const/16 v10, 0x24

    const/4 v11, 0x0

    const v12, 0x7f0c01ab

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020103

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRegisterCalendar()Z

    move-result v9

    if-eqz v9, :cond_2e

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v9

    if-eqz v9, :cond_2e

    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->hasBody()Z

    move-result v9

    if-eqz v9, :cond_2e

    invoke-static {}, Lcom/android/mms/MmsConfig;->isUltraPowerSavingMode()Z

    move-result v9

    if-nez v9, :cond_2e

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v9

    if-nez v9, :cond_2e

    if-nez v3, :cond_2e

    const/4 v9, 0x0

    const/16 v10, 0x22

    const/4 v11, 0x0

    sget v12, Lcom/android/mms/ui/MessageOptions;->sResIdRegisterCalendar:I

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020119

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2e
    if-nez v3, :cond_2f

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_2f

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v9, v9, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v9, :cond_34

    const/4 v9, 0x0

    const/16 v10, 0x23

    const/4 v11, 0x0

    const v12, 0x7f0c011f

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020105

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisableSaveRingtone()Z

    move-result v9

    if-eqz v9, :cond_2f

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v10, v10, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v9, v10, v11}, Lcom/android/mms/ui/MessageUtils;->isDrmRingtoneWithRights(Landroid/content/Context;J)Z

    move-result v9

    if-eqz v9, :cond_2f

    const/4 v9, 0x0

    const/16 v10, 0x2d

    const/4 v11, 0x0

    const v12, 0x7f0c035b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020105

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2f
    :goto_8
    if-nez v3, :cond_30

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v9

    if-nez v9, :cond_30

    const/4 v9, 0x0

    const/16 v10, 0x11

    const/4 v11, 0x0

    const v12, 0x7f0c000e

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200f6

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_30
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v9

    if-eqz v9, :cond_31

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v9

    if-eqz v9, :cond_31

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v9

    if-eqz v9, :cond_35

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v9, v9, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_31

    const/4 v9, 0x1

    const/16 v10, 0x29

    const/4 v11, 0x0

    const v12, 0x7f0c02b7

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200eb

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_31
    :goto_9
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v9

    if-eqz v9, :cond_32

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v9

    if-eqz v9, :cond_32

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_32

    const/4 v9, 0x0

    const/16 v10, 0x31

    const/4 v11, 0x0

    const v12, 0x7f0c04d1

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ff

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_32
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v9, p1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_33
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v9

    if-eqz v9, :cond_2a

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_2a

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v9}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v9

    if-eqz v9, :cond_2a

    const/4 v9, 0x1

    const/16 v10, 0x1f

    const/4 v11, 0x0

    const v12, 0x7f0c0019

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200f0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_7

    :cond_34
    :try_start_0
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v11, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    if-eqz v8, :cond_2f

    const/4 v9, 0x0

    const/16 v10, 0x23

    const/4 v11, 0x0

    const v12, 0x7f0c011f

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v9

    goto/16 :goto_8

    :cond_35
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v9, v9, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_31

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v9, v9, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_31

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v10, v10, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/mms/ui/MessageUtils;->SpamNumberisAlreadInUse(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36

    const/4 v9, 0x0

    const/16 v10, 0x2c

    const/4 v11, 0x0

    const v12, 0x7f0c03f4

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02010d

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_9

    :cond_36
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v9, v9, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-nez v9, :cond_31

    const/4 v9, 0x1

    const/16 v10, 0x29

    const/4 v11, 0x0

    const v12, 0x7f0c03ed

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ff

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_9
.end method

.method public createSpamOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/16 v0, 0x28

    const v1, 0x7f0c0288

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v0, 0x12

    const v1, 0x7f0c042a

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020008

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v0, 0x11

    const v1, 0x7f0c000e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200f6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x31

    const v1, 0x7f0c04d1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ff

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public finishViewerCheckFolderViewMode()V
    .locals 4

    const/4 v3, 0x2

    const-string v0, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishViewerCheckFolderViewMode(), mLaunchApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    if-eq v0, v3, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/MmsSinglePageActivity;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SmsViewerActivity;

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/MmsSinglePageActivity;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SmsViewerActivity;

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/BoxListViewActivity;

    if-eqz v0, :cond_6

    const-string v0, "Mms/MessageOptions"

    const-string v1, "finishViewerCheckFolderViewMode()[1] BoxListViewActivity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    if-eqz v0, :cond_7

    const-string v0, "Mms/MessageOptions"

    const-string v1, "finishViewerCheckFolderViewMode()[2] SlideshowActivity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_7
    const-string v0, "Mms/MessageOptions"

    const-string v1, "finishViewerCheckFolderViewMode()[3]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public forwardMessage(ZLcom/android/mms/ui/MessageItem;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Ljava/lang/Runnable;)V

    return-void
.end method

.method public forwardMessage(ZLcom/android/mms/ui/MessageItem;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public forwardMessage(ZLcom/android/mms/ui/MessageItem;Ljava/lang/Runnable;Z)V
    .locals 34

    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forwardMessage(),IsSlideshow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgItem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exitRunnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", editMsg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlideForCompose(Z)V

    const-string v2, "mms"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_7

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getAttachmentType()I

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v2

    if-nez v2, :cond_7

    const/16 v20, 0x1

    :goto_0
    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to forward as SMS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mms"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    if-nez v20, :cond_19

    new-instance v5, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v5}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v26

    const-string v2, "pref_key_mms_add_subject_field"

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSubjectConcept4Korea()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v21, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSubject()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_8

    const-string v6, ""

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v24

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLimitOnMmsSubjectByByte()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LGU+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v33, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move/from16 v0, v24

    invoke-static {v2, v0}, Lcom/android/mms/util/StringUtils;->cutUtf8ByEucByte([BI)[B

    move-result-object v2

    move-object/from16 v0, v33

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v6, v33

    :cond_2
    :goto_3
    if-eqz v6, :cond_3

    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v2, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {v5, v2}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_4
    const/16 v29, 0x0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_12

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/mms/model/SlideModel;

    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_6
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/mms/model/MediaModel;

    :try_start_0
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, v25

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    check-cast v25, Lcom/android/mms/model/ImageModel;

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_4

    :catch_0
    move-exception v15

    const/16 v29, -0x3

    goto :goto_4

    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0032

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_a

    const-string v6, ""

    :goto_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0032

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_b
    new-instance v33, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move/from16 v0, v24

    invoke-static {v2, v0}, Lcom/android/mms/util/StringUtils;->cutUtf8ByByte([BI)[B

    move-result-object v2

    move-object/from16 v0, v33

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v6, v33

    goto/16 :goto_3

    :cond_c
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v24

    if-le v2, v0, :cond_2

    const/4 v2, 0x0

    move/from16 v0, v24

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :cond_d
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, v25

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    check-cast v25, Lcom/android/mms/model/AudioModel;

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto/16 :goto_4

    :catch_1
    move-exception v15

    const/16 v29, -0x2

    goto/16 :goto_4

    :cond_e
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v25

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    check-cast v25, Lcom/android/mms/model/VideoModel;

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V
    :try_end_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_4

    :catch_2
    move-exception v15

    const/16 v29, -0x4

    goto/16 :goto_4

    :catch_3
    move-exception v15

    const/16 v29, -0x5

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v0, v10, :cond_12

    :try_start_2
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/x-vNote"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/x-vtodo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->checkCRForRawAttachment()V
    :try_end_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_11
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    :catch_4
    move-exception v15

    const/16 v29, -0x3

    goto :goto_7

    :catch_5
    move-exception v15

    const/16 v29, -0x2

    goto :goto_7

    :catch_6
    move-exception v15

    const/16 v29, -0x4

    goto :goto_7

    :catch_7
    move-exception v15

    const/16 v29, -0x5

    goto :goto_7

    :cond_12
    const/4 v2, -0x5

    move/from16 v0, v29

    if-eq v0, v2, :cond_13

    const/4 v2, -0x4

    move/from16 v0, v29

    if-ne v0, v2, :cond_18

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v13

    const/4 v2, 0x1

    if-ne v13, v2, :cond_15

    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0081

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c012d

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0c004d

    new-instance v2, Lcom/android/mms/ui/MessageOptions$CreationOkListener;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/MessageOptions$CreationOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v12, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c004e

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_14
    :goto_8
    return-void

    :cond_15
    if-nez v13, :cond_17

    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x4

    move/from16 v0, v29

    if-ne v0, v2, :cond_16

    const v2, 0x7f0c002c

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_9
    const v2, 0x7f0c0134

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_8

    :cond_16
    const v2, 0x7f0c00fa

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_9

    :cond_17
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p1

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V

    if-eqz p3, :cond_14

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-wide/16 v3, 0x5dc

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    :cond_18
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p1

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V

    if-eqz p3, :cond_14

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-wide/16 v3, 0x5dc

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    :cond_19
    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "exit_on_sent"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "forwarded_message"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1d

    const-string v2, "sms_body"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    const-string v3, "history_searchView"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/MmsApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v2, "FromSearchView"

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "FromNestedSearchActivity"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/mms/ui/ConversationComposer;

    if-nez v2, :cond_1b

    const/high16 v2, 0x10000000

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1b
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_24

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/MessageOptions;->getFailedAddress(J)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_14

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v14

    array-length v0, v9

    move/from16 v22, v0

    const/16 v17, 0x0

    :goto_b
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_21

    aget-object v27, v9, v17

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, ", "

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    :cond_1d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsForwardPrefix()Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "sms_body"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0c0032

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a

    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuInsertSenderInfoWhenFwdMsg()Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isInsertSenderInfoWhenFwdMsgEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/android/mms/ui/MessageUtils;->getSenderInformation(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_1f

    const-string v2, "sms_body"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a

    :cond_1f
    const-string v2, "sms_body"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a

    :cond_20
    const-string v2, "sms_body"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a

    :cond_21
    const-string v2, "recipients"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_c
    const-string v2, "edit_message"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "reserved"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "reservedTime"

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_22
    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    const-string v2, "fromFolderView"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageOptions;->deleteFailedMsg(Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_25

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mReserved:I

    int-to-long v2, v2

    const-wide/16 v7, 0x1

    cmp-long v2, v2, v7

    if-nez v2, :cond_26

    :cond_25
    const-string v2, "locked_message_list"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-string v3, "com.android.mms.ui.ForwardMessageActivity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    if-eqz p3, :cond_14

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-wide/16 v3, 0x5dc

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_8

    :cond_27
    const-string v2, "recipients"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_c
.end method

.method public forwardMessage(ZLcom/android/mms/ui/MessageItem;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public forwardMessageWithCloseComposer(Lcom/android/mms/ui/ComposeMessageFragment;ZLcom/android/mms/ui/MessageItem;)V
    .locals 1

    new-instance v0, Lcom/android/mms/ui/MessageOptions$2;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/MessageOptions$2;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentSlideLocation()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    return v0
.end method

.method public isPlayerStop(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 7

    const/4 v3, 0x1

    const-string v4, "Mms/MessageOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lockMessage(),msgItem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",locked="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sms"

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean p2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    :cond_0
    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "locked"

    if-eqz p2, :cond_8

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/MessageOptions$3;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/mms/ui/MessageOptions$3;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Landroid/content/ContentValues;)V

    const-string v5, "lockMessage"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    const-string v4, "mms"

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v1, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v1, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v1, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isRcsFt()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v1, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public openNewComposer(Ljava/util/ArrayList;ZJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v1, "Mms/MessageOptions"

    const-string v2, "openNewComposer"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-nez v1, :cond_0

    const-string v1, "Mms/MessageOptions"

    const-string v2, "openNewComposer mWorkingMessage is null."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v3, p2}, Lcom/android/mms/ui/MessageOptions;->openNewcomposerStartActivityForMms(Ljava/util/ArrayList;ZZ)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "add_recipient_message"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sendto"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "reservationtime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "sms_body"

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v3}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->resetDraftMessage()V

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v3}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public optionItemSelected(Landroid/view/MenuItem;)Z
    .locals 21

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v14, :cond_0

    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    const/4 v14, 0x0

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v14

    if-eqz v14, :cond_4

    sget v14, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-wide/16 v15, 0x0

    invoke-static/range {v14 .. v16}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v5

    const-string v14, "address"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v15, v15, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->finish()V

    :goto_1
    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    sget v14, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_2

    sget v14, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-wide/16 v15, 0x0

    invoke-static/range {v14 .. v16}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v5

    const-string v14, "address"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v15, v15, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "exit_on_sent"

    const/4 v15, 0x1

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v14, "fromFolderView"

    const/4 v15, 0x1

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v14, "replyComposer"

    const/4 v15, 0x1

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->launchOrMoveBackToComposerForReply()V

    goto :goto_1

    :cond_4
    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/mms/ui/MessageOptions;->sReplyLaunched:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->launchOrMoveBackToComposerForReply()V

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v14

    if-eqz v14, :cond_7

    sget v14, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mConversation:Lcom/android/mms/data/Conversation;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v14, v14, Lcom/android/mms/ui/BoxListViewActivity;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v14, Lcom/android/mms/ui/BoxListViewActivity;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/mms/ui/BoxListViewActivity;->notifyBoxDataChanged(Z)V

    :cond_5
    :goto_2
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mConversation:Lcom/android/mms/data/Conversation;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v14

    if-eqz v14, :cond_9

    const-string v14, "mms"

    sget-object v15, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/android/mms/util/TelephonyUtils;->checkPSAvailability(Landroid/content/Context;Z)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/android/mms/util/TelephonyUtils;->checkCSAvailability(Landroid/content/Context;Z)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mConversation:Lcom/android/mms/data/Conversation;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    goto :goto_2

    :sswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/util/UIUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MessageItem;->getBodyAt(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/util/UIUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :sswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mConversation:Lcom/android/mms/data/Conversation;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;I)V

    :cond_b
    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mConversation:Lcom/android/mms/data/Conversation;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;I)V

    :cond_c
    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSDCARD(Lcom/android/mms/ui/MessageItem;)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v14

    if-eqz v14, :cond_e

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v14, v14, Lcom/android/mms/ui/SlideshowActivity;

    if-eqz v14, :cond_d

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14, v15}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Z)V

    :goto_5
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v6, 0x0

    goto :goto_4

    :cond_e
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;)V

    goto :goto_5

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-string v15, "MDET"

    invoke-static {v14, v15}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/mms/ui/MessageOptions;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_8
    sget-object v14, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mms/ui/MessageOptions;->islockmessage(Ljava/lang/String;)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v14, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v14}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v14

    if-eqz v14, :cond_f

    sget-object v14, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v15

    invoke-static/range {v14 .. v16}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    :cond_f
    new-instance v9, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13, v8, v14}, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;ZZ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/android/mms/ui/MessageOptions;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v14, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v15, 0x1

    sget-wide v16, Lcom/android/mms/ui/MessageOptions;->msgId:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/android/mms/ui/MessageOptions;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v15, v15, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Lcom/android/mms/ui/MessageUtils;->saveRingtone(Landroid/content/Context;J)Z

    move-result v17

    invoke-static/range {v14 .. v17}, Lcom/android/mms/ui/MessageUtils;->getDrmMimeSavedStringRsrc(Landroid/content/Context;JZ)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const/4 v15, 0x0

    invoke-static {v14, v10, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/mms/ui/MessageOptions;->ReplyAllMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-string v15, "LOCM"

    invoke-static {v14, v15}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/MessageOptions;->setLockIcon(Z)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/MessageOptions;->setLockIcon(Z)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_e
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const/16 v15, 0x1b

    invoke-virtual {v14, v5, v15}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_f
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_10
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v15, 0x7f0c014a

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    invoke-static {v14, v11, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    :goto_6
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v15, v15, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/android/mms/util/DownloadManager;->Isexpired(Landroid/net/Uri;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_11

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v15, v15, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/android/mms/util/DownloadManager;->markExpriedState(Landroid/net/Uri;)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v14

    if-nez v14, :cond_12

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v14

    if-eqz v14, :cond_14

    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v14

    if-nez v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v14}, Lcom/android/mms/ui/MessageItem;->getSimSlot()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_14

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v15, Lcom/android/mms/transaction/TransactionServiceSecondary;

    invoke-direct {v5, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v14

    if-eqz v14, :cond_13

    const-string v14, "sim-slot"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->getSimSlot()I

    move-result v15

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_13
    const-string v14, "uri"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v15, v15, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "type"

    const/4 v15, 0x1

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_6

    :cond_14
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v15, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v5, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_7

    :sswitch_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v14

    if-eqz v14, :cond_15

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v14, v14, Lcom/android/mms/ui/SlideshowActivity;

    if-eqz v14, :cond_16

    const/4 v6, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14, v15}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Z)V

    :cond_15
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v6, 0x0

    goto :goto_8

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v14, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v14

    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v14, v4}, Lcom/android/mms/ui/MessageUtils;->createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;)V

    :goto_9
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->confirmRegisterAsSpamNumber()V

    goto :goto_9

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v14, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/ui/MessageUtils;->unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v15, 0x7f0c03f1

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    :cond_18
    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_14
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v15, 0x7f0c012e

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0c02ed

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "%s"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    invoke-static/range {v17 .. v20}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x7f0c004d

    new-instance v16, Lcom/android/mms/ui/MessageOptions$SendNowListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageOptions$SendNowListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x7f0c004e

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    sget-object v15, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mSendNowConfirmDialog:Landroid/content/DialogInterface;

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_15
    sget-object v14, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mms/ui/MessageOptions;->islockmessage(Ljava/lang/String;)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v14, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v14}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v14

    if-eqz v14, :cond_1a

    sget-object v14, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v15

    invoke-static/range {v14 .. v16}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    :cond_19
    :goto_a
    new-instance v9, Lcom/android/mms/ui/MessageOptions$CancelMessageListener;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13, v8}, Lcom/android/mms/ui/MessageOptions$CancelMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/android/mms/ui/MessageOptions;->confirmCancelDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v14, v14, Lcom/android/mms/ui/MessageItem;->mReserved:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_19

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v14

    if-eqz v14, :cond_19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v14}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v14

    if-eqz v14, :cond_19

    sget-object v14, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->URI_SCHEDULED_IM:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v15

    invoke-static/range {v14 .. v16}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    goto :goto_a

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1b
    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/mms/ui/MessageUtils;->makeVideoCall(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1c
    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/mms/ui/MessageUtils;->makePhotoringCall(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1d
    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/mms/ui/MessageUtils;->launchCallMessagePopup(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1e
    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_1a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRegisterCalendar()Z

    move-result v14

    if-eqz v14, :cond_1f

    const-string v3, ""

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v14

    if-eqz v14, :cond_20

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v14}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v3

    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v14, v3}, Lcom/android/mms/ui/MessageUtils;->registerToCalendar(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v14, "Mms/MessageOptions"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "register calendar,len = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    invoke-virtual {v14, v15}, Lcom/android/mms/ui/MessageItem;->getBodyAt(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :sswitch_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v14

    if-eqz v14, :cond_21

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v14}, Lcom/android/mms/util/TelephonyUtils;->isEnableLinkUrlService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v14

    if-eqz v14, :cond_21

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v14, v15}, Lcom/android/mms/util/TelephonyUtils;->connectSpecificTidService(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)V

    :cond_21
    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v14}, Lcom/android/mms/ui/MessageItem;->getSpamReport()I

    move-result v7

    if-nez v7, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v14, v15}, Lcom/android/mms/ui/MessageOptions;->reportAsSpamKor(Lcom/android/mms/ui/MessageItem;Landroid/app/Activity;)V

    :cond_22
    :goto_c
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_23
    const/4 v14, 0x1

    if-ne v7, v14, :cond_22

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v15, 0x7f0c04d0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto :goto_c

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_11
        0x11 -> :sswitch_7
        0x12 -> :sswitch_8
        0x15 -> :sswitch_6
        0x18 -> :sswitch_2
        0x1a -> :sswitch_f
        0x1b -> :sswitch_e
        0x1c -> :sswitch_c
        0x1d -> :sswitch_d
        0x1e -> :sswitch_1
        0x1f -> :sswitch_3
        0x20 -> :sswitch_0
        0x21 -> :sswitch_5
        0x22 -> :sswitch_1a
        0x23 -> :sswitch_9
        0x24 -> :sswitch_b
        0x25 -> :sswitch_10
        0x26 -> :sswitch_14
        0x27 -> :sswitch_15
        0x29 -> :sswitch_12
        0x2a -> :sswitch_16
        0x2b -> :sswitch_17
        0x2c -> :sswitch_13
        0x2d -> :sswitch_a
        0x2e -> :sswitch_1b
        0x2f -> :sswitch_18
        0x30 -> :sswitch_19
        0x31 -> :sswitch_1c
        0x5a -> :sswitch_4
    .end sparse-switch
.end method

.method public resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "Mms/MessageOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resendMessage(),msgItem="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", conversation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "Mms/MessageOptions"

    const-string v3, "message sending is disabled"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c015b

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SKT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGU+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KOR_OPEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Mms/MessageOptions"

    const-string v4, "isAirplaneModeOn"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions;->tryToResendSingleMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions;->tryToResendGroupSms(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageOptions;->resendFreeMessageItem(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageOptions;->resendFreeMessageFTItem(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageOptions;->resendRcsMessageItem(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions;->tryToResendSingleMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    goto :goto_1
.end method

.method public setConversation(Lcom/android/mms/data/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mConversation:Lcom/android/mms/data/Conversation;

    return-void
.end method

.method public setCurrentSlideLocation(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    return-void
.end method

.method public setLockIcon(Z)V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "kkahn/Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockIcon/mLaunchApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewerActivity;->getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    if-ne v0, v1, :cond_2

    const-string v0, "kkahn/Mms/MessageOptions"

    const-string v1, "setLockIcon/MMS/SlideshowActivity[1]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->getViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/mms/ui/MmsSinglePageActivity;

    if-ne v0, v1, :cond_0

    const-string v0, "kkahn/Mms/MessageOptions"

    const-string v1, "setLockIcon/MMS/MmsSinglePageActivity[2]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->setLockIcon(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->getViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto :goto_0

    :cond_4
    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewerActivity;->getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    if-ne v0, v1, :cond_6

    const-string v0, "kkahn/Mms/MessageOptions"

    const-string v1, "setLockIcon/MMS/SlideshowActivity[1]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->getViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/mms/ui/MmsSinglePageActivity;

    if-ne v0, v1, :cond_0

    const-string v0, "kkahn/Mms/MessageOptions"

    const-string v1, "setLockIcon/MMS/MmsSinglePageActivity[2]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->setLockIcon(Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->getViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "sms"

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SmsViewerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewerActivity;->getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    if-ne v0, v1, :cond_a

    const-string v0, "kkahn/Mms/MessageOptions"

    const-string v1, "setLockIcon/MMS/SlideshowActivity[1]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->getViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/mms/ui/MmsSinglePageActivity;

    if-ne v0, v1, :cond_0

    const-string v0, "kkahn/Mms/MessageOptions"

    const-string v1, "setLockIcon/MMS/SlideshowActivitySinglePage[2]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->setLockIcon(Z)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->getViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto/16 :goto_0
.end method

.method public showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V
    .locals 6

    const v3, 0x7f0c0120

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/mms/export/MmsPartExport;->getMmsAttachmentsAsModelList(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAttachmentList(), Toast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions;->createAttachmentDialog(ZJLjava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public showAudioList(Lcom/android/mms/model/SlideshowModel;J)V
    .locals 6

    const v5, 0x7f0c0120

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2, v1, v1}, Lcom/android/mms/export/MmsPartExport;->getMmsAttachmentsAsModelList(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAudioList(), Toast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0, v1, v1}, Lcom/android/mms/export/MmsPartExport;->savePartForRingtone(Landroid/net/Uri;Landroid/net/Uri;ZZ)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-wide v2, p2

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions;->createAttachmentDialog(ZJLjava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public startViewer(Lcom/android/mms/ui/MessageItem;)V
    .locals 8

    const/high16 v7, 0x24000000

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    iget-boolean v5, p1, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-nez v5, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "msgId"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "thread_id"

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "isWapPush"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v6, 0x82

    if-eq v5, v6, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "msgId"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "thread_id"

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "selectText"

    const-string v6, "selectTextLaunch"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "msgId"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "thread_id"

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V
    .locals 25

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "m_type"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "msg_box"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v12, v2

    const/4 v2, 0x1

    const-string v5, "type"

    aput-object v5, v12, v2

    const/4 v2, 0x2

    const-string v5, "address"

    aput-object v5, v12, v2

    const/4 v2, 0x3

    const-string v5, "date"

    aput-object v5, v12, v2

    const/4 v2, 0x4

    const-string v5, "error_code"

    aput-object v5, v12, v2

    const/4 v2, 0x5

    const-string v5, "group_id"

    aput-object v5, v12, v2

    const/4 v2, 0x6

    const-string v5, "pri"

    aput-object v5, v12, v2

    const-string v8, "sms_id = ? AND sms._id = sms_id AND cmas.thread_id = ?"

    const-string v2, "mms"

    sget-object v5, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    :goto_0
    if-eqz v14, :cond_0

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v15, v2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v18

    move/from16 v17, p3

    invoke-static/range {v13 .. v18}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v22

    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c007e

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v5, 0x7f0c0182

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    sget-object v2, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/mms/ui/MessageOptions$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/ui/MessageOptions$1;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    sget-object v2, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v14, :cond_0

    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v2, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    sget-object v2, Lcom/android/mms/util/DummyFramework$Cmas;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v23

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v2

    const/4 v2, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/mms/ui/CMASViewer;->PROJECTION_SMS_CMAS:[Ljava/lang/String;

    const-string v10, "date DESC"

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto/16 :goto_0

    :cond_2
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v3

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto/16 :goto_0

    :catch_0
    move-exception v20

    :try_start_1
    const-string v2, "Mms/MessageOptions"

    const-string v5, "Failed view message details"

    move-object/from16 v0, v20

    invoke-static {v2, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public viewSpamMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V
    .locals 25

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "m_type"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "msg_box"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v12, v2

    const/4 v2, 0x1

    const-string v5, "type"

    aput-object v5, v12, v2

    const/4 v2, 0x2

    const-string v5, "address"

    aput-object v5, v12, v2

    const/4 v2, 0x3

    const-string v5, "date"

    aput-object v5, v12, v2

    const/4 v2, 0x4

    const-string v5, "error_code"

    aput-object v5, v12, v2

    const/4 v2, 0x5

    const-string v5, "group_id"

    aput-object v5, v12, v2

    const/4 v2, 0x6

    const-string v5, "pri"

    aput-object v5, v12, v2

    const-string v2, "mms"

    sget-object v5, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/mms/util/DummyFramework$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    :goto_0
    if-eqz v14, :cond_0

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v15, v2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v18

    move/from16 v17, p3

    invoke-static/range {v13 .. v18}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v22

    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c007e

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    sget-object v2, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v14, :cond_0

    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v2, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    sget-object v2, Lcom/android/mms/util/DummyFramework$Cmas;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v23

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/mms/ui/CMASViewer;->PROJECTION_SMS_CMAS:[Ljava/lang/String;

    const-string v8, "sms._id = sms_id AND cmas.thread_id = ?"

    const-string v10, "date DESC"

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto/16 :goto_0

    :cond_2
    sget-object v2, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v3

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto/16 :goto_0

    :catch_0
    move-exception v20

    :try_start_1
    const-string v2, "Mms/MessageOptions"

    const-string v5, "Failed view message details"

    move-object/from16 v0, v20

    invoke-static {v2, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public writeFile(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Z
    .locals 10

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->checkAvailableStorage()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_0
    const/4 v7, 0x0

    :goto_1
    return v7

    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    if-nez v7, :cond_2

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/mms/ui/MessageOptions;->mTargetDirectory:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageOptions;->getRecordFileName(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".vmg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v6, Lcom/android/mms/ui/VMessage;

    invoke-direct {v6, p1}, Lcom/android/mms/ui/VMessage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p2}, Lcom/android/mms/ui/VMessage;->createVMessage(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :cond_4
    :goto_2
    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_3
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v7, "Mms/MessageOptions"

    const-string v8, "Couldn\'t close fileoutputstream"

    :goto_4
    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_6
    throw v7

    :catch_2
    move-exception v3

    const-string v8, "Mms/MessageOptions"

    const-string v9, "Couldn\'t close fileoutputstream"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_3
    move-exception v8

    goto :goto_6

    :catch_4
    move-exception v7

    goto/16 :goto_0

    :catch_5
    move-exception v3

    const-string v7, "Mms/MessageOptions"

    const-string v8, "Couldn\'t close fileoutputstream"

    goto :goto_4

    :catch_6
    move-exception v3

    const-string v8, "Mms/MessageOptions"

    const-string v9, "Couldn\'t close fileoutputstream"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_7
    move-exception v8

    goto :goto_2

    :catchall_1
    move-exception v7

    move-object v1, v2

    goto :goto_5

    :catch_8
    move-exception v5

    move-object v1, v2

    goto :goto_3
.end method
