.class public Lcom/android/phone/AnswerMemoRecorder;
.super Ljava/lang/Object;
.source "AnswerMemoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AnswerMemoRecorder$RecorderThread;
    }
.end annotation


# static fields
.field public static final ANSWER_MEMO_PHONE_PATH:Ljava/lang/String;

.field private static sMe:Lcom/android/phone/AnswerMemoRecorder;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallerNumber:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInfoDurationRegistrantList:Landroid/os/RegistrantList;

.field private mIsPaused:Z

.field private mIsPreparing:Z

.field private mIsRecording:Z

.field private mIsServiceAlive:Z

.field private mRecordedDurationMSec:I

.field private mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

.field private mRecorderThread:Lcom/android/phone/AnswerMemoRecorder$RecorderThread;

.field private mStartRecordTime:J

.field private mStateChangedRegistrantList:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.AnswerMemo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AnswerMemoRecorder;->ANSWER_MEMO_PHONE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AnswerMemoRecorder"

    iput-object v0, p0, Lcom/android/phone/AnswerMemoRecorder;->LOG_TAG:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/phone/AnswerMemoRecorder;->mStartRecordTime:J

    iput v2, p0, Lcom/android/phone/AnswerMemoRecorder;->mRecordedDurationMSec:I

    iput-object v3, p0, Lcom/android/phone/AnswerMemoRecorder;->mCallerNumber:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/AnswerMemoRecorder;->mIsPreparing:Z

    iput-boolean v2, p0, Lcom/android/phone/AnswerMemoRecorder;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/phone/AnswerMemoRecorder;->mIsPaused:Z

    iput-boolean v2, p0, Lcom/android/phone/AnswerMemoRecorder;->mIsServiceAlive:Z

    iput-object v3, p0, Lcom/android/phone/AnswerMemoRecorder;->mInfoDurationRegistrantList:Landroid/os/RegistrantList;

    iput-object v3, p0, Lcom/android/phone/AnswerMemoRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    new-instance v0, Lcom/android/phone/AnswerMemoRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/phone/AnswerMemoRecorder$1;-><init>(Lcom/android/phone/AnswerMemoRecorder;)V

    iput-object v0, p0, Lcom/android/phone/AnswerMemoRecorder;->mHandler:Landroid/os/Handler;

    const-string v0, "AnswerMemoRecorder Create"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/AnswerMemoRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v3, p0, Lcom/android/phone/AnswerMemoRecorder;->mRecorderThread:Lcom/android/phone/AnswerMemoRecorder$RecorderThread;

    iput-boolean v2, p0, Lcom/android/phone/AnswerMemoRecorder;->mIsPreparing:Z

    iput-boolean v2, p0, Lcom/android/phone/AnswerMemoRecorder;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/phone/AnswerMemoRecorder;->mIsPaused:Z

    iput-wide v4, p0, Lcom/android/phone/AnswerMemoRecorder;->mStartRecordTime:J

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/AnswerMemoRecorder;->mInfoDurationRegistrantList:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/AnswerMemoRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AnswerMemoRecorder;)Z
    .locals 1
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;

    iget-boolean v0, p0, Lcom/android/phone/AnswerMemoRecorder;->mIsServiceAlive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/AnswerMemoRecorder;)Landroid/os/RegistrantList;
    .locals 1
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/AnswerMemoRecorder;)J
    .locals 2
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;

    invoke-direct {p0}, Lcom/android/phone/AnswerMemoRecorder;->getAvailableStorage()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/phone/AnswerMemoRecorder;J)J
    .locals 0
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/phone/AnswerMemoRecorder;->mStartRecordTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/phone/AnswerMemoRecorder;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder;->mCallerNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/AnswerMemoRecorder;->getContactDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/phone/AnswerMemoRecorder;I)I
    .locals 0
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/AnswerMemoRecorder;->mRecordedDurationMSec:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/AnswerMemoRecorder;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/AnswerMemoRecorder;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/AnswerMemoRecorder;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/phone/AnswerMemoRecorder;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/AnswerMemoRecorder;->mIsPaused:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/phone/AnswerMemoRecorder;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/AnswerMemoRecorder;->mIsPreparing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .locals 1
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/AnswerMemoRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .locals 0
    .param p0    # Lcom/android/phone/AnswerMemoRecorder;
    .param p1    # Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iput-object p1, p0, Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object p1
.end method

.method private getAvailableStorage()J
    .locals 6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailableStorage. storageDirectory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method private getContactDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1    # Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "display_name"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "number"

    aput-object v4, v3, v1

    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "display_name"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v1, "number"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v1, "_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    const-string v1, "data"

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "mimetype=?"

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v9, "vnd.android.cursor.item/name"

    aput-object v9, v8, v1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    const-string v13, ""

    :cond_0
    const-string v1, "AnswerMemoRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayName = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 p1, v13

    :cond_4
    :goto_0
    return-object p1

    :cond_5
    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v14, :cond_4

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v12, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method

.method public static getInstance()Lcom/android/phone/AnswerMemoRecorder;
    .locals 1

    sget-object v0, Lcom/android/phone/AnswerMemoRecorder;->sMe:Lcom/android/phone/AnswerMemoRecorder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/AnswerMemoRecorder;

    invoke-direct {v0}, Lcom/android/phone/AnswerMemoRecorder;-><init>()V

    sput-object v0, Lcom/android/phone/AnswerMemoRecorder;->sMe:Lcom/android/phone/AnswerMemoRecorder;

    :cond_0
    sget-object v0, Lcom/android/phone/AnswerMemoRecorder;->sMe:Lcom/android/phone/AnswerMemoRecorder;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "AnswerMemoRecorder"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "AnswerMemoRecorder"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method


# virtual methods
.method public getStartRecordTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/phone/AnswerMemoRecorder;->mStartRecordTime:J

    return-wide v0
.end method

.method public isVoiceRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/AnswerMemoRecorder;->mIsRecording:Z

    return v0
.end method

.method public stopRecord()V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v1, "stopRecord"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder;->mRecorderThread:Lcom/android/phone/AnswerMemoRecorder$RecorderThread;

    if-eqz v1, :cond_0

    const-string v1, "stopRecording"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder;->mRecorderThread:Lcom/android/phone/AnswerMemoRecorder$RecorderThread;

    invoke-virtual {v1}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->stopRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0909ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v5, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    iput-object v6, p0, Lcom/android/phone/AnswerMemoRecorder;->mRecorderThread:Lcom/android/phone/AnswerMemoRecorder$RecorderThread;

    iput v4, p0, Lcom/android/phone/AnswerMemoRecorder;->mRecordedDurationMSec:I

    :cond_0
    iput-boolean v4, p0, Lcom/android/phone/AnswerMemoRecorder;->mIsPreparing:Z

    iput-boolean v4, p0, Lcom/android/phone/AnswerMemoRecorder;->mIsRecording:Z

    iput-boolean v4, p0, Lcom/android/phone/AnswerMemoRecorder;->mIsPaused:Z

    iput-object v6, p0, Lcom/android/phone/AnswerMemoRecorder;->mCallerNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    const-string v1, "stopRecording failed"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0909bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v5, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
