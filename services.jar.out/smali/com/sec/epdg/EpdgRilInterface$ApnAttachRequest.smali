.class public Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
.super Lcom/sec/epdg/EpdgRilInterface$BaseRxRequest;
.source "EpdgRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApnAttachRequest"
.end annotation


# instance fields
.field private final mApnName:Ljava/lang/String;

.field private final mIpv4Addr:Ljava/lang/String;

.field private final mIpv6Addr:Ljava/lang/String;

.field private final mPcscfReq:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgRilInterface$BaseRxRequest;-><init>(I)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->mApnName:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->mIpv4Addr:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->mIpv6Addr:Ljava/lang/String;

    iput p5, p0, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->mPcscfReq:I

    return-void
.end method


# virtual methods
.method public getApnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->mApnName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4Addr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->mIpv4Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6Addr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->mIpv6Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getPcscfReq()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->mPcscfReq:I

    return v0
.end method
