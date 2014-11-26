.class public abstract Lcom/sec/android/glview/TwGLAniViewGroup;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLAniViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    }
.end annotation


# static fields
.field public static final ANI_FINISH:I = 0xffff

.field public static final ANI_PLAY:I = 0x1

.field public static final ANI_STOP:I = -0x1

.field protected static final TAG:Ljava/lang/String; = "TwGLAniViewGroup"


# instance fields
.field protected mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;


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

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-void
.end method


# virtual methods
.method protected playAnimation(I)V
    .locals 4
    .param p1    # I

    const v3, 0xffff

    const/4 v2, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setAnimationStep(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    return-void

    :sswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->setAnimationStep(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->setContinuousDrawMode(Z)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setContinuousDrawMode(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setAnimationStep(I)V

    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLAniViewGroup;->setAnimationStep(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->setContinuousDrawMode(Z)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    invoke-interface {v0, v3}, Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;->onProgress(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method protected abstract setAnimationStep(I)V
.end method

.method public setProgressListener(Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;)V
    .locals 0
    .param p1    # Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    iput-object p1, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-void
.end method

.method public startCustomAnimation()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->playAnimation(I)V

    return-void
.end method

.method public stopCustomAnimation()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->playAnimation(I)V

    return-void
.end method
