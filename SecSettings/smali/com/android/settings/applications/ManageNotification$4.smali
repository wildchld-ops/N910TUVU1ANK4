.class Lcom/android/settings/applications/ManageNotification$4;
.super Ljava/lang/Object;
.source "ManageNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageNotification;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageNotification;

.field final synthetic val$indicator_check:Landroid/widget/CheckBox;

.field final synthetic val$panel_check:Landroid/widget/CheckBox;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageNotification;Ljava/lang/String;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ManageNotification$4;->this$0:Lcom/android/settings/applications/ManageNotification;

    iput-object p2, p0, Lcom/android/settings/applications/ManageNotification$4;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/ManageNotification$4;->val$indicator_check:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/android/settings/applications/ManageNotification$4;->val$panel_check:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/applications/ManageNotification$4;->this$0:Lcom/android/settings/applications/ManageNotification;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageNotification$4;->val$pkgName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings/applications/ManageNotification;->getNotificationSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageNotification$4;->val$indicator_check:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageNotification$4;->val$panel_check:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/ManageNotification$4;->this$0:Lcom/android/settings/applications/ManageNotification;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageNotification$4;->val$pkgName:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/android/settings/applications/ManageNotification;->saveNotificationSetting(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageNotification$4;->this$0:Lcom/android/settings/applications/ManageNotification;

    # getter for: Lcom/android/settings/applications/ManageNotification;->appAdapter:Lcom/android/settings/applications/ManageNotification$MyAdapter;
    invoke-static {v2}, Lcom/android/settings/applications/ManageNotification;->access$100(Lcom/android/settings/applications/ManageNotification;)Lcom/android/settings/applications/ManageNotification$MyAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/android/settings/applications/ManageNotification$4;->this$0:Lcom/android/settings/applications/ManageNotification;

    iget-object v3, p0, Lcom/android/settings/applications/ManageNotification$4;->val$pkgName:Ljava/lang/String;

    # invokes: Lcom/android/settings/applications/ManageNotification;->setNewConfigure(Ljava/lang/String;II)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/applications/ManageNotification;->access$200(Lcom/android/settings/applications/ManageNotification;Ljava/lang/String;II)V

    :cond_2
    return-void
.end method
