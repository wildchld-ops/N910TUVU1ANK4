.class Lcom/android/launcher2/DeltaVisualizer$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeltaVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeltaVisualizer;->bounceOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeltaVisualizer;

.field final synthetic val$a:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/DeltaVisualizer$4;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iput-object p2, p0, Lcom/android/launcher2/DeltaVisualizer$4;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-object p3, p0, Lcom/android/launcher2/DeltaVisualizer$4;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$4;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$4;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    # invokes: Lcom/android/launcher2/DeltaVisualizer;->removeAllListeners(Lcom/android/launcher2/AnimationLayer$Anim;)V
    invoke-static {v0, v1}, Lcom/android/launcher2/DeltaVisualizer;->access$500(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;)V

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$4;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$4;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v2, p0, Lcom/android/launcher2/DeltaVisualizer$4;->val$v:Landroid/view/View;

    # invokes: Lcom/android/launcher2/DeltaVisualizer;->bounceListner(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/DeltaVisualizer;->access$800(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    return-void
.end method
