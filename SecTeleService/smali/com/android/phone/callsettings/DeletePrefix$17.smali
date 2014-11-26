.class Lcom/android/phone/callsettings/DeletePrefix$17;
.super Ljava/lang/Object;
.source "DeletePrefix.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/DeletePrefix;->deleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/DeletePrefix;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/DeletePrefix;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/DeletePrefix$17;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$17;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Deleteprefix"

    const-string v1, "Fragment finished. We ignore updateRejectMessage."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$17;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->updatePrefixNumberList()V
    invoke-static {v0}, Lcom/android/phone/callsettings/DeletePrefix;->access$100(Lcom/android/phone/callsettings/DeletePrefix;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$17;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/DeletePrefix;->access$200(Lcom/android/phone/callsettings/DeletePrefix;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$17;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v0, v0, Lcom/android/phone/callsettings/DeletePrefix;->emptyText:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
