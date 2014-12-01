.class Lcom/android/launcher2/Launcher$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->exitAllappsAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$6;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$6;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$6;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    # invokes: Lcom/android/launcher2/Launcher;->finishExitAllApps()V
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$300(Lcom/android/launcher2/Launcher;)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->setCoctailShift(ZZ)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    sget-boolean v0, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->setWindowDarkenBackground(ZF)V

    :cond_0
    return-void
.end method
