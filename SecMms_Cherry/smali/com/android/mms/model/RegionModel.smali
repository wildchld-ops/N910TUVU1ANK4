.class public Lcom/android/mms/model/RegionModel;
.super Lcom/android/mms/model/Model;
.source "RegionModel.java"


# static fields
.field private static final DEFAULT_FIT:Ljava/lang/String; = "meet"


# instance fields
.field private mBackgroundColor:Ljava/lang/String;

.field private mFit:Ljava/lang/String;

.field private mHeight:I

.field private mLeft:I

.field private final mRegionId:Ljava/lang/String;

.field private mTop:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 7

    const-string v2, "meet"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    iput-object p1, p0, Lcom/android/mms/model/RegionModel;->mRegionId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/model/RegionModel;->mFit:Ljava/lang/String;

    iput p3, p0, Lcom/android/mms/model/RegionModel;->mLeft:I

    iput p4, p0, Lcom/android/mms/model/RegionModel;->mTop:I

    iput p5, p0, Lcom/android/mms/model/RegionModel;->mWidth:I

    iput p6, p0, Lcom/android/mms/model/RegionModel;->mHeight:I

    iput-object p7, p0, Lcom/android/mms/model/RegionModel;->mBackgroundColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/RegionModel;->mBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getFit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/RegionModel;->mFit:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/mms/model/RegionModel;->mHeight:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget v0, p0, Lcom/android/mms/model/RegionModel;->mLeft:I

    return v0
.end method

.method public getRegionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/RegionModel;->mRegionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    iget v0, p0, Lcom/android/mms/model/RegionModel;->mTop:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/mms/model/RegionModel;->mWidth:I

    return v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/model/RegionModel;->mBackgroundColor:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    return-void
.end method

.method public setFit(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/model/RegionModel;->mFit:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    iput p1, p0, Lcom/android/mms/model/RegionModel;->mHeight:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    return-void
.end method

.method public setLeft(I)V
    .locals 1

    iput p1, p0, Lcom/android/mms/model/RegionModel;->mLeft:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    return-void
.end method

.method public setTop(I)V
    .locals 1

    iput p1, p0, Lcom/android/mms/model/RegionModel;->mTop:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    return-void
.end method

.method public setWidth(I)V
    .locals 1

    iput p1, p0, Lcom/android/mms/model/RegionModel;->mWidth:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    return-void
.end method
