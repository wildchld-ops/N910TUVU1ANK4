.class public Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
.super Ljava/lang/Object;
.source "EpdgPdpContextInfo.java"


# instance fields
.field private mCid:I

.field private mDataCallReason:I

.field private mDataCallType:I

.field private mState:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mCid:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mState:I

    return-void
.end method

.method public static getNewEpdgContextInfo()Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    .locals 1

    new-instance v0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;

    invoke-direct {v0}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCid()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mCid:I

    return v0
.end method

.method public getDataCallRsn()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mDataCallReason:I

    return v0
.end method

.method public getDataCallType()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mDataCallType:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mState:I

    return v0
.end method

.method public setCid(I)V
    .locals 0

    iput p1, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mCid:I

    return-void
.end method

.method public setDataCallRsn(I)V
    .locals 0

    iput p1, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mDataCallReason:I

    return-void
.end method

.method public setDataCallType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mDataCallType:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mState:I

    return-void
.end method
