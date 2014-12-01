.class public Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLDragDropBox.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLDragDropBox"


# instance fields
.field protected lastDragCoord:[F

.field private mDraggable:Z

.field private mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

.field private mDroppable:Z

.field protected mOnDragDropBoxListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

.field private mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

.field protected mView:Lcom/sec/android/glview/TwGLView;

.field protected mViewToDrag:Lcom/sec/android/glview/TwGLView;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDraggable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDraggable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDraggable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    return-void
.end method

.method private static final findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    move-object p0, v4

    :goto_0
    return-object p0

    :cond_0
    instance-of v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    check-cast p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    goto :goto_0

    :cond_1
    instance-of v5, p0, Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v5, :cond_3

    move-object v3, p0

    check-cast v3, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getSize()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object p0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object p0, v4

    goto :goto_0
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p1, p0}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    const/4 v0, 0x0

    invoke-super {p0, v0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(ILcom/sec/android/glview/TwGLView;)V

    return-void
.end method

.method public addViewToDrag(Lcom/sec/android/glview/TwGLView;)V
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p1, p0}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method

.method protected cancelDrag()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDraggable:Z

    return v0
.end method

.method public getDroppability()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    return v0
.end method

.method public getView()Lcom/sec/android/glview/TwGLView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method public getViewToDrag()Lcom/sec/android/glview/TwGLView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    const/16 v2, 0x63

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    instance-of v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    instance-of v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getCommandId()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v7, v0, v3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v8, v0, v4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLView;->mapPointReverse([FFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v1, v1, v3

    sub-float/2addr v1, v7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v2, v2, v4

    sub-float/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    :cond_1
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragDropBoxListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragDropBoxListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;->onDragItemInDragDropBox(Lcom/sec/android/glview/TwGLView;FFFF)V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDropbox:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getDroppability()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->cancelDrag()V

    :goto_0
    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragDropBoxListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragDropBoxListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;->onDragEndItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iput-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->cancelDrag()V

    goto :goto_0
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 3

    const/4 v2, 0x0

    const v1, 0x3f99999a

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDraggable:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLView;->mapPointReverse([FFF)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setEmpty()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragStart(Lcom/sec/android/glview/TwGLView;FF)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragDropBoxListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragDropBoxListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;->onDragStartItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method protected onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setNormalBGVisibility(I)V

    :cond_0
    instance-of v0, p2, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    if-eqz v0, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p2, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    invoke-virtual {p2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;->setNormalBGVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;->onDrop(Lcom/sec/android/glview/TwGLView;)V

    :cond_2
    return-void
.end method

.method public onTouchOver(Lcom/sec/android/glview/TwGLView;)V
    .locals 0

    return-void
.end method

.method public removeView()Lcom/sec/android/glview/TwGLView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setEmpty()V

    return-object v0
.end method

.method public setDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDraggable:Z

    return-void
.end method

.method public setDroppability(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    return-void
.end method

.method protected setEmpty()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    return-void
.end method

.method public setOnDragDropBoxListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDragDropBoxListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;

    return-void
.end method

.method public setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    return-void
.end method

.method public setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    return-void
.end method
