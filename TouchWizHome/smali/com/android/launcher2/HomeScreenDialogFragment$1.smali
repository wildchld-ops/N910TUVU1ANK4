.class Lcom/android/launcher2/HomeScreenDialogFragment$1;
.super Ljava/lang/Object;
.source "HomeScreenDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeScreenDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenDialogFragment$1;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->setAlpha()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
