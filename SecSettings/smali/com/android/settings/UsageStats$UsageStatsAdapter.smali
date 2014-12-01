.class Lcom/android/settings/UsageStats$UsageStatsAdapter;
.super Landroid/widget/BaseAdapter;
.source "UsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsageStatsAdapter"
.end annotation


# instance fields
.field private mAppLabelComparator:Lcom/android/settings/UsageStats$AppNameComparator;

.field private mAppLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayOrder:I

.field private mLaunchCountComparator:Lcom/android/settings/UsageStats$LaunchCountComparator;

.field private mUsageStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/PkgUsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageTimeComparator:Lcom/android/settings/UsageStats$UsageTimeComparator;

.field final synthetic this$0:Lcom/android/settings/UsageStats;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageStats;)V
    .locals 11

    const/4 v8, 0x0

    iput-object p1, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStats;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v8, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mAppLabelMap:Ljava/util/HashMap;

    :try_start_0
    # getter for: Lcom/android/settings/UsageStats;->mUsageStatsService:Lcom/android/internal/app/IUsageStats;
    invoke-static {p1}, Lcom/android/settings/UsageStats;->access$000(Lcom/android/settings/UsageStats;)Lcom/android/internal/app/IUsageStats;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/app/IUsageStats;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v8, "UsageStatsActivity"

    const-string v9, "Failed initializing usage stats service"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v1, v7

    array-length v5, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v6, v1, v3

    iget-object v8, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_1
    # getter for: Lcom/android/settings/UsageStats;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/settings/UsageStats;->access$100(Lcom/android/settings/UsageStats;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, v6, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    # getter for: Lcom/android/settings/UsageStats;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/settings/UsageStats;->access$100(Lcom/android/settings/UsageStats;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_2
    iget-object v8, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mAppLabelMap:Ljava/util/HashMap;

    iget-object v9, v6, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_1
    move-exception v2

    iget-object v4, v6, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    new-instance v8, Lcom/android/settings/UsageStats$LaunchCountComparator;

    invoke-direct {v8}, Lcom/android/settings/UsageStats$LaunchCountComparator;-><init>()V

    iput-object v8, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mLaunchCountComparator:Lcom/android/settings/UsageStats$LaunchCountComparator;

    new-instance v8, Lcom/android/settings/UsageStats$UsageTimeComparator;

    invoke-direct {v8}, Lcom/android/settings/UsageStats$UsageTimeComparator;-><init>()V

    iput-object v8, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageTimeComparator:Lcom/android/settings/UsageStats$UsageTimeComparator;

    new-instance v8, Lcom/android/settings/UsageStats$AppNameComparator;

    iget-object v9, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mAppLabelMap:Ljava/util/HashMap;

    invoke-direct {v8, v9}, Lcom/android/settings/UsageStats$AppNameComparator;-><init>(Ljava/util/Map;)V

    iput-object v8, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mAppLabelComparator:Lcom/android/settings/UsageStats$AppNameComparator;

    invoke-direct {p0}, Lcom/android/settings/UsageStats$UsageStatsAdapter;->sortList()V

    goto :goto_0
.end method

.method private sortList()V
    .locals 2

    iget v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageTimeComparator:Lcom/android/settings/UsageStats$UsageTimeComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mLaunchCountComparator:Lcom/android/settings/UsageStats$LaunchCountComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mAppLabelComparator:Lcom/android/settings/UsageStats$AppNameComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStats;

    # getter for: Lcom/android/settings/UsageStats;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/settings/UsageStats;->access$200(Lcom/android/settings/UsageStats;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040262

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/settings/UsageStats$AppViewHolder;

    invoke-direct {v0}, Lcom/android/settings/UsageStats$AppViewHolder;-><init>()V

    const v3, 0x7f0b05c4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/UsageStats$AppViewHolder;->pkgName:Landroid/widget/TextView;

    const v3, 0x7f0b05c5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/UsageStats$AppViewHolder;->launchCount:Landroid/widget/TextView;

    const v3, 0x7f0b05c6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/UsageStats$AppViewHolder;->usageTime:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/PkgUsageStats;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mAppLabelMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/settings/UsageStats$AppViewHolder;->pkgName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/settings/UsageStats$AppViewHolder;->launchCount:Landroid/widget/TextView;

    iget v4, v2, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/settings/UsageStats$AppViewHolder;->usageTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v2, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UsageStats$AppViewHolder;

    goto :goto_0

    :cond_1
    const-string v3, "UsageStatsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No usage stats info for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method sortList(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    invoke-direct {p0}, Lcom/android/settings/UsageStats$UsageStatsAdapter;->sortList()V

    goto :goto_0
.end method
