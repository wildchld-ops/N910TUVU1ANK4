.class public Lcom/android/launcher2/CellPositionerNoGap;
.super Ljava/lang/Object;
.source "CellPositionerNoGap.java"

# interfaces
.implements Lcom/android/launcher2/CellPositioner;


# instance fields
.field private final mLayout:Lcom/android/launcher2/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/CellPositionerNoGap;->mLayout:Lcom/android/launcher2/CellLayout;

    return-void
.end method


# virtual methods
.method public addDelta(Lcom/android/launcher2/PositionDelta;)V
    .locals 0

    return-void
.end method

.method public deltaAt(IIII)Lcom/android/launcher2/PositionDelta;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public findNearestVacantArea(IIII[I)[I
    .locals 1

    if-eqz p5, :cond_0

    :goto_0
    const/4 v0, 0x0

    aput p1, p5, v0

    const/4 v0, 0x1

    aput p2, p5, v0

    return-object p5

    :cond_0
    const/4 v0, 0x2

    new-array p5, v0, [I

    goto :goto_0
.end method

.method public getDeltas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeDelta(Lcom/android/launcher2/PositionDelta;)V
    .locals 0

    return-void
.end method

.method public reset(Z)V
    .locals 0

    return-void
.end method

.method public resetDragDelta()V
    .locals 0

    return-void
.end method

.method public updateDeltasForDrag(Lcom/android/launcher2/PositionDelta;Lcom/android/launcher2/WidgetSizes;IIZZZ)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
