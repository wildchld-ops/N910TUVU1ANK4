.class Lcom/android/systemui/recent/RecentsPanelView$28;
.super Landroid/os/AsyncTask;
.source "RecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->findCustomApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/pm/ActivityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$28;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/pm/ActivityInfo;
    .locals 10
    .param p1    # [Ljava/lang/Void;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsPanelView$28;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/recent/RecentsPanelView;->access$8700(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsPanelView$28;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView$28;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/systemui/recent/RecentsPanelView;->access$8800(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->checkApplicationForButton(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    invoke-static {v7, v8, v9}, Lcom/android/systemui/recent/RecentsPanelView;->access$8900(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v7, "RecentsPanelView"

    const-string v8, "findCustomApplication(): transaction too large. Likely due to heavy load, the application will be added after next restart"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v6

    goto :goto_0

    :cond_2
    move-object v0, v6

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$28;->doInBackground([Ljava/lang/Void;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p1    # Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$28;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->addRecentsCustomButton(Landroid/content/pm/ActivityInfo;)V
    invoke-static {v0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->access$9000(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$28;->onPostExecute(Landroid/content/pm/ActivityInfo;)V

    return-void
.end method
