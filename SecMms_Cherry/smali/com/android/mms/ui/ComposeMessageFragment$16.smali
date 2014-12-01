.class Lcom/android/mms/ui/ComposeMessageFragment$16;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$sendSimSlot:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->val$sendSimSlot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->val$sendSimSlot:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->sendMessage(ZI)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
