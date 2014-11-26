.class public Lcom/android/mms/transaction/MessageBackgroundSenderService;
.super Landroid/app/Service;
.source "MessageBackgroundSenderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;,
        Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;
    }
.end annotation


# static fields
.field public static final APP_ID_NONE:I = 0x0

.field public static final MESSAGE_APP_ID:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_APP_ID"

.field public static final MESSAGE_MSG_ID:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_MSG_ID"

.field public static final MESSAGE_STATUS:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_STATUS"

.field public static final MESSAGE_STATUS_CHANGED:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

.field public static final MESSAGE_TYPE:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_TYPE"

.field private static final RECEIVE_STATUS:I = 0x64

.field private static final SENDING_FAIL:I = 0x0

.field private static final SENDING_SUCCESS:I = 0x1

.field public static final SENDMULTISLIDE:Ljava/lang/String; = "send_multi_slide"

.field private static final SIZE_EXCEED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Mms/MessageBackgroundSenderService"

.field private static final sPreOpenedFilesDummy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallbackBinder:Lcom/android/mms/transaction/ISnsRemoteService$Stub;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListening:Z

.field private mMsgSender:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

.field private mMsgStatusReceiver:Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;

.field private final mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender$Stub;

.field final mSnsCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/mms/transaction/ISnsRemoteServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->sPreOpenedFilesDummy:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mMsgStatusReceiver:Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;

    iput-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mListening:Z

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mSnsCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$1;-><init>(Lcom/android/mms/transaction/MessageBackgroundSenderService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender$Stub;

    new-instance v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$2;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$2;-><init>(Lcom/android/mms/transaction/MessageBackgroundSenderService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mCallbackBinder:Lcom/android/mms/transaction/ISnsRemoteService$Stub;

    iput-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mToast:Landroid/widget/Toast;

    new-instance v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$3;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$3;-><init>(Lcom/android/mms/transaction/MessageBackgroundSenderService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Z
    .locals 1
    .param p0    # Lcom/android/mms/transaction/MessageBackgroundSenderService;

    iget-boolean v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mListening:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/transaction/MessageBackgroundSenderService;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/transaction/MessageBackgroundSenderService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mListening:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;
    .locals 1
    .param p0    # Lcom/android/mms/transaction/MessageBackgroundSenderService;

    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mMsgStatusReceiver:Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->sPreOpenedFilesDummy:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Landroid/widget/Toast;
    .locals 1
    .param p0    # Lcom/android/mms/transaction/MessageBackgroundSenderService;

    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/mms/transaction/MessageBackgroundSenderService;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0    # Lcom/android/mms/transaction/MessageBackgroundSenderService;
    .param p1    # Landroid/widget/Toast;

    iput-object p1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/transaction/MessageBackgroundSenderService;

    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/MessageBackgroundSenderService;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/transaction/MessageBackgroundSenderService;
    .param p1    # Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/MessageBackgroundSenderService;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Lcom/android/mms/transaction/MessageBackgroundSenderService;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->isAttachSupportedType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;
    .locals 1
    .param p0    # Lcom/android/mms/transaction/MessageBackgroundSenderService;

    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mMsgSender:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/transaction/MessageBackgroundSenderService;Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;
    .locals 0
    .param p0    # Lcom/android/mms/transaction/MessageBackgroundSenderService;
    .param p1    # Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    iput-object p1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mMsgSender:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/mms/transaction/MessageBackgroundSenderService;

    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .param p1    # Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v3, 0x0

    const-string v9, ""

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    const-string v0, "content"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v13, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v13, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v11

    invoke-static {v9}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2e

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-ltz v7, :cond_2

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-virtual {v11, v8}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    return-object v10

    :cond_3
    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v13, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v13, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :cond_8
    const-string v0, "file"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1
.end method

.method private isAttachSupportedType(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/mms/model/MediaModel;->isVItem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1    # Landroid/content/Intent;

    const-string v0, "Mms/MessageBackgroundSenderService"

    const-string v1, "MessageBackgroundSenderService : onBind()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/android/mms/transaction/IMessageBackgroundSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/MessageBackgroundSenderService"

    const-string v1, "MessageBackgroundSenderService : return mServiceBinder"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender$Stub;

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/android/mms/transaction/ISnsRemoteService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Mms/MessageBackgroundSenderService"

    const-string v1, "MessageBackgroundSenderService : return mCallbackBinder"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mCallbackBinder:Lcom/android/mms/transaction/ISnsRemoteService$Stub;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "Mms/MessageBackgroundSenderService"

    const-string v1, "MessageBackgroundSenderService : onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;-><init>(Lcom/android/mms/transaction/MessageBackgroundSenderService;Lcom/android/mms/transaction/MessageBackgroundSenderService$1;)V

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mMsgStatusReceiver:Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v1, "Mms/MessageBackgroundSenderService"

    const-string v2, "MessageBackgroundSenderService : onDestroy()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mMsgStatusReceiver:Lcom/android/mms/transaction/MessageBackgroundSenderService$MessageStatusReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService;->mListening:Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/MessageBackgroundSenderService"

    const-string v2, "mMsgStatusReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I

    const-string v0, "Mms/MessageBackgroundSenderService"

    const-string v1, "MessageBackgroundSenderService : onStartCommand()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
