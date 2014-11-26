.class public Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLIndicatorGroup.java"


# static fields
.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2


# instance fields
.field private mDirection:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->mDirection:I

    return-void
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLView;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->updateAlpha()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->mDirection:I

    return-void
.end method

.method public setVisibility(Lcom/sec/android/glview/TwGLView;I)V
    .locals 7
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # I

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->mDirection:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    int-to-float v3, v1

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    int-to-float v3, v1

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v1, v3

    goto :goto_1

    :pswitch_1
    int-to-float v3, v1

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v1, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    int-to-float v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    goto :goto_1

    :pswitch_2
    int-to-float v3, v1

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v1, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    int-to-float v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {v2, v6, v3}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    goto :goto_1

    :pswitch_3
    int-to-float v3, v1

    invoke-virtual {v2, v6, v3}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    int-to-float v3, v1

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v1, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v5}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->updateAlpha()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
