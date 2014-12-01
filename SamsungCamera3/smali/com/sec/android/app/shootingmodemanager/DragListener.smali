.class public Lcom/sec/android/app/shootingmodemanager/DragListener;
.super Ljava/lang/Object;
.source "DragListener.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field private final mDragSource:Lcom/sec/android/app/shootingmodemanager/DragSource;

.field private final mDropTarget:Lcom/sec/android/app/shootingmodemanager/DropTarget;

.field private mDropped:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/shootingmodemanager/DragSource;Lcom/sec/android/app/shootingmodemanager/DropTarget;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/shootingmodemanager/DragListener;->mDropped:Z

    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/DragListener;->mDragSource:Lcom/sec/android/app/shootingmodemanager/DragSource;

    iput-object p2, p0, Lcom/sec/android/app/shootingmodemanager/DragListener;->mDropTarget:Lcom/sec/android/app/shootingmodemanager/DropTarget;

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, -0x40800000

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    iput-boolean v2, p0, Lcom/sec/android/app/shootingmodemanager/DragListener;->mDropped:Z

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/DragListener;->mDragSource:Lcom/sec/android/app/shootingmodemanager/DragSource;

    invoke-interface {v0}, Lcom/sec/android/app/shootingmodemanager/DragSource;->initializeViewsForDrag()V

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/DragListener;->mDragSource:Lcom/sec/android/app/shootingmodemanager/DragSource;

    invoke-interface {v0}, Lcom/sec/android/app/shootingmodemanager/DragSource;->onDragStart()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/DragListener;->mDropTarget:Lcom/sec/android/app/shootingmodemanager/DropTarget;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/shootingmodemanager/DropTarget;->onDragOver(FF)V

    goto :goto_0

    :pswitch_3
    iput-boolean v2, p0, Lcom/sec/android/app/shootingmodemanager/DragListener;->mDropped:Z

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/DragListener;->mDropTarget:Lcom/sec/android/app/shootingmodemanager/DropTarget;

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/shootingmodemanager/DropTarget;->onDragOver(FF)V

    goto :goto_0

    :pswitch_4
    iput-boolean v3, p0, Lcom/sec/android/app/shootingmodemanager/DragListener;->mDropped:Z

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/DragListener;->mDropTarget:Lcom/sec/android/app/shootingmodemanager/DropTarget;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/shootingmodemanager/DropTarget;->onDrop(FF)V

    goto :goto_0

    :pswitch_5
    iget-boolean v0, p0, Lcom/sec/android/app/shootingmodemanager/DragListener;->mDropped:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/DragListener;->mDropTarget:Lcom/sec/android/app/shootingmodemanager/DropTarget;

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/shootingmodemanager/DropTarget;->onDrop(FF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/DragListener;->mDragSource:Lcom/sec/android/app/shootingmodemanager/DragSource;

    invoke-interface {v0}, Lcom/sec/android/app/shootingmodemanager/DragSource;->onDragEnded()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
