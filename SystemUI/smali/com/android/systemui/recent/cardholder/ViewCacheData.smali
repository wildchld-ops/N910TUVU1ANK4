.class public Lcom/android/systemui/recent/cardholder/ViewCacheData;
.super Ljava/lang/Object;
.source "ViewCacheData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewCacheData"


# instance fields
.field final dimLayerAlpha:F

.field final scale:F

.field final shadowVisibility:I

.field final visibility:I

.field final xPos:F

.field final yPos:F


# direct methods
.method public constructor <init>(IFFFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->visibility:I

    iput p2, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->xPos:F

    iput p3, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->yPos:F

    iput p4, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->scale:F

    iput p5, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->dimLayerAlpha:F

    iput p6, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->shadowVisibility:I

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 3

    const-string v0, "ViewCacheData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nvisibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->visibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nxPos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->xPos:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nyPos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->yPos:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nscale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->scale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ndimLayerAlpha : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->dimLayerAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nshadowVisibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->shadowVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getDimLayerAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->dimLayerAlpha:F

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->scale:F

    return v0
.end method

.method public getShadowVisibility()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->shadowVisibility:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->visibility:I

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->xPos:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/ViewCacheData;->yPos:F

    return v0
.end method
