.class public Lcom/android/mms/saverestore/SavedSmsMessage;
.super Ljava/lang/Object;
.source "SavedSmsMessage.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBody:Ljava/lang/String;

.field private mCanonicalAddress:Ljava/lang/String;

.field private mDate:J

.field private mId:J

.field private mLocked:I

.field private mRead:I

.field private mTotalCount:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mId:J

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mAddress:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mCanonicalAddress:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mBody:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mDate:J

    iput v1, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mRead:I

    iput v1, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mType:I

    iput v1, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mLocked:I

    iput v1, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mTotalCount:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mId:J

    iput-object p3, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mCanonicalAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mBody:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mDate:J

    iput p8, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mRead:I

    iput p9, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mType:I

    iput p10, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mLocked:I

    iput p11, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mTotalCount:I

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mCanonicalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mDate:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mId:J

    return-wide v0
.end method

.method public getLocked()I
    .locals 1

    iget v0, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mLocked:I

    return v0
.end method

.method public getRead()I
    .locals 1

    iget v0, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mRead:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mTotalCount:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mType:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mBody:Ljava/lang/String;

    return-void
.end method

.method public setCanonicalAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mCanonicalAddress:Ljava/lang/String;

    return-void
.end method

.method public setDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mDate:J

    return-void
.end method

.method public setID(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mId:J

    return-void
.end method

.method public setLocked(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mLocked:I

    return-void
.end method

.method public setRead(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mRead:I

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mTotalCount:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/saverestore/SavedSmsMessage;->mType:I

    return-void
.end method
