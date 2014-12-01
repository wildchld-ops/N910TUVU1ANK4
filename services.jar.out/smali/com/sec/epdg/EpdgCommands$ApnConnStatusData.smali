.class public Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;
.super Ljava/lang/Object;
.source "EpdgCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApnConnStatusData"
.end annotation


# instance fields
.field private final mCid:I

.field private final mIsConnSuccess:Z

.field private final mIsHandover:Z

.field private final mLinkProp:Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;


# direct methods
.method public constructor <init>(IZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mCid:I

    iput-boolean p2, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mIsConnSuccess:Z

    iput-boolean p3, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mIsHandover:Z

    iput-object p4, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mLinkProp:Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    return-void
.end method


# virtual methods
.method public getCid()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mCid:I

    return v0
.end method

.method public getLinkProp()Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mLinkProp:Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    return-object v0
.end method

.method public isConnSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mIsConnSuccess:Z

    return v0
.end method

.method public isHandover()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mIsHandover:Z

    return v0
.end method

.method public post()V
    .locals 3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
