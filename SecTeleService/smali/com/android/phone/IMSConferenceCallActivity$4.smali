.class Lcom/android/phone/IMSConferenceCallActivity$4;
.super Ljava/lang/Object;
.source "IMSConferenceCallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IMSConferenceCallActivity;->InitiateConfCallUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IMSConferenceCallActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/IMSConferenceCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallActivity$4;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity$4;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mSelectAllCheck:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/IMSConferenceCallActivity;->access$1200(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity$4;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallActivity;->selectAllList()V

    :goto_1
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity$4;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mSelectAllCheck:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/IMSConferenceCallActivity;->access$1200(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity$4;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallActivity;->unSelectAllList()V

    goto :goto_1
.end method
