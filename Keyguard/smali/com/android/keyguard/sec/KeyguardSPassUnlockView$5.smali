.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;
.super Landroid/view/OrientationEventListener;
.source "KeyguardSPassUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/content/Context;I)V
    .locals 0
    .param p2    # Landroid/content/Context;
    .param p3    # I

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateOrientation()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    return-void
.end method
