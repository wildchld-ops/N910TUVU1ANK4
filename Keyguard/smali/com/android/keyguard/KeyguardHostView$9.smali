.class Lcom/android/keyguard/KeyguardHostView$9;
.super Landroid/view/OrientationEventListener;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHostView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # invokes: Lcom/android/keyguard/KeyguardHostView;->updateOrientation()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$2000(Lcom/android/keyguard/KeyguardHostView;)V

    return-void
.end method
