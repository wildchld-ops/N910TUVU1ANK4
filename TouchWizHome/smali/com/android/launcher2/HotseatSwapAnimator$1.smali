.class Lcom/android/launcher2/HotseatSwapAnimator$1;
.super Ljava/lang/Object;
.source "HotseatSwapAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HotseatSwapAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HotseatSwapAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HotseatSwapAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HotseatSwapAnimator$1;->this$0:Lcom/android/launcher2/HotseatSwapAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator$1;->this$0:Lcom/android/launcher2/HotseatSwapAnimator;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-static {v0, v1}, Lcom/android/launcher2/HotseatSwapAnimator;->access$002(Lcom/android/launcher2/HotseatSwapAnimator;Lcom/android/launcher2/AnimationLayer$Anim;)Lcom/android/launcher2/AnimationLayer$Anim;

    return-void
.end method
