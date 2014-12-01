.class public Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;
.super Lcom/sec/epdg/EpdgRilInterface$BaseRxRequest;
.source "EpdgRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApnHandoverResponse"
.end annotation


# instance fields
.field private final mWifiOrMobile:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgRilInterface$BaseRxRequest;-><init>(I)V

    iput-boolean p2, p0, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;->mWifiOrMobile:Z

    return-void
.end method


# virtual methods
.method public isWifiOrMobile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;->mWifiOrMobile:Z

    return v0
.end method
