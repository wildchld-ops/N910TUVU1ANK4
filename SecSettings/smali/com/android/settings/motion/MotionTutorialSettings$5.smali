.class Lcom/android/settings/motion/MotionTutorialSettings$5;
.super Ljava/lang/Object;
.source "MotionTutorialSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionTutorialSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionTutorialSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/MotionTutorialSettings$5;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings$5;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    # invokes: Lcom/android/settings/motion/MotionTutorialSettings;->stopAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion/MotionTutorialSettings;->access$1100(Lcom/android/settings/motion/MotionTutorialSettings;)V

    return-void
.end method
