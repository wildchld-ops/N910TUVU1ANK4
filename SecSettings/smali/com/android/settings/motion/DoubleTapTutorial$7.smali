.class Lcom/android/settings/motion/DoubleTapTutorial$7;
.super Ljava/lang/Object;
.source "DoubleTapTutorial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/DoubleTapTutorial;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/DoubleTapTutorial;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/DoubleTapTutorial;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/DoubleTapTutorial$7;->this$0:Lcom/android/settings/motion/DoubleTapTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial$7;->this$0:Lcom/android/settings/motion/DoubleTapTutorial;

    # invokes: Lcom/android/settings/motion/DoubleTapTutorial;->stopAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion/DoubleTapTutorial;->access$700(Lcom/android/settings/motion/DoubleTapTutorial;)V

    return-void
.end method
