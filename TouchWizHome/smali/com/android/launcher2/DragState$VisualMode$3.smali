.class final enum Lcom/android/launcher2/DragState$VisualMode$3;
.super Lcom/android/launcher2/DragState$VisualMode;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DragState$VisualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/DragState$VisualMode;-><init>(Ljava/lang/String;ILcom/android/launcher2/DragState$1;)V

    return-void
.end method


# virtual methods
.method protected enter(Lcom/android/launcher2/UpdateableShadowBuilder;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/launcher2/UpdateableShadowBuilder;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v2, -0xff0101

    const v3, 0x55005055

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p1}, Lcom/android/launcher2/UpdateableShadowBuilder;->draw()V

    return-void
.end method
