.class public abstract Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;
.super Ljava/lang/Object;
.source "AbstractKeyboardTraceLine.java"

# interfaces
.implements Lcom/diotek/ime/framework/view/IKeyboardTraceLine;


# instance fields
.field protected mPath:Landroid/graphics/Path;

.field protected mTracePaint:Landroid/graphics/Paint;

.field protected mTracePenThickness:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract endDrawTraceLine()V
.end method

.method public getPathBound()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract moveDrawTraceLine(JJ)V
.end method

.method public abstract onDrawTraceLine(Landroid/graphics/Canvas;)V
.end method

.method public abstract startDrawTraceLine(JJ)V
.end method
