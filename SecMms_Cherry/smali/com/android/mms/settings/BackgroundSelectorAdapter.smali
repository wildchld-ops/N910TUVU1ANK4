.class public Lcom/android/mms/settings/BackgroundSelectorAdapter;
.super Lcom/android/mms/ui/IconGridAdapter;
.source "BackgroundSelectorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-static {p1}, Lcom/android/mms/settings/BackgroundSelectorAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0    # Landroid/content/Context;
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

    const v4, 0x7f0c00a9

    const v5, 0x7f020173

    const/4 v3, 0x0

    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "com.sec.android.gallery3d"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/settings/BackgroundSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "com.cooliris.media"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/settings/BackgroundSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "com.android.gallery3d"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/settings/BackgroundSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    :cond_0
    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x1

    const v4, 0x7f0c00aa

    const v5, 0x7f02016e

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/settings/BackgroundSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    return-object v2
.end method
