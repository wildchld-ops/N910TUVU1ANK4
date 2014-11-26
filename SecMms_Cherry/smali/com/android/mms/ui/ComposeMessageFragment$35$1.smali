.class Lcom/android/mms/ui/ComposeMessageFragment$35$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$35;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$35;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$35;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$35$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$35$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$35;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnLastToButton()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    return-void
.end method
