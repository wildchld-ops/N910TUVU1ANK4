.class public Lcom/android/mms/ui/AddTextSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "AddTextSelectorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/android/mms/ui/AddTextSelectorAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    const v9, 0x7f0c0121

    const/16 v8, 0x10

    const/16 v7, 0xf

    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.android.calendar"

    const v5, 0x7f0c0122

    invoke-static {p0, v4, v0, v8, v5}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.android.calendar"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    const-string v4, "com.android.calendar"

    if-eqz v3, :cond_3

    :goto_1
    invoke-static {p0, v4, v0, v8, v3}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Z

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    sget-object v4, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-static {p0, v4, v0, v7, v9}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_2
    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    const v5, 0x7f0c0198

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string v4, "com.android.contacts"

    invoke-static {p0, v4, v0, v7, v9}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    goto :goto_2
.end method
