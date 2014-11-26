.class Lcom/android/mms/prioritysender/AddGlanceListActivity$2;
.super Ljava/lang/Object;
.source "AddGlanceListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/prioritysender/AddGlanceListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity$2;->this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity$2;->this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;

    invoke-static {v2}, Lcom/android/mms/glance/GlanceUtils;->getPrioritySenderCount(Landroid/content/Context;)I

    move-result v0

    rsub-int/lit8 v2, v0, 0x19

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity$2;->this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;

    # invokes: Lcom/android/mms/prioritysender/AddGlanceListActivity;->showMaxToast()V
    invoke-static {v2}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->access$000(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "additional"

    const-string v3, "phone-multi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "maxRecipientCount"

    rsub-int/lit8 v3, v0, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity$2;->this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;

    const/16 v3, 0x65

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
