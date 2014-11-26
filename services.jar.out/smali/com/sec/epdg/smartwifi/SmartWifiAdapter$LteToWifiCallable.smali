.class public Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiCallable;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LteToWifiCallable"
.end annotation


# instance fields
.field private final mNetworkType:I

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)V
    .locals 0
    .param p2    # I

    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiCallable;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiCallable;->mNetworkType:I

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiCallable;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiCallable;->mNetworkType:I

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->doLteToWifiHO(I)Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiCallable;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
