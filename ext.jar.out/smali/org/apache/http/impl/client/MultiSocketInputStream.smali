.class public Lorg/apache/http/impl/client/MultiSocketInputStream;
.super Ljava/io/InputStream;
.source "MultiSocketInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;,
        Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;,
        Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;,
        Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;,
        Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;
    }
.end annotation


# static fields
.field private static final BLOCKED:B = -0x1t

.field protected static BUF_Read_Speed:D = 0.0

.field protected static B_Ratio_BUF_LTE:D = 0.0

.field private static final CAL_REAL_TIME_SPEED:Z = true

.field private static final CLEARED:B = 0x4t

.field protected static DEFAULT_INTERFACE_FOR_INITIAL_CHUNK:I = 0x0

.field public static ENABLE_EXTREME_CONDITION_THREAD:Z = false

.field private static final ENABLE_TWO_CHUNK_AFTER_SLOW:Z = true

.field private static final EXIT_CANCEL:I = 0x1

.field private static final EXIT_CONNECTION_FAIL:I = 0x3

.field private static final EXIT_NOTSUPPORT:I = 0x2

.field private static final EXIT_SUCCEED:I = 0x0

.field protected static EXPECTSIZE:I = 0x0

.field protected static EXTREME_TIME_RATIO:I = 0x0

.field private static final FULLREAD:B = 0x3t

.field protected static HANDOVER_WAIT_INTERVAL:I = 0x0

.field protected static IDLE_THREAD_WAIT_INTERVAL:I = 0x0

.field protected static INIT_BUFFERLEN:I = 0x0

.field private static final LOAD_BALANCE:Z = true

.field public static MAXMAXTIMEFORSPEED:J = 0x0L

.field public static MAXTIMEFORSPEED:J = 0x0L

.field protected static MAX_BUFFERLEN:I = 0x0

.field private static final MAX_DATA_BUFFER_REST_SIZE:J = 0x2000000L

.field private static final MAX_DATA_BUFFER_SIZE:J = 0x7fffffffffffffffL

.field private static final MAX_DATA_BUFFER_SIZE_MEMORY:J = 0x2000000L

.field public static MAX_DOWNLOADED_DATA_FOR_SPEED_CALC:I = 0x0

.field protected static MAX_EXCEPTION_COUNT:I = 0x0

.field public static MAX_JUMP_STEP:I = 0x0

.field public static MAX_LAST_CHUNK_SIZE_FOR_MERGE:I = 0x0

.field protected static MAX_MULTIRAT_BLOCK_SIZE:I = 0x0

.field protected static MAX_MULTIRAT_BLOCK_SIZE_CON_CLOSED:I = 0x0

.field public static MINSIZEFORSPEED:I = 0x0

.field public static MINTIMEFORSPEED:J = 0x0L

.field public static MIN_BLOCKSIZE_TO_HANDOVER:I = 0x0

.field public static MIN_DATA_READ_SPEED_CALC:I = 0x0

.field protected static MIN_DIFF_TIME_FOR_HANDOVER:I = 0x0

.field protected static MIN_MULTIRAT_BLOCK_SIZE:I = 0x0

.field private static MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I = 0x0

.field private static MIN_RATIO_FOR_ONLY_ONE_INF_1V0:I = 0x0

.field protected static MIN_SIZE_FOR_MULTISOCKET:I = 0x0

.field protected static MIN_SIZE_FOR_MULTISOCKET_CON_CLOSE:I = 0x0

.field private static final MIN_TIME_TO_SUBMIT:J = 0x7d0L

.field protected static MULTIRAT_BLOCK_DIV:I = 0x0

.field protected static MULTIRAT_BLOCK_DIV_CON_CLOSED:I = 0x0

.field private static final NOT_READ:B = 0x0t

.field private static final OCCUPIED:B = 0x1t

.field private static final READING:B = 0x2t

.field private static final RR_FAILED:I = 0x1

.field private static final RR_NOT_INITIALED:I = 0x0

.field private static final RR_STOPPED:I = -0x1

.field private static final RR_SUCCESS1:I = 0x2

.field private static final RR_SUCCESS2:I = 0x3

.field private static final SAVE_BUF_TO_FILE:Z = true

.field private static final SB_EXIT_SPRATIO_LTE:I = -0x2

.field private static final SB_EXIT_SPRATIO_WIFI:I = -0x1

.field private static final SB_SHOWABNORMAL_LTE:I = -0x4

.field private static final SB_SHOWABNORMAL_STARTREADBUFFER:I = -0x5

.field private static final SB_SHOWABNORMAL_WIFI:I = -0x3

.field protected static final SOCKET_NUMBER:I = 0x2

.field protected static final SOCK_TIME_OUT:I = 0x1388

.field public static SPEED_CALC:Z = false

.field protected static SPEED_RATIO_FOR_EXTREME_HO:I = 0x0

.field protected static SPEED_RATIO_MAKE_STOPPED:I = 0x0

.field private static final STOP_SEC_INF_WHILE_SLOW:Z = true

.field protected static THRESHOLD_SPEED:I = 0x0

.field protected static TIMEOUT_WRITE_COMMON_BUFFER:I = 0x0

.field protected static final WAIT_FOR_FORCE_HANDOVER:I = 0x3e8

.field protected static WAIT_FOR_INTERFACE_TIME_OUT:I = 0x0

.field protected static WAIT_FOR_RANGEREQUEST_TIME_OUT:I = 0x0

.field public static WAIT_FOR_READ_TIME_OUT:J = 0x0L

.field protected static WAIT_TIME_TILL_READ_FROM_COMMON_BUFFER:I = 0x0

.field private static final WIFI2Session:Z = false

.field private static final mContinueFullMaxBlock:I = 0x2

.field protected static final sBufFileName_pre:Ljava/lang/String; = ".sbBuf_"

.field private static sMaxBlock:I

.field private static sThreadID:I


# instance fields
.field private DETAIL_LOG:Z

.field protected final MIN_BYTES_TO_CALC_SPEED:I

.field private final MIN_TIME_TO_CHECK_STOP_SLOW:I

.field private SEND_NO_TRAFFIC_WARN:Z

.field private TEST_GET_TRAFFIC:Z

.field private bAppIsReadingNow:Z

.field protected bAppReading:Z

.field private bExtremThreadExisted:Z

.field private bExtremThreadStarted:Z

.field protected final bISHTTPS:Z

.field private bSBUsed:Z

.field private bStartReadBufferSBStopSent:Z

.field private bStopSecDecisionMade:Z

.field private bufReadSpeed:J

.field private bytesA:J

.field private bytesB:J

.field private bytesC:J

.field private childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

.field protected closed:Z

.field protected connectionTime:[J

.field customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

.field protected disconnCount:[I

.field private failReasonInExtreme:I

.field private finishedThreadNum:I

.field protected lockAppReading:Ljava/lang/Object;

.field private final mAlgoType:I

.field private mAutoEnableMultiRatSuccess:Z

.field private mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

.field private mBlockSize:I

.field private mBlockStatus:[B

.field private mBytesForMultiSocket:J

.field private mBytesRemaining:J

.field private mContentLength:J

.field private mContentLengthRangeRequest:J

.field private mDataDownloaded:[J

.field mDefaultRequestDirectorInstance:Lorg/apache/http/impl/client/DefaultRequestDirector;

.field protected final mDestIPVer:I

.field private mExtDBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

.field private mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

.field protected mFinished:Z

.field private mHttpContext:Lorg/apache/http/protocol/HttpContext;

.field private mHttpHost:[Lorg/apache/http/HttpHost;

.field private mHttpRequest:[Lorg/apache/http/HttpRequest;

.field private mInBuffer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAppStartedReading:Z

.field private mIsConnectionClosedAfterEveryRequest:Z

.field private mIsMultiSocketStarted:Z

.field private mIsReadFromBuffer:Z

.field protected mLastReadTime:J

.field private mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;

.field public mMainRequest:Lorg/apache/http/HttpRequest;

.field private mMainSocketAfterHandover:I

.field private mMainSocketConnectTime:J

.field private mMainSocketInputStream:Ljava/io/InputStream;

.field private mMainSocketInterface:I

.field private mMainThreadID:J

.field private mMaxBlockNumber:I

.field private mOffset:J

.field protected mOriMainInterface:I

.field protected final mOriOffset:J

.field private mOtherInterface:I

.field protected mProxy:Lorg/apache/http/HttpHost;

.field private mRangeRequestSuccess:I

.field private mReadBlockNumber:Ljava/lang/Integer;

.field private mRemoteAddress:[Ljava/net/InetAddress;

.field private mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

.field private mResponeTimeFromMainSocket:J

.field private mRestBlockSize:I

.field private mRestBuffer:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

.field protected final mSchemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field private mSpeedForEachInterface:[J

.field private mSpeedRatio:D

.field private mStartReadTime:[J

.field private mTimeForDownload:[J

.field private mWaitTime:J

.field protected parentDir:Ljava/io/File;

.field private sbUsedLocker:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x3e8

    const/4 v1, 0x5

    sput v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_RANGEREQUEST_TIME_OUT:I

    const/16 v0, 0x1f4

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->HANDOVER_WAIT_INTERVAL:I

    const/16 v0, 0x8

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->sMaxBlock:I

    const/4 v0, 0x0

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->sThreadID:I

    const/4 v0, 0x2

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->SPEED_RATIO_FOR_EXTREME_HO:I

    sput v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_DIFF_TIME_FOR_HANDOVER:I

    sput v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I

    sput v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_1V0:I

    const-wide/high16 v0, 0x400c000000000000L

    sput-wide v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->B_Ratio_BUF_LTE:D

    const-wide/high16 v0, 0x403e000000000000L

    sput-wide v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->BUF_Read_Speed:D

    return-void
.end method

.method public constructor <init>(JLjava/io/InputStream;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/conn/ManagedClientConnection;ZIJLorg/apache/http/impl/client/DefaultRequestDirector;JILorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpRequest;JLorg/apache/http/HttpHost;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 10
    .param p1    # J
    .param p3    # Ljava/io/InputStream;
    .param p4    # Lorg/apache/http/HttpRequest;
    .param p5    # Lorg/apache/http/HttpHost;
    .param p6    # Lorg/apache/http/protocol/HttpContext;
    .param p7    # Lorg/apache/http/conn/ManagedClientConnection;
    .param p8    # Z
    .param p9    # I
    .param p10    # J
    .param p12    # Lorg/apache/http/impl/client/DefaultRequestDirector;
    .param p13    # J
    .param p15    # I
    .param p16    # Lorg/apache/http/impl/client/RoutedRequest;
    .param p17    # Lorg/apache/http/HttpRequest;
    .param p18    # J
    .param p20    # Lorg/apache/http/HttpHost;
    .param p21    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLengthRangeRequest:J

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bytesA:J

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bytesB:J

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bytesC:J

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInputStream:Ljava/io/InputStream;

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/apache/http/HttpHost;

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/apache/http/HttpRequest;

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsAppStartedReading:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;

    const/4 v6, 0x0

    iput v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I

    const/4 v6, 0x0

    iput v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsMultiSocketStarted:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mWaitTime:J

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/net/InetAddress;

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRemoteAddress:[Ljava/net/InetAddress;

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedRatio:D

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtDBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    const/4 v6, -0x1

    iput v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketAfterHandover:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mAutoEnableMultiRatSuccess:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const/4 v6, 0x3

    iput v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->failReasonInExtreme:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bStartReadBufferSBStopSent:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->TEST_GET_TRAFFIC:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->SEND_NO_TRAFFIC_WARN:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->DETAIL_LOG:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bStopSecDecisionMade:Z

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->closed:Z

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bAppIsReadingNow:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bAppReading:Z

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [J

    fill-array-data v6, :array_1

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->connectionTime:[J

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bufReadSpeed:J

    const/4 v6, 0x0

    iput v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mAlgoType:I

    iput-wide p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    iput-wide p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLengthRangeRequest:J

    iput-object p3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInputStream:Ljava/io/InputStream;

    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move/from16 v0, p8

    iput-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsConnectionClosedAfterEveryRequest:Z

    move/from16 v0, p9

    int-to-long v6, v0

    iput-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J

    iget-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J

    iput-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    sget v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_MULTIRAT_BLOCK_SIZE:I

    iget-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsConnectionClosedAfterEveryRequest:Z

    if-eqz v6, :cond_3

    iget-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->MULTIRAT_BLOCK_DIV_CON_CLOSED:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    long-to-int v5, v6

    sget v6, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_MULTIRAT_BLOCK_SIZE_CON_CLOSED:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    sget v6, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_SIZE_FOR_MULTISOCKET_CON_CLOSE:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x4

    sput v6, Lorg/apache/http/impl/client/MultiSocketInputStream;->sMaxBlock:I

    :goto_0
    iput v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBlockSize:I

    iput v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    sget-boolean v6, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "After getting runtime"

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "After getting runtime:  maxMem"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v6, 0x2

    div-long v6, v3, v6

    iget v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    long-to-int v6, v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    sget v7, Lorg/apache/http/impl/client/MultiSocketInputStream;->sMaxBlock:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMaxBlockNumber:I

    sget-boolean v6, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMaxBlockNumber "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMaxBlockNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1
    invoke-interface/range {p7 .. p7}, Lorg/apache/http/conn/ManagedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet6Address;

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    iput v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    :goto_1
    move-object/from16 v0, p21

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mSchemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v6, Lorg/apache/http/impl/client/CustomHttpClient;

    iget-object v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mSchemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v6, v7}, Lorg/apache/http/impl/client/CustomHttpClient;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBuffer:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    new-instance v6, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    invoke-direct {v6, p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;-><init>(Lorg/apache/http/impl/client/MultiSocketInputStream;)V

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-wide/from16 v0, p10

    iput-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mResponeTimeFromMainSocket:J

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRemoteAddress:[Ljava/net/InetAddress;

    iget-object v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v7}, Lorg/apache/http/conn/ManagedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v7

    aput-object v7, v6, p15

    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDefaultRequestDirectorInstance:Lorg/apache/http/impl/client/DefaultRequestDirector;

    move/from16 v0, p15

    iput v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    const-string v6, "https"

    invoke-virtual {p5}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bISHTTPS:Z

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->connectionTime:[J

    iget v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    aput-wide p18, v6, v7

    sget-boolean v6, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMaxBlockNumber "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMaxBlockNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Main Interface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bISHTTPS = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bISHTTPS:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Main Socket connection time is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->connectionTime:[J

    iget v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    aget-wide v7, v7, v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2
    iget-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bISHTTPS:Z

    if-eqz v6, :cond_5

    const/16 v6, 0x4e20

    iput v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW:I

    :goto_2
    iget v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I

    div-int/lit8 v6, v6, 0x4

    const/high16 v7, 0x300000

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_BYTES_TO_CALC_SPEED:I

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;

    aput-object p17, v6, p15

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;

    aput-object p5, v6, p15

    add-int/lit8 v6, p15, 0x1

    rem-int/lit8 v6, v6, 0x2

    iput v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;

    iget v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I

    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v8

    aput-object v8, v6, v7

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;

    iget v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I

    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v8

    aput-object v8, v6, v7

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J

    const-string v6, "SMARTBONDING_MAIN_SOCKET_IPVER"

    new-instance v7, Ljava/lang/Integer;

    iget v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p6

    invoke-interface {v0, v6, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    const/4 v6, 0x2

    new-array v6, v6, [J

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDataDownloaded:[J

    const/4 v6, 0x2

    new-array v6, v6, [J

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mTimeForDownload:[J

    const/4 v6, 0x2

    new-array v6, v6, [J

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J

    const/4 v6, 0x2

    new-array v6, v6, [J

    iput-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mStartReadTime:[J

    const/4 v2, 0x0

    :goto_3
    const/4 v6, 0x2

    if-ge v2, v6, :cond_6

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDataDownloaded:[J

    const-wide/16 v7, 0x0

    aput-wide v7, v6, v2

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mTimeForDownload:[J

    const-wide/16 v7, 0x0

    aput-wide v7, v6, v2

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J

    const-wide/16 v7, 0x0

    aput-wide v7, v6, v2

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mStartReadTime:[J

    const-wide/16 v7, 0x0

    aput-wide v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->MULTIRAT_BLOCK_DIV:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    long-to-int v5, v6

    sget v6, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_MULTIRAT_BLOCK_SIZE:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    sget v6, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_MULTIRAT_BLOCK_SIZE:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    iput v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    goto/16 :goto_1

    :cond_5
    const/16 v6, 0x1770

    iput v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW:I

    goto/16 :goto_2

    :cond_6
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadExisted:Z

    move-object/from16 v0, p20

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mProxy:Lorg/apache/http/HttpHost;

    move/from16 v0, p15

    iput v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriMainInterface:I

    sget-boolean v6, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v6, :cond_8

    const-string v6, "0v1"

    invoke-direct {p0, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getRatioThreshold(Ljava/lang/String;)I

    move-result v6

    sput v6, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I

    const-string v6, "1v0"

    invoke-direct {p0, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getRatioThreshold(Ljava/lang/String;)I

    move-result v6

    sput v6, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_1V0:I

    const-string v6, "persist.sys.sb.gettraffic"

    iget-boolean v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->TEST_GET_TRAFFIC:Z

    invoke-direct {p0, v6, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getBooleanProp(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->TEST_GET_TRAFFIC:Z

    iget-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->TEST_GET_TRAFFIC:Z

    if-eqz v6, :cond_7

    const-string v6, "persist.sys.sb.warning.show"

    iget-boolean v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->SEND_NO_TRAFFIC_WARN:Z

    invoke-direct {p0, v6, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getBooleanProp(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->SEND_NO_TRAFFIC_WARN:Z

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MIN_RATIO_FOR_ONLY_ONE_INF_0V1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MIN_RATIO_FOR_ONLY_ONE_INF_1V0 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_1V0:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_GET_TRAFFIC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->TEST_GET_TRAFFIC:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEND_NO_TRAFFIC_WARN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->SEND_NO_TRAFFIC_WARN:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout for main socket: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v7}, Lorg/apache/http/conn/ManagedClientConnection;->getSocketTimeout()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_8
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketConnectTime:J

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J
    .locals 2
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/apache/http/impl/client/MultiSocketInputStream;J)J
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # J

    iput-wide p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J

    return-wide p1
.end method

.method static synthetic access$100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/protocol/HttpContext;
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/http/impl/client/MultiSocketInputStream;)D
    .locals 2
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedRatio:D

    return-wide v0
.end method

.method static synthetic access$1002(Lorg/apache/http/impl/client/MultiSocketInputStream;D)D
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # D

    iput-wide p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedRatio:D

    return-wide p1
.end method

.method static synthetic access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J
    .locals 2
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J

    return-wide v0
.end method

.method static synthetic access$1102(Lorg/apache/http/impl/client/MultiSocketInputStream;J)J
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # J

    iput-wide p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J

    return-wide p1
.end method

.method static synthetic access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J
    .locals 2
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J

    return-wide v0
.end method

.method static synthetic access$1202(Lorg/apache/http/impl/client/MultiSocketInputStream;J)J
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # J

    iput-wide p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J

    return-wide p1
.end method

.method static synthetic access$1300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mAlgoType:I

    return v0
.end method

.method static synthetic access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtDBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/apache/http/impl/client/MultiSocketInputStream;Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;)Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    iput-object p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtDBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B

    return-object v0
.end method

.method static synthetic access$1602(Lorg/apache/http/impl/client/MultiSocketInputStream;[B)[B
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # [B

    iput-object p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B

    return-object p1
.end method

.method static synthetic access$1700(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/apache/http/impl/client/MultiSocketInputStream;Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;)Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    iput-object p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    return-object p1
.end method

.method static synthetic access$1808()I
    .locals 2

    sget v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->sThreadID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->sThreadID:I

    return v0
.end method

.method static synthetic access$1900(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z

    return v0
.end method

.method static synthetic access$1902(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # Z

    iput-boolean p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z

    return p1
.end method

.method static synthetic access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadExisted:Z

    return v0
.end method

.method static synthetic access$2002(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # Z

    iput-boolean p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadExisted:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;

    return-object v0
.end method

.method static synthetic access$2102(Lorg/apache/http/impl/client/MultiSocketInputStream;Lorg/apache/http/conn/ManagedClientConnection;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # Lorg/apache/http/conn/ManagedClientConnection;

    iput-object p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;

    return-object p1
.end method

.method static synthetic access$2200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J
    .locals 2
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bytesA:J

    return-wide v0
.end method

.method static synthetic access$2202(Lorg/apache/http/impl/client/MultiSocketInputStream;J)J
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # J

    iput-wide p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bytesA:J

    return-wide p1
.end method

.method static synthetic access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I

    return v0
.end method

.method static synthetic access$2302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # I

    iput p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I

    return p1
.end method

.method static synthetic access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I

    return v0
.end method

.method static synthetic access$2600(Lorg/apache/http/impl/client/MultiSocketInputStream;)J
    .locals 2
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bytesB:J

    return-wide v0
.end method

.method static synthetic access$2602(Lorg/apache/http/impl/client/MultiSocketInputStream;J)J
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # J

    iput-wide p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bytesB:J

    return-wide p1
.end method

.method static synthetic access$2700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J
    .locals 2
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bytesC:J

    return-wide v0
.end method

.method static synthetic access$2702(Lorg/apache/http/impl/client/MultiSocketInputStream;J)J
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # J

    iput-wide p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bytesC:J

    return-wide p1
.end method

.method static synthetic access$2800(Lorg/apache/http/impl/client/MultiSocketInputStream;)J
    .locals 2
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLengthRangeRequest:J

    return-wide v0
.end method

.method static synthetic access$2900(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Ljava/net/InetAddress;
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRemoteAddress:[Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    return v0
.end method

.method static synthetic access$3000(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsConnectionClosedAfterEveryRequest:Z

    return v0
.end method

.method static synthetic access$3002(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # Z

    iput-boolean p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsConnectionClosedAfterEveryRequest:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J
    .locals 2
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketConnectTime:J

    return-wide v0
.end method

.method static synthetic access$3200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mStartReadTime:[J

    return-object v0
.end method

.method static synthetic access$3302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # I

    iput p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketAfterHandover:I

    return p1
.end method

.method static synthetic access$3400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$3500()I
    .locals 1

    sget v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->sMaxBlock:I

    return v0
.end method

.method static synthetic access$3502(I)I
    .locals 0
    .param p0    # I

    sput p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->sMaxBlock:I

    return p0
.end method

.method static synthetic access$3602(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # I

    iput p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBlockSize:I

    return p1
.end method

.method static synthetic access$3700(Lorg/apache/http/impl/client/MultiSocketInputStream;)I
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMaxBlockNumber:I

    return v0
.end method

.method static synthetic access$3702(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # I

    iput p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMaxBlockNumber:I

    return p1
.end method

.method static synthetic access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsMultiSocketStarted:Z

    return v0
.end method

.method static synthetic access$3802(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # Z

    iput-boolean p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsMultiSocketStarted:Z

    return p1
.end method

.method static synthetic access$3900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->finishedThreadNum:I

    return v0
.end method

.method static synthetic access$3902(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # I

    iput p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->finishedThreadNum:I

    return p1
.end method

.method static synthetic access$3908(Lorg/apache/http/impl/client/MultiSocketInputStream;)I
    .locals 2
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->finishedThreadNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->finishedThreadNum:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J
    .locals 2
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J

    return-wide v0
.end method

.method static synthetic access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->TEST_GET_TRAFFIC:Z

    return v0
.end method

.method static synthetic access$4200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDataDownloaded:[J

    return-object v0
.end method

.method static synthetic access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    return-object v0
.end method

.method static synthetic access$4302(Lorg/apache/http/impl/client/MultiSocketInputStream;Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    iput-object p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    return-object p1
.end method

.method static synthetic access$4400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mTimeForDownload:[J

    return-object v0
.end method

.method static synthetic access$4500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->SEND_NO_TRAFFIC_WARN:Z

    return v0
.end method

.method static synthetic access$4600(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-direct {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->bTwoInfDownloading()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bStopSecDecisionMade:Z

    return v0
.end method

.method static synthetic access$4702(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # Z

    iput-boolean p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bStopSecDecisionMade:Z

    return p1
.end method

.method static synthetic access$4800(Lorg/apache/http/impl/client/MultiSocketInputStream;)I
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->failReasonInExtreme:I

    return v0
.end method

.method static synthetic access$4802(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # I

    iput p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->failReasonInExtreme:I

    return p1
.end method

.method static synthetic access$4900(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z

    return v0
.end method

.method static synthetic access$4902(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # Z

    iput-boolean p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z

    return p1
.end method

.method static synthetic access$500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/apache/http/impl/client/MultiSocketInputStream;)I
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW:I

    return v0
.end method

.method static synthetic access$5100()I
    .locals 1

    sget v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I

    return v0
.end method

.method static synthetic access$5200()I
    .locals 1

    sget v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_1V0:I

    return v0
.end method

.method static synthetic access$5400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bAppIsReadingNow:Z

    return v0
.end method

.method static synthetic access$5500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # I

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getOtherSocketID(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lorg/apache/http/impl/client/MultiSocketInputStream;)J
    .locals 2
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mResponeTimeFromMainSocket:J

    return-wide v0
.end method

.method static synthetic access$5900(Lorg/apache/http/impl/client/MultiSocketInputStream;)J
    .locals 2
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bufReadSpeed:J

    return-wide v0
.end method

.method static synthetic access$5902(Lorg/apache/http/impl/client/MultiSocketInputStream;J)J
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # J

    iput-wide p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bufReadSpeed:J

    return-wide p1
.end method

.method static synthetic access$600(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z

    return v0
.end method

.method static synthetic access$602(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # Z

    iput-boolean p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z

    return p1
.end method

.method static synthetic access$6100(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J
    .locals 2
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    return-wide v0
.end method

.method static synthetic access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I

    return v0
.end method

.method static synthetic access$902(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p1    # I

    iput p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I

    return p1
.end method

.method private bTwoInfDownloading()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->isMultiRATworking()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadExisted:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/TwoChunkInputStream;->bTwoInfDownloading()Z

    move-result v0

    goto :goto_0
.end method

.method protected static closeConnQuiet(Lorg/apache/http/conn/ManagedClientConnection;)V
    .locals 1
    .param p0    # Lorg/apache/http/conn/ManagedClientConnection;

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    invoke-interface {p0}, Lorg/apache/http/conn/ManagedClientConnection;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getBooleanProp(Ljava/lang/String;Z)Z
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_2

    :goto_1
    move p2, v2

    :cond_0
    :goto_2
    return p2

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private getOtherSocketID(I)I
    .locals 1
    .param p1    # I

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getprop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getRatioThreshold(Ljava/lang/String;)I
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x5

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.sys.sb.speedratio"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const v4, 0x186a0

    const/16 v5, -0x2710

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v3

    goto :goto_0
.end method

.method private readFromMainSocket([BII)I
    .locals 30
    .param p1    # [B
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v19, 0x0

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->createTwoChunkInputInMain(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mStartReadTime:[J

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    aget-wide v4, v4, v5

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mStartReadTime:[J

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v4, v5

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInputStream:Ljava/io/InputStream;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v19

    if-gez v19, :cond_5

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read return exception value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SocketTimeoutException Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException in reading while bytesRemaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " totallen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " start offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    const-string v4, "Closing the Main socket at I/O exception in Main socket reading"

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-eqz v4, :cond_7

    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "childIS is created"

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInputStream:Ljava/io/InputStream;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v19

    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "childIS is created and read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v20, v19

    :goto_0
    return v20

    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    move/from16 v0, v19

    int-to-long v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->incByte(IJ)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->setTime(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    move/from16 v20, v19

    goto :goto_0

    :cond_7
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->closeConnQuiet(Lorg/apache/http/conn/ManagedClientConnection;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;

    const/4 v11, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketAfterHandover:I

    if-ltz v4, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketAfterHandover:I

    move/from16 v17, v0

    :goto_1
    const/16 v25, 0x0

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v4, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v4

    if-nez v4, :cond_28

    const/4 v11, 0x0

    :goto_3
    if-nez v11, :cond_11

    const/4 v4, 0x3

    move/from16 v0, v25

    if-le v0, v4, :cond_d

    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_9

    const-string v4, "tried twice1, check NB status"

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->isMultiRATworking()Z

    move-result v4

    if-nez v4, :cond_c

    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_a

    const-string v4, "tried twice1, and NB Status is false"

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_a
    throw v13

    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v17, v4, 0x2

    goto :goto_1

    :cond_c
    const/16 v25, 0x0

    :cond_d
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketAfterHandover:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v26, v4, v23

    sget v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    if-lez v4, :cond_f

    sget v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    int-to-long v4, v4

    cmp-long v4, v26, v4

    if-lez v4, :cond_f

    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "waited time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time out "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_e
    throw v13

    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    move/from16 v0, v17

    invoke-static {v0, v4}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v11

    if-nez v11, :cond_10

    add-int/lit8 v25, v25, 0x1

    add-int/lit8 v4, v17, 0x1

    rem-int/lit8 v17, v4, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    move/from16 v0, v17

    invoke-static {v0, v4}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v11

    :cond_10
    monitor-enter p0

    :try_start_5
    sget v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->HANDOVER_WAIT_INTERVAL:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    :try_start_6
    monitor-exit p0

    goto/16 :goto_3

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    move/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;

    aget-object v5, v5, v17

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/CustomHttpClient;->createClientRequestDirector(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-result-object v3

    const/4 v12, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    const/4 v12, 0x1

    throw v13
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_1
    move-exception v16

    add-int/lit8 v4, v17, 0x1

    rem-int/lit8 v17, v4, 0x2

    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in mainInput Handover "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v26, v4, v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mTimeForDownload:[J

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    aget-wide v4, v4, v5

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->decTime(IJ)V

    :cond_13
    sget v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    if-lez v4, :cond_26

    sget v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    int-to-long v4, v4

    cmp-long v4, v26, v4

    if-lez v4, :cond_26

    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "waited time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time out "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_14
    throw v16

    :cond_15
    const/4 v4, 0x3

    move/from16 v0, v25

    if-le v0, v4, :cond_19

    :try_start_8
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_16

    const-string v4, "tried twice2, check NB status"

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->isMultiRATworking()Z

    move-result v4

    if-nez v4, :cond_18

    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_17

    const-string v4, "tried twice2, and NB Status is false"

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_17
    const/4 v12, 0x1

    throw v13
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v14

    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_8

    const-string v4, "HttpException is thrown while reading from main socket"

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    invoke-static {v14}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_18
    const/16 v25, 0x0

    goto/16 :goto_2

    :cond_19
    :try_start_9
    monitor-enter p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;

    aget-object v4, v4, v17

    invoke-interface {v4}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;

    aget-object v7, v7, v17

    move/from16 v0, v17

    invoke-virtual {v6, v0, v7}, Lorg/apache/http/impl/client/CustomHttpClient;->getProxy(ILorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;

    aget-object v4, v4, v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;

    aget-object v5, v5, v17

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J

    add-long/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    sub-long/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J

    move-wide/from16 v28, v0

    add-long v9, v9, v28

    const-wide/16 v28, 0x1

    sub-long v9, v9, v28

    invoke-virtual/range {v3 .. v11}, Lorg/apache/http/impl/client/DefaultRequestDirector;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;JJLjava/net/InetAddress;)Lorg/apache/http/HttpResponse;

    move-result-object v21

    iget-object v4, v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-static {v5, v6}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    :goto_5
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    const/16 v4, 0xce

    move/from16 v0, v22

    if-eq v0, v4, :cond_1a

    const/16 v4, 0xc8

    move/from16 v0, v22

    if-ne v0, v4, :cond_1b

    :cond_1a
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1e

    :cond_1b
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I

    const/16 v4, 0x193

    move/from16 v0, v22

    if-ne v0, v4, :cond_1c

    const/4 v12, 0x1

    :cond_1c
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Server may not support Range Request"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_2
    move-exception v4

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v4
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_b .. :try_end_b} :catch_2

    :cond_1d
    const/4 v4, 0x1

    :try_start_c
    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    goto :goto_5

    :cond_1e
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I

    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This is MainThead, actually switch to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadExisted:Z

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    move/from16 v0, v18

    if-eq v4, v0, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bStopSecDecisionMade:Z

    if-nez v4, :cond_22

    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_20

    const-string v4, "Need to switch ExtremThread Socket ID"

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchSocket(I)V

    :cond_21
    :goto_6
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInputStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInputStream:Ljava/io/InputStream;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v20

    if-gez v20, :cond_24

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read return exception value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_22
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_23

    const-string v4, "Do not Need to switch ExtremThread Socket ID"

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->getSocketID()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->startTryBoth(I)V

    goto :goto_6

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v4, :cond_25

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    move/from16 v0, v20

    int-to-long v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->incByte(IJ)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->setTime(I)V

    :cond_25
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_0

    :cond_26
    if-eqz v12, :cond_27

    throw v16

    :cond_27
    add-int/lit8 v25, v25, 0x1

    monitor-enter p0

    :try_start_d
    sget v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->HANDOVER_WAIT_INTERVAL:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :goto_7
    :try_start_e
    monitor-exit p0

    goto/16 :goto_2

    :catchall_3
    move-exception v4

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v4

    :cond_28
    throw v13

    :catch_3
    move-exception v4

    goto :goto_7

    :catch_4
    move-exception v4

    goto/16 :goto_4
.end method

.method private submitDataFromMainThread()V
    .locals 14

    const-wide/16 v12, 0x8

    const-wide/16 v10, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-array v1, v5, [J

    new-array v2, v5, [J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDataDownloaded:[J

    aget-wide v3, v3, v0

    aput-wide v3, v1, v0

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mTimeForDownload:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-wide v3, v2, v8

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    aget-wide v3, v2, v9

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    aget-wide v3, v1, v8

    cmp-long v3, v3, v10

    if-lez v3, :cond_3

    aget-wide v3, v1, v9

    cmp-long v3, v3, v10

    if-lez v3, :cond_3

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "submit speed for in main - socket[0]: len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v2, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", speed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v8

    mul-long/2addr v4, v12

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    aget-wide v6, v2, v8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Kbps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "submit speed for in main - socket[1]: len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v2, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", speed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v9

    mul-long/2addr v4, v12

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    aget-wide v6, v2, v9

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Kbps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1
    invoke-static {v1, v2}, Lorg/apache/http/impl/client/CustomHttpClient;->submitMultiSocketData([J[J)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not to submit speed for in main - socket[0]: len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v2, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not to submit speed for in main - socket[1]: len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v2, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public available()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v5, 0x0

    const/4 v11, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-boolean v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v8, :cond_1

    :try_start_1
    iget-object v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInputStream:Ljava/io/InputStream;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInputStream:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    :cond_0
    :goto_0
    :try_start_2
    iget-wide v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    cmp-long v8, v8, v5

    if-nez v8, :cond_6

    :goto_1
    long-to-int v4, v5

    :goto_2
    return v4

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v9, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_4

    iget-object v9, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_3
    iget-object v9, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B

    array-length v9, v9

    if-ge v3, v9, :cond_4

    iget-object v9, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B

    aget-byte v9, v9, v3

    if-eq v9, v11, :cond_2

    iget-object v9, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B

    aget-byte v9, v9, v3

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B

    aget-byte v9, v9, v3

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    :cond_2
    iget-object v9, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getRestLength()I

    move-result v9

    add-int/2addr v4, v9

    :cond_3
    iget-object v9, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B

    aget-byte v9, v9, v3

    if-eq v9, v11, :cond_5

    :cond_4
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v2

    const-string v5, "Exception in MultiSocketInputStream:available"

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    move v4, v7

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    int-to-long v5, v4

    :try_start_5
    iget-wide v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result-wide v5

    goto :goto_1
.end method

.method protected clearBufferDir()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;

    if-nez v2, :cond_1

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "it is a NULL directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "it is not a directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_3
    iput-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v2, v1

    if-nez v2, :cond_0

    :cond_5
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this directory is empty, can be removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public close()V
    .locals 14

    iget-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->closed:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->closed:Z

    iget-object v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z

    if-eqz v6, :cond_2

    iget-wide v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    iget-wide v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lorg/apache/http/impl/client/CustomHttpClient;->stopSBUsageWithReason(JI)I

    :goto_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z

    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    iget-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z

    if-eqz v6, :cond_8

    const/4 v6, 0x2

    new-array v4, v6, [J

    const/4 v6, 0x2

    new-array v5, v6, [J

    const/4 v2, 0x0

    :goto_2
    const/4 v6, 0x2

    if-ge v2, v6, :cond_6

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDataDownloaded:[J

    aget-wide v8, v6, v2

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v6, :cond_4

    const-wide/16 v6, 0x0

    :goto_3
    add-long/2addr v6, v8

    aput-wide v6, v4, v2

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mTimeForDownload:[J

    aget-wide v8, v6, v2

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v6, :cond_5

    const-wide/16 v6, 0x0

    :goto_4
    add-long/2addr v6, v8

    aput-wide v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    iget-wide v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v9, v10}, Lorg/apache/http/impl/client/CustomHttpClient;->stopSBUsageWithReason(JI)I

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_4
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v6, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->getDownloadLen(I)J

    move-result-wide v6

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v6, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->getDownloadTime(I)J

    move-result-wide v6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    aget-wide v6, v5, v6

    const-wide/16 v8, 0x7d0

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    const/4 v6, 0x1

    aget-wide v6, v5, v6

    const-wide/16 v8, 0x7d0

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    const/4 v6, 0x0

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    const/4 v6, 0x1

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    invoke-static {v4, v5}, Lorg/apache/http/impl/client/CustomHttpClient;->submitMultiSocketData([J[J)V

    iget-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bufReadSpeed:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    const-wide/high16 v6, 0x4000000000000000L

    iget-wide v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bufReadSpeed:J

    long-to-double v8, v8

    const/4 v10, 0x1

    aget-wide v10, v4, v10

    const/4 v12, 0x1

    aget-wide v12, v5, v12

    invoke-virtual {p0, v10, v11, v12, v13}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(JJ)J

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    sput-wide v6, Lorg/apache/http/impl/client/MultiSocketInputStream;->B_Ratio_BUF_LTE:D

    const-wide/high16 v6, 0x4034000000000000L

    iget-wide v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bufReadSpeed:J

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4020000000000000L

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4090000000000000L

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4090000000000000L

    div-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    sput-wide v6, Lorg/apache/http/impl/client/MultiSocketInputStream;->BUF_Read_Speed:D

    :cond_7
    sget-boolean v6, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "submit speed for extreme case - socket[0]: len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-wide v7, v4, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-wide v7, v5, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", speed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-wide v7, v4, v7

    const-wide/16 v9, 0x8

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    const/4 v9, 0x0

    aget-wide v9, v5, v9

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Kbps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "submit speed for extreme case - socket[1]: len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-wide v7, v4, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-wide v7, v5, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", speed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-wide v7, v4, v7

    const-wide/16 v9, 0x8

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    const/4 v9, 0x1

    aget-wide v9, v5, v9

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Kbps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update B_Ratio_BUF_LTE to be "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lorg/apache/http/impl/client/MultiSocketInputStream;->B_Ratio_BUF_LTE:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with buf read speed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lorg/apache/http/impl/client/MultiSocketInputStream;->BUF_Read_Speed:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MB/s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_8
    :goto_5
    :try_start_2
    iget-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_d

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    if-nez v6, :cond_d

    const/4 v6, 0x4

    new-array v1, v6, [J

    const/4 v2, 0x0

    :goto_6
    const/4 v6, 0x2

    if-ge v2, v6, :cond_c

    mul-int/lit8 v8, v2, 0x2

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDataDownloaded:[J

    aget-wide v9, v6, v2

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v6, :cond_a

    const-wide/16 v6, 0x0

    :goto_7
    add-long/2addr v6, v9

    aput-wide v6, v1, v8

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v8, v6, 0x1

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mTimeForDownload:[J

    aget-wide v9, v6, v2

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v6, :cond_b

    const-wide/16 v6, 0x0

    :goto_8
    add-long/2addr v6, v9

    aput-wide v6, v1, v8
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    sget-boolean v6, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not to submit speed for extreme case - socket[0]: len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-wide v7, v4, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-wide v7, v5, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not to submit speed for extreme case - socket[1]: len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-wide v7, v4, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-wide v7, v5, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    :try_start_3
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v6, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->getDownloadLen(I)J

    move-result-wide v6

    goto :goto_7

    :cond_b
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v6, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->getDownloadTime(I)J

    move-result-wide v6

    goto :goto_8

    :cond_c
    iget-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J

    invoke-static {v6, v7, v1}, Lorg/apache/http/impl/client/CustomHttpClient;->reportSBUsage(J[J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_d
    :goto_9
    :try_start_4
    iget-object v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-boolean v6, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v6, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearing buffer "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_f
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->clearBuffer()V

    goto :goto_a

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v6

    :goto_b
    :try_start_7
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :goto_c
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-eqz v6, :cond_10

    :try_start_8
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/TwoChunkInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_10
    :goto_d
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    goto/16 :goto_0

    :cond_11
    :try_start_9
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_b

    :catch_1
    move-exception v6

    goto :goto_d

    :catch_2
    move-exception v6

    goto :goto_c

    :catch_3
    move-exception v6

    goto :goto_9
.end method

.method protected createBufferDir()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;

    return-void
.end method

.method protected createTwoChunkInputInMain(Z)V
    .locals 27
    .param p1    # Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "createTwoChunkInputInMain: session is finished"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadExisted:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bStopSecDecisionMade:Z

    if-nez v2, :cond_5

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chunk1 is finished while mRemainBytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v6, v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    :try_start_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J

    const-wide/32 v9, 0x100000

    add-long/2addr v7, v9

    cmp-long v2, v2, v7

    if-lez v2, :cond_6

    new-instance v2, Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInputStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J

    add-long/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    sub-long/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLengthRangeRequest:J

    move-wide/from16 v20, v0

    sget v22, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    const-wide/16 v24, 0x0

    move-object/from16 v19, p0

    move/from16 v23, p1

    invoke-direct/range {v2 .. v25}, Lorg/apache/http/impl/client/TwoChunkInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/conn/ManagedClientConnection;IIJJ[Lorg/apache/http/HttpRequest;[Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;JJILorg/apache/http/impl/client/MultiSocketInputStream;JIZJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInputStream:Ljava/io/InputStream;

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new twochunk input stream mainInput = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->isSingleThreadRun()Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->startSingleThreadRunning(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->startRun()V

    :cond_4
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource check: finish reading chunk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J

    add-long/2addr v3, v7

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    sub-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from main socket, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now start to read from child input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    :try_start_2
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_6
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->startSingleThreadRunning(Z)V

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not to create sec thread since byteRemaining is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and bytesForMultiSocket is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v26

    :try_start_4
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_5

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method protected decTime(IJ)V
    .locals 0
    .param p1    # I
    .param p2    # J

    return-void
.end method

.method protected getSpeed(I)J
    .locals 12
    .param p1    # I

    const-wide/16 v10, 0x8

    const-wide/16 v6, 0x0

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDataDownloaded:[J

    aget-wide v8, v4, p1

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v4, :cond_0

    move-wide v4, v6

    :goto_0
    add-long v0, v8, v4

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mTimeForDownload:[J

    aget-wide v8, v4, p1

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v4, :cond_1

    move-wide v4, v6

    :goto_1
    add-long v2, v8, v4

    cmp-long v4, v2, v6

    if-gtz v4, :cond_2

    mul-long v4, v0, v10

    :goto_2
    return-wide v4

    :cond_0
    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v4, p1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->getDownloadLen(I)J

    move-result-wide v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v4, p1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->getDownloadTime(I)J

    move-result-wide v4

    goto :goto_1

    :cond_2
    mul-long v4, v0, v10

    div-long/2addr v4, v2

    goto :goto_2
.end method

.method protected getSpeed(JJ)J
    .locals 3
    .param p1    # J
    .param p3    # J

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x8

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    goto :goto_0
.end method

.method protected incByte(IJ)V
    .locals 4
    .param p1    # I
    .param p2    # J

    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x100000

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speed calc >> set data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDataDownloaded:[J

    aget-wide v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with a inc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDataDownloaded:[J

    aget-wide v1, v0, p1

    add-long/2addr v1, p2

    aput-wide v1, v0, p1

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->DETAIL_LOG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "increased bytes["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDataDownloaded:[J

    aget-wide v1, v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected isMultiRATworking()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    iget-wide v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/impl/client/CustomHttpClient;->getSBUsageStatus(J)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public mark(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [B

    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->read([BII)I

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 28
    .param p1    # [B
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v22, 0x1

    :try_start_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->bAppIsReadingNow:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mLastReadTime:J

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bAppReading:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v22, 0x1

    :try_start_1
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->bAppReading:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const-wide/16 v14, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    move-object/from16 v22, v0

    check-cast v22, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v22

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gtz v22, :cond_5

    :cond_1
    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_2

    const-string v22, "finish to read size, no byte remained, return -1"

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/Throwable;

    invoke-direct/range {v22 .. v22}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_2
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/MultiSocketInputStream;->closeConnQuiet(Lorg/apache/http/conn/ManagedClientConnection;)V

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v11, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mLastReadTime:J

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->bAppIsReadingNow:Z

    :goto_0
    return v11

    :catchall_0
    move-exception v22

    :try_start_3
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v22
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v7

    :try_start_5
    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_3

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception in read "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_3
    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_4

    invoke-static {v7}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_4
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mLastReadTime:J

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->bAppIsReadingNow:Z

    throw v22

    :cond_5
    :try_start_6
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, p3

    move/from16 v1, v22

    if-gt v0, v1, :cond_6

    add-int v22, p3, p2

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_6

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, p2

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    :cond_6
    new-instance v22, Ljava/lang/IndexOutOfBoundsException;

    const-string v23, "Buffer length is less than the length or offset"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_7
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsAppStartedReading:Z

    move/from16 v22, v0

    if-nez v22, :cond_9

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsAppStartedReading:Z

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_8

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " The application started first reading at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mResponeTimeFromMainSocket:J

    move-wide/from16 v25, v0

    sub-long v23, v23, v25

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "first read, buffer size="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", offset="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", length ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsConnectionClosedAfterEveryRequest:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    sget v22, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_SIZE_FOR_MULTISOCKET_CON_CLOSE:I

    :goto_1
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v25, v0

    cmp-long v22, v23, v25

    if-lez v22, :cond_9

    new-instance v10, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;-><init>(Lorg/apache/http/impl/client/MultiSocketInputStream;)V

    new-instance v18, Ljava/lang/Thread;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":InfWatchdog_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lorg/apache/http/impl/client/MultiSocketInputStream;->sThreadID:I

    add-int/lit8 v24, v23, 0x1

    sput v24, Lorg/apache/http/impl/client/MultiSocketInputStream;->sThreadID:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v10, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    :cond_9
    move/from16 v19, p3

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_b

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_a

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "toReadCount "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " > bytesRemaining "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v19, v0

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z

    move/from16 v22, v0

    if-nez v22, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsMultiSocketStarted:Z

    move/from16 v22, v0

    if-nez v22, :cond_11

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->readFromMainSocket([BII)I

    move-result v11

    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e

    :cond_d
    :goto_3
    move/from16 v0, v19

    if-ge v11, v0, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBuffer:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v22, v0

    if-nez v22, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_20

    if-lez v11, :cond_20

    monitor-exit v23
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_e
    :goto_4
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_40

    :try_start_8
    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_f

    const-string v22, "unexpected end of stream"

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_f
    new-instance v22, Ljava/io/IOException;

    const-string v23, "unexpected end of stream"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_10
    sget v22, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_SIZE_FOR_MULTISOCKET:I

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-nez v22, :cond_1d

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_12

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "inputStream switch for bytesRemaining==bytesForMultiSocket("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "=="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "), mOffset="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mAlgoType:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sget-wide v24, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_READ_TIME_OUT:J

    add-long v8, v22, v24

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I

    move/from16 v22, v0

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    cmp-long v22, v24, v8

    if-lez v22, :cond_19

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_14

    const-string v22, "time out to wait for first range request"

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_14
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit v23
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_15
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I

    move/from16 v22, v0

    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadExisted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->startTryBoth(I)V

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z

    move/from16 v22, v0

    if-eqz v22, :cond_18

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_17

    const-string v22, "Try to close main stream"

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/MultiSocketInputStream;->closeConnQuiet(Lorg/apache/http/conn/ManagedClientConnection;)V

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_18

    const-string v22, "End to close main stream"

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_18
    :goto_6
    monitor-exit v23

    goto/16 :goto_2

    :catchall_2
    move-exception v22

    monitor-exit v23
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v22
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_19
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-object/from16 v22, v0

    sget v24, Lorg/apache/http/impl/client/MultiSocketInputStream;->IDLE_THREAD_WAIT_INTERVAL:I

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :goto_7
    :try_start_f
    monitor-exit v23

    goto/16 :goto_5

    :catchall_3
    move-exception v22

    monitor-exit v23
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v22
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_1a
    const/16 v22, 0x0

    :try_start_11
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsMultiSocketStarted:Z

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move-object/from16 v22, v0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z
    invoke-static {v0, v1}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->access$5302(Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    :cond_1b
    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_1c

    const-string v22, "Server does not support range request, keep on read from main inputstream"

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " Response time difference "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mResponeTimeFromMainSocket:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1c
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->readFromMainSocket([BII)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-result v11

    goto/16 :goto_6

    :cond_1d
    :try_start_12
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_1e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->readFromMainSocket([BII)I

    move-result v11

    goto/16 :goto_2

    :cond_1e
    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_1f

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception: bytesRemaining<bytesForMultiSocket("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "<"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "), mOffset="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1f
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsMultiSocketStarted:Z

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_2

    :cond_20
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v4, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v20, v24, v12

    sget v22, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    if-lez v22, :cond_22

    sget v22, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v22, v20, v24

    if-lez v22, :cond_22

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Waited time "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " time out "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v24, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_21
    new-instance v22, Ljava/io/IOException;

    const-string v24, "Timeout to wait either interface connected"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    :catchall_4
    move-exception v22

    monitor-exit v23
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    throw v22
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_22
    if-nez v4, :cond_25

    :try_start_15
    sget-wide v24, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_READ_TIME_OUT:J

    const-wide/16 v26, 0x0

    cmp-long v22, v24, v26

    if-lez v22, :cond_25

    sget-wide v24, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_READ_TIME_OUT:J

    cmp-long v22, v20, v24

    if-lez v22, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsMultiSocketStarted:Z

    move/from16 v22, v0

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I

    move/from16 v22, v0

    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    if-ltz v22, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    aget-byte v22, v22, v24

    if-gtz v22, :cond_25

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_23

    const-string v22, "force handover"

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-object/from16 v22, v0

    const/16 v24, 0x1

    aget-object v22, v22, v24

    if-eqz v22, :cond_26

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v22

    if-nez v22, :cond_26

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v22

    if-eqz v22, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-object/from16 v22, v0

    const/16 v24, 0x1

    aget-object v22, v22, v24

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :cond_24
    :goto_9
    const/4 v4, 0x1

    :cond_25
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    move-object/from16 v22, v0

    sget v24, Lorg/apache/http/impl/client/MultiSocketInputStream;->HANDOVER_WAIT_INTERVAL:I

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    goto/16 :goto_8

    :catch_1
    move-exception v22

    goto/16 :goto_8

    :cond_26
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    aget-object v22, v22, v24

    if-eqz v22, :cond_24

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v22

    if-nez v22, :cond_24

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v22

    if-eqz v22, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    aget-object v22, v22, v24

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    goto :goto_9

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBuffer:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_28

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "get new buffer list["

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "] with block size = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBuffer:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getLength()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_28
    new-instance v22, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBuffer:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getLength()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBlockSize:I

    monitor-exit v23
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :cond_29
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBuffer:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBuffer:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_2a

    if-lez v11, :cond_2a

    monitor-exit v23

    goto/16 :goto_4

    :catchall_5
    move-exception v22

    monitor-exit v23
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :try_start_1a
    throw v22
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :cond_2a
    :try_start_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v4, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBuffer:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    move-object/from16 v22, v0

    check-cast v22, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v22

    if-eqz v22, :cond_2d

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z

    move/from16 v22, v0

    if-nez v22, :cond_3b

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_2c

    const-string v22, "Try to read from Main socket"

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2c
    monitor-exit v23

    goto/16 :goto_4

    :cond_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v20, v24, v12

    sget v22, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    if-lez v22, :cond_2f

    sget v22, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v22, v20, v24

    if-lez v22, :cond_2f

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_2e

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "waited time "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " time out "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v24, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2e
    new-instance v22, Ljava/io/IOException;

    const-string v24, "Timeout to wait either interface connected"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I

    move/from16 v22, v0

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_31

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_30

    const-string v22, "Range Request failed in extremthread or secchunktread"

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_30
    new-instance v22, Ljava/io/IOException;

    const-string v24, "Disconnected from Server"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v22, v0

    if-nez v22, :cond_34

    sget v22, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_RANGEREQUEST_TIME_OUT:I

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    if-lez v22, :cond_34

    sget v22, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_RANGEREQUEST_TIME_OUT:I

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v22, v20, v24

    if-lez v22, :cond_34

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_32

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "waited time extreme case "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " time out "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v24, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_RANGEREQUEST_TIME_OUT:I

    move/from16 v0, v24

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->isMultiRATworking()Z

    move-result v22

    if-nez v22, :cond_36

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_33

    const-string v22, "not supporting NB, throw exception"

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->close()V

    new-instance v22, Ljava/io/IOException;

    const-string v24, "Read Socket Time out"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v22, v0

    if-nez v22, :cond_36

    sget v22, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_RANGEREQUEST_TIME_OUT:I

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    if-lez v22, :cond_36

    sget v22, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_RANGEREQUEST_TIME_OUT:I

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v22, v20, v24

    if-lez v22, :cond_36

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_35

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "waited time extreme case "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " time out "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v24, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_RANGEREQUEST_TIME_OUT:I

    move/from16 v0, v24

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move-object/from16 v22, v0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->createTwoChunkInput(Z)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    :cond_36
    :goto_b
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBuffer:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v22, v0

    sget v24, Lorg/apache/http/impl/client/MultiSocketInputStream;->HANDOVER_WAIT_INTERVAL:I

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    goto/16 :goto_a

    :catch_2
    move-exception v22

    goto/16 :goto_a

    :cond_37
    if-nez v4, :cond_36

    :try_start_1d
    sget-wide v24, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_READ_TIME_OUT:J

    const-wide/16 v26, 0x0

    cmp-long v22, v24, v26

    if-lez v22, :cond_36

    sget-wide v24, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_READ_TIME_OUT:J

    cmp-long v22, v20, v24

    if-lez v22, :cond_36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsMultiSocketStarted:Z

    move/from16 v22, v0

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I

    move/from16 v22, v0

    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    if-ltz v22, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    aget-byte v22, v22, v24

    if-gtz v22, :cond_36

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_38

    const-string v22, "force handover"

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-object/from16 v22, v0

    const/16 v24, 0x1

    aget-object v22, v22, v24

    if-eqz v22, :cond_3a

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v22

    if-nez v22, :cond_3a

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v22

    if-eqz v22, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-object/from16 v22, v0

    const/16 v24, 0x1

    aget-object v22, v22, v24

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    :cond_39
    :goto_c
    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    aget-object v22, v22, v24

    if-eqz v22, :cond_39

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v22

    if-nez v22, :cond_39

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v22

    if-eqz v22, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    aget-object v22, v22, v24

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    goto :goto_c

    :cond_3b
    const/4 v5, 0x0

    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBuffer:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v22, v0

    add-int v24, p2, v11

    sub-int v25, v19, v11

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->read([BII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBuffer:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_3
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    :cond_3c
    :goto_d
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_3e

    :try_start_1f
    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_3d

    const-string v22, "unexpected end from restBuffer.read"

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_3d
    const/4 v11, -0x1

    monitor-exit v23

    goto/16 :goto_4

    :catch_3
    move-exception v6

    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_3c

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_3e
    add-int/2addr v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBlockSize:I

    move/from16 v22, v0

    sub-int v22, v22, v5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBlockSize:I

    monitor-exit v23
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :try_start_20
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBlockSize:I

    move/from16 v22, v0

    if-nez v22, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBuffer:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    const/16 v22, 0x0

    :try_start_21
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBuffer:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-exit v23
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    :try_start_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    move-object/from16 v22, v0

    new-instance v24, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    invoke-direct/range {v24 .. v25}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v23
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    :cond_3f
    :try_start_24
    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    if-eqz v22, :cond_d

    goto/16 :goto_3

    :catchall_6
    move-exception v22

    :try_start_25
    monitor-exit v23
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    :try_start_26
    throw v22
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_0
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    :catchall_7
    move-exception v22

    :try_start_27
    monitor-exit v23
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    :try_start_28
    throw v22

    :cond_40
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-wide/from16 v22, v0

    int-to-long v0, v11

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gtz v22, :cond_43

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mAutoEnableMultiRatSuccess:Z

    move/from16 v22, v0

    if-eqz v22, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lorg/apache/http/impl/client/CustomHttpClient;->autoEnableMultiRAT(ZI)I

    :cond_41
    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_42

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "no byte remained, start to end input, remain is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_42
    sget-boolean v22, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v22, :cond_43

    const-string v22, "end to end input"

    invoke-static/range {v22 .. v22}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_0
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    :cond_43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mLastReadTime:J

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->bAppIsReadingNow:Z

    goto/16 :goto_0

    :catch_4
    move-exception v22

    goto/16 :goto_7
.end method

.method protected setTime(I)V
    .locals 7
    .param p1    # I

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mStartReadTime:[J

    aget-wide v4, v4, p1

    sub-long/2addr v2, v4

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mTimeForDownload:[J

    aget-wide v4, v4, p1

    sub-long v0, v2, v4

    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speed calc >> set time for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mTimeForDownload:[J

    aget-wide v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with a inc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_1
    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mTimeForDownload:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mStartReadTime:[J

    aget-wide v5, v5, p1

    sub-long/2addr v3, v5

    aput-wide v3, v2, p1

    iget-boolean v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->DETAIL_LOG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "elapsed time["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mTimeForDownload:[J

    aget-wide v3, v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected startSingleThreadRunning(Z)V
    .locals 4
    .param p1    # Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bStartReadBufferSBStopSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    iget-wide v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J

    const/4 v3, -0x5

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/CustomHttpClient;->stopSBUsageWithReason(JI)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream;->bStartReadBufferSBStopSent:Z

    :cond_0
    return-void
.end method
