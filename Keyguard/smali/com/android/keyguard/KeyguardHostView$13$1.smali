.class Lcom/android/keyguard/KeyguardHostView$13$1;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHostView$13;->showWipeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardHostView$13;

.field final synthetic val$attemptsCount:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView$13;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$13$1;->this$1:Lcom/android/keyguard/KeyguardHostView$13;

    iput p2, p0, Lcom/android/keyguard/KeyguardHostView$13$1;->val$attemptsCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$13$1;->this$1:Lcom/android/keyguard/KeyguardHostView$13;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardHostView$13;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget v1, p0, Lcom/android/keyguard/KeyguardHostView$13$1;->val$attemptsCount:I

    # invokes: Lcom/android/keyguard/KeyguardHostView;->performWipeout(I)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->access$3500(Lcom/android/keyguard/KeyguardHostView;I)V

    return-void
.end method
