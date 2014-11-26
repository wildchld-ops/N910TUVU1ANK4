.class public Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;
.super Ljava/lang/Object;
.source "PrioritySenderCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/prioritysender/PrioritySenderCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrioritySender"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mId:J

.field private mMsgId:J

.field private mMsgType:I

.field private mPriority:I

.field private mThreadId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;IJIJ)V
    .locals 0
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # J
    .param p7    # I
    .param p8    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mId:J

    iput-object p3, p0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mAddress:Ljava/lang/String;

    iput p4, p0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mPriority:I

    iput-wide p5, p0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mThreadId:J

    iput p7, p0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mMsgType:I

    iput-wide p8, p0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mMsgId:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;)I
    .locals 1
    .param p0    # Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;

    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mMsgType:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;I)I
    .locals 0
    .param p0    # Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mMsgType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;)J
    .locals 2
    .param p0    # Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;

    iget-wide v0, p0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mMsgId:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;J)J
    .locals 0
    .param p0    # Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mMsgId:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;)J
    .locals 2
    .param p0    # Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;

    iget-wide v0, p0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;)J
    .locals 2
    .param p0    # Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;

    iget-wide v0, p0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;J)J
    .locals 0
    .param p0    # Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mThreadId:J

    return-wide p1
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mId:J

    return-wide v0
.end method

.method public getThreadId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mThreadId:J

    return-wide v0
.end method
