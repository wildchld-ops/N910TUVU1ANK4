.class public Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
.super Ljava/lang/Object;
.source "EpdgNetHandoverInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[HANDOVERRESULTINFO]"


# instance fields
.field private mAct:I

.field private mCause:I

.field private mPdnType:I

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->mState:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->mAct:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->mCause:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->mPdnType:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->mState:I

    iput p2, p0, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->mAct:I

    iput p4, p0, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->mCause:I

    iput p3, p0, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->mPdnType:I

    return-void
.end method


# virtual methods
.method public getAct()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->mAct:I

    return v0
.end method

.method public getPdnType()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->mPdnType:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->mState:I

    return v0
.end method

.method public getmCause()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;->mCause:I

    return v0
.end method
