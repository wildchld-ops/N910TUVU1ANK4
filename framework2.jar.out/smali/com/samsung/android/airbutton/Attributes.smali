.class public final Lcom/samsung/android/airbutton/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"


# static fields
.field public static final AUTO:I = -0x1


# instance fields
.field public UIType:I

.field public dataType:I

.field public density:F

.field public direction:I

.field public gravity:I

.field public headItemIdx:I

.field public itemSize:I

.field public itemSizePixel:I

.field public listItemTilt:F

.field public maxDisplayItemCnt:I

.field public multipleSelection:Z

.field public parentViewHeight:I

.field public parentViewWidth:I

.field public parentViewX:I

.field public parentViewY:I

.field public scrollable:Z

.field public statusbarHeight:I

.field public widgetDistanceFromHoveredView:I

.field public widgetDistanceFromHoveredViewPixel:I

.field public windowHeight:I

.field public windowWidth:I

.field public withBounceEffect:Z

.field public x:I

.field public xPixel:I

.field public y:I

.field public yPixel:I


# direct methods
.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x780

    const/16 v3, 0x500

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->density:F

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    iput v4, p0, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    iput v3, p0, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewY:I

    iput v4, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewWidth:I

    iput v3, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewHeight:I

    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->x:I

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->y:I

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredView:I

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredViewPixel:I

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/Attributes;->multipleSelection:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/airbutton/Attributes;)V
    .locals 5

    const/16 v4, 0x780

    const/16 v3, 0x500

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->density:F

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    iput v4, p0, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    iput v3, p0, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewY:I

    iput v4, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewWidth:I

    iput v3, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewHeight:I

    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->x:I

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->y:I

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredView:I

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredViewPixel:I

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/Attributes;->multipleSelection:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/Attributes;->copyFrom(Lcom/samsung/android/airbutton/Attributes;)V

    return-void
.end method


# virtual methods
.method public calculatePixelValue()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lcom/samsung/android/airbutton/Attributes;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget v0, p0, Lcom/samsung/android/airbutton/Attributes;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    iget v0, p0, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredView:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredViewPixel:I

    iget v0, p0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    if-ne v0, v2, :cond_0

    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    goto :goto_0
.end method

.method public clone()Lcom/samsung/android/airbutton/Attributes;
    .locals 1

    invoke-virtual {p0, p0}, Lcom/samsung/android/airbutton/Attributes;->clone(Lcom/samsung/android/airbutton/Attributes;)Lcom/samsung/android/airbutton/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public clone(Lcom/samsung/android/airbutton/Attributes;)Lcom/samsung/android/airbutton/Attributes;
    .locals 1

    new-instance v0, Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0, p1}, Lcom/samsung/android/airbutton/Attributes;-><init>(Lcom/samsung/android/airbutton/Attributes;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/Attributes;->clone()Lcom/samsung/android/airbutton/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/samsung/android/airbutton/Attributes;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->direction:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->parentViewY:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewY:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->parentViewWidth:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewWidth:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->parentViewHeight:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewHeight:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->density:F

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->density:F

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->x:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->x:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->y:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->y:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredView:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredView:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredViewPixel:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredViewPixel:I

    iget-boolean v0, p1, Lcom/samsung/android/airbutton/Attributes;->multipleSelection:Z

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/Attributes;->multipleSelection:Z

    iget-boolean v0, p1, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    iget-boolean v0, p1, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    goto :goto_0
.end method
