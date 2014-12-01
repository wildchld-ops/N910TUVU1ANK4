.class Lcom/android/settings/DataUsageSummary$25;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/settings/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings/net/ChartData;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/settings/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$3500(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settings/net/ChartData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings/net/ChartData;",
            ">;",
            "Lcom/android/settings/net/ChartData;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # setter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v0, p2}, Lcom/android/settings/DataUsageSummary;->access$3602(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/net/ChartData;)Lcom/android/settings/net/ChartData;

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$3600(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$3600(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;Z)V

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updateAppDetail()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3700(Lcom/android/settings/DataUsageSummary;)V

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3600(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3800(Lcom/android/settings/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/settings/net/ChartData;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/DataUsageSummary$25;->onLoadFinished(Landroid/content/Loader;Lcom/android/settings/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings/net/ChartData;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # setter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$3602(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/net/ChartData;)Lcom/android/settings/net/ChartData;

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    return-void
.end method
