.class Lcom/android/mms/ui/RecipientListActivity$5;
.super Ljava/lang/Object;
.source "RecipientListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RecipientListActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/RecipientListActivity$5;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity$5;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity$5;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    # getter for: Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/RecipientListActivity;->access$100(Lcom/android/mms/ui/RecipientListActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity$5;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/mms/ui/RecipientListActivity;->isGroupInforEditClicked:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/RecipientListActivity;->access$202(Lcom/android/mms/ui/RecipientListActivity;Z)Z

    return-void
.end method
