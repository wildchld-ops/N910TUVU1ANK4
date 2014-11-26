.class Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$1;
.super Ljava/lang/Object;
.source "TwHelpScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$1;->this$0:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$1;->this$0:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    # getter for: Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->access$000(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;)Landroid/view/Choreographer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$1;->this$0:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$1;->this$0:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    # getter for: Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v1}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->access$000(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;)Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->doAnimation(J)V

    :cond_0
    return-void
.end method
