.class Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;
.super Ljava/lang/Object;
.source "TiltAlphaProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final LOG_CHECK_POS:I = 0x64


# instance fields
.field private logCnt:I

.field final synthetic this$0:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->this$0:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->logCnt:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->this$0:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    iget-object v1, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->this$0:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    # getter for: Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mNextAlpha:F
    invoke-static {v1}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->access$100(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->this$0:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    # getter for: Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mCurrentAlpha:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->access$000(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40200000

    div-float/2addr v1, v2

    # += operator for: Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mCurrentAlpha:F
    invoke-static {v0, v1}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->access$016(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;F)F

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->this$0:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    # getter for: Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mNextAlpha:F
    invoke-static {v0}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->access$100(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->this$0:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    # getter for: Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mCurrentAlpha:F
    invoke-static {v1}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->access$000(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->this$0:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    # getter for: Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mParentWindowFocus:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->access$200(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->this$0:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    # invokes: Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->stopAlphaAnimation()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->access$300(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->this$0:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    # getter for: Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mAlphaChangedListener:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;
    invoke-static {v0}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->access$400(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->this$0:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    # getter for: Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mAlphaChangedListener:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;
    invoke-static {v0}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->access$400(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->this$0:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    # getter for: Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mCurrentAlpha:F
    invoke-static {v1}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->access$000(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;->onAlphaChanged(F)V

    iget v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->logCnt:I

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_3

    const-string v0, "Tilt_TiltAlphaProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAlphaChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->this$0:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    # getter for: Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->mCurrentAlpha:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->access$000(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->logCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->logCnt:I

    iget v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->logCnt:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->logCnt:I

    :cond_4
    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->this$0:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    # getter for: Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->isAlphaAnimationRunning:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->access$500(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$1;->this$0:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    # invokes: Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->loop()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->access$600(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;)V

    goto :goto_0
.end method
