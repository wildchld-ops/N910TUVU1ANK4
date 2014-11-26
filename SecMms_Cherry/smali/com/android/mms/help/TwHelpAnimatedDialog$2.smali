.class Lcom/android/mms/help/TwHelpAnimatedDialog$2;
.super Ljava/lang/Object;
.source "TwHelpAnimatedDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/help/TwHelpAnimatedDialog;->SetAnimationEffectonPot2(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$2;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;

    const-wide/16 v2, 0x12c

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$2;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    # getter for: Lcom/android/mms/help/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$000(Lcom/android/mms/help/TwHelpAnimatedDialog;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$2;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    # getter for: Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;
    invoke-static {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$400(Lcom/android/mms/help/TwHelpAnimatedDialog;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$2;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    # getter for: Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I
    invoke-static {v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$300(Lcom/android/mms/help/TwHelpAnimatedDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-void
.end method
