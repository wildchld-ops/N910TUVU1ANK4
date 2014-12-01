.class public abstract Lcom/android/mms/model/RegionMediaModel;
.super Lcom/android/mms/model/MediaModel;
.source "RegionMediaModel.java"


# instance fields
.field protected mRegion:Lcom/android/mms/model/RegionModel;

.field protected mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    iput-object p6, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    iput-object p6, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/android/mms/model/RegionModel;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    iput-object p6, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    return-void
.end method


# virtual methods
.method public getRegion()Lcom/android/mms/model/RegionModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    return v0
.end method

.method public setRegion(Lcom/android/mms/model/RegionModel;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    return-void
.end method
