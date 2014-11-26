.class public interface abstract Lcom/android/launcher2/CellPositioner;
.super Ljava/lang/Object;
.source "CellPositioner.java"


# virtual methods
.method public abstract addDelta(Lcom/android/launcher2/PositionDelta;)V
.end method

.method public abstract deltaAt(IIII)Lcom/android/launcher2/PositionDelta;
.end method

.method public abstract findNearestVacantArea(IIII[I)[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDeltas()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeDelta(Lcom/android/launcher2/PositionDelta;)V
.end method

.method public abstract reset(Z)V
.end method

.method public abstract resetDragDelta()V
.end method

.method public abstract updateDeltasForDrag(Lcom/android/launcher2/PositionDelta;Lcom/android/launcher2/WidgetSizes;IIZZZ)Z
.end method
