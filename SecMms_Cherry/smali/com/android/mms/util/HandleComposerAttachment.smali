.class public Lcom/android/mms/util/HandleComposerAttachment;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/HandleComposerAttachment$CreateSpamGroupChatListener;
    }
.end annotation


# static fields
.field private static final AVATAR_SOURCE:Ljava/lang/String; = "/mnt/sdcard/message_avatar_temp.jpg"

.field private static final AVATAR_TARGET:Ljava/lang/String; = "/data/data/com.android.mms/message_avatar_temp.jpg"

.field private static final AVATAR_TARGET_URI:Ljava/lang/String; = "file:///data/data/com.android.mms/message_avatar_temp.jpg"

.field private static final AVATAR_TARGET_URI_FILENAME:Ljava/lang/String; = "message_avatar_temp.jpg"

.field private static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final GET_MYLOCATION:I = 0x0

.field protected static final PREFERENCES_LOCATION_ALLOW_PERMISSION:Ljava/lang/String; = "LocationAllowPermission"

.field protected static final PREFERENCES_LOCATION_USE_DATA:Ljava/lang/String; = "LocationUseData"

.field protected static final PREFERENCES_LOCATION_USE_WLAN:Ljava/lang/String; = "LocationUseWlan"

.field public static final REQUEST_CODE_ADDTEXT_CALENDAR:I = 0x1f

.field public static final REQUEST_CODE_ADDTEXT_CONTACT:I = 0x1d

.field public static final REQUEST_CODE_ADDTEXT_LOCATION:I = 0x23

.field public static final REQUEST_CODE_ADDTEXT_MEMO:I = 0x20

.field public static final REQUEST_CODE_ADDTEXT_NAMECARD:I = 0x1e

.field public static final REQUEST_CODE_ADDTEXT_SCRAPBOOK:I = 0x3b

.field public static final REQUEST_CODE_ADDTEXT_SMEMO:I = 0x25

.field public static final REQUEST_CODE_ADDTEXT_SNOTE:I = 0x26

.field public static final REQUEST_CODE_ADDTEXT_TASK:I = 0x22

.field public static final REQUEST_CODE_ADD_MYFILES:I = 0x3d

.field public static final REQUEST_CODE_ADD_PARTICIPANT:I = 0x3c

.field public static final REQUEST_CODE_ECM_EXIT_DIALOG:I = 0x11

.field public static final REQUEST_CODE_INSERT_TEXT:I = 0x3

.field public static final REQUEST_CODE_PICK_AVATAR:I = 0x36

.field public static final REQUEST_CODE_PICK_AVATAR_REPLACE:I = 0x37

.field public static final REQUEST_CODE_PICK_CONTACT:I = 0x13

.field public static final REQUEST_CODE_PICK_DRAWINGPAD:I = 0x33

.field public static final REQUEST_CODE_PICK_LOCATION:I = 0x24

.field public static final REQUEST_CODE_PICK_MULTI_PICTURE:I = 0x38

.field public static final REQUEST_CODE_PICK_PENMEMO:I = 0x32

.field public static final REQUEST_CODE_PICK_PICTURE:I = 0xa

.field public static final REQUEST_CODE_PICK_PICTURE_REPLACE:I = 0x29

.field public static final REQUEST_CODE_PICK_SCRAPBOOK:I = 0x3a

.field public static final REQUEST_CODE_PICK_SNOTE:I = 0x35

.field public static final REQUEST_CODE_PICK_SOUND:I = 0xe

.field public static final REQUEST_CODE_PICK_SOUND_REPLACE:I = 0x2d

.field public static final REQUEST_CODE_PICK_VCAL:I = 0x1a

.field public static final REQUEST_CODE_PICK_VCARD:I = 0x14

.field public static final REQUEST_CODE_PICK_VIDEO:I = 0xc

.field public static final REQUEST_CODE_PICK_VIDEO_REPLACE:I = 0x2b

.field public static final REQUEST_CODE_PICK_VNOTE:I = 0x1b

.field public static final REQUEST_CODE_PICK_VTODO:I = 0x21

.field public static final REQUEST_CODE_RECORD_SOUND:I = 0xf

.field public static final REQUEST_CODE_RECORD_SOUND_REPLACE:I = 0x2e

.field public static final REQUEST_CODE_TAKE_PICTURE:I = 0xb

.field public static final REQUEST_CODE_TAKE_PICTURE_REPLACE:I = 0x2a

.field public static final REQUEST_CODE_TAKE_VIDEO:I = 0xd

.field public static final REQUEST_CODE_TAKE_VIDEO_REPLACE:I = 0x2c

.field public static final REQUEST_CODE_TRANS:I = 0x2f

.field public static final REQUEST_CODE_TRANSLATE:I = 0x4

.field public static final REQUEST_REPORT_TYPE_DELIVERY_REPORT:I = 0x1

.field public static final REQUEST_REPORT_TYPE_READ_REPORT:I = 0x2

.field public static final REQUEST_SETTINGS_RESERVE:I = 0x34

.field public static final REQUEST_SETTINGS_TRANSMIT:I = 0x39

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SCHEME_FILE:Ljava/lang/String; = "file"

.field private static final SMEMO_ADDTEXT_ACTION:Ljava/lang/String; = "intent.smemo.pick"

.field public static final SMEMO_ATTACH_ACTION:Ljava/lang/String; = "android.intent.action.PENMEMO_ATTACH"

.field private static final SNOTE_ATTACH_ACTION:Ljava/lang/String; = "android.intent.action.SNOTE_PICK"

.field private static final TAG:Ljava/lang/String; = "Mms/HandleComposerAttachment"

.field protected static mNativeAccessReturnValue:I


# instance fields
.field private BodyText:Landroid/widget/TextView;

.field private final VIDEO_RESIZE_DEFAULT_RETURE_VALUE:I

.field private final VIDEO_RESIZE_LIB_ERROR_VALUE:I

.field private final VIDEO_RESIZE_MAX_DURATION:I

.field private final VIDEO_RESIZE_OUTPUT_HEIGHT:I

.field private final VIDEO_RESIZE_OUTPUT_WIDTH:I

.field private alertDialog:Landroid/app/AlertDialog;

.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mDoNotShowAgain:Landroid/widget/CheckBox;

.field private mDoNotShowAgain2:Landroid/widget/CheckBox;

.field mGPSLocationListener:Landroid/location/LocationListener;

.field private mHasSoundShotDialog:Landroid/app/AlertDialog;

.field protected mIsRemovedLocationListener:Z

.field private mLocationDisabledMsgDialog:Landroid/app/AlertDialog;

.field mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationProgressDialog:Landroid/app/ProgressDialog;

.field private mMyAddress:Ljava/lang/String;

.field private mMyLocationHandler:Landroid/os/Handler;

.field private mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

.field private mOutFileSizeEstimated:I

.field private mVideoResizeCanceled:Z

.field private mVideoResizeDialog:Landroid/app/AlertDialog;

.field private mVideoResizeEditDialog:Landroid/app/AlertDialog;

.field private mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

.field multiAttachRunnable:Ljava/lang/Runnable;

.field multiAttachThread:Ljava/lang/Thread;

.field private runnableAfterDialog:Ljava/lang/Runnable;

.field singleAttachRunnable:Ljava/lang/Runnable;

.field singleAttachThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccessReturnValue:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xea60

    iput v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->VIDEO_RESIZE_MAX_DURATION:I

    const/16 v0, 0xb0

    iput v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->VIDEO_RESIZE_OUTPUT_WIDTH:I

    const/16 v0, 0x90

    iput v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->VIDEO_RESIZE_OUTPUT_HEIGHT:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->VIDEO_RESIZE_DEFAULT_RETURE_VALUE:I

    iput v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->VIDEO_RESIZE_LIB_ERROR_VALUE:I

    iput-boolean v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeCanceled:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mMyAddress:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->singleAttachThread:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->singleAttachRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->multiAttachThread:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->multiAttachRunnable:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mIsRemovedLocationListener:Z

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$47;

    invoke-direct {v0, p0}, Lcom/android/mms/util/HandleComposerAttachment$47;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationListener:Landroid/location/LocationListener;

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$48;

    invoke-direct {v0, p0}, Lcom/android/mms/util/HandleComposerAttachment$48;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mGPSLocationListener:Landroid/location/LocationListener;

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$49;

    invoke-direct {v0, p0}, Lcom/android/mms/util/HandleComposerAttachment$49;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mMyLocationHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->runnableAfterDialog:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/util/HandleComposerAttachment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeCanceled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/mms/util/HandleComposerAttachment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeCanceled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/util/HandleComposerAttachment;Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/util/HandleComposerAttachment;->nativeAccessForShareviaObj(Lcom/samsung/app/share/via/external/ShareviaObj;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/util/HandleComposerAttachment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/util/HandleComposerAttachment;->showVideoResizingProgressDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/HandleComposerAttachment;->videoResizingProgress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/mms/util/HandleComposerAttachment;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/HandleComposerAttachment;->getMediaFilePathFromUri(Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeEditDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/mms/util/HandleComposerAttachment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mMyAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mMyAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;ILandroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/util/HandleComposerAttachment;->addPickImage(Ljava/util/ArrayList;ILandroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/util/HandleComposerAttachment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/util/HandleComposerAttachment;->finishGetMyLocation(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mMyLocationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDoNotShowAgain2:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/util/HandleComposerAttachment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->runnableAfterDialog:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;IZZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/mms/util/HandleComposerAttachment;->showVideoResizingDialog(Landroid/net/Uri;IZZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/util/HandleComposerAttachment;->showVideoResizingEditDialog(Landroid/net/Uri;JZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/util/HandleComposerAttachment;Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/util/HandleComposerAttachment;->singleAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/util/HandleComposerAttachment;Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/util/HandleComposerAttachment;->multiAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/samsung/app/share/via/external/NativeAccess;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    return-object v0
.end method

.method private addPickImage(Ljava/util/ArrayList;ILandroid/net/Uri;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;I",
            "Landroid/net/Uri;",
            "Z)V"
        }
    .end annotation

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$41;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment$41;-><init>(Lcom/android/mms/util/HandleComposerAttachment;ILjava/util/ArrayList;Landroid/net/Uri;Z)V

    const-string v1, "addAttachment"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private createShareviaObj(Ljava/lang/String;Ljava/lang/String;II)Lcom/samsung/app/share/via/external/ShareviaObj;
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Lcom/samsung/app/share/via/external/ShareviaObj;

    invoke-direct {v1}, Lcom/samsung/app/share/via/external/ShareviaObj;-><init>()V

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaWidth(I)V

    const/16 v2, 0x90

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaHeight(I)V

    invoke-virtual {v1, p2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaInputFilename(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaOutputFilename(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaOutputFileResolution(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaStartTime(I)V

    invoke-virtual {v1, p3}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaEndTime(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViamaxDuration(I)V

    invoke-virtual {v1, p4}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViamaxSize(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaVideoCodec(I)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaAudioCodec(I)V

    return-object v1
.end method

.method private finishGetMyLocation(Z)V
    .locals 3

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "finishGetMyLocation"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "finishGetMyLocation() Fragment is detached"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/util/HandleComposerAttachment;->stopLocationListener()V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mMyAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mIsRemovedLocationListener:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mIsRemovedLocationListener:Z

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0173

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "unable to retrieve location"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAvailableSlideCount(I)I
    .locals 5

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getTotalPageCount()I

    move-result v4

    sub-int v0, v3, v4

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    if-eqz v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private getFileNameFromContentUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "Mms/HandleComposerAttachment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms/HandleComposerAttachment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Mms/HandleComposerAttachment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows. so just return null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    :try_start_1
    invoke-static {p1}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "fn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    goto/16 :goto_0

    :cond_4
    if-eqz p1, :cond_5

    :try_start_2
    invoke-static {p1}, Lcom/android/mms/util/HandleComposerAttachment;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getMediaFilePathFromUri(Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getMediaFileSize(Ljava/lang/String;)I
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0
.end method

.method private getMyLocation()V
    .locals 4

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "getMyLocation"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0172

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationProgressDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mMyAddress:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/util/HandleComposerAttachment;->startLocationListener()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/util/HandleComposerAttachment$46;

    invoke-direct {v1, p0}, Lcom/android/mms/util/HandleComposerAttachment$46;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getNextAvailableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "/sdcard/Videos"

    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v4, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%03d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".mp4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x3e7

    if-eq v2, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".mp4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x5f

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%03d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private getOutputFileDurationPossible(Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/app/share/via/external/NativeAccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/app/share/via/external/NativeAccess;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->mmsMessageSize()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit16 v2, v0, 0x400

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    const/16 v3, 0xb0

    const/16 v4, 0x90

    const/4 v5, 0x5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/app/share/via/external/NativeAccess;->getInputParamerterAnalysis(Ljava/lang/String;IIII)I

    move-result v0

    return v0
.end method

.method private getVideoFileDurationTime(Ljava/lang/String;)I
    .locals 9

    const/16 v8, 0x9

    const/4 v6, -0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v2, v3

    :cond_3
    :goto_1
    invoke-virtual {v4, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_4
    move v6, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v1

    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_5
    :goto_6
    throw v6

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v6

    move-object v2, v3

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v2, v3

    goto :goto_4

    :catch_9
    move-exception v1

    move-object v2, v3

    goto :goto_3

    :catch_a
    move-exception v1

    move-object v2, v3

    goto :goto_2
.end method

.method private static isMediaUri(Landroid/net/Uri;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private multiAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 8

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "multiAttachMent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move v2, p4

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c017f

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$43;

    invoke-direct {v5, p0}, Lcom/android/mms/util/HandleComposerAttachment$43;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    new-instance v6, Lcom/android/mms/util/HandleComposerAttachment$44;

    invoke-direct {v6, p0, p2}, Lcom/android/mms/util/HandleComposerAttachment$44;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/Intent;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$45;

    move-object v1, p0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/util/HandleComposerAttachment$45;-><init>(Lcom/android/mms/util/HandleComposerAttachment;ILjava/util/ArrayList;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->multiAttachRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->multiAttachRunnable:Ljava/lang/Runnable;

    const-string v4, "addAttachment"

    invoke-direct {v0, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->multiAttachThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->multiAttachThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private nativeAccessForShareviaObj(Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 1

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$33;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/util/HandleComposerAttachment$33;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Lcom/samsung/app/share/via/external/ShareviaObj;)V

    invoke-virtual {v0}, Lcom/android/mms/util/HandleComposerAttachment$33;->start()V

    return-void
.end method

.method private resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZZ)I
    .locals 20

    const-string v2, "Mms/HandleComposerAttachment"

    const-string v3, "onResizeResult()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 v3, -0x1

    const v4, 0x7f0c00c3

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object/from16 v2, p0

    move/from16 v7, p3

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    const/4 v8, -0x1

    :cond_0
    :goto_0
    return v8

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v19

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v18

    if-nez v18, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    if-nez v18, :cond_7

    :try_start_1
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "messageUri is NULL : Unknown Parameter!!!"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_0
    move-exception v16

    const-string v2, "Mms/HandleComposerAttachment"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/MmsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    :cond_3
    :goto_1
    if-nez v8, :cond_4

    move/from16 v14, p3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, v14}, Lcom/android/mms/ui/ComposeMessageFragment;->onAttachmentChanged(Z)V

    :cond_4
    const v9, 0x7f0c00c3

    const/16 v11, 0xa

    move-object/from16 v7, p0

    move-object v10, v6

    move/from16 v12, p3

    move/from16 v13, p2

    invoke-virtual/range {v7 .. v13}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/mms/ui/ComposeMessageFragment;->isResizingImage:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    :cond_5
    :goto_2
    sget-boolean v2, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v17

    if-nez p4, :cond_0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v3, 0x20

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->onProtocolChanged(ZI)V

    goto/16 :goto_0

    :catch_1
    move-exception v16

    const-string v2, "Mms/HandleComposerAttachment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExceedMessageSizeException "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/ExceedMessageSizeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x2

    goto/16 :goto_0

    :cond_7
    :try_start_2
    invoke-static/range {v18 .. v18}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v8, 0x0

    move/from16 v7, p2

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v8

    const-string v2, "Mms:app"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Mms/HandleComposerAttachment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResizeImageResultCallback: dataUri="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v16

    const-string v2, "Mms/HandleComposerAttachment"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    goto/16 :goto_1

    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;
    :try_end_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v16

    const-string v2, "Mms/HandleComposerAttachment"

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/ExceedMessageSizeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x2

    goto/16 :goto_0
.end method

.method private showVideoResizingDialog(Landroid/net/Uri;IZZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 15

    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v12, v1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12}, Lcom/android/mms/util/HandleComposerAttachment;->getMediaFilePathFromUri(Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0404

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0403

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v11, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0406

    invoke-virtual {v11, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v11, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0c040a

    new-instance v1, Lcom/android/mms/util/HandleComposerAttachment$37;

    move-object v2, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p6

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/mms/util/HandleComposerAttachment$37;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;Ljava/lang/String;IZZZLjava/lang/String;)V

    invoke-virtual {v11, v14, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c004e

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$38;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$38;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeDialog:Landroid/app/AlertDialog;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showVideoResizingEditDialog(Landroid/net/Uri;JZ)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0404

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0403

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0406

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0c0405

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$39;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment$39;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;JZ)V

    invoke-virtual {v6, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0c004e

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeEditDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeEditDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/util/HandleComposerAttachment$40;

    invoke-direct {v1, p0}, Lcom/android/mms/util/HandleComposerAttachment$40;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeEditDialog:Landroid/app/AlertDialog;

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeEditDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showVideoResizingProgressDialog()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0c040a

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, -0x1

    const v3, 0x7f0c004e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$34;

    invoke-direct {v4, p0}, Lcom/android/mms/util/HandleComposerAttachment$34;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    iget v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$35;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$35;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iput-boolean v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeCanceled:Z

    return-void
.end method

.method private singleAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "singleAttachMent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-string v0, "vcard"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$42;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/util/HandleComposerAttachment$42;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->singleAttachRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->singleAttachRunnable:Ljava/lang/Runnable;

    const-string v2, "addAttachment"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->singleAttachThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->singleAttachThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startLocationListener()V
    .locals 8

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x447a0000

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "startLocationListener"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mIsRemovedLocationListener:Z

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "use location service by NETWORK_PROVIDER "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mGPSLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "use location service by GPS_PROVIDER "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v7, :cond_2

    if-nez v6, :cond_2

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "Can not use location service!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/util/HandleComposerAttachment;->finishGetMyLocation(Z)V

    :cond_2
    return-void
.end method

.method private stopLocationListener()V
    .locals 2

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "stopLocationListener"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mGPSLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mGPSLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    return-void
.end method

.method private videoResizingProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    :goto_0
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    if-nez v3, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    sget v3, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccessReturnValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    sget v3, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccessReturnValue:I

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeCanceled:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$36;

    invoke-direct {v4, p0}, Lcom/android/mms/util/HandleComposerAttachment$36;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/mms/util/HandleComposerAttachment;->getMediaFileSize(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    div-int/lit16 v4, v2, 0x400

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resizing video size ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public HandleMultiAttachmentFromIntent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v22

    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v22, :cond_0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v11

    :goto_0
    if-nez v23, :cond_1

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v17

    add-int v4, v14, v11

    move/from16 v0, v17

    if-le v4, v0, :cond_2

    sub-int v4, v17, v11

    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c0043

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v0, v14, :cond_5

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->getFileNameFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    :cond_3
    const/16 v19, 0x0

    if-eqz v12, :cond_4

    invoke-static {v12}, Lcom/quramsoft/qdio/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;

    move-result-object v19

    :cond_4
    if-eqz v19, :cond_9

    const/4 v13, 0x1

    :cond_5
    if-eqz v13, :cond_a

    move v9, v14

    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0408

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c0409

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c00ee

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$31;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/util/HandleComposerAttachment$31;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v10, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    move-object/from16 v24, v0

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$32;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/util/HandleComposerAttachment$32;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_4
    const-string v4, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureEnabled(Landroid/content/Context;)Z

    move-result v15

    const-string v18, ""

    const-string v4, "android.intent.extra.TEXT"

    const-string v5, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.extra.SUBJECT"

    const-string v6, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "android.intent.extra.TEXT"

    const-string v5, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v15, :cond_c

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshSignatureInEditor(Ljava/lang/String;Z)V

    :cond_7
    :goto_6
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c0042

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v7, v8

    const/4 v8, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/android/mms/util/HandleComposerAttachment;->multiAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V

    goto/16 :goto_4

    :cond_b
    const-string v4, "\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "android.intent.extra.SUBJECT"

    const-string v8, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "android.intent.extra.TEXT"

    const-string v8, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->joinContents(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto :goto_6
.end method

.method public HandleSingleAttachMentFromIntent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 18

    const-string v13, "Mms/HandleComposerAttachment"

    const-string v14, "HandleSingleAttachMentFromIntent()"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v13, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    new-instance v13, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v13, v14}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v15, 0x7f0c017f

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v14, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v13, v14}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const-string v13, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v9, 0x0

    if-eqz v11, :cond_1

    const-string v13, "image/"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/util/HandleComposerAttachment;->getFileNameFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/quramsoft/qdio/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;

    move-result-object v9

    :cond_1
    if-eqz v9, :cond_5

    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x7f0c0408

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v13, 0x7f0c0409

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v13, 0x7f0c00ee

    new-instance v14, Lcom/android/mms/util/HandleComposerAttachment$28;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/mms/util/HandleComposerAttachment$28;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v4, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    sget-object v14, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    new-instance v14, Lcom/android/mms/util/HandleComposerAttachment$29;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/android/mms/util/HandleComposerAttachment$29;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    :goto_0
    const-string v13, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v13}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v13}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureEnabled(Landroid/content/Context;)Z

    move-result v7

    const-string v8, ""

    const-string v13, "android.intent.extra.TEXT"

    const-string v14, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.intent.extra.SUBJECT"

    const-string v15, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "android.intent.extra.TEXT"

    const-string v14, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    const-string v13, "NeedSignatureCheck"

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v13

    if-eqz v13, :cond_7

    if-eqz v7, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v14, 0x1

    invoke-virtual {v13, v8, v14}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshSignatureInEditor(Ljava/lang/String;Z)V

    :cond_4
    :goto_2
    const/4 v13, 0x1

    return v13

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->show()V

    const-string v13, "Mms/HandleComposerAttachment"

    const-string v14, "HandleSingleAttachMentFromIntent(), singleAttachMent 2"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p3}, Lcom/android/mms/util/HandleComposerAttachment;->singleAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    const-string v13, "\n"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "android.intent.extra.SUBJECT"

    const-string v17, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "android.intent.extra.TEXT"

    const-string v17, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageUtils;->joinContents(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto :goto_2
.end method

.method public addAudio(Landroid/net/Uri;IZZZ)I
    .locals 8

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x3

    move v2, p2

    move-object v4, p1

    move v5, p5

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    const v2, 0x7f0c00c2

    const/16 v4, 0xe

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    return v1
.end method

.method public addImage(Landroid/net/Uri;IZZZ)I
    .locals 28

    const-string v5, "Mms:app"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Mms/HandleComposerAttachment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addImage: uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-nez v13, :cond_3

    const-string v5, "content"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "content"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "file"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    const/4 v6, -0x1

    const v7, 0x7f0c00c3

    const/4 v8, 0x0

    const/16 v9, 0xa

    move-object/from16 v5, p0

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    const-string v5, "Mms/HandleComposerAttachment"

    const-string v6, "Cursor is null or invalid uri enter"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v23, -0x1

    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return v23

    :cond_3
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v27

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x1

    move/from16 v7, p2

    move-object/from16 v9, p1

    move/from16 v10, p5

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v5 .. v12}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v23

    const/4 v5, -0x4

    move/from16 v0, v23

    if-eq v0, v5, :cond_5

    const/4 v5, -0x2

    move/from16 v0, v23

    if-eq v0, v5, :cond_5

    const/4 v5, -0x8

    move/from16 v0, v23

    if-ne v0, v5, :cond_c

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/mms/ui/MessageUtils;->isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez p4, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v6, Lcom/android/mms/util/HandleComposerAttachment$20;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/mms/util/HandleComposerAttachment$20;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v26

    if-eqz v26, :cond_7

    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v24

    if-nez p5, :cond_7

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v25

    if-eqz v25, :cond_7

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/ImageModel;->getMediaSize()I

    move-result v22

    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v5

    add-int v24, v5, v22

    :cond_7
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getImageResizeQualityFactorWhenAttach()I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_8

    const/4 v5, -0x2

    move/from16 v0, v23

    if-eq v0, v5, :cond_8

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v16, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment;->getMediaFilePathFromUri(Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->getMediaFileSize(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_8

    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    move/from16 v24, v17

    :cond_8
    new-instance v18, Lcom/android/mms/ui/UriImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v21, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v14

    if-nez v14, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidthRestrictedMode()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeightRestrictedMode()I

    move-result v6

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v21

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p5

    move/from16 v3, p4

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/util/HandleComposerAttachment;->resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZZ)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v23

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    if-eqz v13, :cond_9

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v5

    :cond_a
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/VideoModel;->getMediaSize()I

    move-result v22

    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v5

    add-int v24, v5, v22

    goto/16 :goto_1

    :cond_b
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v6

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v21

    goto :goto_2

    :catch_0
    move-exception v15

    const/4 v6, -0x1

    const v7, 0x7f0c00c3

    const/16 v9, 0xa

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto/16 :goto_0

    :cond_c
    const v7, 0x7f0c00c3

    const/16 v9, 0xa

    move-object/from16 v5, p0

    move/from16 v6, v23

    move-object/from16 v8, p1

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v20

    if-nez v27, :cond_2

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->vibrateChangingMms()V

    goto/16 :goto_0
.end method

.method public addMedia(ILandroid/net/Uri;ZZZ)I
    .locals 12

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    const/4 v11, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-nez p5, :cond_0

    if-nez p4, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    :cond_1
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return v11

    :pswitch_1
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move/from16 v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addImage(Landroid/net/Uri;IZZZ)I

    move-result v11

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move/from16 v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addVideo(Landroid/net/Uri;IZZZ)I

    move-result v11

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move/from16 v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addAudio(Landroid/net/Uri;IZZZ)I

    move-result v11

    goto :goto_0

    :pswitch_4
    const/4 v6, 0x0

    const/16 v8, 0x14

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->addRawMedia(Landroid/net/Uri;ZZZI)I

    move-result v11

    goto :goto_0

    :pswitch_5
    const/4 v6, 0x0

    const/16 v8, 0x1a

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->addRawMedia(Landroid/net/Uri;ZZZI)I

    move-result v11

    goto :goto_0

    :pswitch_6
    const/4 v6, 0x1

    const/16 v8, 0x1b

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->addRawMedia(Landroid/net/Uri;ZZZI)I

    move-result v11

    goto/16 :goto_0

    :pswitch_7
    const/4 v6, 0x1

    const/16 v8, 0x21

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->addRawMedia(Landroid/net/Uri;ZZZI)I

    move-result v11

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const-string v0, "Mms/HandleComposerAttachment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExceedMessageSizeException "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/android/mms/ExceedMessageSizeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, -0x2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)I
    .locals 7

    const/4 v6, -0x1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$25;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$25;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(ILandroid/net/Uri;ZZZ)I

    move-result v6

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "application/ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x3

    goto :goto_1

    :cond_5
    const-string v0, "text/x-vCard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x6

    goto :goto_1

    :cond_6
    const-string v0, "text/x-vCalendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x7

    goto :goto_1

    :cond_7
    const-string v0, "text/x-vNote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    goto :goto_1

    :cond_8
    const-string v0, "text/x-vtodo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0x9

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$26;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$26;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public addRawMedia(Landroid/net/Uri;ZZZI)I
    .locals 13

    const-string v1, "Mms:app"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Mms/HandleComposerAttachment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRawMedia: append="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", uri="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v12, -0x1

    if-eqz p3, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->checkCRForRawAttachment()V

    :cond_1
    const/16 v1, 0x14

    move/from16 v0, p5

    if-eq v1, v0, :cond_2

    const/16 v1, 0x1a

    move/from16 v0, p5

    if-eq v1, v0, :cond_2

    const/16 v1, 0x1b

    move/from16 v0, p5

    if-eq v1, v0, :cond_2

    const/16 v1, 0x21

    move/from16 v0, p5

    if-ne v1, v0, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v7, 0x0

    move-object v5, p1

    move v6, p2

    move/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I
    :try_end_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    const v6, 0x7f0c012a

    move-object v4, p0

    move-object v7, p1

    move/from16 v8, p5

    move/from16 v9, p4

    move v10, p2

    :try_start_1
    invoke-virtual/range {v4 .. v10}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    if-nez v5, :cond_3

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$23;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$23;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    return v5

    :catch_0
    move-exception v11

    move v5, v12

    :goto_2
    const/4 v5, -0x5

    const v6, 0x7f0c012a

    const/4 v9, 0x0

    move-object v4, p0

    move-object v7, p1

    move/from16 v8, p5

    move v10, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_1

    :catch_1
    move-exception v11

    goto :goto_2

    :cond_4
    move v5, v12

    goto :goto_0
.end method

.method public addText(Ljava/lang/String;)Z
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v6

    if-lez v6, :cond_2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-lt v1, v4, :cond_3

    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    add-int/lit8 v6, v3, -0x1

    if-lez v6, :cond_4

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v6, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_4

    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0, v0, p1, v5}, Lcom/android/mms/util/HandleComposerAttachment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    :goto_3
    const-string v5, "Mms/HandleComposerAttachment"

    const-string v6, "AddText..."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public addVideo(Landroid/net/Uri;IZZZ)I
    .locals 22

    const/16 v17, -0x1

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x2

    move/from16 v4, p2

    move-object/from16 v6, p1

    move/from16 v7, p5

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v17

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAutoVideoResize()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, -0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v13, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/mms/util/HandleComposerAttachment;->getMediaFilePathFromUri(Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->getOutputFileDurationPossible(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->getVideoFileDurationTime(Ljava/lang/String;)I

    move-result v11

    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/HandleComposerAttachment;->getNextAvailableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v19

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->mmsMessageSize()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit16 v14, v2, 0x400

    if-nez p5, :cond_0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getMediaSize()I

    move-result v16

    move/from16 v0, v16

    div-int/lit16 v2, v0, 0x400

    add-int/2addr v14, v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v2

    add-int v12, v2, v16

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v1, v12, v14}, Lcom/android/mms/util/HandleComposerAttachment;->createShareviaObj(Ljava/lang/String;Ljava/lang/String;II)Lcom/samsung/app/share/via/external/ShareviaObj;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    invoke-virtual {v2, v10}, Lcom/samsung/app/share/via/external/NativeAccess;->getOutputFileSize(Lcom/samsung/app/share/via/external/ShareviaObj;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->mmsMessageSize()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    mul-int/lit16 v3, v3, 0x400

    add-int v15, v2, v3

    const-string v2, "Mms/HandleComposerAttachment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "durationPossible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " durationOriginalFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mOutFileSizeEstimated:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " objectTotalSize"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_3

    const/16 v2, 0x5dc

    if-le v11, v2, :cond_3

    if-gt v11, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$21;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/mms/util/HandleComposerAttachment$21;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;IZZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V

    const-wide/16 v3, 0xa

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_1
    return v17

    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->getMediaSize()I

    move-result v16

    move/from16 v0, v16

    div-int/lit16 v2, v0, 0x400

    add-int/2addr v14, v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v2

    add-int v12, v2, v16

    goto/16 :goto_0

    :cond_3
    if-nez p4, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->mmsMessageSize()I

    move-result v2

    add-int/lit16 v2, v2, 0x2800

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v3

    if-ge v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$22;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p5

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v2 .. v10}, Lcom/android/mms/util/HandleComposerAttachment$22;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;ZIZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V

    const-wide/16 v3, 0xa

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    const v4, 0x7f0c00c4

    const/16 v6, 0xc

    move-object/from16 v2, p0

    move/from16 v3, v17

    move-object/from16 v5, p1

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_1

    :cond_5
    const v4, 0x7f0c00c4

    const/16 v6, 0xc

    move-object/from16 v2, p0

    move/from16 v3, v17

    move-object/from16 v5, p1

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_1
.end method

.method public addnamecard()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "additional"

    const-string v2, "namecard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v2, 0x1e

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public checkEmailBeforeMakeToButton(Lcom/android/mms/data/ContactList;)V
    .locals 8

    new-instance v4, Lcom/android/mms/data/ContactList;

    invoke-direct {v4}, Lcom/android/mms/data/ContactList;-><init>()V

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRemoveEmailDialog()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/data/Contact;

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/data/Contact;

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const v7, 0x7f0c040d

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c040e

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0c0183

    new-instance v7, Lcom/android/mms/util/HandleComposerAttachment$18;

    invoke-direct {v7, p0, v4}, Lcom/android/mms/util/HandleComposerAttachment$18;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Lcom/android/mms/data/ContactList;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0c0182

    new-instance v7, Lcom/android/mms/util/HandleComposerAttachment$19;

    invoke-direct {v7, p0, p1}, Lcom/android/mms/util/HandleComposerAttachment$19;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Lcom/android/mms/data/ContactList;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_2
    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    goto :goto_2
.end method

.method public createDataPopup(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 10

    const/4 v9, 0x0

    const-string v7, "Mms/HandleComposerAttachment"

    const-string v8, "createDataPopup"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment;->runnableAfterDialog:Ljava/lang/Runnable;

    const v7, 0x7f040081

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v7, 0x7f0b02d6

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDoNotShowAgain:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDoNotShowAgain:Landroid/widget/CheckBox;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDoNotShowAgain:Landroid/widget/CheckBox;

    new-instance v8, Lcom/android/mms/util/HandleComposerAttachment$50;

    invoke-direct {v8, p0}, Lcom/android/mms/util/HandleComposerAttachment$50;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const v7, 0x7f0b02d5

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/mms/util/HandleComposerAttachment;->BodyText:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {p1}, Lcom/android/mms/util/LocationSensor;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    const v0, 0x7f0c04ad

    const v7, 0x7f0c04ae

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "LocationUseWlan"

    :goto_0
    iget-object v7, p0, Lcom/android/mms/util/HandleComposerAttachment;->BodyText:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0c004d

    new-instance v9, Lcom/android/mms/util/HandleComposerAttachment$52;

    invoke-direct {v9, p0, v3, v6, p1}, Lcom/android/mms/util/HandleComposerAttachment$52;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0c004e

    new-instance v9, Lcom/android/mms/util/HandleComposerAttachment$51;

    invoke-direct {v9, p0}, Lcom/android/mms/util/HandleComposerAttachment$51;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_1
    return-void

    :cond_1
    const v0, 0x7f0c04ab

    const v7, 0x7f0c04ac

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "LocationUseData"

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/mms/util/HandleComposerAttachment;->createPermissionPopup(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public createPermissionPopup(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    const-string v5, "Mms/HandleComposerAttachment"

    const-string v6, "createPermissionPopup"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v1, 0x0

    const v5, 0x7f040081

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v5, 0x7f0b02d6

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDoNotShowAgain2:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDoNotShowAgain2:Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDoNotShowAgain2:Landroid/widget/CheckBox;

    new-instance v6, Lcom/android/mms/util/HandleComposerAttachment$53;

    invoke-direct {v6, p0}, Lcom/android/mms/util/HandleComposerAttachment$53;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const v5, 0x7f0b02d5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->BodyText:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const v0, 0x7f0c04af

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0c04b0

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n  - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0c04b1

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->BodyText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "LocationAllowPermission"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c004d

    new-instance v7, Lcom/android/mms/util/HandleComposerAttachment$55;

    invoke-direct {v7, p0, v2}, Lcom/android/mms/util/HandleComposerAttachment$55;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c004e

    new-instance v7, Lcom/android/mms/util/HandleComposerAttachment$54;

    invoke-direct {v7, p0}, Lcom/android/mms/util/HandleComposerAttachment$54;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->runnableAfterDialog:Ljava/lang/Runnable;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->runnableAfterDialog:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissVideoResizeProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getAddContactUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 15

    move-object/from16 v0, p1

    const-string v6, "content://com.android.contacts/contacts/as_multi_vcard/"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x37

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v10, "%3A"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v4, v8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRawAttachmentCountForContact()I

    move-result v3

    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    if-eqz v10, :cond_1

    if-le v4, v3, :cond_1

    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c00f5

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v11, Lcom/android/mms/util/HandleComposerAttachment$30;

    invoke-direct {v11, p0, v9}, Lcom/android/mms/util/HandleComposerAttachment$30;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v10, v8, v2

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v10, v3, -0x1

    if-ge v2, v10, :cond_0

    const-string v10, "%3A"

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method

.method public handleAddAttachmentError(IILandroid/net/Uri;IZZ)V
    .locals 11

    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v1, 0x78

    invoke-direct {v9, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "handleAddAttachmentError(),error="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",mediaTypeStringId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",reqCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",sendMultiple="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",append="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "Mms/HandleComposerAttachment"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/util/HandleComposerAttachment$24;

    move-object v2, p0

    move v3, p2

    move v4, p1

    move/from16 v5, p5

    move-object v6, p3

    move v7, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/mms/util/HandleComposerAttachment$24;-><init>(Lcom/android/mms/util/HandleComposerAttachment;IIZLandroid/net/Uri;IZ)V

    invoke-virtual {v10, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public hasParticipantsInChat(Ljava/util/ArrayList;[Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    if-le v1, v0, :cond_0

    move v2, v1

    move v1, v0

    move v0, v2

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v1, v0, p2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    goto :goto_0
.end method

.method public isAttachingThreadRunning()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->singleAttachThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->singleAttachThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->multiAttachThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->multiAttachThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    const-string v1, "Mms/HandleComposerAttachment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAttachingThreadRunning()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public launchAppInfo(ILandroid/app/AlertDialog;)V
    .locals 6

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Mms/HandleComposerAttachment"

    const-string v3, "attachAppinfo, Fragment already detached. just Finish"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/mms/ui/IconListAdapter;->commandToPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Mms/HandleComposerAttachment"

    const-string v3, "attachAppinfo, The package is not installed. just Finish"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/android/mms/util/PackageInfo;->shouldGoDownload(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/android/mms/util/PackageInfo;->showDownloadDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_4

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/mms/util/HandleComposerAttachment$27;

    invoke-direct {v3, p0, p2}, Lcom/android/mms/util/HandleComposerAttachment$27;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/AlertDialog;)V

    const-wide/16 v4, 0x28

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public processingActivityResult(IILandroid/content/Intent;)V
    .locals 97

    const-string v4, "Mms/HandleComposerAttachment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityResult: requestCode="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", resultCode="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", has data="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p3, :cond_3

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingForSubActivity:Z

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientFlag:Z

    const/16 v3, 0x2a

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/16 v3, 0x29

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2c

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2b

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2d

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2e

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/16 v3, 0x37

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v12, 0x0

    :cond_1
    const/16 v3, 0xb

    move/from16 v0, p1

    if-eq v0, v3, :cond_4

    const/16 v3, 0x36

    move/from16 v0, p1

    if-eq v0, v3, :cond_4

    if-nez p3, :cond_5

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v3, -0x1

    move/from16 v0, p2

    if-eq v0, v3, :cond_5

    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityResult(),fail due to resultCode="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    packed-switch p1, :pswitch_data_0

    :cond_6
    :goto_2
    :pswitch_0
    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    if-nez p3, :cond_7

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_PICK_MULTI_PICTURE"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance v3, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v9, 0x7f0c017f

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const-string v3, "selectedItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v3, "selectedCount"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    move v8, v12

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v44, 0x0

    :goto_3
    move/from16 v0, v44

    if-ge v0, v6, :cond_a

    move/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/net/Uri;

    if-eqz v79, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-direct {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->getFileNameFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v32

    :cond_8
    const/16 v66, 0x0

    if-eqz v32, :cond_9

    invoke-static/range {v32 .. v32}, Lcom/quramsoft/qdio/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;

    move-result-object v66

    :cond_9
    if-eqz v66, :cond_b

    const/16 v34, 0x1

    :cond_a
    if-eqz v34, :cond_c

    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0408

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c0409

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c00ee

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/util/HandleComposerAttachment$1;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/mms/util/HandleComposerAttachment$2;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/util/HandleComposerAttachment$2;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;ILandroid/net/Uri;Z)V

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v44, v44, 0x1

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/android/mms/util/HandleComposerAttachment;->addPickImage(Ljava/util/ArrayList;ILandroid/net/Uri;Z)V

    goto/16 :goto_2

    :pswitch_2
    const-string v3, "message_avatar_temp.jpg"

    const-string v4, "/mnt/sdcard/message_avatar_temp.jpg"

    const-string v9, "/data/data/com.android.mms/message_avatar_temp.jpg"

    invoke-static {v3, v4, v9}, Lcom/android/mms/ui/MessageUtils;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "file:///data/data/com.android.mms/message_avatar_temp.jpg"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move v8, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0c017f

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v3, v4, v9, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7, v8}, Lcom/android/mms/util/HandleComposerAttachment$3;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v9, "addAttachment"

    invoke-direct {v3, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_3
    if-nez p3, :cond_d

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_TAKE_PICTURE"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    const-string v3, "uri-data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_e

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "fileString is null so just return"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    invoke-static/range {v31 .. v31}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move v8, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0c017f

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v3, v4, v9, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7, v8}, Lcom/android/mms/util/HandleComposerAttachment$4;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v9, "addAttachment"

    invoke-direct {v3, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_4
    if-nez p3, :cond_f

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_PICK_PICTURE"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    move v8, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0c017f

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v3, v4, v9, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7, v8}, Lcom/android/mms/util/HandleComposerAttachment$5;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v9, "addAttachment"

    invoke-direct {v3, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_5
    if-nez p3, :cond_10

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_PICK_DRAWINGPAD"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    const-string v3, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    move v8, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0c017f

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v3, v4, v9, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const-string v3, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v43

    const-string v3, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    if-eqz v78, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    :cond_11
    if-nez v43, :cond_12

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7, v8}, Lcom/android/mms/util/HandleComposerAttachment$6;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v9, "addAttachment"

    invoke-direct {v3, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :cond_12
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v4, v0, v1}, Lcom/android/mms/util/HandleComposerAttachment$7;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;)V

    const-string v9, "addAttachment"

    invoke-direct {v3, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_6
    if-nez p3, :cond_13

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_TAKE_VIDEO"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v91

    move v8, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0c017f

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v3, v4, v9, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    invoke-direct {v4, v0, v1, v8}, Lcom/android/mms/util/HandleComposerAttachment$8;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v9, "addAttachment"

    invoke-direct {v3, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_7
    if-nez p3, :cond_14

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_PICK_SOUND"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_14
    const-string v3, "FILE_URI"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v91

    check-cast v91, Landroid/net/Uri;

    move v8, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0c017f

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v3, v4, v9, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    invoke-direct {v4, v0, v1, v8}, Lcom/android/mms/util/HandleComposerAttachment$9;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v9, "addAttachment"

    invoke-direct {v3, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_8
    if-nez p3, :cond_15

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_RECORD_SOUND"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_15
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v91

    move v8, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0c017f

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v3, v4, v9, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    invoke-direct {v4, v0, v1, v8}, Lcom/android/mms/util/HandleComposerAttachment$10;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v9, "addAttachment"

    invoke-direct {v3, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_9
    if-nez p3, :cond_16

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_ECM_EXIT_DIALOG"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_16
    const-string v3, "exit_ecm_result"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v62

    if-eqz v62, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->sendMessage(Z)V

    goto/16 :goto_2

    :pswitch_a
    if-nez p3, :cond_17

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_PICK_VCARD"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_17
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0c017f

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v3, v4, v9, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const-string v3, "android.intent.extra.STREAM"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v91

    check-cast v91, Landroid/net/Uri;

    const-string v3, "vcard"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    if-nez v91, :cond_18

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "Contact uri is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_18
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v91

    invoke-direct {v4, v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment$11;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v9, "addAttachment"

    invoke-direct {v3, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :cond_19
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "android.intent.extra.STREAM"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/util/ArrayList;->size()I

    move-result v92

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move/from16 v0, v92

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRawAttachableCountWithToast(I)I

    move-result v37

    const/16 v35, 0x0

    :goto_4
    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, v95

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Landroid/os/Parcelable;

    move-object/from16 v10, v91

    check-cast v10, Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0x14

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/mms/util/HandleComposerAttachment;->addRawMedia(Landroid/net/Uri;ZZZI)I

    add-int/lit8 v35, v35, 0x1

    goto :goto_4

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    :cond_1b
    :goto_5
    sget-boolean v3, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_2

    :cond_1c
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v27

    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ExceedMessageSizeException "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/ExceedMessageSizeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v88

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v88

    move-object/from16 v1, v55

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->showErrorPopup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_b
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment$12;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/Intent;I)V

    const-string v9, "addAttachment_rawItem"

    invoke-direct {v3, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_c
    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "REQUEST REQUEST_CODE_PICK_CONTACT"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1d

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_PICK_CONTACT"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaxRecipient()I

    move-result v3

    const/16 v4, 0x5a

    if-ge v3, v4, :cond_1e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v3

    const/16 v4, 0x5a

    if-lt v3, v4, :cond_21

    :cond_1e
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v80

    if-eqz v80, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0c0187

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v3, v4, v9, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/mms/ui/ComposeMessageFragment;->restrictContactListener:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/mms/data/Contact;->setUseYellowPage(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/mms/ui/ComposeMessageFragment;->onupdating:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual/range {v80 .. v80}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v3, Lcom/android/mms/ui/ComposeMessageFragment;->updateTarget:I

    :cond_1f
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-direct {v4, v0, v1}, Lcom/android/mms/util/HandleComposerAttachment$13;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;)V

    const-string v9, "addContact"

    invoke-direct {v3, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->requestFocusOnComposer()Z

    :cond_20
    invoke-virtual/range {v80 .. v80}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/lit16 v0, v3, 0x12c

    move/from16 v26, v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/util/HandleComposerAttachment$14;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    move/from16 v0, v26

    int-to-long v9, v0

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_21
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v80

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v80

    invoke-static {v0, v3, v4}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->checkEmailBeforeMakeToButton(Lcom/android/mms/data/ContactList;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipientErrorFalg()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->setErrorFlagInRecipientEditor(Z)V

    goto/16 :goto_2

    :pswitch_d
    if-nez p3, :cond_22

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_NAMECARD"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_22
    const-string v3, "namecard_result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_e
    if-nez p3, :cond_23

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_CALENDAR"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_23
    const-string v3, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_f
    if-nez p3, :cond_24

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_MEMO"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_24
    const-string v3, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_10
    if-nez p3, :cond_25

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_PICK_VNOTE"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_25
    const-string v3, "\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string v10, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->joinContents(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    const-string v3, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    move v8, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0c017f

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v3, v4, v9, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const-string v3, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v43

    if-nez v43, :cond_26

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$15;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7, v8}, Lcom/android/mms/util/HandleComposerAttachment$15;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v9, "addAttachment"

    invoke-direct {v3, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :cond_26
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$16;

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v4, v0, v1}, Lcom/android/mms/util/HandleComposerAttachment$16;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;)V

    const-string v9, "addAttachment"

    invoke-direct {v3, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :pswitch_11
    if-nez p3, :cond_27

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_TASK"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_27
    const-string v3, "taskstext"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    const-string v4, "email"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_28
    if-eqz v16, :cond_6

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v21

    if-eqz v21, :cond_6

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/Contact;->reload()V

    goto/16 :goto_2

    :pswitch_13
    if-nez p3, :cond_29

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_LOCATION"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_29
    const-string v3, "location"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0177

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v89

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    move-object/from16 v0, v89

    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "REQUEST_CODE_ADDTEXT_LOCATION, Toast: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v89

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_14
    if-nez p3, :cond_2a

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_PICK_LOCATION"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getImageResizeQualityFactorWhenAttach()I

    move-result v67

    const/16 v52, 0x0

    const/16 v53, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v49

    check-cast v49, Landroid/net/Uri;

    if-eqz v49, :cond_2b

    invoke-virtual/range {v49 .. v49}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v53

    :cond_2b
    const/4 v3, 0x1

    move-object/from16 v0, v53

    invoke-static {v0, v3}, Lcom/android/mms/ui/MessageUtils;->getBitmapFromFile(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v52

    if-nez v52, :cond_2c

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult REQUEST_CODE_PICK_LOCATION mapImage is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2c
    const/16 v61, 0x0

    new-instance v61, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v61 .. v61}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v52

    move/from16 v1, v67

    move-object/from16 v2, v61

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v63, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v63 .. v63}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    invoke-virtual/range {v61 .. v61}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    const-string v3, "image/jpg"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v96

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v65

    if-nez v56, :cond_2f

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c014d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v89

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x1

    move-object/from16 v0, v89

    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "REQUEST_CODE_PICK_LOCATION, Toast: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v89

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v27

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    :goto_6
    const-string v3, "location"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v3}, Landroid/sec/clipboard/ClipboardExManager;->setThawPaste()V

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0177

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v89

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    move-object/from16 v0, v89

    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "REQUEST_CODE_PICK_LOCATION, Toast: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v89

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v39

    if-nez v96, :cond_2e

    if-nez v39, :cond_6

    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSlideIndex:Ljava/lang/Integer;

    iget-object v4, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSlideIndex:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSlideIndex:Ljava/lang/Integer;

    goto/16 :goto_2

    :cond_2f
    :try_start_2
    invoke-static/range {v56 .. v56}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    const/4 v9, 0x0

    move-object/from16 v0, v65

    move-object/from16 v1, v63

    invoke-virtual {v0, v1, v3, v4, v9}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v11

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(ILandroid/net/Uri;ZZZ)I
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    :catch_2
    move-exception v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_6

    :pswitch_15
    if-nez p3, :cond_30

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_SMEMO"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_30
    const-string v3, "textbody"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_16
    if-nez p3, :cond_31

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_SNOTE"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_31
    const-string v3, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_17
    if-nez p3, :cond_32

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_SCRAPBOOK"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_32
    const-string v3, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_18
    if-nez p3, :cond_33

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_TRANS"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_33
    const-string v3, "isSubject"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v42

    const-string v3, "transString"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    const-string v3, "isSend"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    if-eqz v42, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v3, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_34
    :goto_7
    if-eqz v41, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_36

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded(I)V

    goto/16 :goto_2

    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    goto/16 :goto_2

    :pswitch_19
    if-eqz p3, :cond_2

    const-string v3, "RESERVATION_TIME"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v72

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    move-wide/from16 v0, v72

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->setReservationTime(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->getReservationTime()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/android/mms/data/WorkingMessage;->setReserveDeliveryTime(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->getDeliveryTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v3, v3, v9

    if-lez v3, :cond_37

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v3

    if-eqz v3, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateFreeMessageUI()V

    :cond_37
    :goto_8
    const-wide/16 v3, 0x0

    cmp-long v3, v72, v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v3

    if-eqz v3, :cond_39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateFreeMessageUI()V

    goto/16 :goto_2

    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    goto :goto_8

    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    goto/16 :goto_2

    :pswitch_1a
    if-nez p3, :cond_3a

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_TRANSLATE"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-static/range {v81 .. v81}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-virtual/range {v81 .. v81}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3b

    const/16 v40, 0x1

    :goto_9
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_47

    const-string v3, "source_language"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v82

    const-string v3, "source_text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v83

    const-string v3, "target_language"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    const-string v3, "target_text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v82

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v83 .. v83}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v85

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v86 .. v86}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    const-string v3, "Mms/HandleComposerAttachment"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v40, :cond_3c

    invoke-virtual/range {v86 .. v86}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {v81 .. v81}, Ljava/lang/String;->length()I

    move-result v4

    add-int v74, v3, v4

    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    if-eqz v3, :cond_45

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v3

    if-eqz v3, :cond_3d

    const/16 v35, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    move/from16 v0, v35

    if-ge v0, v3, :cond_3d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const-string v4, ""

    move/from16 v0, v35

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    add-int/lit8 v35, v35, 0x1

    goto :goto_b

    :cond_3b
    const/16 v40, 0x0

    goto/16 :goto_9

    :cond_3c
    invoke-virtual/range {v86 .. v86}, Ljava/lang/String;->length()I

    move-result v74

    goto :goto_a

    :cond_3d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v3

    move/from16 v0, v74

    if-le v0, v3, :cond_43

    const/16 v35, 0x0

    :goto_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v3

    div-int v3, v74, v3

    move/from16 v0, v35

    if-gt v0, v3, :cond_44

    if-eqz v40, :cond_3f

    if-nez v35, :cond_3f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v10

    invoke-virtual/range {v81 .. v81}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v10, v13

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, v86

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v81

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v35

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v3

    invoke-virtual/range {v81 .. v81}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v86

    :cond_3e
    :goto_d
    add-int/lit8 v35, v35, 0x1

    goto :goto_c

    :cond_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v3

    if-eqz v3, :cond_40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    move/from16 v0, v35

    if-lt v0, v3, :cond_41

    :cond_40
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v3

    move/from16 v0, v35

    if-ge v0, v3, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->addSlide(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    :cond_41
    invoke-virtual/range {v86 .. v86}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v4

    if-ge v3, v4, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    move/from16 v0, v35

    move-object/from16 v1, v86

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    goto :goto_d

    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v9

    move-object/from16 v0, v86

    invoke-virtual {v0, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v35

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v86

    goto :goto_d

    :cond_43
    if-eqz v40, :cond_46

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->isSignaturePresent:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_46

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v86

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v81

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    :cond_44
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/16 v9, 0x1e

    invoke-virtual {v3, v4, v9}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-virtual {v3, v4, v9}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->setTranslateBtnMode(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    goto/16 :goto_2

    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v86

    invoke-virtual {v3, v4, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    goto :goto_e

    :cond_47
    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "Translation is failed."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1b
    if-eqz p3, :cond_2

    const-string v3, "RESERVATION_TIME"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v50

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    move-wide/from16 v0, v50

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->setReservationTime(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->getReservationTime()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/android/mms/data/WorkingMessage;->setReserveDeliveryTime(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->getDeliveryTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v3, v3, v9

    if-lez v3, :cond_48

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    :cond_48
    const-wide/16 v3, 0x0

    cmp-long v3, v50, v3

    if-nez v3, :cond_49

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    :cond_49
    const-string v3, "DELIVERY_REPORT"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    const-string v3, "READ_REPORT"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->setMessageDeliveryReport(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->setMessageReadReport(Z)V

    if-eqz v17, :cond_4a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->SetDeliveryReadReportView(II)V

    :goto_f
    if-eqz v18, :cond_4b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x2

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->SetDeliveryReadReportView(II)V

    goto/16 :goto_2

    :cond_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    const/16 v9, 0x8

    invoke-virtual {v3, v4, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->SetDeliveryReadReportView(II)V

    goto :goto_f

    :cond_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x2

    const/16 v9, 0x8

    invoke-virtual {v3, v4, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->SetDeliveryReadReportView(II)V

    goto/16 :goto_2

    :pswitch_1c
    if-nez p3, :cond_4c

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "onActivityResult : data is null REQUEST_CODE_PICK_SCRAPBOOK"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4c
    new-instance v3, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v9, 0x7f0c017f

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move v8, v12

    const-string v3, "selectedItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v94

    const-string v3, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-nez v3, :cond_4d

    if-eqz v94, :cond_4e

    :cond_4d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$17;

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v8, v2}, Lcom/android/mms/util/HandleComposerAttachment$17;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;ZLandroid/content/Intent;)V

    const-string v9, "addAttachment"

    invoke-direct {v3, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_4e
    const-string v3, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v3, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_1d
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v80

    new-instance v93, Ljava/util/ArrayList;

    invoke-direct/range {v93 .. v93}, Ljava/util/ArrayList;-><init>()V

    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v22

    const/4 v3, 0x1

    move-object/from16 v0, v80

    invoke-static {v0, v3}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v23

    invoke-static/range {v80 .. v80}, Lcom/android/mms/data/Conversation;->getRecipientByList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v71

    const-string v3, "[,;\u060c\u061b]"

    move-object/from16 v0, v71

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v70

    const/16 v84, 0x0

    new-instance v33, Lcom/android/mms/freemessage/FreeMessageReceiverService;

    invoke-direct/range {v33 .. v33}, Lcom/android/mms/freemessage/FreeMessageReceiverService;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mParticipantChangedHandler:Landroid/os/Handler;

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/android/mms/freemessage/FreeMessageReceiverService;->setHandler(Landroid/os/Handler;)V

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :goto_10
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_4f
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_50

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_58

    :cond_50
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment;->removeActualParticipants(Ljava/util/ArrayList;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getFreeMessageAdhocGroupSizeMax()I

    move-result v4

    if-ge v3, v4, :cond_55

    const/16 v35, 0x0

    :goto_11
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    move/from16 v0, v35

    if-ge v0, v3, :cond_52

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v59

    invoke-static {v3, v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    add-int/lit8 v84, v84, 0x1

    :cond_51
    add-int/lit8 v35, v35, 0x1

    goto :goto_11

    :cond_52
    if-lez v84, :cond_53

    invoke-virtual/range {p0 .. p3}, Lcom/android/mms/util/HandleComposerAttachment;->showCheckSpamNumberDialog(IILandroid/content/Intent;)Z

    goto/16 :goto_2

    :cond_53
    new-instance v60, Ljava/util/ArrayList;

    invoke-direct/range {v60 .. v60}, Ljava/util/ArrayList;-><init>()V

    const/16 v35, 0x0

    :goto_12
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v35

    if-ge v0, v3, :cond_54

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v35, v35, 0x1

    goto :goto_12

    :cond_54
    invoke-static/range {v60 .. v60}, Lcom/android/mms/ui/MessageUtils;->convertToFreeMessage(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v69

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestInviteChat(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_55
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->getMaxAdhocGroupSize()I

    move-result v4

    if-ge v3, v4, :cond_57

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :goto_13
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v68

    invoke-static {v3, v0}, Lcom/android/mms/rcs/RcsChatManager;->generateImsUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v93

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_56
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v93

    invoke-static {v4, v0}, Lcom/android/mms/rcs/transaction/ActionsFactory;->addParticipants(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    :cond_57
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c050a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getFreeMessageAdhocGroupSizeMax()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v90

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    move-object/from16 v0, v90

    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_58
    const/4 v3, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v80

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->discard()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    new-instance v38, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/ConversationComposer;

    move-object/from16 v0, v38

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "sendto"

    move-object/from16 v0, v38

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "from_chat_tab"

    const/4 v4, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "add_friend_chat"

    const/4 v4, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x14000000

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "smsto:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_10
        :pswitch_0
        :pswitch_12
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_b
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_19
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1b
        :pswitch_1c
        :pswitch_17
        :pswitch_1d
    .end packed-switch
.end method

.method public removeActualParticipants(Ljava/util/ArrayList;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p2

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public setIntentForVideo(Landroid/content/Intent;Z)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->requiresRcs()Z

    move-result v0

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getFreeMessageFileSizeLimit()J

    move-result-wide v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeLimit()J

    move-result-wide v1

    :cond_0
    if-eqz v5, :cond_2

    const-wide/16 v3, 0x0

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v6

    int-to-long v3, v6

    :cond_1
    if-eqz p2, :cond_7

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v6

    int-to-long v6, v6

    add-long v1, v6, v3

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsModeCaptureVideoMaxSize()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_3
    cmp-long v6, v1, v10

    if-gtz v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v0, :cond_8

    cmp-long v6, v1, v10

    if-nez v6, :cond_8

    :cond_4
    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "android.intent.extra.sizeLimit"

    invoke-virtual {p1, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v0, :cond_5

    const-string v6, "mms"

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v6

    int-to-long v1, v6

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v6

    int-to-long v1, v6

    goto :goto_1

    :cond_8
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0c002f

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public showCheckSpamNumberDialog(IILandroid/content/Intent;)Z
    .locals 15

    const/4 v9, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "result"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v13, 0x1

    invoke-static {v8, v13}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v2

    new-instance v12, Lcom/android/mms/data/ContactList;

    invoke-direct {v12}, Lcom/android/mms/data/ContactList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    if-ge v4, v13, :cond_1

    invoke-virtual {v2, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/data/Contact;

    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    iget-object v13, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v13, v7}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v2, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/android/mms/freemessage/ChooseSpamNumberAdapter;

    iget-object v13, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v14, 0x7f04000e

    invoke-direct {v6, v13, v14, v12}, Lcom/android/mms/freemessage/ChooseSpamNumberAdapter;-><init>(Landroid/content/Context;ILcom/android/mms/data/ContactList;)V

    iget-object v13, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v13, 0x7f04000f

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const v13, 0x7f0b0059

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    invoke-virtual {v10, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v13, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v13, 0x7f0c02bc

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v13, 0x7f0c021e

    new-instance v14, Lcom/android/mms/util/HandleComposerAttachment$CreateSpamGroupChatListener;

    invoke-direct/range {v14 .. v18}, Lcom/android/mms/util/HandleComposerAttachment$CreateSpamGroupChatListener;-><init>(Lcom/android/mms/util/HandleComposerAttachment;IILandroid/content/Intent;)V

    invoke-virtual {v0, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v13, 0x7f0c004e

    const/4 v14, 0x0

    invoke-virtual {v0, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v6}, Lcom/android/mms/freemessage/ChooseSpamNumberAdapter;->getCheckedCount()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v13, -0x1

    invoke-virtual {v3, v13}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Lcom/android/mms/freemessage/ChooseSpamNumberAdapter;->setSaveButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    :goto_1
    return v9

    :cond_2
    const/4 v13, -0x1

    invoke-virtual {v3, v13}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Lcom/android/mms/freemessage/ChooseSpamNumberAdapter;->setSaveButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method public startActivityForAddMedia(IZ)V
    .locals 35

    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivityForAddMedia,type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",replace:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "startActivityforAddMedia fragment detached, just return"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v28, 0x0

    const/16 v25, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mForceShowSip:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v18, 0x0

    :cond_2
    :goto_2
    if-nez v18, :cond_23

    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivityForAddMedia, cannot start. reqCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContextServiceEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "ATTF"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v3

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_4

    const/16 v28, 0x37

    :goto_4
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    const-string v3, "output"

    new-instance v4, Ljava/io/File;

    const-string v5, "/mnt/sdcard/message_avatar_temp.jpg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "crop"

    const-string v4, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "scale"

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "scaleUpIfNeeded"

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "aspectX"

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "aspectY"

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "outputX"

    const/16 v4, 0x280

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "outputY"

    const/16 v4, 0x1e0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.acrodea.samsung_avatar_maker"

    const-string v4, "com.acrodea.samsung_avatar_maker.AvatarMaker_Select"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_4
    const/16 v28, 0x36

    goto :goto_4

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "IMAG"

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.gallery3d"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.cooliris.media"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.android.gallery3d"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_5
    const-string v14, "image/*"

    if-eqz p2, :cond_8

    const/16 v28, 0x29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_5
    if-eqz v18, :cond_6

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    const-string v15, "IMAGE"

    goto/16 :goto_2

    :cond_7
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageSupportMultiImageAttach()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/util/HandleComposerAttachment;->getAvailableSlideCount(I)I

    move-result v10

    if-nez v10, :cond_9

    const/4 v4, -0x6

    const v5, 0x7f0c00c3

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto/16 :goto_0

    :cond_9
    const/16 v28, 0x38

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_6
    const-string v3, "multi-pick"

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "pick-max-item"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    :cond_a
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const/16 v28, 0xa

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    :cond_c
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "TKPT"

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_d

    const/16 v28, 0x2a

    :goto_7
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Camera"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "return-uri"

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v15, "TAKE_PICTURE"

    goto/16 :goto_2

    :cond_d
    const/16 v28, 0xb

    goto :goto_7

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "VDEO"

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.gallery3d"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.cooliris.media"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.android.gallery3d"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_e
    const-string v14, "video/*"

    if-eqz p2, :cond_10

    const/16 v28, 0x2b

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_11

    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_9
    if-eqz v18, :cond_f

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment;->setIntentForVideo(Landroid/content/Intent;Z)V

    const-string v15, "VIDEO"

    goto/16 :goto_2

    :cond_10
    const/16 v28, 0xc

    goto :goto_8

    :cond_11
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.OPENABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "RCVD"

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_12

    const/16 v28, 0x2c

    :goto_a
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment;->setIntentForVideo(Landroid/content/Intent;Z)V

    const-string v15, "RECORD_VIDEO"

    goto/16 :goto_2

    :cond_12
    const/16 v28, 0xd

    goto :goto_a

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "AUDI"

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.app.myfiles"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_13

    const/16 v28, 0x2d

    :goto_b
    new-instance v18, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.myfiles.PICK_DATA"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "FOLDERPATH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Sounds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "CONTENT_TYPE"

    const-string v4, "audio/*"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "AUDIO"

    goto/16 :goto_2

    :cond_13
    const/16 v28, 0xe

    goto :goto_b

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.app.voicenote"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->shouldGoDownload(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.app.voicerecorder"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.app.voicenote"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->showDownloadDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "RCAD"

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_18

    const/16 v28, 0x2e

    :goto_c
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.provider.MediaStore.RECORD_SOUND"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v31

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const/16 v34, 0x0

    if-eqz v33, :cond_15

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v34

    :cond_15
    invoke-static/range {v33 .. v33}, Lcom/android/mms/util/TelephonyUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v24

    const/4 v3, 0x3

    aget v3, v24, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    mul-int/lit8 v34, v34, 0x3

    :cond_16
    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxContentSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", textBodySize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v31, :cond_1b

    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v26, v0

    const-wide/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v29, v0

    :cond_17
    if-eqz p2, :cond_1a

    const-wide/16 v3, 0x0

    cmp-long v3, v29, v3

    if-lez v3, :cond_1a

    add-long v3, v26, v29

    cmp-long v3, v3, v22

    if-gez v3, :cond_19

    add-long v20, v26, v29

    :goto_d
    const-string v3, "android.provider.MediaStore.extra.MAX_BYTES"

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "mime_type"

    const-string v4, "audio/amr"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "RECORD_AUDIO"

    goto/16 :goto_2

    :cond_18
    const/16 v28, 0xf

    goto/16 :goto_c

    :cond_19
    move/from16 v0, v34

    int-to-long v3, v0

    sub-long v20, v22, v3

    goto :goto_d

    :cond_1a
    move-wide/from16 v20, v26

    goto :goto_d

    :cond_1b
    move/from16 v0, v34

    int-to-long v3, v0

    sub-long v20, v22, v3

    goto :goto_d

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "CNTC"

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRawAttachmentCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getRawAttachmentsCount()I

    move-result v4

    sub-int v25, v3, v4

    if-gtz v25, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0c0043

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRawAttachmentCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.android.contacts"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRawAttachmentCountForContact()I

    move-result v17

    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/x-vcard"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "maxRecipientCount"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "choice_limit"

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v28, 0x14

    const-string v15, "CONTACTS"

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "CALD"

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRawAttachmentCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getRawAttachmentsCount()I

    move-result v4

    sub-int v25, v3, v4

    if-gtz v25, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0c0043

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRawAttachmentCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1e
    new-instance v13, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v13, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "vnd.android.cursor.item/vnd.samsung.calendar.*"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "multiple_choice"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "choice_limit"

    move/from16 v0, v25

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v15, "SPLANNER"

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/mms/ui/IconWeightListAdapter;->updateWeight(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v4, 0x1a

    invoke-virtual {v3, v13, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v16

    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0125

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c0126

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c004d

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "MEMO"

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.samsung.android.app.memo"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->shouldGoDownload(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.samsung.android.app.memo"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->showDownloadDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1f
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.app.memo"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "text/plain"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "PICKALL"

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v28, 0x1b

    goto/16 :goto_2

    :pswitch_b
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/x-vtodo"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v28, 0x33

    goto/16 :goto_2

    :pswitch_c
    const-string v15, "MAPS"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "LOCA"

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/util/NetworkConnectionUtils;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showNetworkErrorDialog()V

    goto/16 :goto_2

    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/mms/ui/IconWeightListAdapter;->updateWeight(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v12

    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "image_location"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v3

    if-nez v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresRcs()Z

    move-result v3

    if-nez v3, :cond_21

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v4, 0x24

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_21
    const/4 v3, 0x0

    goto :goto_e

    :pswitch_d
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.PENMEMO_ATTACH"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "app_name"

    const-string v4, "com.android.mms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v28, 0x33

    goto/16 :goto_2

    :pswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/util/HandleComposerAttachment;->getAvailableSlideCount(I)I

    move-result v3

    if-gtz v3, :cond_22

    const/4 v4, -0x6

    const v5, 0x7f0c00c3

    const/4 v6, 0x0

    const/16 v7, 0x35

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto/16 :goto_0

    :cond_22
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.SNOTE_PICK"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "SelectMode"

    const-string v4, "single"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ReturnType"

    const-string v4, "Imageonly"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v28, 0x35

    const-string v15, "SNOTE"

    goto/16 :goto_2

    :pswitch_f
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "application/vnd.penmemo.drawingpad"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v28, 0x33

    goto/16 :goto_2

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "SCRP"

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v18, Landroid/content/Intent;

    const-string v3, "intent.action.ACTION_GET_SCRAPBOOK"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x3a

    const-string v15, "SCRAPBOOK"

    goto/16 :goto_2

    :pswitch_11
    new-instance v18, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.myfiles.PICK_DATA"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x3d

    goto/16 :goto_2

    :cond_23
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportContextAwareness()Z

    move-result v3

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/mms/ui/IconWeightListAdapter;->updateWeight(Landroid/content/Context;I)V

    :cond_24
    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivityForAddMedia. reqCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public startActivityForAddText(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "Mms/HandleComposerAttachment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivityForAddText, type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Mms/HandleComposerAttachment"

    const-string v3, "addtext, Fragment already detached. just Finish"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_3

    const-string v2, "Mms/HandleComposerAttachment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivityForAddText, cannot start. reqCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "additional"

    const-string v3, "namecard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1e

    goto :goto_1

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.calendar"

    const-string v3, "com.android.calendar.agenda.AgendaPickActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "multiple_choice"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x1f

    goto :goto_1

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.app.memo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    goto :goto_1

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/tasks_string"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x22

    goto :goto_1

    :pswitch_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContextServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v3, "QUIC"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showQuickTextDialog()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/util/NetworkConnectionUtils;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showNetworkErrorDialog()V

    goto/16 :goto_1

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image_location"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x23

    goto/16 :goto_1

    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.smemo.pick"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x25

    goto/16 :goto_1

    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SNOTE_GET_CONTENTS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "SelectMode"

    const-string v3, "single"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ReturnType"

    const-string v3, "Textonly"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x26

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/SipHandler;->setOnScreen(Z)V

    :cond_4
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean v6, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mForceShowSip:Z

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v2}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    :cond_5
    const-string v2, "Mms/HandleComposerAttachment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivityForAddText. reqCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
