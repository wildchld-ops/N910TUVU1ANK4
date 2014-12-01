.class Lcom/android/settings/motion/MotionView$8;
.super Ljava/lang/Object;
.source "MotionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionView;->showUseRingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionView;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/MotionView$8;->this$0:Lcom/android/settings/motion/MotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/motion/MotionView$8;->this$0:Lcom/android/settings/motion/MotionView;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/motion/MotionView;->startTryActually(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/motion/MotionView;->access$1500(Lcom/android/settings/motion/MotionView;Z)V

    return-void
.end method
