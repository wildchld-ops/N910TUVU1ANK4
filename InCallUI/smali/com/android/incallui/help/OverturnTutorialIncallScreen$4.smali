.class Lcom/android/incallui/help/OverturnTutorialIncallScreen$4;
.super Ljava/lang/Object;
.source "OverturnTutorialIncallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/help/OverturnTutorialIncallScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    # invokes: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->stopAnimation()V
    invoke-static {v0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$1000(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)V

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;
    invoke-static {v0, v1}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$1102(Lcom/android/incallui/help/OverturnTutorialIncallScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mTutorialDialogON:I
    invoke-static {v0, v1}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$1202(Lcom/android/incallui/help/OverturnTutorialIncallScreen;I)I

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isForegroundActivity() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    # invokes: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->isForegroundActivity()Z
    invoke-static {v2}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$1300(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    # invokes: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->isForegroundActivity()Z
    invoke-static {v0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$1300(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    # getter for: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mPreviousMsg:I
    invoke-static {v0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$000(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$4;->this$0:Lcom/android/incallui/help/OverturnTutorialIncallScreen;

    # invokes: Lcom/android/incallui/help/OverturnTutorialIncallScreen;->startIncomingSound()V
    invoke-static {v0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->access$1400(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)V

    :cond_0
    return-void
.end method
