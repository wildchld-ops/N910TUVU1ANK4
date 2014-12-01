.class public Lcom/sec/epdg/smartwifi/PingStats;
.super Ljava/lang/Object;
.source "PingStats.java"


# instance fields
.field private final mPacketLossPercent:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/epdg/smartwifi/PingStats;->mPacketLossPercent:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getPacketLossInPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/smartwifi/PingStats;->mPacketLossPercent:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
