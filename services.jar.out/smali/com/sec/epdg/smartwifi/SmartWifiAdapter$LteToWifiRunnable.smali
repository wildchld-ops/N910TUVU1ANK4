.class public Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiRunnable;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LteToWifiRunnable"
.end annotation


# instance fields
.field private mFailure:Ljava/lang/Runnable;

.field private mNetworkType:I

.field private mSuccess:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p2    # I
    .param p3    # Ljava/lang/Runnable;
    .param p4    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiRunnable;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiRunnable;->mNetworkType:I

    iput-object p3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiRunnable;->mSuccess:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiRunnable;->mFailure:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiRunnable;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiRunnable;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;

    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiRunnable;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiRunnable;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiRunnable;->mSuccess:Ljava/lang/Runnable;

    iget-object v7, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiRunnable;->mFailure:Ljava/lang/Runnable;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/concurrent/Callable;

    const/4 v2, 0x0

    new-instance v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiCallable;

    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiRunnable;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiRunnable;->mNetworkType:I

    invoke-direct {v3, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiCallable;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
